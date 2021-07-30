local menu = nil

Citizen.CreateThreadNow(function ()
    if config.debug == 1 then
        debug:print("We are in debug mode")

        utils:registerControlKey("copyPos", _("putInClipboard"), "H", function ()
            debug:CopyToClipboard("{ x = "..utils:round(myPed.pedCoords.x, 3)..", y = "..utils:round(myPed.pedCoords.y, 3)..", z = "..utils:round(myPed.pedCoords.z, 3)..", h = "..utils:round(myPed.pedHeading, 1).." },")
        end)


        local notifcationMenu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle=_("chooseAnOption"),
            buttons={
                {text="notification classique", callback = function()
                    notificationHandler:create("notification classique")
                end},
                {text="notification classique flash", callback = function()
                    notificationHandler:create({mainText="notification classique", flash=true})
                end},
                {text="notification classique rouge", callback = function()
                    notificationHandler:create({mainText="notification classique", color=6})
                end},
                {text="notification classique pink flash", callback = function()
                    notificationHandler:create({mainText="notification classique", flashColor={r=255,g=20,b=147}})
                end},
                {text="notification classique pink flash, red textColor", callback = function()
                    notificationHandler:create({mainText="notification classique", textColor=6, flashColor={r=255,g=20,b=147}})
                end},
                {text="notification classique verte, pink flash", callback = function()
                    notificationHandler:create({mainText="notification classique", color=184, flashColor={r=255,g=20,b=147}})
                end},
                {text="notification avec titre", callback = function()
                    notificationHandler:create({mainText="mainText", title="titre"})
                end}, 
                {text="notification avec titre et icon", callback = function()
                    notificationHandler:create({mainText="mainText", title="titre", icon="CHAR_FACEBOOK"})
                end},
                {text="notification avec 'presque tout' courte", callback = function()
                    notificationHandler:create({mainText="mainText", title="titre", icon="CHAR_FACEBOOK", subTitle="sous-titre", duration=0.1})
                end},
                {text="notification avec 'tout' courte", callback = function()
                    notificationHandler:create({mainText="mainText", title="titre", icon="CHAR_FACEBOOK", subTitle="sous-titre", duration=0.1, clanTag="LHL"})
                end},
                {text="notification stats", callback = function()
                    notificationHandler:create({newStatLevel=50})
                end},
                {text="notification stats endurance", callback = function()
                    notificationHandler:create({newStatLevel=50, title="PSF_STAMINA"})
                end},
                {text="Petit brestoi avec titre", callback = function()
                    notificationHandler:create({title="Petit brestois", mainText=_("petitBrestoi")})
                end},
                {text="Petit brestoi sans titre", callback = function()
                    notificationHandler:create({mainText=_("petitBrestoi")})
                end},
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })


        local pedMenu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle=_("chooseAnOption"),
            buttons={
                {text="randomPed", callback = function()
                    pedHandler:create({pos = myPed.pedCoords})
                end},
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })

        menu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle=_("chooseAnOption"),
            buttons={
                {text="Notification", rightText=">", subMenu = notifcationMenu},
                {text="Ped", rightText=">", subMenu = pedMenu},
                {text=_("close"), textStyle={color="rgba(255,0,0)"}, close=true}
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