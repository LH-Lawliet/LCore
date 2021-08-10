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


        local engineLevelMenu = menuHandler:create({
            banner={
                title="",
                backgroundImage="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/shopui/shopui_title_carmod.png"
            },
            subTitle=GetLabelText("CMOD_ENG_1"),
            buttons={
                {text=_("stockEngine"), rightComponent="img", rightImgUrl="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/shop_garage_icon_a.png"},
                {text=GetLabelText("CMOD_ENG_2")},
                {text=GetLabelText("CMOD_ENG_3")},
                {text=GetLabelText("CMOD_ENG_4")},
                {text=GetLabelText("CMOD_ENG_5")},
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })

        local brakeLevelMenu = menuHandler:create({
            banner={
                title="",
                backgroundImage="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/shopui/shopui_title_carmod.png"
            },
            subTitle=_("brakes"),
            buttons={
                {text=GetLabelText("CMOD_BRA_0")},
                {text=GetLabelText("CMOD_BRA_1")},
                {text=GetLabelText("CMOD_BRA_2")},
                {text=GetLabelText("CMOD_BRA_3")},
                {text=GetLabelText("CMOD_BRA_4")},
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })

        local customs = menuHandler:create({
            banner={
                title="Debug",
                backgroundImage="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/shopui/shopui_title_carmod.png"
            },
            mouse=true,
            subTitle=_("chooseAnOption"),
            buttons={
                {text=GetLabelText("CMOD_ENG_1"), subMenu=engineLevelMenu, rightText=">"},
                {text=_("brakes"), subMenu=brakeLevelMenu, rightText=">"},

                {
                    text="Carcolor", 
                    rightComponent="colorPicker", 
                    onColorChange=function (data)
                        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                        if vehicle~=0 then
                            debug:print('SetVehicleCustomPrimaryColour',vehicle, data.r, data.g, data.b)
                            SetVehicleCustomPrimaryColour(vehicle, data.r, data.g, data.b)
                        end
                    end
                },
                {
                    text="Xenon", rightComponent="checkbox", 
                    checked = function () 
                        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                        if (IsToggleModOn(vehicle,22)) then
                            return true
                        end
                        return false
                    end,
                    onCheck=function ()
                        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                        ToggleVehicleMod(vehicle, 22, true)
                    end,
                    onUncheck= function ()
                        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
                        ToggleVehicleMod(vehicle, 22, false)
                    end
                },
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })


        local vehicleMenu = menuHandler:create({
            banner={
                title="Debug"
            },
            subTitle=_("chooseAnOption"),
            buttons={
                {text="CreateVehicle", callback = function ()
                    local veh = vehicleHandler:create({model=getRandomVehicleModel()})
                    SetPedIntoVehicle(GetPlayerPed(-1), veh.id, -1)
                    debug:PrintTable(veh)
                end},
                {text="Custom", subMenu = customs},
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
                {text="Vehicle", rightText=">", subMenu = vehicleMenu},
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