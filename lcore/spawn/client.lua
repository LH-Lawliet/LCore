myPed = nil
Citizen.CreateThreadNow(function ()
    while true do
        Citizen.Wait(50)
        local playerPed = PlayerPedId()
        if playerPed and playerPed ~= -1 then
            myPed = playerPedClass:create()
            break
        end
    end
end)