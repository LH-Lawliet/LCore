RegisterServerEvent("lcore:ServerPrint")
AddEventHandler("lcore:ServerPrint", function (token, ...)
    local source = source
    if isTokenValid(source, token, "lcore:ServerPrint") then
        debug:print(...)
    end
end)