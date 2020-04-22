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

