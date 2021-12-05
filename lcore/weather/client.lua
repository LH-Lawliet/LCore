local msInDay = 86400000
local timer = msInDay/2 -- timer is in ms

local currentlySetWeather = nil

function updateGameWeather(zone)
    if weathersZone[zone].weather and (not currentlySetWeather or weathersZone[zone].weather ~= currentlySetWeather) then

        local lastWeather = currentlySetWeather
        currentlySetWeather = weathersZone[zone].weather
        notificationHandler:create({mainText="Weather type changed to "..currentlySetWeather})


        if lastWeather ~= currentlySetWeather then
            lastWeather = currentlySetWeather
            SetWeatherTypeOverTime(currentlySetWeather, 15.0)
            Wait(15000)
        end
        Wait(100)
        SetBlackout(blackout)
        ClearOverrideWeather()
        ClearWeatherTypePersist()
        SetWeatherTypePersist(lastWeather)
        SetWeatherTypeNow(lastWeather)
        SetWeatherTypeNowPersist(lastWeather)
        if lastWeather == 'XMAS' then
            SetForceVehicleTrails(true)
            SetForcePedFootstepsTracks(true)
        else
            SetForceVehicleTrails(false)
            SetForcePedFootstepsTracks(false)
        end
    end
end


weathersZone = {
    ["LS_EAST"] = {
        type = "4dot",
        pos1 = { x = 1300.04, y = 503.871 },
        pos2 = { x = math.huge, y = 503.871 },
        pos3 = { x = 1300.04, y = -math.huge },
        pos4 = { x = math.huge, y = -math.huge },
        data = "LS_EAST",
        inside = updateGameWeather
    },

    ["LS"] = {
        type = "4dot",
        pos1 = { x = -math.huge, y = 503.871 },
        pos2 = { x = 1300.04, y = 503.871 },
        pos3 = { x = -math.huge, y = -math.huge },
        pos4 = { x = 1300.04, y = -math.huge },
        data = "LS",
        inside = updateGameWeather
    },

    ["CENTER"] = {
        type = "4dot",
        pos1 = { x = -math.huge, y = 2609.237 },
        pos2 = { x = math.huge, y = 2609.237 },
        pos3 = { x = -math.huge, y = 503.871 },
        pos4 = { x = math.huge, y = 503.871 },
        data = "CENTER",
        inside = updateGameWeather
    },

    ["MILITARY"] = {
        type = "4dot",
        pos1 = { x = -math.huge, y = 4364.193 },
        pos2 = { x = -172.835, y = 4364.193 },
        pos3 = { x = -math.huge, y = 2609.237 },
        pos4 = { x = -172.835, y = 2609.237 },
        data = "MILITARY",
        inside = updateGameWeather
    },

    ["DESERT"] = {
        type = "4dot",
        pos1 = { x = -172.835, y = 4364.193 },
        pos2 = { x = math.huge, y = 4364.193 },
        pos3 = { x = -172.835, y = 2609.237 },
        pos4 = { x = math.huge, y = 2609.237 },
        data = "DESERT",
        inside = updateGameWeather
    },

    ["NORTH"] = {
        type = "4dot",
        pos1 = { x = -math.huge, y = math.huge },
        pos2 = { x = math.huge, y = math.huge },
        pos3 = { x = -math.huge, y = 4364.193 },
        pos4 = { x = math.huge, y = 4364.193 },
        data = "NORTH",
        inside = updateGameWeather
    }
    --{ x = 1300.04, y = 503.871, z = 257.02, h = 305.2 }, -- 1
    --{ x = -172.835, y = 2609.237, z = 227.002, h = 32.7 }, -- 2
    --{ x = -223.565, y = 4364.193, z = 226.991, h = 357.7 }, -- 3
}




local eventToken = nil
AddEventHandler("lcore:updateToken", function (token)
    eventToken = token
    utils:TriggerServerCallback("lcore:getGameTime", eventToken, {}, function (time)
        timer = time
        return
    end)

    utils:TriggerServerCallback("lcore:getGameWeather", eventToken, {}, function (weathers)
        for zone, weather in pairs(weathers) do
            weathersZone[zone].weather = weather
        end
        return
    end)
end)


Citizen.CreateThread(function ()
    local weatherTrigger = triggerClass:generateTriggerChunk()

    for k,v in pairs(weathersZone) do
        weatherTrigger:CreateTrigger(v)
    end

    while true do
        timer = timer+(msInDay/config.dayTime)*config.updateTimeDelay
        local table = timerToHourMinSec(timer)
        NetworkOverrideClockTime(utils:toInt(table.hour), utils:toInt(table.min), utils:toInt(table.sec))
        weatherTrigger:Check()
        Wait(config.updateTimeDelay)
    end
end)


function timerToHourMinSec(t) -- take t as ms
    t = utils:toInt(t/1000)
    local killer = t%(3600*24)
    local hour = utils:inverseModulo(killer,3600)
    local min = utils:inverseModulo(killer-(hour*3600), 60)
    local sec = killer-(hour*3600)-(min*60)
    --[[
    debug:print("t : ",t)
    debug:print("killer : ", killer)
    debug:print("hour : ", hour)
    debug:print("min : ", min)
    debug:print("sec : ", sec)
    debug:print("\n\n\n\n\n\n")
    ]]--
    return {hour=hour, min=min, sec=sec}
end


RegisterNetEvent("lcore:updateGameTime")
AddEventHandler("lcore:updateGameTime", function (updatedTimer)
    timer = updatedTimer
    return
end)

RegisterNetEvent("lcore:updateWeather")
AddEventHandler("lcore:updateWeather", function (weathers)
    for zone, weather in pairs(weathers) do
        weathersZone[zone].weather = weather
    end
    return
end)