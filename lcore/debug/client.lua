Citizen.CreateThreadNow(function ()
    if config.debug == 1 then
        debug:print("We are in debug mode")

        utils:registerControlKey("copyPos", "Copie votre position dans le presse papier", "H", function ()
            debug:CopyToClipboard("{ x = "..utils:round(myPed.pedCoords.x, 3)..", y = "..utils:round(myPed.pedCoords.y, 3)..", z = "..utils:round(myPed.pedCoords.z, 3)..", h = "..utils:round(myPed.pedHeading, 1).." },")
        end)
    end
end)

function debug:CopyToClipboard(text)
    SetNuiFocus(true, false)
    SendNUIMessage({copyText = text})
    Wait(1000)
    SetNuiFocus(false, false)
end