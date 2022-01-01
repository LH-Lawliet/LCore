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

    utils:TriggerServerCallback("lcore:getMyCharacters", eventToken, false, function (characters, isAllowedToCreateNewChar, isAllowedToUsePed)
        local charChooseMenu = nil

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

        local createdCharacter = {
            gender = "male",
            firstName = "",
            lastName = "",
            pedModel = config.defaultPedByGender["male"]
        }

        local allPedsMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            mouse=true,
            loadingRoutine = function (this)
                local selectedLogo = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/shop_box_tick_lessMargin.png"
                for k,pedData in pairs(config.pedModelList[createdCharacter.gender]) do
                    if pedData.allowedInCharactedCreation then
                        this:addButton({
                            text=pedData.model, 
                            rightComponentIfTrue="img", 
                            rightImgUrlIfTrue=selectedLogo, 
                            rightComponentIsTrue=function ()
                                return (pedData.model == createdCharacter.pedModel)
                            end, 
                            reloaderCallback = function()
                                myPed:setModel(pedData.model)
                                createdCharacter.pedModel = pedData.model
                            end
                        })
                    end
                end
                this:addButton({text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true})
            end
        })



        local faceModificationMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            mouse=true,
            loadingRoutine = function (this)
                this:addButton({text=_("back"), textStyle={color="rgba(255,0,0)"}, back=true})
            end
        })


        local charCreatorMenu = menuHandler:create({
            banner={
                title=_("characters")
            },
            subTitle=_("chooseAnOption"),
            mouse=true,
            buttons = {
                {type='list', text=_('gender'), list={_('male'),_('female')}, onIndexChange = function(data)
                    createdCharacter.gender = reverseLabel(data.value)
                    myPed:setModel(config.defaultPedByGender[createdCharacter.gender])
                    pedModel = config.defaultPedByGender[createdCharacter.gender]
                    debug:print('index change, is now :',data.value, data.key, createdCharacter.gender)
                end},
                {
                    text=_('useAPed'), 
                    rightComponentIfTrue="img", 
                    rightImgUrlIfTrue="https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/shop_lock.png", 
                    rightComponentIsTrue=function ()
                        return (not isAllowedToUsePed)
                    end, 

                    callback=function ()
                        notificationHandler:create({mainText=_("HadToBeVipToUsePed"), flashColor={r=255,g=0,b=0}})
                    end,

                    subMenu=utils:_if(isAllowedToUsePed, allPedsMenu, nil) -- Submenu will replace the callback
                },
                {type='textInput', text=_('firstName'), placeholder=_('firstName'), onChange = function(data)
                    createdCharacter.firstName = data
                end},
                {type='textInput', text=_('lastName'), placeholder=_('lastName'), onChange = function(data)
                    createdCharacter.lastName = data
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
        charChooseMenu:openMenu()
        

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