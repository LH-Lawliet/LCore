players = {
    list={}
}
players.__index = players

function players:getIdFromSource(src)
    return players.list[src].userAccount.id
end

function players:getPlayerFromSource(src)
    return players.list[src]
end

function players:createPlayerIfNotSource(src)
    if not players.list[src] then
        players:create(src):GetPlayerInDatabase()
    end
end

function players:create(src)
    local player = {}
    setmetatable(player,players)
    player.source = src
    player.identifiers = player:getIdentifiers()
    players.list[source] = player
    return player
end

AddEventHandler("playerJoining", function (oldSource)
    local source = source
    debug:print("change source of",oldSource, "to",source)
    players.list[source] = utils:copy(players.list[oldSource])
    players.list[oldSource] = nil
    collectgarbage("collect")
end)

function players:getSource()
    return self.source
end

function players:getIdentifiers()
    local count = GetNumPlayerIdentifiers(self:getSource())

    local tempIdentifiers = {}
    for i = 0, count do
		table.insert(tempIdentifiers, GetPlayerIdentifier(self:getSource(), i))
	end

    local identifiers = {}
    for k,v in pairs(tempIdentifiers) do
        local splitted = utils:stringSplit(v, ":")
        identifiers[splitted[1]] = splitted[2]
    end

    return identifiers
end

function players:checkIfConnectionGranted(callback)
    self:GetPlayerInDatabase(function (results)
        if #results == 0 then
            if config.whitelist then
                if self:isWhitelisted() then
                    self:createUser()
                    self:checkIfConnectionGranted(callback)
                else
                    if callback then
                        callback("notWhitelisted")
                    end
                end
            else
                self:createUser()
                self:checkIfConnectionGranted(callback)
            end
        elseif #results == 1 then
            local plyData = results[1]
            self.userAccount = plyData
            if callback then
                if not plyData.password then
                    callback("granted")
                else
                    callback("askForPassword")
                end
            end
        end
    end)
end

function players:GetPlayerInDatabase(callback)
    database:query("SELECT * FROM users WHERE steam=$1::text OR fivem=$2::text OR discord=$3::text OR live=$4::text OR license=$5::text OR xbl=$6::text", {
        self.identifiers['steam'] or "",
        self.identifiers['fivem'] or "",
        self.identifiers['discord'] or "",
        self.identifiers['live'] or "",
        self.identifiers['license'] or "",
        self.identifiers['xbl'] or ""
    }, function (results)
        if #results == 1 then
            local plyData = results[1]
            self.userAccount = plyData
        end
        if callback then
            callback(results)
        end
    end)
end


function players:createUser()
    return database:querySync("INSERT INTO users (ip,steam,fivem,discord,live,license,xbl, lastSeen) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)", {
        self.identifiers['ip'] or "null",
        self.identifiers['steam'] or "null",
        self.identifiers['fivem'] or "null",
        self.identifiers['discord'] or "null",
        self.identifiers['live'] or "null",
        self.identifiers['license'] or "null",
        self.identifiers['xbl'] or "null",
        os.time()
    })
end

function players:setPassword(password)
    self.userAccount.password = password
    database:query("UPDATE users SET password=$1 WHERE id=$2", {
        password,
        self.userAccount.id
    })
end

function players:isWhitelisted()
    return #database:querySync("SELECT id FROM whitelist WHERE identifier=$1 OR identifier=$2 OR identifier=$3 OR identifier=$4 OR identifier=$5 OR identifier=$6 OR identifier=$7", {
        self.identifiers['ip'] or "null",
        self.identifiers['steam'] or "null",
        self.identifiers['fivem'] or "null",
        self.identifiers['discord'] or "null",
        self.identifiers['live'] or "null",
        self.identifiers['license'] or "null",
        self.identifiers['xbl'] or "null"
    }) ~= 0
end 


function players:getVipLevel()
    return self.userAccount.viplevel
end

function players:isAllowedToCreateNewChar()
    local nAliveChar = 0

    for k, char in pairs(self.characters) do
        if char.rpDeath then
            nAliveChar = nAliveChar+1
        end
    end

    if nAliveChar < config.allowedAliveCharacter[self:getVipLevel()+1] then
        return true
    else
        return false
    end
end

function players:isAllowedToUsePed()
    local vipLevel = self:getVipLevel()
    
    if vipLevel >= config.minVipLlvToUsePed then
        return true
    else
        return false
    end
end