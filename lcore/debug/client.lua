Citizen.CreateThreadNow(function ()
    if config.debug == 1 then
        debug:print("We are in debug mode")

        utils:registerControlKey("copyPos", "Copie votre position dans le presse papier", "H", function ()
            debug:CopyToClipboard("{ x = "..utils:round(myPed.pedCoords.x, 3)..", y = "..utils:round(myPed.pedCoords.y, 3)..", z = "..utils:round(myPed.pedCoords.z, 3)..", h = "..utils:round(myPed.pedHeading, 1).." },")
        end)
    end
end)

function debug:CopyToClipboard(text)
    SendNUIMessage({copyText = text})
end

local testMenu = {
    "width"= "20vw",
    "banner"= {
        "title"="Lawliet",
    },
    "subTitle"="Il est trop fort",
    "maxButtons"=10,
    "buttons"={
        {"text"= "button 1", "rightText"= "150 $"},
        {"text"= "button 2", selected=true},
        {"text"= "button 3", "rightText"= "hazeuyagzeyaze"},
        {"text"= "button 4", "rightText"= " $"},
        {"text"= "button 5", "rightText"= "2 $"},
        {"text"= "button 6"},
        {"text"= "button 7"},
        {"text"= "button 8"},
        {"text"= "button 9"},
        {"text"= "button 10"},
        {"text"= "button 11"},
        {"text"= "button 12"},
        {"text"= "button 13"},
        {"text"= "button 14"},
        {"text"= "button 15"},
        {"text"= "button 16"},
        {"text"= "button 17"},
        {"text"= "button 18"},
        {"text"= "button 19"},
        {"text"= "button 20"},
        {"text"= "button 21"},
        {"text"= "button 22"},
        {"text"= "button 23"},
        {"text"= "button 24"},
        {"text"= "button 25"},
        {"text"= "button 26"},
        {"text"= "button 27"},
        {"text"= "button 28"},
        {"text"= "button 29"},
        {"text"= "button 30"},
        {"text"= "button 31"},
        {"text"= "button 32"},
    }
}