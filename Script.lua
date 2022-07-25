--[[  ____  ____  __  __   ____            
 |  _ \/ ___||  \/  | |  _ \ _ __ ___  
 | | | \___ \| |\/| | | |_) | '__/ _ \ 
 | |_| |___) | |  | | |  __/| | | (_) |
 |____/|____/|_|  |_| |_|   |_|  \___/ 
--]]

game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[DSM Pro] Loading...";
    Color = Color3.new(170, 0, 0);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})
wait(3)
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "[DSM Pro] Loaded v1.0.1 - Made By Payson Holmes";
    Color = Color3.new(0, 185, 0);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})

local Name = game.Players.LocalPlayer.Name

-- Init
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DSM Pro - v1.0.0", "Ocean")
-- Tabs
local mainTB = Window:NewTab("Main")
local funTB = Window:NewTab("Fun")
local exTB = Window:NewTab("Extra")
-- Sections
local autoFarm = mainTB:NewSection("Auto Farm")
local tps = mainTB:NewSection("Teleports")
local characterMods = funTB:NewSection("Character Mods")
local ex = exTB:NewSection("Extra")
local cred = exTB:NewSection("Credits")

-- Auto Farm

autoFarm:NewButton("Add Credits", "Adds 100M Credits to your funds.", function()
print("Added 100M Credits to LocalPlayer's funds.")
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 99999999)
end)

autoFarm:NewButton("Add EXP", "Adds 100M EXP to your funds.", function()
print("Added 100M EXP to LocalPlayer's funds.")
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
end)

autoFarm:NewButton("Auto Sell", "Automatically Sells backpack funds.", function()
print("Activated Auto Sell")
local remote = game["ReplicatedStorage"]["Remotes"]["sellBricks"]
while true do
    remote:FireServer()
    wait(12.5)
 end
end)

autoFarm:NewButton("Sell", "Sells your current funds.", function()
print("SOLD")
local remote = game["ReplicatedStorage"]["Remotes"]["sellBricks"]
remote:FireServer()
end)

-- Teleports

tps:NewButton("TP to Shop", "Teleports you to the spawnpoint/shop.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-52.7326279, 3.45200205, -556.515015)
end)

tps:NewButton("TP to Highway Racing", "Teleports you to the Highway Racing Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(19.63, 3.35, -434.96)
end)

tps:NewButton("TP to Construction Site", "Teleports you to the Construction Site Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89, 3, -452)
end)

tps:NewButton("TP to Happy Home", "Teleports you to the Happy Home map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-88, 3.5, -150)
end)

tps:NewButton("TP to Ship Dock", "Teleports you to the Ship Dock map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(18.19, 3.35, 144)
end)

tps:NewButton("TP to Space Travel", "Teleports you to the Space Travel Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89.05, 3.35, 144)
end)

tps:NewButton("TP to Military Camp", "Teleports you to the Military Camp Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(17.74, 3.35, 453.33)
end)

tps:NewButton("TP to Pyramid & Pillars", "Teleports you to the Pyramid & Pillars Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-86.08, 3.35, 446.63)
end)

tps:NewButton("TP to Castle", "Teleports you to the Castle Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(18.35, 3.35, 774.2)
end)

tps:NewButton("TP to Empire State", "Teleports you to the Empire State Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89.75, 3.35, 747.22)
end)

tps:NewButton("TP to Volcano", "Teleports you to the Volcano Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-1.8668566942214966, 5.440496921539307, 1041.328125)
end)

tps:NewButton("TP to Towers", "Teleports you to the Towers Map.", function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-65.02375030517578, 5.440497875213623, 1042.22216796875)
end)

-- Fun

characterMods:NewSlider("Walkspeed", "Changes your Humanoid's walkspeed.", 500, 0, function(s)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

characterMods:NewSlider("JumpPower", "Changes your Humanoid's Jump Power", 250, 0, function(s)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

characterMods:NewButton("E To NoClip", "Press E to toggle noclip.", function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Loaded Press E to noclip')
end)

characterMods:NewButton("Fly", "I believe I can fly.", function()
loadstring(game:HttpGet("https://pastebin.com/raw/9tZMx4SW"))()
end)

-- Extra

ex:NewKeybind("Toggle UI", "Shows and Hides the UI.", Enum.KeyCode.RightControl, function()
Library:ToggleUI()
end)

ex:NewLabel("DSM Pro - v1.0.0")

cred:NewLabel("Made By Payson Holmes")
cred:NewLabel("github.com/P-DennyGamingYT/")
cred:NewLabel("[YT]P-Denny#7313")
