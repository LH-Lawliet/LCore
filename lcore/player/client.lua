playerPedClass = {}

myPed = nil

function playerPedClass:create(model,pos)
    local heading = config.defaultPos.h
    if pos and pos.h then
        heading = pos.h
    end
    local pedInfo = {
        playerModel = model or config.defaultPed,
        pedCoords = pos or config.defaultPos,
        pedHeading = heading,
        playerId = nil,
        playerPed = nil,
        freezed = false
    }
    setmetatable(pedInfo,playerPedClass)

    self:setModel(pedInfo.playerModel)
    self:setCoordsNoOffset(pedInfo.pedCoords)
    
    NetworkResurrectLocalPlayer(pedInfo.pedCoords.x, pedInfo.pedCoords.y, pedInfo.pedCoords.z, pedInfo.pedHeading, true, true, false)

    self:freeze(false)

    ShutdownLoadingScreen()
    DoScreenFadeIn(0)

    Citizen.CreateThread(function ()
        while true do
            Wait(config.updatePedDelay)
            pedInfo.pedCoords = GetEntityCoords(self.playerPed, false)
            pedInfo.pedHeading = GetEntityHeading(self.playerPed)
        end
    end)
    return pedInfo
end

function playerPedClass:GetPlayerPed()
    return self.playerPed
end

function playerPedClass:GetPlayerId()
    if not self.playerId then
        self.playerId = PlayerId()
    end
    return self.playerId
end

function playerPedClass:setModel(model)
    local modelHash = GetHashKey(model)
    RequestModel(model)
    while not HasModelLoaded(modelHash) do
        Wait(0)
    end
    SetPlayerModel(self:GetPlayerId(), model)
    self.playerPed = GetPlayerPed(-1)
    self.playerModel = model
    SetModelAsNoLongerNeeded(model)
end

function playerPedClass:setCoordsNoOffset(pos)
    RequestCollisionAtCoord(pos.x, pos.y, pos.z)
    SetEntityCoordsNoOffset(self.playerPed, pos.x, pos.y, pos.z, false, false, false, true)
    self.pedCoords = pos
end

function playerPedClass:freeze(state)
    
    SetPlayerControl(self:GetPlayerId(), not state, false)
    
    if not freeze then
        
        if not IsEntityVisible(self.playerPed) then
            SetEntityVisible(self.playerPed, true)
        end

        if not IsPedInAnyVehicle(self.playerPed) then
            SetEntityCollision(self.playerPed, true)
        end
        FreezeEntityPosition(self.playerPed, false)
        --SetCharNeverTargetted(ped, false)
        SetPlayerInvincible(self:GetPlayerId(), false)
    else
        if IsEntityVisible(self.playerPed) then
            SetEntityVisible(self.playerPed, false)
        end

        SetEntityCollision(self.playerPed, false)
        FreezeEntityPosition(self.playerPed, true)
        --SetCharNeverTargetted(ped, true)
        SetPlayerInvincible(self:GetPlayerId(), true)
        --RemovePtfxFromPed(ped)

        if not IsPedFatallyInjured(self.playerPed) then
            ClearPedTasksImmediately(self.playerPed)
        end
    end
end