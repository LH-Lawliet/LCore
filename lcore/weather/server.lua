local msInDay = 86400000
local timer = msInDay/2 -- timer is in ms

local msInDay = 86400000

local weathers = {
    ["LS_EAST"] = "EXTRASUNNY",
    ["LS"] = "EXTRASUNNY",
    ["CENTER"] = "EXTRASUNNY",
    ["MILITARY"] = "EXTRASUNNY",
    ["DESERT"] = "EXTRASUNNY",
    ["NORTH"] = "EXTRASUNNY"
}

local function getNextWeather(currentWeather)
    local possibleTransitions = config.possibleTransitions[currentWeather]
    return possibleTransitions[math.random(1, #possibleTransitions)]
end


Citizen.CreateThread(function ()
    while true do
        timer = timer+(msInDay/config.dayTime)*config.updateTimeDelay
        TriggerClientEvent("lcore:updateGameTime", -1, timer)
        Wait(config.updateTimeDelay)
    end
end)

Citizen.CreateThread(function ()
    while true do
        for k, zone in pairs(config.weatherZones) do
            weathers[zone] = getNextWeather(weathers[zone])
        end
        TriggerClientEvent("lcore:updateWeather", -1, weathers)
        Wait(math.random(config.changeWeather.min, config.changeWeather.max))
    end
end)


utils:RegisterServerCallback("lcore:getGameTime", function ()
    return timer
end)

utils:RegisterServerCallback("lcore:getGameWeather", function ()
    return weathers
end)



RegisterCommand("weather", function(source, args, rawCommand)
    local type = args[1]
    if not type then
        print("Please give a weather type\nTypes:"..config.allWeatherType())
        return
    end
    type = string.upper(type)

    local zone = args[2]
    if not zone then
        print("Please give a weather zone\nZones:"..config.allWeatherZone())
        return
    end
    zone = string.upper(zone)
    local zoneExist = false
    for k, test in pairs(config.weatherZones) do
        if test == zone then
            zoneExist = true
            break
        end
    end
    if not zoneExist then
        print("Sorry but "..zone.." isn't a weather zone\nZones:"..config.allWeatherZone())
    end

    for k,v in pairs(config.weatherList) do
        if type == v then
            weathers[zone] = type
            TriggerClientEvent("lcore:updateWeather", -1, weathers)
            print("Weather type set")
            return true
        end
    end
    print("Sorry but "..type.." isn't a weather type,\nTypes:"..config.allWeatherType())
end)

RegisterCommand("forceWeatherCycle", function(source, args, rawCommand)
    for k, zone in pairs(config.weatherZones) do
        weathers[zone] = getNextWeather(weathers[zone])
    end
    TriggerClientEvent("lcore:updateWeather", -1, weathers)
end)