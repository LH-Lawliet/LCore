database = {}

function database:isDatabaseReady()
    return exports[config.resourceName]:isMysqlReady()
end

function database:query(string, variables, callback)
    return exports[config.resourceName]:mysqlQuery(string, variables or {}, callback)
end

function database:querySync(string, variables)
    local result = nil
    exports[config.resourceName]:mysqlQuery(string, variables or {}, function (nResult)
        result = nResult
    end)
    repeat Wait(1) until result~=nil
    return result
end