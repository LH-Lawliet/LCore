debug = {}

function debug:print(data)
    if config.debug == 1 then
        print(data)
    end
end

-- most of it come from ft_libs, https://github.com/FivemTools/ft_libs/blob/master/src/utils/utils.common.lua
function debug:PrintTable(table, indentation)
    if config and debug == 0 then
        return
    end
    if type(table) == "table" then
        indentation = indentation or 0
        for k, v in pairs(table) do
            formatting = string.rep("  ", indentation) .. k .. ": "
            if type(v) == "table" then
                print(formatting)
                self:PrintTable(v, indentation + 1)
            elseif type(v) == "boolean" then
                if v then
                    print(formatting .. "true")
                else
                    print(formatting .. "false")
                end
            elseif type(v) == "nil" then
                print(formatting .. "nil")
            elseif type(v) == "function" then
                print(formatting .. "function")
            else
                print(formatting .. tostring(v) .. " (" .. type(v) .. ")")
            end
        end
    else
        print("Wrong type to printTable, this is a ".. type(table))
    end
end