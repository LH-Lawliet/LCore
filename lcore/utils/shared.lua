utils = {}


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