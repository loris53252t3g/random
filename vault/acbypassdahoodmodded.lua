local R = game.Players.LocalPlayer;
local b = game:GetService("RunService");
local u = game:GetService('ReplicatedStorage');
local x = u.MainEvent;
local v = b.Heartbeat;
local function r(xz)
    return R:Kick(xz);
end;
do
    local AK = nil;
    AK = hookfunction(x.FireServer, newcclosure(function(oc, ...)
        local Cc = {
            ...
        };
        if Cc[1] == "CHECKER_1" or Cc[1] == "TeleportDetect" or Cc[1] == "OneMoreTime" then
            return nil;
        end;
        return AK(oc, ...);
    end));
    v:Connect(function()
        local xo = R.Character and R.Character.PrimaryPart;
        if xo then
            for CX, kX in pairs(getconnections(xo:GetPropertyChangedSignal("CFrame"))) do
                kX:Disable();
            end;
        end;
    end);
    local function tK(kA)
        while true do
            if not kA then
                return;
            end;
            v:Wait();
            for i8, v8 in pairs(kA:GetChildren()) do
                if v8:IsA("Script") and v8:FindFirstChildOfClass("LocalScript") then
                    v8:FindFirstChildOfClass("LocalScript").Source = "Cleared;
                    return;
                end;
            end;
        end;
    end;
    if R.Character then
        tK(R.Character);
    end;
    R.CharacterAdded:Connect(tK);
end;
