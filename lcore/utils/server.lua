function utils:RegisterServerCallback(name, checkFunction)
    RegisterServerEvent(name)
    AddEventHandler(name, function (token, data)
        local source = source
        if isTokenValid(source, token, name) then
            local result = checkFunction(data)
            TriggerClientEvent("callback"..name, source, result)
            return
        end
    end)
end
