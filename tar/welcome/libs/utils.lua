local type = type
local _M = {}
_M._VERSION = '0.07'

require "TSLib"--使用本函数库必须在脚本开头引用并将文件放到设备 lua 目录下
math.randomseed(getRndNum()) -- 随机种子初始化真随机数

function _M:getRndNum(min, max)
    return math.random(min, max)
end

function _M:sleep(num)
    if not num or num == 0 then
        num = math.random(1, 3) -- 随机获取一个 1 - 5 之间的数字
        num = num * 1000
    end
    
    mSleep(num)
end

function _M:click(hex, x, y, x1, y1)
    local x, y = findColorInRegionFuzzy( hex, 95, x, y, x1, y1)
    if x > -1 or y > -1 then
        local num = math.random(2, 3)
        for i=num, 1, -1 do
            randomTap(x, y, 10, "1.png", 1) --随机点击坐标(x,y)，x 为 100±10 取一个随机值，y 为 200±10 取一个随机值。
        end 
        self:sleep()
        return true
    end
    
    return false
end

--[[Table to Json]]
function _M:TableToJson(t)
    local function serialize(tbl)  
        local tmp = {}  
        for k, v in pairs(tbl) do
            local k_type = type(k)  
            local v_type = type(v)  
            local key = (k_type == "string" and "\"" .. k .. "\":") or (k_type == "number" and "")  
            local value = (v_type == "table" and serialize(v))  
                    or (v_type == "boolean" and tostring(v))  
                    or (v_type == "string" and "\"" .. v .. "\"")  
                    or (v_type == "number" and v)  
            tmp[#tmp + 1] = key and value and tostring(key) .. tostring(value) or nil  
        end
        return "{" .. table.concat(tmp, ",") .. "}"  
    end  
    assert(type(t) == "table")  
    return serialize(t)  
end

return _M