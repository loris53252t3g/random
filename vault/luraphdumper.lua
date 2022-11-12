--// might be buggy keep executing until you see tables


local function DumpLph(A)
    
for i, v in next, getgc(true) do
    --print (type(v)) --//UserData table function string tonumber
    if type (v) == "function" then
        for i2, v2 in next, debug.getconstants(b) do
            if type (v2) == "table" then
                table.foreach(v2,function(a,b) rconsoleprint(tostring(b).."\n") end)
                   else
                       rconsoleprint(tostring(v2).."\n")
            end
        end
    elseif type(v) == "insert" then
        table.foreach(v,function(a,b) rconsoleprint(tostring(b).."\n") end)
    elseif type(v) == "char" then
        rconsoleprint(tostring(v).."\n")
    elseif type(v) == "bxor" then
        rconsoleprint(tostring(v).."\n")
    elseif type(v) == "match " then
        rconsoleprint(tostring(v).."\n")
    elseif type(v) == "<I4" then
        rconsoleprint(tostring(v).."\n")      
    elseif type(v) == "setfenv" then
        rconsoleprint(tostring(v).."\n")   
    elseif type(v) == "string.byte" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "string.rep" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "table" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "bit32" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "pcall" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "setmetatable" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "type" then
        rconsoleprint(tostring(v).."\n") 
    elseif type(v) == "userdata" then
        rconsoleprint(tostring(v).."\n") 
    end
end
end
DumpLph(1)
--luraph here no spaces allowed 
