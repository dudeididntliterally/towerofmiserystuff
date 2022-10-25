if game.PlaceId == 5898098547 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tower Of Misery (Difficult Mode)", HidePremium = true, SaveConfig = false, ConfigFolder = "TOM (Difficult Mode)"})
local Home = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Home"
})
local Other = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local OtherSection = Other:AddSection({
	Name = "Other"
})
local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TeleportSection = Teleport:AddSection({
	Name = "Teleport"
})
local AntiCheat = Window:MakeTab({
	Name = "Anti Cheat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local AntiCheatSection = AntiCheat:AddSection({
	Name = "Anti Cheat"
})
local Crashing = Window:MakeTab({
	Name = "Crashing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CrashingSection = Crashing:AddSection({
	Name = "Crashing"
})
local Fun = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FunSection = Fun:AddSection({
	Name = "Fun"
})
wait()
OrionLib:MakeNotification({
	Name = "If anything looks different NOTE:",
	Content = "I had to remake it because pastebin decided to delete it",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait()
OrionLib:MakeNotification({
	Name = "ALSO NOTE:",
	Content = "I might make a discord server soon, release this script more for more scripts! also so i can make a discord",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait()
local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp

function findplr(args, tbl)
	if tbl == nil then
		local tbl = cmdp:GetPlayers()
		if args == "me" then
			return cmdlp
		elseif args == "random" then 
			return tbl[math.random(1,#tbl)]
		elseif args == "new" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge < 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "old" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge > 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "bacon" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "friend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "notfriend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "ally" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team == cmdlp.Team and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "enemy" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team ~= cmdlp.Team then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "near" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math < 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "far" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math > 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		else 
			for _,v in pairs(tbl) do
				if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
					return v
				end
			end
		end
	else
		for _, plr in pairs(tbl) do
			if plr.UserName:lower():find(args:lower()) or plr.DisplayName:lower():find(args:lower()) then
				return plr
			end
		end
	end
end
wait()
Home:AddButton({
Name = "Godmode",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
end})

Home:AddButton({
Name = "E To Fly",
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/JLfCxegQ"))()
end})

Home:AddButton({
Name = "Inf Yield",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

Home:AddButton({
Name = "Gravity Coil (free)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Remote_Functions").General:FindFirstChild("Equip_Coil"):InvokeServer("Gravity Coil")
end})

Home:AddButton({
Name = "Respawn (quick) (DOES NOT ALWAYS WORK)",
Callback = function()
game.Players.LocalPlayer.Character.Head:Remove()
wait()
game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player:InvokeServer(game:GetService("Players").LocalPlayer)
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--WalkSpeed Here--",
	Callback = function(ws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) JumpPower",
	Min = 50,
	Max = 350,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--JumpPower Here--",
	Callback = function(jp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) Gravity",
	Min = 3,
	Max = 200,
	Default = 194,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--Gravity Here--",
	Callback = function(gr)
	game.Workspace.Gravity = gr
end})

Other:AddButton({
Name = "Normal Gravity",
Callback = function()
game.Workspace.Gravity = 194
end})

Other:AddButton({
Name = "Buy Everything",
Callback = function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait(0.4)
OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Auto Bought Everything!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end})

Teleport:AddButton({
Name = "Win (No Teleport)",
Callback = function()
for _,v in pairs(game:GetService("Workspace").tower.finishes.Finish:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end})

Teleport:AddButton({
Name = "Teleport To Top",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.5198975, 503.999786, 48.8326187)
end})

Teleport:AddToggle({
	Name = "AFK Farm",
	Default = false,
	Callback = function(afk)
	if afk then
    _G.afkf = true
    while _G.afkf == true do
    wait(0.1)
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
wait()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(77.5198975, 503.999786, 48.8326187, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
wait()
for _, v in pairs(game:GetService("Workspace").TopSection.Hallway:GetChildren()) do
    if v.Name == "RewardDoor" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.position)
    end
end
end
else
_G.afkf = false
end
end})

Teleport:AddButton({
Name = "TP To Winners Room",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

Teleport:AddButton({
Name = "Flappy Bird (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.890461, 234.499954, 2806.3042)
end})

Teleport:AddButton({
Name = "Track Slide (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.7034874, 234.09996, 2822.60352)
end})

Teleport:AddButton({
Name = "TP To Roof",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.8377876, 277.999878, 48.8636551)
end})

Teleport:AddButton({
Name = "Teleport (tween/bypass) (auto godmode)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(77.5198975, 503.999786, 48.8326187, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
end})

Teleport:AddButton({
Name = "Fully Leave Winners Room (Removes Sword To)",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").PortalTeleportationModel2.TeleportationPart2:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass",
Callback = function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "Invokeserver" and tostring(self) == "CallFunction" then
        return;
    end
    return namecall(self, table.unpack(args))
end)
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (USE THIS TO)",
Callback = function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "PRESS ON RESPAWN AND EVERY ROUND FOR BYPASSED ANTI CHEAT (NOT KICK METHOD BUT EVERYTHING ELSE)",
    Color = Color3.fromRGB(124, 92, 70)
	})
game.Players.LocalPlayer.Character:FindFirstChild("Property Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Event Handler"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Security Lock").Parent = game:GetService("MarketplaceService")
wait()
game.MarketplaceService:FindFirstChild("Security Lock"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Regular Checks").Parent = game:GetService("SoundService")
wait()
game.SoundService:FindFirstChild("Regular Checks"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Change Signals").Parent = game:GetService("ReplicatedFirst")
wait()
game.ReplicatedFirst:FindFirstChild("Change Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Event Handler").Parent = game:GetService("PolicyService")
wait()
game.PolicyService:FindFirstChild("Event Handler"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector").Parent = game:GetService("LogService")
wait()
game.LogService:FindFirstChild("Cheat Detector"):Destroy()
end})

Fun:AddButton({
Name = "Break Everyones Screens (FIXED)",
Callback = function()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
wait()
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end
end})

Fun:AddButton({
Name = "Remove Black Screen",
Callback = function()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
end})

Fun:AddButton({
Name = "(TOOL) Z To Sink Player",
Callback = function()
OrionLib:MakeNotification({
	Name = "Activated",
	Content = "PRESS Z TO SINK THE PLAYER (MUST BE ON THEM)",
	Image = "rbxassetid://4483345998",
	Time = 12
})
wait()
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == 'z' then
local h = game.Players.LocalPlayer.Character.Humanoid:Clone()
local plr = game.Players.LocalPlayer.Character
local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local lp = game.Players.LocalPlayer

h.Parent = game.Players.LocalPlayer.Character
h.Name = "Hum"

game.Players.LocalPlayer.Character.Humanoid:Destroy()

for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v.ClassName == "Tool" then
        v.Parent = plr
    end
end
wait(.5)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(300, Enum.EasingStyle.Linear)

tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(0, -1000, 0)})
tween:Play()
end
end)
end})

Fun:AddButton({
Name = "(CLIENT SIDE) Night Mode",
Callback = function()
game:GetService("Lighting").ClockTime = 0
end})

Fun:AddButton({
Name = "Reset Lighting",
Callback = function()
game:GetService("Lighting").ClockTime = 14
end})

Other:AddButton({
Name = "Get Sword",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
end
wait(0.5)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.5198975, 503.999786, 48.8326187)
end})

Crashing:AddButton({
Name = "Disconnect All (3-4 min)",
Callback = function()
OrionLib:MakeNotification({
	Name = "ACTIVATED!",
	Content = "THIS WILL LAG AND DISCONNECT THE SERVER (not really recommended on free exploits much)",
	Image = "rbxassetid://4483345998",
	Time = 13
})
wait()
_G.dis = true
while _G.dis == true do
wait(0.2)
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end
end
end})

Crashing:AddButton({
Name = "Rejoin",
Callback = function()
    local TeleportService = game:GetService("TeleportService")
		TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
		wait()
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end})
end

if game.PlaceId == 4954752502 then
--FUCK PASTEBIN I HOPE THEY PERSONALLY DIE THEY DELETED MY PASTE AND GOT RID OF MY CODE STUPID FUCKERS

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tower Of Misery (Normal Mode)", HidePremium = true, SaveConfig = false, ConfigFolder = "TOM (Normal Mode)"})
local Home = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Home"
})
local Other = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local OtherSection = Other:AddSection({
	Name = "Other"
})
local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TeleportSection = Teleport:AddSection({
	Name = "Teleport"
})
local AntiCheat = Window:MakeTab({
	Name = "Anti Cheat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local AntiCheatSection = AntiCheat:AddSection({
	Name = "Anti Cheat"
})
local Crashing = Window:MakeTab({
	Name = "Crashing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CrashingSection = Crashing:AddSection({
	Name = "Crashing"
})
local Fun = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FunSection = Fun:AddSection({
	Name = "Fun"
})
wait()
OrionLib:MakeNotification({
	Name = "If anything looks different NOTE:",
	Content = "I had to remake it because pastebin decided to delete it",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait()
OrionLib:MakeNotification({
	Name = "ALSO NOTE:",
	Content = "I might make a discord server soon, release this script more for more scripts! also so i can make a discord",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait()
local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
function findplr(args, tbl)
	if tbl == nil then
		local tbl = cmdp:GetPlayers()
		if args == "me" then
			return cmdlp
		elseif args == "random" then 
			return tbl[math.random(1,#tbl)]
        end
			return vAges[math.random(1,#vAges)]
		elseif args == "friend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]

		else 
			for _,v in pairs(tbl) do
				if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
					return v
			end
		end
	end
end
wait()
Home:AddButton({
Name = "Godmode",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
end})

Home:AddButton({
Name = "E To Fly",
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/JLfCxegQ"))()
end})

Home:AddButton({
Name = "Inf Yield",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

Home:AddButton({
Name = "Gravity Coil (free)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Remote_Functions").General:FindFirstChild("Equip_Coil"):InvokeServer("Gravity Coil")
end})

Home:AddButton({
Name = "Save Location",
Callback = function()
local plr = game:GetService("Players").LocalPlayer
local character = plr.Character or plr.CharacterAdded:Wait()
wait(0.3)
local humanoid = character:FindFirstChild("Humanoid")

if humanoid.Health == 0 then
game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player:InvokeServer(game:GetService("Players").LocalPlayer)
end
end})

Home:AddButton({
Name = "Respawn (quick) (DOES NOT ALWAYS WORK)",
Callback = function()
game.Players.LocalPlayer.Character.Head:Remove()
wait()
game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player:InvokeServer(game:GetService("Players").LocalPlayer)
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--WalkSpeed Here--",
	Callback = function(ws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) JumpPower",
	Min = 50,
	Max = 350,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--JumpPower Here--",
	Callback = function(jp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) Gravity",
	Min = 3,
	Max = 200,
	Default = 194,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--Gravity Here--",
	Callback = function(gr)
	game.Workspace.Gravity = gr
end})

Other:AddButton({
Name = "Normal Gravity",
Callback = function()
game.Workspace.Gravity = 194
end})

Other:AddButton({
Name = "Buy Everything",
Callback = function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait(0.4)
OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Auto Bought Everything!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end})

Teleport:AddButton({
Name = "Win (No Teleport)",
Callback = function()
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end})

Teleport:AddButton({
Name = "Teleport To Top",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.489235, 253.999847, 48.7429276)
end})

Teleport:AddToggle({
	Name = "AFK Farm",
	Default = false,
	Callback = function(afk)
	if afk then
    _G.afkf = true
    while _G.afkf == true do
    wait(0.1)
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
wait()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(-117.496, 254, 49.1546, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
end
wait()
for _, v in pairs(game:GetService("Workspace").TopSection.Hallway:GetChildren()) do
    if v.Name == "RewardDoor" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.position)
    end
end
else
_G.afkf = false
end
end})

Teleport:AddButton({
Name = "TP To Winners Room",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

Teleport:AddButton({
Name = "Flappy Bird (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.890461, 234.499954, 2806.3042)
end})

Teleport:AddButton({
Name = "Track Slide (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.7034874, 234.09996, 2822.60352)
end})

Teleport:AddButton({
Name = "TP To Roof",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.8377876, 277.999878, 48.8636551)
end})

Teleport:AddButton({
Name = "Teleport (tween/bypass) (auto godmode)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(-117.496, 254, 49.1546, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
end})

Teleport:AddButton({
Name = "Fully Leave Winners Room (Removes Sword To)",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").PortalTeleportationModel2.TeleportationPart2:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass",
Callback = function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "Invokeserver" and tostring(self) == "CallFunction" then
        return;
    end
    return namecall(self, table.unpack(args))
end)
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (USE THIS TO)",
Callback = function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "PRESS ON RESPAWN AND EVERY ROUND FOR BYPASSED ANTI CHEAT (NOT KICK METHOD BUT EVERYTHING ELSE)",
    Color = Color3.fromRGB(124, 92, 70)
	})
game.Players.LocalPlayer.Character:FindFirstChild("Property Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Event Handler"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Security Lock").Parent = game:GetService("MarketplaceService")
wait()
game.MarketplaceService:FindFirstChild("Security Lock"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Regular Checks").Parent = game:GetService("SoundService")
wait()
game.SoundService:FindFirstChild("Regular Checks"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Change Signals").Parent = game:GetService("ReplicatedFirst")
wait()
game.ReplicatedFirst:FindFirstChild("Change Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Event Handler").Parent = game:GetService("PolicyService")
wait()
game.PolicyService:FindFirstChild("Event Handler"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector").Parent = game:GetService("LogService")
wait()
game.LogService:FindFirstChild("Cheat Detector"):Destroy()
end})

Fun:AddButton({
Name = "Break Everyones Screens (FIXED)",
Callback = function()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
wait()
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end
end})

Fun:AddButton({
Name = "Remove Black Screen",
Callback = function()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
end})

Fun:AddButton({
Name = "(TOOL) Z To Sink Player",
Callback = function()
OrionLib:MakeNotification({
	Name = "Activated",
	Content = "PRESS Z TO SINK THE PLAYER (MUST BE ON THEM)",
	Image = "rbxassetid://4483345998",
	Time = 12
})
wait()
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == 'z' then
local h = game.Players.LocalPlayer.Character.Humanoid:Clone()
local plr = game.Players.LocalPlayer.Character
local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local lp = game.Players.LocalPlayer

h.Parent = game.Players.LocalPlayer.Character
h.Name = "Hum"

game.Players.LocalPlayer.Character.Humanoid:Destroy()

for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v.ClassName == "Tool" then
        v.Parent = plr
    end
end
wait(.5)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(300, Enum.EasingStyle.Linear)

tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(0, -1000, 0)})
tween:Play()
end
end)
end})

Fun:AddButton({
Name = "(CLIENT SIDE) Night Mode",
Callback = function()
game:GetService("Lighting").ClockTime = 0
end})

Fun:AddButton({
Name = "Reset Lighting",
Callback = function()
game:GetService("Lighting").ClockTime = 14
end})

Other:AddButton({
Name = "Get Sword",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
end
wait(0.5)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.496094, 253.999847, 49.1546021)
end})

Crashing:AddButton({
Name = "Disconnect All (3-4 min)",
Callback = function()
OrionLib:MakeNotification({
	Name = "ACTIVATED!",
	Content = "THIS WILL LAG AND DISCONNECT THE SERVER (not really recommended on free exploits much)",
	Image = "rbxassetid://4483345998",
	Time = 13
})
wait()
_G.dis = true
while _G.dis == true do
wait(0.2)
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end
end
end})

Crashing:AddButton({
Name = "Rejoin",
Callback = function()
    local TeleportService = game:GetService("TeleportService")
		TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
		wait()
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end})
end
