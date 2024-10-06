local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownKellyMC2/LoisHub/refs/heads/main/GuiLibrary.lua"))()

local Wait = wait
local Game = game
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 200, 0, 200)
MainFrame.Position = UDim2.new(0.5, -100, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(31, 25, 44)
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

local InnerFrame = Instance.new("Frame")
InnerFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
InnerFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
InnerFrame.BackgroundColor3 = Color3.fromRGB(18, 15, 24)
InnerFrame.Parent = MainFrame

local InnerCorner = Instance.new("UICorner")
InnerCorner.CornerRadius = UDim.new(0, 10)
InnerCorner.Parent = InnerFrame

local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(0.8, 0, 0.2, 0)
Label.Position = UDim2.new(0.1, 0, 0.2, 0)
Label.BackgroundTransparency = 1
Label.Text = "Lois Hub"
Label.Font = Enum.Font.SourceSansBold
Label.TextSize = 23
Label.TextColor3 = Color3.new(1, 1, 1)
Label.Parent = InnerFrame

local VersionLabel = Instance.new("TextLabel")
VersionLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
VersionLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
VersionLabel.BackgroundTransparency = 1
VersionLabel.Text = "Version 1.0"
VersionLabel.Font = Enum.Font.SourceSans
VersionLabel.TextSize = 14
VersionLabel.TextColor3 = Color3.new(1, 1, 1)
VersionLabel.Parent = InnerFrame

local LoadingBarBackground = Instance.new("Frame")
LoadingBarBackground.Size = UDim2.new(0.8, 0, 0.1, 0)
LoadingBarBackground.Position = UDim2.new(0.1, 0, 0.6, 0)
LoadingBarBackground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
LoadingBarBackground.Parent = InnerFrame

local LoadingBarBackgroundCorner = Instance.new("UICorner")
LoadingBarBackgroundCorner.CornerRadius = UDim.new(0.5, 0)
LoadingBarBackgroundCorner.Parent = LoadingBarBackground

local LoadingBar = Instance.new("Frame")
LoadingBar.Size = UDim2.new(0, 0, 1, 0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
LoadingBar.Parent = LoadingBarBackground

local LoadingBarCorner = Instance.new("UICorner")
LoadingBarCorner.CornerRadius = UDim .new(0.5, 0)
LoadingBarCorner.Parent = LoadingBar

local TweenInfo = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
local Tween = TweenService:Create(LoadingBar, TweenInfo, {Size = UDim2.new(1, 0, 1, 0)})

Tween:Play()

Wait(3)

ScreenGui:Destroy()

if Game.PlaceId == 6403373529 or Game.PlaceId == 11520107397 or Game.PlaceId == 9015014224 then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownKellyMC2/LoisHub/refs/heads/main/Games/SlapBattles.lua"))()
end
