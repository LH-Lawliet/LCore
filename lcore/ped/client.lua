pedHandler = {}
pedHandler.__index = pedHandler

function pedHandler:create(data)
    if not data.pos then
        print("Create a ped without pos is prohibited")
        return
    end

    local pedInfo = {
        model = data.model or config.defaultPed,
        pos = data.pos,
        heading = data.heading or 0.0,
        isNetwork = data.isNetwork or false,
        bScriptHostPed = data.bScriptHostPed or false,
        maxLoading = data.maxLoading or config.defaultMaxModelLoading,
        unlimitedLoading = data.unlimitedLoading or false,
    }
    pedInfo.modelHashed = GetHashKey(pedInfo.model),
    setmetatable(pedInfo,pedHandler)

    local x = 0
    RequestModel(pedInfo.modelHashed)
    while (pedInfo.unlimitedLoading or (x<pedInfo.maxLoading)) and not HasModelLoaded(pedInfo.modelHashed) do
        Wait(10)
        RequestModel(pedInfo.modelHashed)
        x = x+1
    end

    if x>=pedInfo.maxLoading then
        return print("Max model loading time reached")
    end

    pedInfo.ped = CreatePed(0, pedInfo.modelHashed, pedInfo.pos.x, pedInfo.pos.y, pedInfo.pos.z, pedInfo.heading, pedInfo.isNetwork, pedInfo.bScriptHostPed)
    SetModelAsNoLongerNeeded(pedInfo.modelHashed)
    return pedInfo
end