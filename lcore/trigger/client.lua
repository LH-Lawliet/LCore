triggerClass = {}
triggerClass.__index = triggerClass

function triggerClass:generateTriggerChunk()
    local chunk = {
        triggers = {}
    }
    setmetatable(chunk,triggerClass)
    return chunk
end

function triggerClass:CreateTrigger(data)
    if data.distance and not data.cubeDistance then
        data.cubeDistance = data.distance*data.distance
    end

    table.insert(self.triggers, data) 
end


function triggerClass:Check()
    local pedPos = nil
    
    if myPed and myPed.pedCoords then
        pedPos = myPed.pedCoords
    else
        pedPos = GetEntityCoords(GetPlayerPed(-1))
    end
    
    for k, trigger in pairs(self.triggers) do
        local inside = false
        if trigger.type == "circle" then
            local dx = trigger.pos.x-pedPos.x
            local dy = trigger.pos.y-pedPos.y
            local dz = trigger.pos.z-pedPos.z
            inside = ((dx*dx+dy*dy+dz*dz)<trigger.cubeDistance)
        elseif trigger.type == "4dot" then
            --[[
                pos1    pos2
                    
                pos3    pos4
            ]]--
            inside = (trigger.pos1.x<pedPos.x and trigger.pos1.y>pedPos.y and trigger.pos2.x>pedPos.x and trigger.pos2.y>pedPos.y and trigger.pos3.x<pedPos.x and trigger.pos3.y<pedPos.y and trigger.pos4.x>pedPos.x and trigger.pos4.y<pedPos.y)
        end
        if inside then
            if not trigger.wasAlreadyIn then
                trigger.wasAlreadyIn = true
                if trigger.enter then
                    trigger.enter(trigger.data)
                end
            end
            if trigger.inside then
                trigger.inside(trigger.data)
            end
        else
            if trigger.wasAlreadyIn then
                trigger.wasAlreadyIn = false
                if trigger.exit then
                    trigger.exit(trigger.data)
                end
            end
        end
    end
end