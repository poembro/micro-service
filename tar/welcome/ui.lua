local sz = require "sz"
local json = sz.json
local os = os
init("0",0)
luaExitIfCall(true)
local w, h = getScreenSize()

local boot = function() 
    --getScreenSize 获取屏幕分辨率 
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


local test = function()
   MyTable = {
       style = "default",
       width = w,
       height = h,
       cancelname = "返回",
       okname = "确认执行", 
       timer = 100,
       views = {
           {["type"] = "Label",["text"] = "设置",["size"] = 25,["align"] = "center",["color"] = "0,0,255",},
           {["type"]="Label",  ["size"]=25,    ["align"]="center", ["color"]="255,50,50",  ["text"]="欢迎来到桃子的世界"},
           {["type"]="Label",  ["size"]=25,    ["align"]="center", ["color"]="50,50,50",   ["text"]="大侠来起个卖萌的名字吧",},
           {["type"]="Edit",   ["size"]=15,    ["align"]="left",   ["color"]="0,0,0",      ["prompt"]="",  ["text"]= "test",}, 
           {["type"]="Label",  ["size"]=25,    ["align"]="center", ["color"]="50,50,50",   ["text"]="你的扣扣号",},
           {["type"]="Edit",   ["size"]=15,    ["align"]="left",   ["color"]="0,0,0",      ["prompt"]="",  ["text"]=""}, 
           {
               ["type"] = "RadioGroup",                     --单选框，input1
               ["list"] = "选项1,选项2,选项3,选项4,选项5,选项6,选项7",--7个单选项，序号从0开始，即选项1编号为0，选项2编号为1，依此类推
               ["select"] = "1",                    --默认选择选项2
           },
           {
               ["type"] = "CheckBoxGroup",                  --多选框，input3
               ["list"] = "选项 1,选项 2,选项 3,选项 4,选项 5,选项 6,选项 7",--7个多选项
               ["select"] = "3@5",                        --默认选择选项 3 和选项 5
           },
           {
               ["type"] = "ComboBox",                       --下拉框，input4
               ["list"] = "选项 1,选项 2,选项 3,选项 4,选项 5,选项 6,选项 7",--7 个下拉选项，序号从 0 开始，即选项 1 编号为 0，选项 2 编号为 1，依此类推
               ["select"] = "1",                       --默认选择选项 2
           },
       }
   }
   
   local MyJsonString = json.encode(MyTable);
   
   local ret, input1, input2, input3, input4, input11  = showUI(MyJsonString);
   dialog(ret .. "--" .. input1 .. "--" .. input2.. "--" .. input3.. "--" .. input4.. "--" .. input11 ); 
end


local main = function ()
    test() 
end

main()


