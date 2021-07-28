vehicleHandler = {}

function vehicleHandler:create(data)
    if not data.pos or not data.pos.x or not data.pos.y or not data.pos.z then
        print("No Vehicle Pos")
        return
    end
    if not data.model then
        print("No Vehicle Model")
        return
    end

    data.maxLoading = data.maxLoading or config.defaultMaxModelLoading

    local vehicle = {}

    setmetatable(vehicle,vehicleHandler)

    local x = 0
    while (data.unlimitedLoading or (x<data.maxLoading)) do
        Wait(100)
        x = x+1
    end
    
    return vehicle
end