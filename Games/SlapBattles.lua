local GUILibrary = Library

-- Utility Variables
local SettingsGUI = {
	["SlapAura"] = {
		Toggle = false
	}
}

local Window = GUILibrary.Window({
    ["Title"] = "Lois Hub"
})

local Tab = Window.CreateTab({
    ["TitleTab"] = "Combat"
})

-- Function to Get the Current Glove's Hit Remote
function GetGloveHitRemote()
    local Player = game:GetService("Players").LocalPlayer
    local GloveName = Player.Leaderstats.Glove.Value:lower()

    for _, Remote in pairs(game.ReplicatedStorage:GetDescendants()) do
        if Remote:IsA("RemoteEvent") then
            local RemoteName = Remote.Name:lower()
            if RemoteName:match(GloveName) or 
               (RemoteName:match("hit") or RemoteName:match("slap") or 
                RemoteName:match("stun") or RemoteName:match("lol") or 
                RemoteName:match("get") or RemoteName:match("rage") or 
                RemoteName:match("grrrrr") or RemoteName:match("clap") or 
                RemoteName:match("stop") or RemoteName:match("punch") or
                RemoteName:match("hand") or RemoteName:match("omg") or
                RemoteName:match("oh")) then
                return Remote
            end
        end
    end

    return game.ReplicatedStorage:FindFirstChild("b")
end

-- Slap Aura
Tab.CreateDivider("Slap Aura")
Tab.CreateToggle({
    ["Text"] = "Toggle",
    ["Function"] = function(Tog)
        SettingsGUI["SlapAura"].Toggle = Tog
        if Tog then
            coroutine.wrap(function()
                while SettingsGUI["SlapAura"].Toggle do
                    pcall(function()
                        local LocalPlayer = game.Players.LocalPlayer
                        local LocalCharacter = LocalPlayer.Character
                        if LocalCharacter and LocalCharacter:FindFirstChild("HumanoidRootPart") then
                            local HitRemote = GetGloveHitRemote()
                            for _, Player in ipairs(game.Players:GetPlayers()) do
                                if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Entered") then
                                    local PlayerCharacter = Player.Character
                                    if PlayerCharacter:FindFirstChild("Head") then
                                        if not PlayerCharacter.Head:FindFirstChild("UnoReverseCard") and not PlayerCharacter:FindFirstChild("Rock") then
                                            local Magnitude = (LocalCharacter.HumanoidRootPart.Position - PlayerCharacter.HumanoidRootPart.Position).Magnitude
                                            if Magnitude <= 25 then
                                                HitRemote:FireServer(PlayerCharacter:WaitForChild("Head"))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    task.wait()
                end
            end)()
        end
    end
})
