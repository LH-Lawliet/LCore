AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local source = source

    deferrals.defer()
    print(name, source, "is connecting")

    local player = players:create(source)

    local facts = {}
    for type,value in pairs(player.identifiers) do
        table.insert(facts,{
            title = type,
            value = value
        })
    end
    
    deferrals.presentCard({
        type = "AdaptiveCard",
        version = "1.3",
        body = {
            {
                type = "TextBlock",
                text = _("connectionDatabaseCheck"),
                size = "large"
            },
            {
                type = "TextBlock",
                text = _("yourInformations"),
                size = "medium"
            },
            {
                type = "FactSet",
                facts = facts
            }
        }
    })

    player:checkIfConnectionGranted(function (status)
        if status == "notWhitelist" then
            deferrals.presentCard({
                type = "AdaptiveCard",
                version = "1.3",
                body = {
                    {
                        type = "TextBlock",
                        text = _("notWhitelisted"),
                        weight = "bolder",
                        size = "large"
                    },
                    {
                        type = "ActionSet",
                        actions = {
                            {
                                type = "Action.OpenUrl",
                                title = "Discord",
                                url = config.discordUrl
                            }
                        },
                    },
                    {
                        type = "TextBlock",
                        text = _("yourInformations"),
                        size = "medium"
                    },
                    {
                        type = "FactSet",
                        facts = facts
                    }
                },
            })
        elseif status == "askForPassword" then
            deferrals.presentCard({
                type = "AdaptiveCard",
                version = "1.3",
                body = {
                    {
                        type = "TextBlock",
                        text = _("password"),
                        weight = "bolder",
                        size = "large"
                    },
                    {
                        type = "TextBlock",
                        text = _("forgetPasswordAdvice")
                    },
                    {
                        type = "Input.Text",
                        id = "passwordInput",
                        placeholder = "Password",
                        maxLength = 18
                    },
                },
                actions = {
                    {
                        type = "Action.Submit",
                        title = _("validate"),
                    },
                    {
                        type = "Action.OpenUrl",
                        title = "Discord",
                        url = config.discordUrl
                    }
                },
            }, function (data, rawData)
                crypto:compareCrypto(data.passwordInput or "", player.userAccount.password, function (valid)
                    if valid then
                        deferrals.done()
                    else
                        CancelEvent()
                        setKickReason(_("wrongPassword"))
                        deferrals.done(_("wrongPassword"))
                    end
                end)
            end)
        elseif status == "granted" then
            deferrals.done()
        end
    end)

    --[[
    to send things to loadscreen    
    
    deferrals.handover({
        name = GetPlayerName(source)
    })
    ]]--
end)