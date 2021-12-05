config.weatherList = {
    "BLIZZARD",-- = 0x27EA2814
    "CLEAR",-- = 0x36A83D84
    "CLEARING",-- = 0x6DB1A50D
    "CLOUDS",-- = 0x30FDAF5C
    "EXTRASUNNY",-- = 0x97AA0A79
    "FOGGY",-- = 0xAE737644
    "HALLOWEEN",-- = 0xC91A3202
    "NEUTRAL",-- = 0xA4CA1326
    "OVERCAST",-- = 0xBB898D2D
    "RAIN",-- = 0x54A69840
    "SMOG",-- = 0x10DCF4B5
    "SNOW",-- = 0xEFB6EFF6
    "SNOWLIGHT",-- = 0x23FB812B
    "THUNDER",-- = 0xB677829F
    "XMAS"-- = 0xAAC9C895
}

config.possibleTransitions = {
    ["BLIZZARD"] = {"BLIZZARD", "CLEARING", "FOGGY", "SNOW", "SNOWLIGHT", "NEUTRAL"},
    ["CLEAR"] = {"CLEAR", "CLEARING", "CLOUDS", "EXTRASUNNY", "EXTRASUNNY", "OVERCAST"},
    ["CLEARING"] = {"CLEARING", "CLEAR", "NEUTRAL", "RAIN"},
    ["CLOUDS"] = {"CLOUDS", "CLEAR", "CLEARING"},
    ["EXTRASUNNY"] = {"EXTRASUNNY", "CLEAR", "OVERCAST"},
    ["FOGGY"] = {"FOGGY", "CLEAR", "CLEARING"},
    ["HALLOWEEN"] = {"HALLOWEEN"},
    ["NEUTRAL"] = {"NEUTRAL", "CLEARING", "FOGGY", "CLOUDS", "CLEAR"},
    ["OVERCAST"] = {"OVERCAST", "FOGGY", "CLOUDS", "CLEAR", "CLEARING"},
    ["RAIN"] = {"RAIN", "CLEARING", "THUNDER", "CLOUDS"},
    ["SMOG"] = {"SMOG"},
    ["SNOW"] = {"SNOW", "SNOWLIGHT", "BLIZZARD", "XMAS"},
    ["SNOWLIGHT"] = {"SNOWLIGHT", "SNOW", "BLIZZARD", "XMAS"},
    ["THUNDER"] = {"THUNDER", "RAIN", "CLEARING"},
    ["XMAS"] = {"XMAS"},
}

config.weatherZones = {
    "LS_EAST",
    "LS",
    "CENTER",
    "MILITARY",
    "DESERT",
    "NORTH"
}

config.allWeatherType = function ()
    local str = ""
    for k,v in pairs(config.weatherList) do
        str = str..v.." "
    end
    return str
end

config.allWeatherZone = function ()
    local str = ""
    for k,v in pairs(config.weatherZones) do
        str = str..v.." "
    end
    return str
end