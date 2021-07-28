menuHandler = {}

function menuHandler:create(data)
    local newMenu = utils:copy(data)

    if newMenu.buttons then
        for k,button in pairs(newMenu.buttons) do
            if button.close then
                button.callback = menuHandler.closeMenu
            end
            if button.callback then
                button.callback = utils:registerNewStringedFunction(button.callback)
            end
        end
    end

    return newMenu
end

function menuHandler:openMenu(menu, selectedButton)
    menu.currentButton = selectedButton or menu.currentButton or 0
    SendNUIMessage({action="setMenu", menuData=menu})
end

function menuHandler:closeMenu()
    SendNUIMessage({action="closeMenu"})
end

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


RegisterNUICallback('callButtonCallback', function(data, cb)
    if (data.callback) then
        local funct = utils:getStringedFunction(data.callback)
        if funct then
            funct(data.callback.callbackData)
            return cb("ok")
        end
        return cb({error="No callbackName given"})
    end
    return cb({error="No callbackName given"})
end)

