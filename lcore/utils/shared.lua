utils = {
    stringedFunctions={}
}


function utils:round(number, decimals)
    if number then
        local mult = 10^(decimals or 0)
        return math.floor(number * mult + 0.5) / mult
    else
        return nil
    end
end

function utils:copy(obj)
    if type(obj) ~= 'table' then return obj end
    local res = {}
    for k, v in pairs(obj) do res[self:copy(k)] = self:copy(v) end
    return res
end

function utils:setToJsonable(obj)
    for k, v in pairs(obj) do
        if type(v) == "table" then
            obj[k] = self:setToJsonable(v)
        elseif type(v) == "function" then
            obj[k]=utils:registerNewStringedFunction(obj[k])
        end
    end
    return obj
end

function utils:registerNewStringedFunction(funct)
    local stringed = tostring(funct)
    if not utils:getStringedFunction(stringed, true) then
        table.insert(self.stringedFunctions, {str = stringed, funct = funct})
    end
    return stringed
end

function utils:getStringedFunction(str, notAlert)
    for k,functTable in pairs(self.stringedFunctions) do
        if functTable.str==str then
            return functTable.funct
        end
    end
    
    if not notAlert then
        print('ERROR : utils:getStringedFunction didn\'t find corresponding function with adress : ',str )
    end
    return nil
end

function utils:tableMerge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

function utils:randomInTable(tb)
    local keys = {}
    for k in pairs(tb) do table.insert(keys, k) end
    return tb[keys[math.random(#keys)]]
end