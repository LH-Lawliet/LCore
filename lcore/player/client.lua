playerPedClass = {}
playerPedClass.__index = playerPedClass


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

    while not HasCollisionLoadedAroundEntity(pedInfo.playerPed) do
        Wait(10)
    end

    self:freeze(false)

    ShutdownLoadingScreen()
    DoScreenFadeIn(0)

    Citizen.CreateThread(function ()
        while true do
            Wait(config.updatePedDelay)
            --print(self:GetPlayerPed())
            local playerPed = GetPlayerPed(-1)
            pedInfo.pedCoords = GetEntityCoords(playerPed, false)
            pedInfo.pedHeading = GetEntityHeading(playerPed)
            if pedInfo.triggers then
                pedInfo.triggers:Check()
            end
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

function playerPedClass:setModel(model, notDefault)
    local modelHash = GetHashKey(model)
    RequestModel(model)
    while not HasModelLoaded(modelHash) do
        Wait(0)
    end
    debug:print("Set played model to ",model)
    SetPlayerModel(self:GetPlayerId(), model)
    self.playerPed = GetPlayerPed(-1)
    self.playerModel = model

    if not notDefault then
        self:setDefaultComponentVariation()
    end
    SetModelAsNoLongerNeeded(model)
end

function playerPedClass:setDefaultComponentVariation()
    for i=0,11,1 do
        SetPedComponentVariation(self:GetPlayerPed(), i, 0, 0, 0)
    end
    if utils:getIndex(self.playerModel, config.defaultPedByGender) then
        local d = config.defaultHeadBlendData
        SetPedHeadBlendData(self:GetPlayerPed(),d["shapeFather"],d["shapeMother"],d["ShapeThirdParent"],d["ColorFather"],d["ColorMother"],d["ColorThirdParent"],d["ShapeMix"],d["ColorMix"],d["ThirdMix"],false)
        for i=0,19,1 do
            SetPedFaceFeature(self:GetPlayerPed(), i, 0.0)
        end
    end
end

function playerPedClass:setCoordsNoOffset(pos,rot)
    RequestCollisionAtCoord(pos.x, pos.y, pos.z)
    rot = rot or self:getRotation() or vect3(1.0,1.0,1.0)
    SetEntityCoordsNoOffset(self.playerPed, pos.x, pos.y, pos.z)
    self:setRotation(rot)
    --SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis)
    if type(pos) ~= "vector3" then
        pos = vector3(pos.x, pos.y, pos.z)
    end
    self.pedCoords = pos
end

function playerPedClass:getRotation()
    return GetEntityRotation(self.playerPed, 2)
end

function playerPedClass:setRotation(rot)
    SetEntityRotation(self.playerPed, rot.x, rot.y, rot.z, 2)
    SetEntityHeading(self.playerPed, rot.z)
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

function playerPedClass:isFaceEditable()
    if self.playerModel and (self.playerModel == "mp_m_freemode_01" or self.playerModel == "mp_f_freemode_01") then
        return true
    end
    return false
end