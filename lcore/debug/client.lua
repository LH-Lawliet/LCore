local menu = nil
local spawnedVehicle = nil
local noClip = nil

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


        local ownedLogo = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/shop_garage_icon_a.png"

        local engineLevelMenu = menuHandler:create({
            banner={
                title="",
                backgroundImage="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/shopui/shopui_title_carmod.png"
            },
            subTitle=GetLabelText("CMOD_ENG_1"),
            buttons={
                {text=_("stockEngine"), rightComponent="img", rightImgUrl=ownedLogo},
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
                        local vehicle = GetVehiclePedIsIn(myPed:GetPlayerPed(), false)
                        if vehicle~=0 then
                            debug:print('SetVehicleCustomPrimaryColour',vehicle, data.r, data.g, data.b)
                            SetVehicleCustomPrimaryColour(vehicle, data.r, data.g, data.b)
                        end
                    end
                },
                {
                    text="Xenon", rightComponent="checkbox", 
                    checked = function () 
                        local vehicle = GetVehiclePedIsIn(myPed:GetPlayerPed(), false)
                        if (IsToggleModOn(vehicle,22)) then
                            return true
                        end
                        return false
                    end,
                    onCheck=function ()
                        local vehicle = GetVehiclePedIsIn(myPed:GetPlayerPed(), false)
                        ToggleVehicleMod(vehicle, 22, true)
                    end,
                    onUncheck= function ()
                        local vehicle = GetVehiclePedIsIn(myPed:GetPlayerPed(), false)
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
                {text="CreateRandomVehicle", callback = function ()
                    if spawnedVehicle then
                        spawnedVehicle:delete()
                    end
                    spawnedVehicle = vehicleHandler:create({model=getRandomVehicleModel()})
                    SetPedIntoVehicle(myPed:GetPlayerPed(), spawnedVehicle.id, -1)
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
                {
                    text="NoClip", rightComponent="checkbox", 
                    checked = function () 
                        return noClip
                    end,
                    onCheck=function ()
                        debug:startNoClip()
                    end,
                    onUncheck= function ()
                        noClip = false
                    end
                },
                {text="Notification", rightText=">", subMenu = notifcationMenu},
                {text="Ped", rightText=">", subMenu = pedMenu},
                {text="Vehicle", rightText=">", subMenu = vehicleMenu},
                {text="GoToPerico", callback = function()
                    myPed:setCoordsNoOffset(config.cayoPericoPos)
                end},
                {text="GoToLS", callback = function()
                    myPed:setCoordsNoOffset(config.defaultPos)
                end},
                {text=_("close"), textStyle={color="rgba(255,0,0)"}, close=true}
            }
        })

        utils:registerControlKey("debugMenu", _("openDebugMenu"), "F6", function ()
            if menu then
                menu:openMenu()
            end
        end)


        RegisterCommand("car", function(source, args, rawCommand)
            local veh = args[1]
            if spawnedVehicle then
                spawnedVehicle:delete()
            end
            spawnedVehicle = vehicleHandler:create({model=veh or getRandomVehicleModel()})
            SetPedIntoVehicle(myPed:GetPlayerPed(), spawnedVehicle.id, -1)
        end)


        RegisterCommand("fixCar", function()
            local entity = GetVehiclePedIsIn(myPed:GetPlayerPed(), false)
            SetVehicleEngineHealth(entity, 999.99999999)
            SetVehiclePetrolTankHealth(entity, 999.99999999)
            SetVehicleFixed(entity)
            WashDecalsFromVehicle(entity, 1.0)
            SetVehicleDirtLevel(entity, 0.0)
        end)

        RegisterCommand("goToMarker", function()
            local Waypoint = GetFirstBlipInfoId(8)
            if Waypoint ~= 0 then
                local coords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, Waypoint, Citizen.ResultAsVector())
                myPed:setCoordsNoOffset(vector3(coords.x, coords.y, coords.z))

                local z = 0.0
                
                local retval, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, z, false)
                while not retval do
                    Wait(0)
                    z = z+5
                    retval, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, z, false)
                    myPed:setCoordsNoOffset(vector3(coords.x, coords.y, z))
                    if z > 1000 then
                        notificationHandler:create({mainText="Le sol n'a pas été trouvé", color=90})
                        break
                    end
                end

                myPed:setCoordsNoOffset(vector3(coords.x, coords.y, groundZ))
            else
                notificationHandler:create({mainText="Aucun marqueur trouvé", color=90})
            end
        end)


        blipHandler:create({
            pos = config.cayoPericoPos,
            text = "Cayo Perico"
        })
        blipHandler:create({
            pos = config.defaultPos,
            text = "Los Santos"
        })
    end
end)

function debug:CopyToClipboard(text)
    SendNUIMessage({copyText = text})
end

debug:print("cos 90", math.cos(utils:degToRad(90)))

function debug:startNoClip()
    noClip = true
    Citizen.CreateThread(function ()
        myPed:freeze(true)
        while noClip do
            Wait(5)
            local coords = utils:vect3ToTable(myPed.pedCoords)
            local rot = utils:vect3ToTable(myPed:getRotation())
            --debug:PrintTable(rot)
            local distance = 2.5
            if IsControlPressed(2,32) then
                coords.x = coords.x+distance*math.cos(utils:degToRad(rot.z+90))
                coords.y = coords.y+distance*math.sin(utils:degToRad(rot.z+90))
            elseif IsControlPressed(2,33) then
                coords.x = coords.x-distance*math.cos(utils:degToRad(rot.z+90))
                coords.y = coords.y-distance*math.sin(utils:degToRad(rot.z+90))
            end

            if IsControlPressed(2,34) then
                coords.x = coords.x-distance*math.cos(utils:degToRad(rot.z))
                coords.y = coords.y-distance*math.sin(utils:degToRad(rot.z))
            elseif IsControlPressed(2,35) then
                coords.x = coords.x-distance*math.cos(utils:degToRad(rot.z+180))
                coords.y = coords.y-distance*math.sin(utils:degToRad(rot.z+180))
            end

            if IsControlPressed(2,21) then
                coords.z = coords.z+distance
            elseif IsControlPressed(2,36) then
                coords.z = coords.z-distance
            end

            if IsControlPressed(2,44) then
                rot.z = rot.z + distance
            elseif IsControlPressed(2,51) then
                rot.z = rot.z - distance
            end

            --rot.z = rot.z+180
            myPed:setCoordsNoOffset(coords,rot)
        end
        myPed:freeze(false)
    end)
end