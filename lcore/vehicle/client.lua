vehicleHandler = {}

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
    return vehicle
end