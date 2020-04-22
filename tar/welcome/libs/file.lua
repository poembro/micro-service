--[[读取指定文件
Str = F_Read("c:/1.txt")]]
function F_Read(File)
    if F_Exist(File) then 
        local f = assert(io.open(File, "r"))
        local string = f:read("*all")
        f:close()
        return string
    else
        return nil
    end
end
 
--[[判断文件是否存在
Boo = IsSave("c:/1.txt")]]
function F_Exist(File)
    local Boo = true
    local F,Err=io.open(File,"r+");
    if Err==nil then 
        Boo=true
        F:close();
    else
        Boo=false
    end
    return Boo
end
 
--[[写入文件内容(原有基础上追加写入)
nil = F_SavesA("7364235F")]]
function F_SavesA(File,text)
    local sFlie=io.open(File,"a+");
    sFlie:write(text .. "\r\n");
    sFlie:close();
end
 
--[[写入文件内容(直接清空写入)
nil = F_SavesW("7364235F")]]
function F_SavesW(File, text)
    local sFlie = io.open(File, "w") 
    sFlie:write(text); 
    sFlie:close() 
end
 
--[[删除文件
nil = F_Del("c:/1.txt")]]
function F_Del(File)
    os.remove(File)
end
 