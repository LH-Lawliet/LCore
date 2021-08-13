iplManagement = {}

function iplManagement:loadCayoPerico()
    debug:print("load cayo perico")
    SetIslandHopperEnabled('HeistIsland', true)

    SetToggleMinimapHeistIsland(true)

    -- misc natives
    SetAiGlobalPathNodesType(true) -- don't disable it check at https://docs.fivem.net/natives/?_0xF74B1FFA4A15FBEA
    Citizen.InvokeNative(0x53797676AD34A9AA, false)    
    SetScenarioGroupEnabled('Heist_Island_Peds', true)

    -- audio stuff
    SetAudioFlag('PlayerOnDLCHeist4Island', true)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Zones', true, true)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Disabled_Zones', false, true)
end

function iplManagement:unloadCayoPerico()
    debug:print("unload cayo perico")
    SetIslandHopperEnabled('HeistIsland', false)

    SetToggleMinimapHeistIsland(false)

    -- misc natives
    SetAiGlobalPathNodesType(false) -- don't disable it check at https://docs.fivem.net/natives/?_0xF74B1FFA4A15FBEA
    Citizen.InvokeNative(0x53797676AD34A9AA, true)    
    SetScenarioGroupEnabled('Heist_Island_Peds', false)

    SetAudioFlag('PlayerOnDLCHeist4Island', false)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Zones', false, false)
    SetAmbientZoneListStatePersistent('AZL_DLC_Hei4_Island_Disabled_Zones', false, false)
end



if config.enableCayoPerico then
    Citizen.CreateThread(function ()
        local inPerrico = false
        iplManagement:unloadCayoPerico() 
        while true do
            Wait(config.cayoPericoDistanceCheckDelay)
            if myPed and myPed.pedCoords then
                if #(myPed.pedCoords-config.cayoPericoPos) < 2000.0 then
                    if not inPerrico then
                        iplManagement:loadCayoPerico()
                        inPerrico = true
                    end
                else 
                    if inPerrico ~= false then
                        iplManagement:unloadCayoPerico()
                        inPerrico = false
                    end
                end
            end
        end
    end)
end