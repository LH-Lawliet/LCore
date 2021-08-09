menuHandler = {}
local callbackMenu = nil


function menuHandler:create(data)
    local menu = utils:copy(data)

    setmetatable(menu,menuHandler)

    menu.closeMenu = function (getState)
        SendNUIMessage({action="closeMenu", getState=getState})
        SetNuiFocus(false, false)
        if (getState) then
            callbackMenu = nil
            while not callbackMenu do
                Wait(0)
            end
            callbackMenu.closeMenu = menu.closeMenu
            menu = utils:copy(callbackMenu)
            callbackMenu = nil
        end
    end

    if menu.buttons then
        for k,button in pairs(menu.buttons) do
            if button.close then
                button.callback = menu.closeMenu
            end
            if button.subMenu then
                button.callback = function ()
                    menu.closeMenu(true)
                    button.subMenu.parentMenu = menu
                    self:openMenu(button.subMenu)
                end
            end
            if button.back then
                button.callback = function ()
                    menu.closeMenu(true)
                    self:openMenu(menu.parentMenu)
                    menu.parentMenu = nil
                end
            end
            button = utils:setToJsonable(button)
            --[[if button.callback then
                button.callback = utils:registerNewStringedFunction(button.callback)
            end
            if button.onColorChange then
                button.onColorChange = utils:registerNewStringedFunction(button.onColorChange)
            end]]--
        end
    end

    return menu
end

function menuHandler:openMenu(menu, selectedButton)
    menu.currentButton = selectedButton or menu.currentButton or 0
    local sendedMenu = utils:setToJsonable(utils:copy(menu))

    if sendedMenu.buttons then
        for k,button in pairs(sendedMenu.buttons) do
            if button.checked and type(button.checked)=='string' then
                debug:print("button.checked = ",button.checked, type(button.checked))
                button.checked = utils:getStringedFunction(button.checked)()
                debug:print(button.checked)
            end
        end
    end
    SetNuiFocus(sendedMenu.mouse, sendedMenu.mouse)
    SendNUIMessage({action="setMenu", menuData=sendedMenu})
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

utils:registerControlKey("menuSelect", _("menuEnter"), "RETURN", function ()
    SendNUIMessage({action="menuPressSelect"})
end)
