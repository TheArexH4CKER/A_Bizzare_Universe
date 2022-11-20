local LocalizationService = game:GetService("LocalizationService")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("A Bizarre Universe", colors)
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Discord: Counter#0001")
-- PLAYER

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Changes your walkspeed", 250, 16, function(v)
    getgenv().WalkSpeedValue = v; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)

PlayerSection:NewSlider("JumpPower", "Changes your jumppower", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

PlayerSection:NewButton("Teleporter", "Teleport with E", function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/5sJxRHxx"),true))()
end)

PlayerSection:NewButton("Anti-Afk", "Press this button to have antiafk", function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

local Farm = Window:NewTab("Farm")
local FarmSection = Farm:NewSection("Farm")

FarmSection:NewLabel("W.I.P")

-- Teleports

local Teleport = Window:NewTab("Teleports")
local TeleportSection = Teleport:NewSection("Teleports")

TeleportSection:NewButton("Safe Place", "Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217.90416,77.8345184,-512.987854)
end)

TeleportSection:NewLabel("Locations")


TeleportSection:NewButton("Green Dolphin Street Prison", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Green Dolphin Street Prison"].CFrame
	
end)

TeleportSection:NewButton("Arcade", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations.Arcade.CFrame
	
end)

TeleportSection:NewButton("Park", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations.Park.CFrame
	
end)

TeleportSection:NewButton("Abandoned Warehouse", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Abandoned Warehouse"].CFrame
	
end)

TeleportSection:NewButton("Library", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations.Library.CFrame
	
end)

TeleportSection:NewButton("Vampire Cave", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Vampire Cave"].CFrame
	
end)

TeleportSection:NewButton("Construction Site", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Construction Site"].CFrame
	
end)

TeleportSection:NewButton("Flower Field", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Flower Field"].CFrame
	
end)

TeleportSection:NewButton("Pawn Shop", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Pawn Shop"].CFrame
	
end)

TeleportSection:NewButton("Crisis Tower", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations["Crisis Tower"].CFrame
	
end)

TeleportSection:NewButton("Docks", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations.Docks.CFrame
	
end)

TeleportSection:NewLabel("Items")
TeleportSection:NewLabel("W.I.P")


TeleportSection:NewLabel("Quest NPC's")

TeleportSection:NewButton("Clean Up The City", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Clean Up The City"].CFrame
end)

TeleportSection:NewButton("The Library Bandits", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["The Library Bandits"].CFrame
end)

TeleportSection:NewButton("Construction Mayhem", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Construction Mayhem"].CFrame
end)

TeleportSection:NewButton("Subway Troubles", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Subway Troubles"].CFrame
end)

TeleportSection:NewButton("Hamon Boss", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Hamon Boss"].CFrame
end)

TeleportSection:NewButton("Hobo Massacre", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Hobo Massacre"].CFrame
end)

TeleportSection:NewButton("New Beginnings", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["New Beginnings"].CFrame
end)

TeleportSection:NewButton("Beat The Champion", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Beat The Champion"].CFrame
end)

TeleportSection:NewButton("Building Crisis", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Building Crisis"].CFrame
end)

TeleportSection:NewButton("Find The Flower", "This button will teleport you to the selected destination", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").QuestMarkers["Find The Flower"].CFrame
end)


Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
