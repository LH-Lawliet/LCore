frontendMenuHandler = {}
frontendMenuHandler.__index = frontendMenuHandler

print("load")

function frontendMenuHandler:create(data)
    local frontendMenu = {
        type = data.type or "FE_MENU_VERSION_LOBBY", -- list: https://docs.fivem.net/natives/?_0xEF01D36B9C9D0C7B
        ped = data.ped,
        pedPosition = data.pedPosition or 1,
        pedSleepState = data.pedSleepState or 1,
        blur = data.blur
    }
    frontendMenu.typeHashed = GetHashKey(frontendMenu.type)
    if data.pedLight ~= false then
        frontendMenu.pedLight = true
    end
    setmetatable(frontendMenu,frontendMenuHandler)

    ActivateFrontendMenu(frontendMenu.typeHashed, false, -1)
    Wait(100)
    if frontendMenu.ped then
        frontendMenu.clonedPed = ClonePed(frontendMenu.ped, 0, false, false)
        FreezeEntityPosition(frontendMenu.clonedPed, true)
        FinalizeHeadBlend(frontendMenu.clonedPed)
        GivePedToPauseMenu(frontendMenu.clonedPed, frontendMenu.pedPosition)
        SetPauseMenuPedLighting(frontendMenu.pedLight)
        SetPauseMenuPedSleepState(frontendMenu.pedSleepState)
        RequestScaleformMovie("PAUSE_MP_MENU_PLAYER_MODEL")
    end

    if frontendMenu.blur then
        TriggerScreenblurFadeIn(frontendMenu.blur)
    end
    
    return frontendMenu
end

function frontendMenuHandler:close()
    if self.clonedPed then
        ClearPedInPauseMenu()
        DeleteEntity(self.clonedPed)
    end
    if self.blur then
        TriggerScreenblurFadeOut(self.blur)
    end
    ActivateFrontendMenu(self.typeHashed, false, -1)
    self = nil
    collectgarbage("collect")
end