--// ced me if ur gonna use this


local PantherHubWhitelist = Instance.new("ScreenGui")
local Gui_Holder = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Top_Filling = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Main_Holder = Instance.new("Frame")
local Main = Instance.new("Frame")
local Whitelist_Frame = Instance.new("Frame")
local Whitelist_Holder = Instance.new("Frame")
local Key_Box = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Proceed = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Invite_Holder = Instance.new("Frame")
local Invite = Instance.new("TextLabel")
local Copy_Invite = Instance.new("ImageButton")
local Main_Rounding = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")

PantherHubWhitelist.Name = "Panther Hub Whitelist"
PantherHubWhitelist.Parent = game.CoreGui
PantherHubWhitelist.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Gui_Holder.Name = "Gui_Holder"
Gui_Holder.Parent = PantherHubWhitelist
Gui_Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gui_Holder.BackgroundTransparency = 1
Gui_Holder.Position = UDim2.new(0.5, -160, 0.5, -65)
Gui_Holder.Size = UDim2.new(0, 320, 0, 130)

Top.Name = "Top"
Top.Parent = Gui_Holder
Top.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Top.Size = UDim2.new(1, 0, 0, 40)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 1, 0)
Title.ZIndex = 2
Title.Font = Enum.Font.SourceSansSemibold
Title.Text = "Panther Hub - Whitelist"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20

Top_Filling.Name = "Top_Filling"
Top_Filling.Parent = Top
Top_Filling.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Top_Filling.BorderSizePixel = 0
Top_Filling.Position = UDim2.new(0, 0, 0.5, 0)
Top_Filling.Size = UDim2.new(1, 0, 0.5, 0)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Top

Main_Holder.Name = "Main_Holder"
Main_Holder.Parent = Gui_Holder
Main_Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main_Holder.BackgroundTransparency = 1
Main_Holder.Position = UDim2.new(0, 0, 0, 40)
Main_Holder.Size = UDim2.new(1, 0, 0, 85)

Main.Name = "Main"
Main.Parent = Main_Holder
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderSizePixel = 0
Main.Size = UDim2.new(1, 0, 1, 0)

Whitelist_Frame.Name = "Whitelist_Frame"
Whitelist_Frame.Parent = Main
Whitelist_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Whitelist_Frame.BackgroundTransparency = 1
Whitelist_Frame.Size = UDim2.new(1, 0, 1, 0)

Whitelist_Holder.Name = "Whitelist_Holder"
Whitelist_Holder.Parent = Whitelist_Frame
Whitelist_Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Whitelist_Holder.BackgroundTransparency = 1
Whitelist_Holder.Position = UDim2.new(0, 20, 0, 10)
Whitelist_Holder.Size = UDim2.new(0, 284, 0, 45)

-- "the fuck is a table" ~ Spade#4451

Key_Box.Name = "Key_Box"
Key_Box.Parent = Whitelist_Holder
Key_Box.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Key_Box.Size = UDim2.new(1, 0, 0, 20)
Key_Box.Font = Enum.Font.SourceSans
Key_Box.PlaceholderText = "Insert Whitelist Key"
Key_Box.Text = ""
Key_Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Key_Box.TextSize = 14
Key_Box.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Key_Box

Proceed.Name = "Proceed"
Proceed.Parent = Whitelist_Holder
Proceed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Proceed.Position = UDim2.new(0, 0, 0, 25)
Proceed.Size = UDim2.new(1, 0, 0, 20)
Proceed.Font = Enum.Font.SourceSans
Proceed.Text = "Submit and Proceed"
Proceed.TextColor3 = Color3.fromRGB(150, 150, 150)
Proceed.TextSize = 14

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Proceed

Invite_Holder.Name = "Invite_Holder"
Invite_Holder.Parent = Whitelist_Frame
Invite_Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Invite_Holder.BackgroundTransparency = 1
Invite_Holder.Position = UDim2.new(0.5, -70, 0, 65)
Invite_Holder.Size = UDim2.new(0, 140, 0, 14)

Invite.Name = "Invite"
Invite.Parent = Invite_Holder
Invite.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Invite.BackgroundTransparency = 1
Invite.Size = UDim2.new(0, 120, 0, 14)
Invite.Font = Enum.Font.SourceSans
Invite.Text = ""
Invite.TextColor3 = Color3.fromRGB(255, 255, 255)
Invite.TextSize = 14

Copy_Invite.Name = "Copy_Invite"
Copy_Invite.Parent = Invite
Copy_Invite.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Copy_Invite.BackgroundTransparency = 1
Copy_Invite.Position = UDim2.new(1, 5, 0, 0)
Copy_Invite.Size = UDim2.new(0, 14, 0, 14)
Copy_Invite.Image = "http://www.roblox.com/asset/?id=6575271885"

Main_Rounding.Name = "Main_Rounding"
Main_Rounding.Parent = Main_Holder
Main_Rounding.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main_Rounding.Position = UDim2.new(0, 0, 1, -5)
Main_Rounding.Size = UDim2.new(1, 0, 0, 10)
Main_Rounding.ZIndex = 0

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Main_Rounding

-- UI Library

local Library = loadstring(game:HttpGet("https://topgloris.com/folders/uis/key%20system%20lib.lua"))()

-- Services

local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

-- Variables

local Filename = "PantherHubWhitelist.json" --// gets saved in workspace so u wont have to put key again when u execute 
local canContinue = false
local Discord_Invite = "discord.gg/suckmydicknigga" ---// discord inv

local Whitelist_Table = {
    [606849621] = table.concat({8,3,6,5,9,3,5,4}),  --// 8,3,6,5,9,3,5,4 is the key when u enter the key it will be without the , 606849621 is the game id
}

-- Setup

PantherHubWhitelist.Enabled = false
Invite.Text = Discord_Invite

local s, File = pcall(function()
    return HttpService:JSONDecode(readfile(Filename))
end)

File = s and File or {}

if not Whitelist_Table[game.PlaceId] then
    Library:Notify("This game is not supported by Panther Hub.", function() end)
    return
end

--// Scripts

if not s or not File[tostring(game.PlaceId)] or File[tostring(game.PlaceId)] ~= Whitelist_Table[game.PlaceId] then
    PantherHubWhitelist.Enabled = true

    Proceed.MouseButton1Click:Connect(function()
        if Key_Box.Text == Whitelist_Table[game.PlaceId] then
            File[game.PlaceId] = Whitelist_Table[game.PlaceId]
            writefile(Filename, HttpService:JSONEncode(File))
            Library:Notify("Welcome to Panther Hub!", function() end)
            canContinue = true

        elseif Key_Box.Text == "" then
            Library:Notify("Try inputting a key.", function() end)
        
        elseif Key_Box.Text ~= "" then
            Library:Notify("Invalid key.", function() end)
        end
    end)

    Copy_Invite.MouseButton1Click:Connect(function()
        setclipboard(Discord_Invite)
        Library:Notify("Successfully copied invite to clipboard!", function() end)
        TweenService:Create(Invite, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(0, 255, 0)}):Play()
        wait(2)
        TweenService:Create(Invite, TweenInfo.new(.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
    end)

    Key_Box:GetPropertyChangedSignal("Text"):Connect(function()
        TweenService:Create(Proceed, TweenInfo.new(.2), {TextColor3 = Key_Box.Text ~= "" and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(150, 150, 150)}):Play()
    end)
else
    canContinue = true
end

repeat wait() until canContinue

PantherHubWhitelist:Destroy()
