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

local run = function()
    clickLogin() --点击登陆
    mSleep(2000);
    clickInput() --提交表单
    mSleep(2000);
    clickAuth(); --人机
end