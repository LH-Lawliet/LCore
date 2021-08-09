vehicleHandler = {}

function getRandomVehicleName()
    
end

function vehicleHandler:create(data) 
    local vehicle = {}
    data = data or {}
    vehicle.pos = data.pos or myPed.pedCoords
    vehicle.rot = data.rot or vector3(myPed.pedHeading, 0.0, 0.0)
    vehicle.setVehicleOnGroundProperly = data.setVehicleOnGroundProperly
    if vehicle.setVehicleOnGroundProperly == nil then
        vehicle.setVehicleOnGroundProperly = true
    end
    vehicle.rotOrder = data.rotOrder or 2
    vehicle.model = data.model or config.defaultVehicle
    vehicle.unlimitedLoading = data.unlimitedLoading or false
    vehicle.maxLoading = data.maxLoading or config.defaultMaxModelLoading
    vehicle.isNetwork = data.isNetwork or false
    
    vehicle.modelHashed = GetHashKey(vehicle.model),
    setmetatable(vehicle,vehicleHandler)

    local x = 0
    RequestModel(vehicle.modelHashed)
    while (vehicle.unlimitedLoading or (x<vehicle.maxLoading)) and not HasModelLoaded(vehicle.modelHashed) do
        Wait(10)
        RequestModel(vehicle.modelHashed)
        x = x+1
    end

    if x>=vehicle.maxLoading then
        return print("Max model loading time reached for vehicleModel",vehicle.model)
    end

    vehicle.id = CreateVehicle(vehicle.modelHashed, vehicle.pos.x, vehicle.pos.y, vehicle.pos.z, 0.0, vehicle.isNetwork)
    SetEntityRotation(vehicle.id, vehicle.rot.x, vehicle.rot.y, vehicle.rot.z, vehicle.rotOrder)
    if (vehicle.setVehicleOnGroundProperly) then
        SetVehicleOnGroundProperly(vehicle.id)
    end

    SetModelAsNoLongerNeeded(vehicle.modelHashed)

    vehicle.data = vehicleHandler:getVehicleData(vehicle.id)
    return vehicle
end

function vehicleHandler:getVehicleData(vehicleID)
    local vehicle = vehicleID or self.id

    debug:print("vehicle : ",vehicle)

    local data = {}

    data.modsClassic = {}
    for i=0,100,1 do
        data.modsClassic[tostring(i)] = GetVehicleMod(vehicle, i)
    end

    data.modsToggle = {}
    for i=17,22,1 do
        data.modsToggle[tostring(i)] = IsToggleModOn(vehicle, i)
    end

    data.xenonColor = GetVehicleXenonLightsColor(vehicle)
    data.plateText = GetVehicleNumberPlateText(vehicle)
    data.plateColor = GetVehicleNumberPlateTextIndex(vehicle)

    data.dashboardColor = GetVehicleDashboardColor(vehicle)
    data.dirtLevel = GetVehicleDirtLevel(vehicle)
    data.engineHealth = GetVehicleEngineHealth(vehicle)
    data.interiorColor = GetVehicleInteriorColor(vehicle)

    data.livery = GetVehicleLivery(vehicle)

    data.modVariations = {}

    data.customWheels = false
    for i=23,24,1 do
        if GetVehicleModVariation(vehicle, i) then
            data.customWheels = true
        end
    end


    data.neon = {}
    for i=0,3,1 do
        data.neon[tostring(i)] = IsVehicleNeonLightEnabled(vehicle, i)
    end
    data.neonColor = GetVehicleNeonLightsColour(vehicle)

    data.petroltanksHealth = GetVehiclePetrolTankHealth(vehicle)
    data.roofLivery = GetVehicleRoofLivery(vehicle)
    data.tyreSmokeColor = GetVehicleTyreSmokeColor(vehicle)
    data.tyreCanBurst = GetVehicleTyresCanBurst(vehicle)
    data.wheelType = GetVehicleWheelType(vehicle)
    data.windowTint = GetVehicleWindowTint(vehicle)


    data.extras = {}

    for i=0,100,1 do
        if DoesExtraExist(vehicle, i) then
            data.extras[tostring(i)] = IsVehicleExtraTurnedOn(vehicle,i)
        end
    end

    data.searchLightOn = IsVehicleSearchlightOn(vehicle, data)
    data.sirenOn = IsVehicleSirenOn(vehicle)

    data.wheelsBurst = {}
    for i=0,50,1 do
        data.wheelsBurst[tostring(i)] = IsVehicleTyreBurst(vehicle, i, false)
    end

    data.windowIntact = {}
    for i=0,7,1 do
        data.windowIntact[tostring(i)] = IsVehicleWindowIntact(vehicle, false)
    end

    return data
