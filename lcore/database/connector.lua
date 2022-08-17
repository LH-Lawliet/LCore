database = {}

function database:isDatabaseReady()
    return exports[config.resourceName]:isDatabaseReady()
end

function database:query(string, variables, callback)
    return exports[config.resourceName]:databaseQuery(string, variables or {}, callback)
end

function database:querySync(string, variables)
    local result = nil
    exports[config.resourceName]:databaseQuery(string, variables or {}, function (nResult)
        result = nResult
    end)
    repeat Wait(1) until result~=nil
    return result
end