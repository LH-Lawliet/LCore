myPed = nil

local eventToken = nil
AddEventHandler("lcore:updateToken", function (token)
    eventToken = token
end)

Citizen.CreateThreadNow(function ()
    while true do
        Citizen.Wait(50)
        local playerPed = PlayerPedId()
        if playerPed and playerPed ~= -1 and eventToken then
            break
        end
    end

    utils:TriggerServerCallback("lcore:getMyCharacters", eventToken, false, function (characters, isAllowedToCreateNewChar)
        --[[local charChooseMenu = nil

        local buttons = {}

        for k,char in pairs(characters) do
            local button = {}

            if char.rpDeath == 1 then
                button = {text=char.forename.." "..char.lastname, rightLogo="dead"}
            else
                button = {text=char.forename.." "..char.lastname}
            end
            table.insert(buttons, button)
        end

        local gender = "male"

        local charCreatorMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            buttons = {
                {type='list', text=_('gender'), list={_('male'),_('female')}, onIndexChange = function(data)
                    debug:PrintTable(data)
                    gender = reverseLabel(data.value)
                    debug:print('index change, is now :',data.value, data.key, gender)
                end},
                {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
            }
        })

        if isAllowedToCreateNewChar then
            table.insert(buttons, {text=" + ".._("newCharacter"), rightLogo = ">", subMenu = charCreatorMenu})
        else
            table.insert(buttons, {text=" + ".._("newCharacter"), rightLogo = ">", callback = function ()
                notificationHandler:create({mainText=_("notAllowedToCreateMoreChar"), flashColor={r=255,g=0,b=0}})
            end})
        end

        table.insert(buttons, {text="tempClose", close=true})

        charChooseMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            buttons = buttons
        })
        charChooseMenu:openMenu()]]
        

        myPed = playerPedClass:create()
        myPed.triggers = triggerClass:generateTriggerChunk()

        --[[for i=0,5000,1 do
            myPed.triggers:CreateTrigger({
                type="4dot",
                pos1={x=10.5,y=11.5,z=-1500.50},
                pos2={x=11.5,y=11.5,z=-1500.50},
                pos3={x=10.5,y=12.5,z=-1500.50},
                pos4={x=11.5,y=12.5,z=-1500.50},
                distance = 5.0
            })
        end]]--
        ShutdownLoadingScreenNui()
        Wait(250)

        --if IsPauseMenuActive() then
        --    frontendMenuHandler:create({ped=myPed:GetPlayerPed()})
        --    Wait(100)
        --end

        --local frontendMenu = frontendMenuHandler:create({ped=myPed:GetPlayerPed(), blur=250, pedPosition=2})
        --Wait(5000)
        --frontendMenu:close()
    end)
end)