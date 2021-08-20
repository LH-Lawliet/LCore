RegisterServerEvent("lcore:getMyCharacters")
AddEventHandler("lcore:getMyCharacters", function (token, data)
    local source = source
    if isTokenValid(source, token, "lcore:getMyCharacters") then
        --debug:PrintTable(players)
        local player = players:getPlayerFromSource(source)
        database:query("SELECT * FROM characters WHERE owner=?", {player.userAccount.id}, function (result)
            player.characters = result
            return TriggerClientEvent("callback".."lcore:getMyCharacters", source, result)
        end)
    end
end)


utils:RegisterServerCallback("lcore:isAllowedToCreateNewChar", function (data)
    local source = data.source
    local player = players:getPlayerFromSource(source)

    local nAliveChar = 0

    for k, char in pairs(player.characters) do
        if char.rpDeath then
            nAliveChar = nAliveChar+1
        end
    end
    
    if nAliveChar < config.allowedAliveCharacter[player:getVipLevel()+1] then
        return true
    else
        return false
    end
end)