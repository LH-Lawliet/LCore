database = {}

local resourceName = GetCurrentResourceName()

function database:isDatabaseReady()
    return exports[resourceName]:isMysqlReady()
end

function database:query(string, variables, callback)
    return exports[resourceName]:mysqlQuery(string, variables, callback)
end


database:query("SELECT * FROM users WHERE ip=?", {"192.168.0.1010"}, function (results)
    debug:PrintTable(results)
end)