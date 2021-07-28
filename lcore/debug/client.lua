local menu = nil

Citizen.CreateThreadNow(function ()
    if config.debug == 1 then
        debug:print("We are in debug mode")

        utils:registerControlKey("copyPos", _("putInClipboard"), "H", function ()
            debug:CopyToClipboard("{ x = "..utils:round(myPed.pedCoords.x, 3)..", y = "..utils:round(myPed.pedCoords.y, 3)..", z = "..utils:round(myPed.pedCoords.z, 3)..", h = "..utils:round(myPed.pedHeading, 1).." },")
        end)


        menu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle=_("chooseAnOption"),
            buttons={
                {text="spawnCar", callback = function()
                    debug:print("Spawn Car Now")
                end},
                {text="test2"},
                {text=_("close"), textStyle={color="rgba(255,0,0)"}, close=true},
            }
        })

        utils:registerControlKey("debugMenu", _("openDebugMenu"), "F6", function ()
            if menu then
                menuHandler:openMenu(menu)
            end
        end)
    end
end)

function debug:CopyToClipboard(text)
    SendNUIMessage({copyText = text})
end