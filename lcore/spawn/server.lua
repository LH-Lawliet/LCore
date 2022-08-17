RegisterServerEvent("lcore:getMyCharacters")
AddEventHandler("lcore:getMyCharacters", function (token, data)
    local source = source
    if isTokenValid(source, token, "lcore:getMyCharacters") then
        --debug:PrintTable(players)
        local player = players:getPlayerFromSource(source)
        database:query("SELECT * FROM characters WHERE owner=$1", {player.userAccount.id}, function (result)
            player.characters = result
            return TriggerClientEvent("callback".."lcore:getMyCharacters", source, result, player:isAllowedToCreateNewChar(), player:isAllowedToUsePed())
        end)
    end
end)


--[[
utils:RegisterServerCallback("lcore:isAllowedToCreateNewChar", function (data)
    local source = data.source
    local player = players:getPlayerFromSource(source)

    return player:isAllowedToCreateNewChar()
end)]]--