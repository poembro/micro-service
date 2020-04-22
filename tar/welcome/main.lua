local os = os
local utils = require "libs.utils" 
init(1)
luaExitIfCall(true)
local w, h = getScreenSize()

-- 战神 029

--判断当前是否瞄准
local ismiaozhun = function()
    local x,y = findMultiColorInRegionFuzzy( 0xeb0201, "0|3|0xeb0201,31|59|0xc09022,37|68|0xd1ac32,29|79|0xffff7a", 90, 0, 316, 139, 453)
    if x > -1 or y > -1 then
        return true
    else 
        toast(" 判断左侧没有瞄准提示:周围没有怪物")
        return false
    end
end

--攻击按钮
local gongji = function()
    local flag = ismiaozhun()
    if flag then
        utils:click(0x826931, 1112, 526, 1183, 588)
    end
end


--判断是否有怪物 不断的扫描检查怪物血杠
local scanningGW = function() 
    local x,y =  findMultiColorInRegionFuzzy( 0x9d0204, "1|0|0xbc0103,2|0|0xbc0202,2|1|0xcc0000,1|1|0xcd0000,0|1|0xac0102", 92, 132, 114, 1264, 590)
    if x > -1 or y > -1 then
        toast(x  .. "   " .. y )  
        return true
    end

    local x,y = findMultiColorInRegionFuzzy( 0x4e0508, "1|1|0xc50102,2|1|0xc50102,3|1|0xc50201,1|2|0xc10000", 92, 151, 124, 1068, 579)
    if x > -1 or y > -1 then
        toast(x  .. "   " .. y )  
        return true
    end
 
    toast("扫描怪物: 没有找到" )
    return false
end


--判断是否有怪物  按钮方式判断(更加精准)
local isguaiwu = function()
    --判断当前是否瞄准
    local flag = ismiaozhun()
    if not flag then
        --当前没有瞄准 点击一下切换怪物
        utils:click( 0x9e8237, 1063, 629, 1098, 672)
    end
    return flag
end
 

local main = function ()
    local rndnum = 0 -- 随机sleep睡眠
    local flag = false --是否找到怪物
    while true do
        rndnum = utils:getRndNum(1, 3) 
        utils:sleep(rndnum * 1000)

        if rndnum < 3 then
            flag = isguaiwu()
        else
            flag = scanningGW()
        end
        
        if flag then 
            gongji()
        end

        flag = false
    end
end

main()