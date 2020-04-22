local os = os
 
local sz = require "sz"
local json = sz.json
local http = require "szocket.http" 
local ltn12 = require "ltn12"
local requestUrl = function ()
    local response_body = {}
    http.TTIMEOUT = 8
    local staus,code, header = http.request{
        url = "http://47.107.163.111/ip?ip=61.151.178.174",
        headers ={["Content-Type"] = "application/x-www-form-urlencoded",},
        sink = ltn12.sink.table(response_body),  --用 ltn12 转化接受的数据为 lua 可用
    }
    if code ~= 200 then 
        toast("服务器异常")
        return 
    end

    --dialog(table.concat(header) , 0);
    dialog(table.concat(response_body), 0);
end


local softinit = function()
    
    --getScreenSize 获取屏幕分辨率
    local w,h = getScreenSize();
    if w == 640 and h == 1136 then         --iPhone SE,5,5S,iPod touch 5
        dialog("iPhone SE,5,5S, iPod touch 5")
    elseif w == 640 and h == 960 then      --iPhone 4,4S,iPod touch 4
        dialog("iPhone 4,4S,iPod touch 4")
    elseif w == 320 and h == 480 then      --iPhone 非高分屏
        dialog("iPhone 非高分屏")
    elseif w == 768 and h == 1024 then     --iPad 1,2,mini 1
        dialog("iPad 1,2,mini 1")
    elseif w == 1536 and h == 2048 then    --iPad 3,4,5,mini 2
        dialog("iPad 3,4,5,mini 2")
    elseif w == 1080 and h == 1920 then
        dialog("小米 4，华为荣耀 6p 等")
    elseif w == 720 and h == 1280 then
        dialog("红米 note2 等")
    elseif w == 768 and h == 1280 then
        dialog("魅蓝等")
    elseif w == 800 and h == 1280 then
        dialog("三星 N5100 等")
    elseif w == 480 and h == 800 then
        dialog("酷派 8017-T00 等")
    end
    -- getDisplaySize 获取设备可用分辨率
    local w,h = getDisplaySize()
     dialog(w..":"..h)
end


--单点取色
require "TSLib"--使用本函数库必须在脚本开头引用并将文件放到设备 lua 目录下
--pic 参数仅支持函数库 v1.2.4 及其以上版本 TSLib
local clickLogin = function ()
    local x, y = findColorInRegionFuzzy( 0xff8200, 95, 632, 79, 696, 111)
    if x > -1 or y > -1 then
        toast(x  .. "   " .. y )
        randomTap(x, y, 10, "1.png", 1) --随机点击坐标(x,y)，x 为 100±10 取一个随机值，y 为 200±10 取一个随机值。
    else
        toast(x  .. "  没有找到  " .. y )
    end
end
--人机验证
local clickAuth = function() 
    local x,y = findColorInRegionFuzzy( 0xafbabf, 95, 90, 296, 117, 322)
    toast(x  .. "   " .. y )
    if x > -1 or y > -1 then
        touchDown(x, y);
        mSleep(2723);
        touchUp(x, y);
 
        --全屏截图（以小米 4 为例），并以当前日期为文件名保存
        current_time = os.date("%Y-%m-%d_%H:%M:%S", os.time()); --以时间戳命名进行截图
        local w,h = getScreenSize();
        -- 右下角顶点坐标最大为 (宽度最大值 - 1，高度最大值 - 1)
        snapshot(current_time..".png", 0, 0, w-1, h-1);
    end 
end

local clickInput = function ()
    --点击输入框获取焦点（假设输入框坐标已知）
    touchDown(108, 408);       
    mSleep(30)
    touchUp(108, 406);
    --延迟 1 秒以便获取焦点，注意某些应用不获取焦点无法输入 
    mSleep(1000)
    inputText("269724033@qq.com"); 
    
    touchDown(109,500);       
    mSleep(30)
    touchUp(109,500);
    mSleep(1000)
    inputText("admin502");

    mSleep(200)
    
    touchDown(322, 688);       
    mSleep(10)
    touchUp(322, 688); 
end

--通用字库
local textocr = function()
    local t = os.clock()
    -- OCR 英文识别，注意本函数仅对标准字体识别尚可，非标准字体请自行制作字库配合触动点阵识别函数效果更佳 
    -- 创建一个全分辨率通用的浮动框 用来测试 ocrText
    -- 使用 ocrText 函数可能会出现识别不准的问题推荐使用百度 AI 函数进行识别，使用方法详见下方注意事项。
      
    local text = ocrText(577, 182, 641, 221, 1)

    t =  os.clock() - t
    dialog("检查时间:" .. t .. "  匹配文字：" .. text or " ")
end

local main = function ()
    local choice = dialogRet("请选择您的性别：", "男", "女", "", 0);
    if choice == 0 then      --男
        toast("你好，帅哥"); 
        mSleep(1000);
    elseif choice == 1 then  --男
        dialog("你好，美女",0);
        mSleep(1000);
    end
    
    --requestUrl() --发送请求 
    clickLogin() --点击登陆
    mSleep(2000);
    clickInput() --提交表单
    mSleep(2000);
    clickAuth(); --人机
    --textocr()
end

init(0)
softinit()
main()


