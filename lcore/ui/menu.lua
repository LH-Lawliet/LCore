menuHandler = {}
menuHandler.__index = menuHandler

local callbackMenu = nil


function menuHandler:create(data)
    local menu = data
    setmetatable(menu,menuHandler)

    menu.buttons = menu.buttons or {}
    menu:loadButtons()

    return menu
end

function menuHandler:loadButtons()
    for k,button in pairs(self.buttons) do
        if button.close then
            button.callback = function ()
                self:closeMenu()
            end
        end
        if button.subMenu then
            button.callback = function ()
                self:closeMenu(true)
                button.subMenu.parentMenu = self
                setmetatable(button.subMenu,menuHandler)
                button.subMenu:openMenu()
            end
        end
        if button.back then
            button.callback = function ()
                self:back()
            end
        end
        if button.hardBack then
            button.callback = function ()
                self:hardBack()
            end
        end
        if button.reloaderCallback then
            button.callback = function ()
                self:reloadMenu(button.reloaderCallback)
            end
        end
    end
end


function menuHandler:cleanButtons()
    self.buttons = {}
    collectgarbage("collect")
end

function menuHandler:addButton(button)
    table.insert(self.buttons,button)
end

function menuHandler:openMenu(selectedButton)
    self.currentButton = selectedButton or self.currentButton or 0

    if self.loadingRoutine and type(self.loadingRoutine) == 'function' then
        if not self.disableAutoClean then
            self:cleanButtons()
        end
        self.loadingRoutine(self)
        self:loadButtons()
    end

    local sendedMenu = utils:deepcopy(self) --utils:copy(self)
    sendedMenu.parentMenu = nil
    if sendedMenu.buttons then
        for k,button in pairs(sendedMenu.buttons) do
            if button.checked and type(button.checked)=='function' then
                button.checked = button.checked()
            end
            if button.rightComponentIfTrue and button.rightComponentIfTrue=='img' and button.rightImgUrlIfTrue and button.rightComponentIsTrue and type(button.rightComponentIsTrue)=='function' then
                if button.rightComponentIsTrue() then
                    button.rightComponent = button.rightComponentIfTrue
                    button.rightImgUrl = button.rightImgUrlIfTrue
                else
                    button.rightComponent = nil
                    button.rightImgUrl = nil
                end
            end
            button.subMenu = nil
        end
        collectgarbage("collect")
    end
    sendedMenu = utils:setToJsonable(sendedMenu)
    SetNuiFocus(sendedMenu.mouse, sendedMenu.mouse)
    SendNUIMessage({action="setMenu", menuData=sendedMenu})
end


function menuHandler:openSubMenu(subMenu)
    self:closeMenu(true)
    subMenu.parentMenu = self
    setmetatable(subMenu,menuHandler)
    subMenu:openMenu()
end


function menuHandler:reloadMenu(action)
    self:closeMenu(true)
    if (action and type(action)=='function') then
        action()
    end
    self:openMenu()
end



function menuHandler:closeMenu(getState)
    SendNUIMessage({action="closeMenu", getState=getState})
    SetNuiFocus(false, false)
    if getState then
        callbackMenu = nil
        while not callbackMenu do
            Wait(0)
        end
        self:mergeFromJsonified(callbackMenu)
        callbackMenu = nil
        collectgarbage("collect")
    end
end

function menuHandler:back()
    self:closeMenu(true)
    self.parentMenu:openMenu()
end

function menuHandler:hardBack()
    self:closeMenu()
    self.parentMenu:openMenu()
    self = nil
    collectgarbage("collect")
end

function menuHandler:mergeFromJsonified(jsonified)
    self.currentButton = jsonified.currentButton
    for k, button in pairs(jsonified.buttons) do
        self.buttons[k].selectedElementId = button.selectedElementId
    end
end

RegisterNUICallback('callButtonCallback', function(data, cb)
    if (data.callback) then
        local funct = utils:getStringedFunction(data.callback)
        if funct then
            funct(data.callbackData)
            return cb("ok")
        end
        return cb({error="No callbackName given"})
    end
    return cb({error="No callbackName given"})
end)

RegisterNUICallback('updateMenuState', function(data, cb)
    callbackMenu = data
    return cb("ok")
end)

utils:registerAdvancedControlKey({
    action="menuArrowUp",
    description=_("menuUp"),
    defaultKey="UP",
    callbackPressedDelay=125,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoUp"})
    end,
})

utils:registerAdvancedControlKey({
    action="menuArrowDown",
    description=_("menuDown"),
    defaultKey="DOWN",
    callbackPressedDelay=125,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoDown"})
    end,
})

utils:registerAdvancedControlKey({
    action="menuArrowUp",
    description=_("menuUp"),
    defaultKey="UP",
    callbackPressedDelay=125,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoUp"})
    end,
})

utils:registerAdvancedControlKey({
    action="menuArrowRight",
    description=_("menuRight"),
    defaultKey="RIGHT",
    callbackPressedDelay=125,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoRight"})
    end,
})

utils:registerAdvancedControlKey({
    action="menuArrowLEFT",
    description=_("menuLeft"),
    defaultKey="LEFT",
    callbackPressedDelay=125,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoLeft"})
    end,
})

utils:registerControlKey("menuSelect", _("menuEnter"), "RETURN", function ()
    SendNUIMessage({action="menuPressSelect"})
end)