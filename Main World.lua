if game.PlaceId == 3177438863 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Project RetroVanna | DB - Main World", HidePremium = true, IntroText = "Project RetroVanna", SaveConfig = true, ConfigFolder = "OrionDragonBloxMainWorld"})
    
    --Values
    getgenv().AF = false
    getgenv().RF = false
    getgenv().TP = false
    getgenv().KF = false
    getgenv().mobFarm = false
    getgenv().mainbossfarm = false
    getgenv().gayMode = false
    
    local mobList = {}
    local bossList = {}
    local mouse = game.Players.LocalPlayer:GetMouse()
    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

    --Functions

    function GetMouse()
        return mouse.Hit
    end

    function autoChest()
        local A_1 = "Take"
        local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Props.ItemDropService.ItemDropRequest
        game:GetService("Players").LocalPlayer.Stats.LootDrops.ChildAdded:Connect(function(chest)
        Event:FireServer(A_1, chest)
        end)
    end
    
    function powerFarm()
            while getgenv().AF == true do
        
        local A_1 = 
        {
            ["Type"] = 1, 
            ["Began"] = true, 
            ["CFrame"] = CFrame.new(1731, 577, 1313), 
            ["Aim"] = CFrame.new(1774, 605, 1287), 
            ["Camera"] = CFrame.new(1711, 585, 1328), 
            ["Name"] = "Combat", 
            ["Target"] = game:GetService("Workspace")["World Map"].Islands["Kame Island"]["Natural Environment"]["Pine Tree"]["Meshes/Pine Tree Leaf_Circle.001"], 
            ["IsHeavy"] = false, 
            ["Velocity"] = Vector3.new(0, 0, 0)
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
        Event:FireServer(A_1)
        wait()
    end
    end
    
    function rebirthFarm()
        while getgenv().RF == true do
            wait()
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StatsService.RebirthUp:FireServer()
        end
    end
    
    function areaTp()
        while getgenv().TP == true do
        wait(1)
        if game.Players.LocalPlayer.Stats.Power.value >= 25000000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(713.410888671875, 393.6136169433594, -3072.448486328125)
         else if game.Players.LocalPlayer.Stats.Power.value >= 5000000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3416.141357421875, 3625.764892578125, 601.1024169921875)
         else if game.Players.LocalPlayer.Stats.Power.value >= 500000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1753.1580810546875, -85.17853546142578, 2798.025390625)
        else if game.Players.LocalPlayer.Stats.Power.value >= 50000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5562.44482421875, 141.2789764404297, -1721.3707275390625)
        end
        end
        end
        end
    end
    end

    function autoKaioken()
        while getgenv().KF == true do
            wait()
            local A_1 = 
{
	        ["Type"] = 1, 
	        ["Began"] = true, 
	        ["CFrame"] = CFrame.new(5444.80127, 194.37352, -1570.24121, 0.405725956, 0.62128526, -0.670366347, -1.58166564e-08, 0.733446598, 0.679747045, 0.913994789, -0.275791019, 0.297578335), 
	        ["Aim"] = CFrame.new(5448.99658, 135.099075, -1708.55615, 0.990818441, 0.0629860461, -0.119631246, -0, 0.884850502, 0.465875208, 0.135199398, -0.461597741, 0.876726151), 
	        ["Camera"] = CFrame.new(5429.14941, 212.289749, -1563.29321, 0.405725807, 0.621285498, -0.670366347, -1.49011612e-08, 0.733446598, 0.679747224, 0.913994908, -0.275790989, 0.297578186), 
	        ["Name"] = "Technique", 
	        ["Target"] = game:GetService("Workspace")["World Map"]["Multiplier Zones"]["Floating Palace"]["Time Chamber"].Infinity.Part, 
	        ["Velocity"] = Vector3.new(0, 0, 0)
}       
        local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
        Event:FireServer(A_1)
        end
    end

    --Tabs
    
    local FarmTab = Window:MakeTab({
        Name = "Autofarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local LocalPlayerTab = Window:MakeTab({
        Name = "Local Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local TeleportTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local TrainingTab = Window:MakeTab({
        Name = "Training Areas",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Miscellaneous",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Sections
    
    local Section = FarmTab:AddSection({
        Name = "Main World | Autofarm"
    })

    local Section = LocalPlayerTab:AddSection({
        Name = "Main World | Local Player [CLIENT SIDED!]"
    })

    local Section = TeleportTab:AddSection({
        Name = "Main World | Local Areas"
    })

    local Section = TrainingTab:AddSection({
        Name = "Main World | Training Areas"
    })

    local Section = MiscTab:AddSection({
        Name = "Main World | Miscellaneous"
    })
    
    --Toggles
    
    FarmTab:AddToggle({
        Name = "Autofarm Power",
        Default = false,
        Callback = function(Value)
            getgenv().AF = Value
            powerFarm()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "Autofarm Rebirth",
        Default = false,
        Callback = function(Value)
            getgenv().RF = Value
            rebirthFarm()
        end    
    })

    FarmTab:AddToggle({
        Name = "Auto Kaioken",
        Default = false,
        Callback = function(Value)
            getgenv().KF = Value
            autoKaioken()
        end    
    })
    
    
    FarmTab:AddToggle({
        Name = "Auto Training Area",
        Default = false,
        Callback = function(Value)
            getgenv().TP = Value
            areaTp()
        end    
    })

mobList = {"Bandit", "Mad Bandit", "Evil Thug", "Tigreal Tribe", "Gorilla Tribe"}
FarmTab:AddDropdown({
    Name = "Mobs",
    Default = "Bandit",
    Options = mobList,
    Callback = function(Value)
    if Value == "Bandit" then
        _G.selectedValue = Value
    elseif Value == "Mad Bandit" then
        _G.selectedValue = Value
    elseif Value == "Evil Thug" then
        _G.selectedValue = Value
    elseif Value == "Tigreal Tribe" then
         _G.selectedValue = Value
    elseif Value == "Gorilla Tribe" then
        _G.selectedValue = Value
end
end
})


FarmTab:AddToggle({
    Name = "Autofarm Mobs",
    Default = false,
    Callback = function(Value)
        getgenv().mobFarm = Value
        while task.wait(.2) and getgenv().mobFarm == true do
            for i, v in pairs(game:GetService("Workspace")["World Mobs"].Mobs:GetChildren())do
                 if v:FindFirstChild("HumanoidRootPart") and v:WaitForChild("Humanoid").Health > 1 and v.Name == tostring(_G.selectedValue) then
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
              end
          end
       
      
      local A_1 = 
      {
          ["Type"] = 1, 
          ["Began"] = true, 
          ["CFrame"] = plr.CFrame, 
          ["Aim"] = GetMouse(), 
          ["Camera"] = workspace.CurrentCamera, 
          ["Name"] = "Combat", 
          ["Target"] = game:GetService("Workspace")["World Map"].Islands["Kame Island"].Island.Model.Land.Part, 
          ["IsHeavy"] = false, 
          ["Velocity"] = Vector3.new(0, 0, 0)
      }
  local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
  Event:FireServer(A_1)
  wait()
  end
end    
})


FarmTab:AddToggle({
    Name = "Autofarm All Bosses",
    Default = false,
    Callback = function(Value)
    getgenv().bossFarm = Value
while task.wait(.2) and getgenv().bossFarm == true do
    for i, v in pairs(game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren())do
        if v:FindFirstChild("HumanoidRootPart") and v:WaitForChild("Humanoid").Health > 1 and v.Name == "Puriza" and "Coolest" and "Atom" and "Jinbu" and "Baby Veggy" and "Droid 17" and "Droid 18" and "Black Karrot" or "Brawly" or "Jigray" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end
    local A_1 = 
    {
        ["Type"] = 1, 
        ["Began"] = true, 
        ["CFrame"] = plr.CFrame, 
        ["Aim"] = GetMouse(), 
        ["Camera"] = workspace.CurrentCamera, 
        ["Name"] = "Combat", 
        ["Target"] = workspace, 
        ["IsHeavy"] = false, 
        ["Velocity"] = Vector3.new(0, 0, 0)
    }
local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
Event:FireServer(A_1)
end
end
})

FarmTab:AddToggle({
    Name = "Auto Collect Chest",
    Default = false,
    Callback = function(Value)
        getgenv().chest = Value
        autoChest()
    end    
})

LocalPlayerTab:AddToggle({
    Name = "haram mode",
    Default = false,
    Callback = function(Value)
    getgenv().gayMode = Value
    for i, v in pairs(workspace.Characters:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Name then 
        while gayMode == true do
v.Hair.Head.Hair.Color = Color3.new(255/255,0/255,0/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(255/255,0/255,0/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(255/255,0/255,0/255)
for i = 0,255,10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(255/255,i/255,0/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(255/255,i/255,0/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(255/255,i/255,0/255)
end
for i = 255,0,-10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(i/255,255/255,0/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(i/255,255/255,0/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(i/255,255/255,0/255)
end
for i = 0,255,10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(0/255,255/255,i/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(0/255,255/255,i/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(0/255,255/255,i/255)
end
for i = 255,0,-10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(0/255,i/255,255/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(0/255,i/255,255/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(0/255,i/255,255/255)
end
for i = 0,255,10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(i/255,0/255,255/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(i/255,0/255,255/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(i/255,0/255,255/255)
end
for i = 255,0,-10 do
wait()
v.Hair.Head.Hair.Color = Color3.new(255/255,0/255,i/255)
v.Pants.LeftLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Pants.RightLowerLeg["Bottom_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Pants.RightFoot["Shoe_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Pants.LeftFoot["Shoe_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Shirt.LowerTorso["Top_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Shirt.LeftUpperArm["Top_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Shirt.RightUpperArm["Top_Secondary"].Color = Color3.new(255/255,0/255,i/255)
v.Shirt.UpperTorso["Top_Secondary"].Color = Color3.new(255/255,0/255,0/255)
end
end
end
end
    end    
})


    
    --Buttons

    TeleportTab:AddButton({
        Name = "Spawn Island",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1823.0694580078125, 577.8519897460938, 1366.926513671875)
          end
    })

    TeleportTab:AddButton({
        Name = "City",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2014.0958251953125, 589.4417114257812, 521.1378784179688)
          end
    })

    TeleportTab:AddButton({
        Name = "Forest",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3109.837158203125, 588.5382690429688, 1329.480712890625)
          end
    })

    TeleportTab:AddButton({
        Name = "Jungle",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3907.352294921875, 587.5935668945312, 1709.031494140625)
          end
    })

    TeleportTab:AddButton({
        Name = "Wasteland",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4472.7451171875, 594.0679321289062, 759.1909790039062)
          end
    })

    TeleportTab:AddButton({
        Name = "Ruined City",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3730.396728515625, 590.4425659179688, -644.1917724609375)
          end
    })

    TeleportTab:AddButton({
        Name = "Ice Island",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5067.85400390625, 595.9534912109375, -1231.0238037109375)
          end
    })

    TeleportTab:AddButton({
        Name = "Fusion Island",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2082.626220703125, 589.7520141601562, 1758.1324462890625)
          end
    })

    TrainingTab:AddButton({
        Name = "Time Chamber [50K]",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5562.44482421875, 141.2789764404297, -1721.3707275390625)
          end
    })

    TrainingTab:AddButton({
        Name = "Capsule Ship [500K]",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1753.1580810546875, -85.17853546142578, 2798.025390625)
          end
    })

    TrainingTab:AddButton({
        Name = "Korin's Tower [5M]",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3416.141357421875, 3625.764892578125, 601.1024169921875)
          end
    })

    TrainingTab:AddButton({
        Name = "King Kai's Planet [25M]",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(713.410888671875, 393.6136169433594, -3072.448486328125)
          end
    })

    MiscTab:AddButton({
        Name = "ESP",
        Callback = function()
            pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
          end    
    })

    MiscTab:AddButton({
        Name = "Intro Island",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(367.52911376953125, 2981.83447265625, 15426.494140625)
            game:GetService("Workspace")["World Map"].Islands["Intro Island"].Island["Meshes/Landscape (944)_Plane.001 (1)"].CanCollide = false
            game:GetService("Workspace")["World Map"].Islands["Intro Island"].Island["Meshes/Landscape (944)_Plane (1)"].CanCollide = false
          end    
    })

    MiscTab:AddButton({
        Name = "Delete Kill Barriers (Semi-Works)",
        Callback = function()
            game:GetService("Workspace")["World Barriers"]["Kill Barrier"]:Destroy()
          end    
    })

    OrionLib:MakeNotification({
        Name = "Project RetroVanna",
        Content = "script loaded, enjoy! creators: deidara#7581,RetroApple#7845",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    
    end
    OrionLib:Init()