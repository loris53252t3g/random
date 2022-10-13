
-- // Variables
local Players = game:GetService('Players')
local Client = Players.LocalPlayer
local CoreGui = game:GetService('CoreGui')


-- // Functions
function getHealth(target)
    if (target) then
        return tonumber(Players[target].Character.Humanoid.Health)
    else
        return 0
    end
end


function getArmor(target)
    if (target) then
        return tonumber(Players[target].Character.BodyEffects.Armor.Value)
    else
        return 0
    end
end


function getDistance(target)
    if (target) then
        return tonumber((Client.Character.HumanoidRootPart.Position - target.Character.HumanoidRootPart.Position).magnitude)
    else
        return 100
    end
end


function isWinning(target)
    if (target) then
        -- // Health
        local clientHealth = math.floor(getHealth(tostring(Client.Name)))
        local tHealth = math.floor(getHealth(target))
        
        -- // If the target has more health than our client
        if (clientHealth < tHealth) then
            return true
        else
            return false
        end
    else
        return true
    end
end


-- // Design
local healthGUI = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local topBarCorner = Instance.new("UICorner")
local targetHeadshot = Instance.new("ImageLabel")
local targetName = Instance.new("TextLabel")
local healthBar = Instance.new("Frame")
local healthBarCorner = Instance.new("UICorner")
local healthBarBG = Instance.new("Frame")
local healthBarBGCorner = Instance.new("UICorner")
local healthIcon = Instance.new("ImageLabel")
local healthText = Instance.new("TextLabel")
local bodyCorner = Instance.new("UICorner")
local armorBar = Instance.new("Frame")
local armorBarCorner = Instance.new("UICorner")
local armorBarBG = Instance.new("Frame")
local armorBGCorner = Instance.new("UICorner")
local armorText = Instance.new("TextLabel")
local armorIcon = Instance.new("ImageLabel")
local Distance = Instance.new("TextLabel")
local Winning = Instance.new("TextLabel")



-- // Design functions
function setTargetHUDColor(color)
    armorBarBG.BackgroundColor3 = Color3.fromRGB(color)
    TopBar.BackgroundColor3 = Color3.fromRGB(color)
    healthBarBG.BackgroundColor3 = Color3.fromRGB(color)
end




-- // Rest of the UI design
healthGUI.Name = "healthGUI"
healthGUI.Parent = CoreGui

Body.Name = "Body"
Body.Parent = healthGUI
Body.AnchorPoint = Vector2.new(0.5, 0.5)
Body.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Body.BorderSizePixel = 0
Body.ClipsDescendants = true
Body.Position = UDim2.new(0.5, 0, 0.798113227, 0)
Body.Size = UDim2.new(0, 240, 0, 131)
Body.Visible = false

TopBar.Name = "TopBar"
TopBar.Parent = Body
TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
TopBar.Size = UDim2.new(1, 5, 0, 6)

topBarCorner.CornerRadius = UDim.new(0, 5)
topBarCorner.Name = "topBarCorner"
topBarCorner.Parent = TopBar

targetHeadshot.Name = "targetHeadshot"
targetHeadshot.Parent = Body
targetHeadshot.AnchorPoint = Vector2.new(0.5, 0.5)
targetHeadshot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetHeadshot.BackgroundTransparency = 1
targetHeadshot.BorderSizePixel = 0
targetHeadshot.Position = UDim2.new(0.25, 0, 0.519999981, 0)
targetHeadshot.Size = UDim2.new(0, 100, 0, 100)
targetHeadshot.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"


targetName.Name = "targetName"
targetName.Parent = Body
targetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetName.BackgroundTransparency = 1.000
targetName.BorderSizePixel = 0
targetName.Position = UDim2.new(0.491666675, 0, 0.137404576, 0)
targetName.Size = UDim2.new(0, 113, 0, 12)
targetName.Font = Enum.Font.Roboto
targetName.Text = "1fzn"
targetName.TextColor3 = Color3.fromRGB(255, 255, 255)
targetName.TextSize = 14.000
targetName.TextXAlignment = Enum.TextXAlignment.Left
targetName.TextScaled = true

healthBar.Name = "healthBar"
healthBar.Parent = Body
healthBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
healthBar.BorderSizePixel = 0
healthBar.Position = UDim2.new(0.491666675, 0, 0.290076345, 0)
healthBar.Size = UDim2.new(0, 113, 0, 17)

healthBarCorner.CornerRadius = UDim.new(0, 2)
healthBarCorner.Name = "healthBarCorner"
healthBarCorner.Parent = healthBar

