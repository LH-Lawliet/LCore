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