end

function vehicleHandler:setVehicleData(modified)
    local vehicle = self.id

    self.vehicleData = utils:tableMerge(self.vehicleData,modified)

    SetVehicleModKit(vehicle, 0)

    if modified.modsClassic then
        for k,v in pairs(modified.modsClassic) do
            SetVehicleMod(vehicle, tonumber(k), v, modified.customWheels)
        end
    end

    if modified.modsToggle then
        for k,v in pairs(modified.modsToggle) do
            ToggleVehicleMod(vehicle, tonumber(k), v)
        end
    end
    
    if modified.xenonColor then
        SetVehicleXenonLightsColor(vehicle, modified.modified)
    end
    if modified.plateText then
        SetVehicleNumberPlateText(vehicle, modified.plateText)
    end
    if modified.plateColor then
        SetVehicleNumberPlateTextIndex(vehicle, modified.plateColor)
    end
    if modified.dashboardColor then
        SetVehicleDashboardColor(vehicle, modified.dashboardColor)
    end
    if modified.dirtLevel then
        SetVehicleDirtLevel(vehicle, modified.dirtLevel)
    end
    if modified.engineHealth then
        SetVehicleEngineHealth(vehicle, modified.engineHealth)
    end
    if modified.interiorColor then
        SetVehicleInteriorColor(vehicle, modified.interiorColor)
    end
    if modified.livery then
        SetVehicleLivery(vehicle, modified.livery)
    end
    if modified.neon then
        for k,v in pairs(modified.neon) do
            SetVehicleNeonLightEnabled(vehicle, tonumber(k), v)
        end
    end
    if modified.neonColor then
        SetVehicleNeonLightsColour(vehicle, modified.neonColor.r or self.vehicleData.neonColor.r, modified.neonColor.g or self.vehicleData.neonColor.g, modified.neonColor.b or self.vehicleData.neonColor.b)
    end
    if modified.petroltanksHealth then
        SetVehiclePetrolTankHealth(vehicle, modified.petroltanksHealth)
    end
    if modified.roofLivery then
        SetVehicleRoofLivery(vehicle, modified.roofLivery)
    end
    if modified.tyreSmokeColor then
        SetVehicleTyreSmokeColor(vehicle, modified.tyreSmokeColor.r or self.vehicleData.tyreSmokeColor.r, modified.tyreSmokeColor.g or self.vehicleData.tyreSmokeColor.g, modified.tyreSmokeColor.b or self.vehicleData.tyreSmokeColor.b)
    end
    if modified.tyreCanBurst~=nil then
        SetVehicleTyresCanBurst(vehicle, data.tyreCanBurst)
    end
    if modified.wheelType then
        SetVehicleWheelType(vehicle, data.wheelType)
    end
    if modified.windowTint then
        SetVehicleWindowTint(vehicle, modified.windowTint)
    end
    if modified.extras then
        for k,v in pairs(modified.extras) do
            SetVehicleExtra(vehicle, tonumber(k), v)
        end
    end
    if modified.searchLightOn then
        SetVehicleSearchlight(vehicle, modified.searchLightOn, true)
    end
    if modified.sirenOn then
        SetVehicleSiren(vehicle, data.sirenOn)
    end

    if modified.wheelsBurst then
        for k,v in pairs(modified.wheelsBurst) do
            SetVehicleTyreBurst(vehicle, tonumber(k), v, 1000)
        end
    end

    if modified.windowIntact then
        for k,v in pairs(modified.windowIntact) do
            if not v then
                SmashVehicleWindow(vehicle, tonumber(k))
            end
        end
    end
end