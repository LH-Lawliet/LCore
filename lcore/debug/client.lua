local menu = nil

Citizen.CreateThreadNow(function ()
    if config.debug == 1 then
        debug:print("We are in debug mode")

        utils:registerControlKey("copyPos", "Met la position dans le presse-papier", "H", function ()
            debug:CopyToClipboard("{ x = "..utils:round(myPed.pedCoords.x, 3)..", y = "..utils:round(myPed.pedCoords.y, 3)..", z = "..utils:round(myPed.pedCoords.z, 3)..", h = "..utils:round(myPed.pedHeading, 1).." },")
        end)


        menu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle="Choisir une option",
            buttons={
                {text="test1"},
                {text="test2"},
                {text="Fermer", textStyle={color="rgba(255,0,0)"}}
            }
        })

        utils:registerControlKey("debugMenu", "Ouvre le menu debug", "F6", function ()
            if menu then
                debug:print("open debug menu")
                menuHandler:openMenu(menu)
            end
        end)
    end
end)

function debug:CopyToClipboard(text)
    SendNUIMessage({copyText = text})
end