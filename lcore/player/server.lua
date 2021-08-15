players = {}
players.__index = players

function players:create(src)
    local player = {}
    setmetatable(player,players)
    player.source = src
    player.identifiers = player:getIdentifiers()
    return player
end

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
    database:query("SELECT * FROM users WHERE steam=? OR fivem=? OR discord=? OR live=? OR license=? OR xbl=?", {
        self.identifiers['steam'] or "",
        self.identifiers['fivem'] or "",
        self.identifiers['discord'] or "",
        self.identifiers['live'] or "",
        self.identifiers['license'] or "",
        self.identifiers['xbl'] or ""
    }, function (results)
        if #results == 0 then
            if config.whitelist then
                if self:isWhitelisted() then
                    self:createUser()
                    self:checkIfConnectionGranted(callback)
                else
                    callback("notWhitelisted")
                end
            else
                self:createUser()
                self:checkIfConnectionGranted(callback)
            end
        end
    end)
end


function players:createUser()
    return database:querySync("INSERT INTO users (ip,steam,fivem,discord,live,license,xbl, lastSeen) VALUES (?,?,?,?,?,?,?,?)", {
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

function players:isWhitelisted()
    print("I LIKE THAT",self.identifiers['ip'])
    return #database:querySync("SELECT id FROM whitelist WHERE identifier=? OR identifier=? OR identifier=? OR identifier=? OR identifier=? OR identifier=? OR identifier=?", {
        self.identifiers['ip'] or "null",
        self.identifiers['steam'] or "null",
        self.identifiers['fivem'] or "null",
        self.identifiers['discord'] or "null",
        self.identifiers['live'] or "null",
        self.identifiers['license'] or "null",
        self.identifiers['xbl'] or "null"
    }) ~= 0
end 