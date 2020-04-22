

local os = os
local utils = require "libs.utils" 
init("0",0)
luaExitIfCall(true)
local w, h = getScreenSize()

local toweibot = function()
    --btnNav 消息
    local flag 
    flag = utils:click(0x333333, 481, 1225, 520, 1273)
    if not flag then 
        return toast( "btnNav 消息 没有点中", 1) 
    end
     --顶部消息
    flag = utils:click(0xfafafa, 397, 79, 455, 110)
    if not flag then 
        return toast( "顶部 消息 没有点中", 1) 
    end
    
    --置顶记录
    flag = utils:click(0xe45439, 255, 646, 306, 669)
    if not flag then 
        return toast( "置顶记录 没有点中", 1) 
    end
    --点击连接 换成我自己的web连接
    flag = utils:click(0xa6e4ff, 276, 340, 595, 495)
    if not flag then 
        return toast( "连接 没有点中", 1) 
    end
    utils:sleep()
end

-- 我的页面是一个 列表不断的扫描 
local scanning = function()
    --一旦发现有li点击第一个 跳转到对应的微博去  (需要页面存托，不然不知道怎么跳转)
    return true
end

local worker = function(flag)
    if flag == "1_1_0" then
        --点赞
    end
    
    --- 关注
    
    -- 评论
end

local main = function ()
    toweibot() 
    
    local flag
    while true do
        flag = scanning()
        if flag then 
            worker()
        end

        utils:sleep(1000)
    end
end

main()



