-- // Defining our variables/request function
local http_request = http_request or request
if (syn) then
    http_request = syn.request    
end

-- // Defining the key
--// if it has a key or whatever use ur brain
getgenv().key = "helloooo "

-- // Hooking the request function
local old; old = hookfunc(http_request, function(self)
    -- // If we find an url that is 'http://cracking/tut/server.php?key=**KEYHERE**' then -- a example 
    if (self.Url == 'http://akon.tk/lmfaooo/server.php?key=' .. getgenv().key) then
        -- // Make the url return a valid body so that it tricks the whitelist
        return {
            StatusCode = 200, 
            Body = ''  --// print out the body when u get wled and out it here or use a http spy
    end

    return old(self)
end)

--script here
