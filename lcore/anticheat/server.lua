eventToken = utils:randomString(64)

local clientWhoGetToken = {}

RegisterServerEvent("lcore:askToken")
AddEventHandler("lcore:askToken", function ()
    local source = source

    if not utils:isInTable(source, clientWhoGetToken) then
        table.insert(clientWhoGetToken, source)
        debug:print("lcore:updateToken", eventToken)
        TriggerClientEvent("lcore:updateToken", eventToken)
    else
        DropPlayer(source, "ANTICHEAT KICK, REQUEST TOKEN A SECOND TIME")
    end
end)

function isTokenValid(src, token, eventName)
    debug:print(src, token, eventName)
    if token == eventToken then
        return true
    else
        DropPlayer(src, "ANTICHEAT KICK, CALL "..eventName.." WITH WRONG TOKEN")
        return false
    end
end