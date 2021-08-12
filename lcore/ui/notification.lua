notificationHandler = {}
notificationHandler.__index = notificationHandler

function notificationHandler:create(data)
    if type(data) == "string" then
        data = {mainText=data}
    end

    if data.color then
        ThefeedSetNextPostBackgroundColor(data.color) -- list of colors, gyazo.com/68bd384455fceb0a85a8729e48216e15
    end

    if data.textColor then
        SetColourOfNextTextComponent(data.textColor) -- list of colors, gyazo.com/68bd384455fceb0a85a8729e48216e15
    end

    if data.flashColor then
        data.flash = true
        ThefeedSetAnimpostfxColor(data.flashColor.r or 0, data.flashColor.g or 0, data.flashColor.b or 0, data.flashColor.a or 255)
    end

    if data.newStatLevel then
        BeginTextCommandThefeedPost("PS_UPDATE")
        AddTextComponentInteger(data.newStatLevel)

        EndTextCommandThefeedPostStats(data.title or "", 14, data.newStatLevel, data.oldStatLevel or data.oldStatLevel, data.flash or false, data.icon or "CHAR_DEFAULT", data.icon or "CHAR_DEFAULT")
    else
        BeginTextCommandThefeedPost("STRING")

        if string.len(data.mainText)>99 then
            AddTextEntry('LCORE_LABEL', data.mainText)
            AddTextComponentSubstringTextLabel('LCORE_LABEL')
        else
            AddTextComponentSubstringPlayerName(data.mainText)
        end

        if data.icon or data.iconType or data.title or data.subTitle or data.duration or data.clanTag then
            if not data.clanTag then
                EndTextCommandThefeedPostMessagetextTu(data.icon or "CHAR_DEFAULT", data.icon or "CHAR_DEFAULT", data.flash or false, data.iconType or 0, data.title or "", data.subTitle or "", data.duration or 1.0)
            else
                EndTextCommandThefeedPostMessagetextWithCrewTag(data.icon, data.icon, data.flash or false, data.iconType or 0, data.title or "", data.subTitle or "", data.duration or 1.0, "___"..data.clanTag)
            end
        end
    end

    local notification = {}
    setmetatable(notification, notificationHandler)
    notification.id = EndTextCommandThefeedPostTicker(data.flash or false, true)

    return notification
end