healthBarBG.Name = "healthBarBG"
healthBarBG.Parent = healthBar
healthBarBG.BorderSizePixel = 0
healthBarBG.Size = UDim2.new(1, 0, 0, 17)

healthBarBGCorner.CornerRadius = UDim.new(0, 3)
healthBarBGCorner.Name = "healthBarBGCorner"
healthBarBGCorner.Parent = healthBarBG

healthIcon.Name = "healthIcon"
healthIcon.Parent = healthBar
healthIcon.AnchorPoint = Vector2.new(0.5, 0.5)
healthIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthIcon.BackgroundTransparency = 1.000
healthIcon.BorderSizePixel = 0
healthIcon.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
healthIcon.Size = UDim2.new(0, 12, 0, 13)
healthIcon.Image = "rbxassetid://3192484653"

healthText.Name = "healthText"
healthText.Parent = healthBar
healthText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
healthText.BackgroundTransparency = 1.000
healthText.BorderSizePixel = 0
healthText.Size = UDim2.new(0, 113, 0, 17)
healthText.Font = Enum.Font.Roboto
healthText.Text = "100"
healthText.TextColor3 = Color3.fromRGB(255, 255, 255)
healthText.TextSize = 14.000

bodyCorner.CornerRadius = UDim.new(0, 3)
bodyCorner.Name = "bodyCorner"
bodyCorner.Parent = Body

armorBar.Name = "armorBar"
armorBar.Parent = Body
armorBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
armorBar.BorderSizePixel = 0
armorBar.Position = UDim2.new(0.492000014, 0, 0.449999988, 0)
armorBar.Size = UDim2.new(0, 113, 0, 17)

armorBarCorner.CornerRadius = UDim.new(0, 2)
armorBarCorner.Name = "armorBarCorner"
armorBarCorner.Parent = armorBar

armorBarBG.Name = "armorBarBG"
armorBarBG.Parent = armorBar
armorBarBG.BorderSizePixel = 0
armorBarBG.Size = UDim2.new(0.513274312, 0, 0, 17)

armorBGCorner.CornerRadius = UDim.new(0, 3)
armorBGCorner.Name = "armorBGCorner"
armorBGCorner.Parent = armorBarBG

armorText.Name = "armorText"
armorText.Parent = armorBar
armorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armorText.BackgroundTransparency = 1.000
armorText.BorderSizePixel = 0
armorText.Size = UDim2.new(0, 113, 0, 17)
armorText.Font = Enum.Font.Roboto
armorText.Text = "50"
armorText.TextColor3 = Color3.fromRGB(255, 255, 255)
armorText.TextSize = 14.000

armorIcon.Name = "armorIcon"
armorIcon.Parent = armorBar
armorIcon.AnchorPoint = Vector2.new(0.5, 0.5)
armorIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
armorIcon.BackgroundTransparency = 1.000
armorIcon.BorderSizePixel = 0
armorIcon.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
armorIcon.Size = UDim2.new(0, 12, 0, 13)
armorIcon.Image = "rbxassetid://7169354142"

Distance.Name = "Distance"
Distance.Parent = Body
Distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Distance.BackgroundTransparency = 1.000
Distance.BorderSizePixel = 0
Distance.Position = UDim2.new(0.491666675, 0, 0.78, 0)
Distance.Size = UDim2.new(0, 110, 0, 17)
Distance.Font = Enum.Font.Roboto
Distance.Text = "Distance: 98 studs"
Distance.TextColor3 = Color3.fromRGB(255, 255, 255)
Distance.TextSize = 13.000
Distance.TextXAlignment = Enum.TextXAlignment.Left

Winning.Name = "Winning"
Winning.Parent = Body
Winning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Winning.BackgroundTransparency = 1.000
Winning.BorderSizePixel = 0
Winning.Position = UDim2.new(0.491666675, 0, 0.620000005, 0)
Winning.Size = UDim2.new(0, 110, 0, 17)
Winning.Font = Enum.Font.Roboto
Winning.Text = "Winning: true"
Winning.TextColor3 = Color3.fromRGB(255, 255, 255)
Winning.TextSize = 13.000
Winning.TextXAlignment = Enum.TextXAlignment.Left
_G.ArmorBAR = Color3.fromRGB(255, 0, 4)
 _G.TOPBAR =Color3.fromRGB(255, 0, 4)
_G.healthBarBG = Color3.fromRGB(255, 0, 4)
armorBarBG.BackgroundColor3 = _G.ArmorBAR

TopBar.BackgroundColor3 = _G.TOPBAR

healthBarBG.BackgroundColor3 = _G.healthBarBG

