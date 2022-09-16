if game.PlaceId == 7040546583 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Project RetroVanna | DB - Crimson World", HidePremium = true, IntroText = "Project RetroVanna", SaveConfig = true, ConfigFolder = "OrionDragonBloxCrimsonWorld"})
    
    --Values
    getgenv().AF = false
    getgenv().RF = false
    getgenv().PF = false
    getgenv().CTP = false
    getgenv().KF = false
    getgenv().HN = false

    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

    --Functions
    
    function powerFarm()
            while getgenv().AF == true do
            wait()
            local A_1 = 
            {
                ["Type"] = 1, 
                ["Began"] = true, 
                ["CFrame"] = CFrame.new(-1923.17651, 27.9421062, -651.254944), 
                ["Aim"] = CFrame.new(-2129.98438, 132.023773, -599.414307), 
                ["Camera"] = CFrame.new(-1902.75537, 31.6273861, -649.065247), 
                ["Name"] = "Combat", 
                ["Target"] = game.Players:GetChildren(), 
                ["IsHeavy"] = false, 
                ["Velocity"] = Vector3.new(0, 0, 0)
             }
            local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
            Event:FireServer(A_1)
    end
    end
    
    function rebirthFarm()
        while getgenv().RF == true do
            wait()
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StatsService.RebirthUp:FireServer()
        end
    end

    function prestigeFarm()
        while getgenv().RF == true do
            wait()
            -- prestige remote
        end
    end
    
    function crimsonareaTp()
    while getgenv().CTP == true do
        wait(1)
        if game:GetService("Players").AttackOnMommy.Stats.Rebirth.Value >= 80 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-536.048095703125, 524.708740234375, -3430.59912109375)
        else if game.Players.LocalPlayer.Stats.Rebirth.Value >= 35 and game.Players.LocalPlayer.Stats.Power.value >= 35000000 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31.07416343688965, 110.18182373046875, 4580.2509765625)
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
                ["CFrame"] = CFrame.new(-1870.2218, 51.6406631, -736.439636), 
                ["Aim"] = CFrame.new(-1900.07507, 188.451324, -216.703033), 
                ["Camera"] = CFrame.new(-1853.02356, 56.4939499, -749.7771), 
                ["Name"] = "Technique", 
                ["Target"] = game:GetService("Workspace")["World Map"]["World Areas"]["Crimson City"].Buildings["Metal Building #2 (492)"]["Building #2 (492)"]["Meshes/Building #2_Circle"], 
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

    local TPTab = Window:MakeTab({
        Name = "Major Areas",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local TRTab = Window:MakeTab({
        Name = "Training Areas",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Sections
    
    local Section = FarmTab:AddSection({
        Name = "Autofarm"
    })

    local Section = TPTab:AddSection({
        Name = "Crimson Planet Major Areas"
    })
    

    local Section = TRTab:AddSection({
        Name = "Crimson Planet Training Areas"
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
            getgenv().CTP = Value
            crimsonareaTp()
        end    
    })

    --Buttons

    TRTab:AddButton({
        Name = "Destroyer Island",
        Callback = function()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"]["Meshes/Tree_Cylinder.003"]:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"].CollisionPart1:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"].CollisionPart2:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"].CollisionPart3:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"].CollisionPart4:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"].CollisionPart5:Destroy()
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"]["Meshes/Tree_Cylinder.001"].CanCollide = false
            game:GetService("Workspace")["World Barriers"]["Destroyer_Tree"]["Meshes/Tree_Cylinder.001"].Transparency = 0.45
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-465.4307861328125, 524.52880859375, -3314.333251953125)
          end    
    })

    TPTab:AddButton({
        Name = "Gordo",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1112.105712890625, 28.380754470825195, -6.166437149047852)
          end    
    })

    TPTab:AddButton({
        Name = "Calci",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-702.5730590820312, 28.182300567626953, -1518.183837890625) 
          end    
    })

    TPTab:AddButton({
        Name = "Truffle",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-529.5135498046875, 29.180551528930664, 1127.463623046875)
          end    
    })

    TPTab:AddButton({
        Name = "Nemba",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(765.8984375, 222.18075561523438, -1397.0574951171875)
          end    
    })

    TPTab:AddButton({
        Name = "El Mano",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-348.4146728515625, 560.9769897460938, -252.43161010742188)
          end    
    })

    TPTab:AddButton({
        Name = "Vegeta",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.NPC.UltraTechniqueVeggyGiver.HumanoidRootPart.CFrame
          end    
    })

    TPTab:AddButton({
        Name = "Potential Unleashed Trainer",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.NPC.TechniquePotentialUnleashedGiver.HumanoidRootPart.CFrame
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