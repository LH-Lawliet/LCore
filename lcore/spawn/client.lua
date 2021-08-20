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

    utils:TriggerServerCallback("lcore:getMyCharacters", eventToken, false, function (list)
        local charChooseMenu = nil

        local buttons = {}

        for k,char in pairs(list) do
            local button = {}

            if char.rpDeath == 1 then
                button = {text=char.forename.." "..char.lastname, rightComponent="img", rightImgUrl="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenutu/deathmatch.png"}
            else
                button = {text=char.forename.." "..char.lastname}
            end
            table.insert(buttons, button)
        end

        table.insert(buttons, {text=" + ".._("newCharacter"), callback = function ()
            utils:TriggerServerCallback("lcore:isAllowedToCreateNewChar", eventToken, false, function (allowed)
                if not allowed then
                    notificationHandler:create({mainText=_("notAllowedToCreateMoreChar"), flashColor={r=255,g=0,b=0}})
                else
                    local charCreatorMenu = menuHandler:create({
                        banner={
                            title=_("characters")
                        },
                        subTitle=_("chooseAnOption"),
                        buttons = {
                            {type='list', text=_('gender'), list={_('male'),_('female')}, onIndexChange = function(index)
                                debug:print('index change, is now :',index)
                            end},
                            {text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true},
                        }
                    })

                    charChooseMenu:openSubMenu(charCreatorMenu)
                end
            end)
        end})

        table.insert(buttons, {text="tempClose", close=true})

        charChooseMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            buttons = buttons
        })
        charChooseMenu:openMenu()


        myPed = playerPedClass:create()
        ShutdownLoadingScreenNui()
    end)
end)