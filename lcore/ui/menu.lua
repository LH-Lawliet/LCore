menuHandler = {}
menuHandler.__index = menuHandler

local callbackMenu = nil


function menuHandler:create(data)
    local menu = data
    setmetatable(menu,menuHandler)

    if menu.buttons then
        for k,button in pairs(menu.buttons) do
            if button.close then
                button.callback = function ()
                    menu:closeMenu()
                end
            end
            if button.subMenu then
                debug:print("subMenu creation")
                button.callback = function ()
                    debug:print("oui")
                    menu:closeMenu(true)
                    button.subMenu.parentMenu = menu
                    setmetatable(button.subMenu,menuHandler)
                    button.subMenu:openMenu()
                end
            end
            if button.back then
                button.callback = function ()
                    menu:back()
                end
            end
            if button.hardBack then
                button.callback = function ()
                    menu:hardBack()
                end
            end
        end
    end

    return menu
end

function menuHandler:openMenu(selectedButton)
    self.currentButton = selectedButton or self.currentButton or 0
    local sendedMenu = utils:deepcopy(self) --utils:copy(self)
    sendedMenu.parentMenu = nil
    if sendedMenu.buttons then
        for k,button in pairs(sendedMenu.buttons) do
            if button.checked and type(button.checked)=='function' then
                button.checked = button.checked()
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