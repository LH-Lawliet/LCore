menuHandler = {}

function menuHandler:create(data)
    local newMenu = utils:copy(data)
    return newMenu
end

function menuHandler:openMenu(menu)
    debug:PrintTable(menu)
    debug:print("MenuHandler : openMenu ", menu)
    SendNUIMessage({action="setMenu", menuData=menu})
end

utils:registerAdvancedControlKey({
    action="menuArrowUp",
    description="Menu Haut",
    defaultKey="UP",
    callbackPressedDelay=75,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoUp"})
    end,
})

utils:registerAdvancedControlKey({
    action="menuArrowDown",
    description="Menu Bas",
    defaultKey="DOWN",
    callbackPressedDelay=75,
    callbackPressed=function ()
        SendNUIMessage({action="menuGoDown"})
    end,
})