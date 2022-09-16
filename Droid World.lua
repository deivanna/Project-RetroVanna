if game.PlaceId == 7888441249 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Project RetroVanna | DB - Droid World", HidePremium = true, IntroText = "Project RetroVanna", SaveConfig = true, ConfigFolder = "OrionDragonBloxDroidWorld"})
    
    -- values
    getgenv().Frieza = false
    getgenv().Atom = false
    getgenv().Brawly = false
    getgenv().JigrayX = false
    getgenv().Goku = false
    getgenv().Droid = false
    getgenv().droidbossFarm = false
    getgenv().chest = false
    getgenv().delete = false
    local mouse = game.Players.LocalPlayer:GetMouse()


    -- functions

    function GetMouse()
	return mouse.Hit
    end

    function Frieza()
        while getgenv().Frieza == true and task.wait() do
            if game:GetService("Workspace")["World Mobs"]["Boss Mobs"]["Puriza X003"]:FindFirstChild("HumanoidRootPart") then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Frieza';
                    Text = "Frieza Just spawned.";
                    Duration = 3;
                        })
                break
            end
        end
    end

    function Atom()
        while getgenv().Atom == true and task.wait() do
            if game:GetService("Workspace")["World Mobs"]["Boss Mobs"]["Atom X002"]:FindFirstChild("HumanoidRootPart") then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Atom';
                    Text = "Atom just spawned.";
                    Duration = 3;
                        })
                break
            end
        end
    end

    function Brawly()
        while getgenv().Brawly == true and task.wait() do
            if game:GetService("Workspace")["World Mobs"]["Boss Mobs"]["Brawly X01"]:WaitForChild("HumanoidRootPart") then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Brawly';
                    Text = "Brawly just spawned.";
                    Duration = 3;
                        })
                break
            end
        end
    end

    function JigrayX()
        while getgenv().JigrayX == true and task.wait() do
            if game:GetService("Workspace")["World Mobs"]["Boss Mobs"]["Jigray X"]:WaitForChild("HumanoidRootPart") then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Jigray X';
                    Text = "Jigray X just spawned.";
                    Duration = 3;
                        })
                break
            end
        end
    end

    function Goku()
        while getgenv().Goku == true and task.wait() do
            if game:GetService("Workspace")["World Mobs"]["Boss Mobs"]["Karrot"]:FindFirstChild("HumanoidRootPart") then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Goku';
                    Text = "Goku just spawned.";
                    Duration = 3;
                        })
                break
            end
        end
    end

    function Droid()
        while getgenv().Droid == true and task.wait() do
            if game:GetService("Workspace")["World Map"]["Raid Bosses"]["Great Droid Raid"].Lounge["Lounge Message"].SurfaceGui.TextLabel.Text == "Intermission Time : 01m 00s" then
                game.StarterGui:SetCore('SendNotification', {
                    Title = 'Great Droid';
                    Text = "Great Droid in 1 minute";
                    Duration = 3;
                        })
                break
            end
        end
    end
    -- tabs

    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local TPTab = Window:MakeTab({
        Name = "Teleports",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local BFTab = Window:MakeTab({
        Name = "Boss Notifs",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- sections

    local Section = MainTab:AddSection({
        Name = "Droid World | Main features"
    })

    local Section = TPTab:AddSection({
        Name = "Droid World | Locations"
    })

    local Section = BFTab:AddSection({
        Name = "Toggle Boss | Notifications."
    })

    -- toggles

    MainTab:AddToggle({
        Name = "Autofarm All Droid World Bosses",
        Default = false,
        Callback = function(Value)
        getgenv().droidbossFarm = Value
    while task.wait(.2) and getgenv().droidbossFarm == true do
        for i, v in pairs(game:GetService("Workspace")["World Mobs"]["Boss Mobs"]:GetChildren())do
            if v:FindFirstChild("HumanoidRootPart") and v:WaitForChild("Humanoid").Health > 1 and v.Name == "Puriza X003" or "Atom X002" or "Brawly X01" or "Jigray X" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
            end
        end

local A_1 = 
{
	["Type"] = 1, 
	["Began"] = true, 
	["CFrame"] = CFrame.new(-804.562988, 508.523315, 1093.97852, -0.577425718, -0.714300215, 0.395417154, -6.53193499e-09, 0.484316796, 0.874892712, -0.816443205, 0.505185544, -0.279656976), 
	["Aim"] = CFrame.new(-801.261108, 494.996002, 1090.46313, -0, 0.997739673, 0.0671984106, 0.00587253645, -0.0671972558, 0.997722447, 0.999982774, 0.000394625124, -0.00585926184), 
	["Camera"] = CFrame.new(-799.358093, 523.26062, 1090.29736, -0.577426016, -0.714300096, 0.395417035, 1.49011612e-08, 0.484316766, 0.874892712, -0.816443086, 0.505185843, -0.279657066), 
	["Name"] = "Combat", 
	["Target"] = game:GetService("Workspace")["World Map"]["Named Places"]["Capital City"].Platform["Boss Platform"].Model.Wedge, 
	["IsHeavy"] = false, 
	["Velocity"] = Vector3.new(0, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
Event:FireServer(A_1)

end
end
})

    MainTab:AddToggle({
        Name = "Auto Loot Chest",
        Default = false,
        Callback = function(Value)
            getgenv().chest = Value
            local A_1 = "Take"
            local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Props.ItemDropService.ItemDropRequest
            game:GetService("Players").LocalPlayer.Stats.LootDrops.ChildAdded:Connect(function(child)
            Event:FireServer(A_1, child)
            end)
    end    
    })

    MainTab:AddToggle({
        Name = "Auto Delete Power Scroll | X 3 X",
        Default = false,
        Callback = function(Value)
            getgenv().chest = Value
            print("feature not available rn")
        end    
    })

    MainTab:AddToggle({
        Name = "Auto Transform",
        Default = false,
        Callback = function(Value)
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                wait(5)
                local A_1 = "TWDS"
                local Event = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.Props.ModeTransformService.Transformation
                Event:FireServer(A_1)
            end
        end    
    })


    MainTab:AddToggle({
        Name = "Auto Fusion",
        Default = false,
        Callback = function(Value)
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                wait(10)
local A_1 = 
{
	["Type"] = 1, 
	["Began"] = true, 
	["CFrame"] = CFrame.new(1053.19006, 832.313782, 1500.14844, 0.0454100147, -7.49801359e-08, 0.998968422, -1.764095e-08, 1, 7.5859468e-08, -0.998968422, -2.10675317e-08, 0.0454100147), 
	["Aim"] = CFrame.new(-3008.70557, 1380.55078, -7610.8374, 0.91359967, 0.0220635626, 0.406015784, -1.86264493e-09, 0.998526692, -0.0542615801, -0.40661478, 0.0495733619, 0.912253737), 
	["Camera"] = CFrame.new(1051.66089, 838.228882, 1511.76501, 0.991446793, 0.0454712138, -0.122333921, 0, 0.937343001, 0.348408043, 0.130511373, -0.34542805, 0.9293257), 
	["Name"] = "Fusion", 
	["Toggle"] = true, 
	["Velocity"] = Vector3.new(0, 0, 0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.SkillRemote
Event:FireServer(A_1)

            end
        end    
    })

    MainTab:AddButton({
        Name = "Dex",
        Default = false,
        Callback = function(Value)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        end    
    })
    

    BFTab:AddToggle({
        Name = "Frieza",
        Default = false,
        Callback = function(Value)
            getgenv().Frieza = Value
            Frieza()
        end    
    })

    BFTab:AddToggle({
        Name = "Atom",
        Default = false,
        Callback = function(Value)
            getgenv().Atom = Value
            Atom()
        end    
    })

    BFTab:AddToggle({
        Name = "Brawly",
        Default = false,
        Callback = function(Value)
            getgenv().Brawly = Value
            Brawly()
        end    
    })

    BFTab:AddToggle({
        Name = "Jigray X",
        Default = false,
        Callback = function(Value)
            getgenv().JigrayX = Value
            JigrayX()
        end    
    })

    BFTab:AddToggle({
        Name = "Goku",
        Default = false,
        Callback = function(Value)
            getgenv().Goku = Value
            Goku()
        end    
    })

    BFTab:AddToggle({
        Name = "Great Droid",
        Default = false,
        Callback = function(Value)
            getgenv().Droid = Value
            Droid()
        end    
    })

    -- buttons

    TPTab:AddButton({
        Name = "ESP",
        Callback = function()
            pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))() end)
          end    
    })
    
    TPTab:AddButton({
        Name = "Spawn",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1056.6444091796875, 832.0136108398438, 1569.198486328125)
          end    
    })
    
    TPTab:AddButton({
        Name = "Puriza X003",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-593.6642456054688, 488.17608642578125, 1090.5118408203125)
          end    
    })
    
    TPTab:AddButton({
        Name = "Atom X002",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3303.65966796875, 62.37998580932617, 3092.416748046875)
          end    
    })
    
    TPTab:AddButton({
        Name = "Brawly X01",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4430.640625, 126.17975616455078, -4691.0205078125)
          end    
    })
    
    TPTab:AddButton({
        Name = "Jigray X",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5125.357421875, 238.37709045410156, -4114.232421875)
          end    
    })
    
    TPTab:AddButton({
        Name = "Great Droid",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.232708215713501, 34.280311584472656, 319.6050720214844)
          end    
    })
    
    TPTab:AddButton({
        Name = "Goku",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Misc.NPC.UltraTechniqueKarrotGiver.HumanoidRootPart.CFrame
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
