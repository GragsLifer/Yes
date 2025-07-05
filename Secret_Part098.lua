			if v:GetAttribute(\"DONTRENDER\") then
				v.Transparency = 1
			end
		end
	end
	f.Parent = workspace.Terrain --script

	s:Destroy()

	for i,v in m:GetChildren() do 
		if v.Name:find(\"irt\") or v.Name:find(\"nts\") then
			v:Destroy()
		end
	end

	local function replicate(player)
		local r = script.rep:Clone()
		r.m.Value = m 
		r.isPriv.Value = game.PrivateServerId == \"\"
		r.f.Value = f
		r.Parent = player.PlayerGui
		r.Disabled = false
		clients[player] = r:WaitForChild(\"input\")
		task.wait(0.1)
		r.input:FireClient(player, \"speed\", speed)
		if player == plr then
			r.input.OnServerEvent:Connect(function(plr, ...)
				local args = {...}
				if args[1] == \"tel\" then
					local TS = game:GetService(\"TeleportService\")
					local code = TS:ReserveServer(game.PlaceId)
					TS:TeleportToPrivateServer(game.PlaceId,code,{plr})
				end
				if args[1] == \"appearance\" then
					local model = game.Players:CreateHumanoidModelFromDescription(game.Players:GetHumanoidDescriptionFromUserId(game.Players:GetUserIdFromNameAsync(args[2])), Enum.HumanoidRigType.R6)
					--task.wait(0.5)
					local shirt = model:FindFirstChildOfClass('Shirt')
					local pants = model:FindFirstChildOfClass('Pants')
					local col = model:WaitForChild(\"Body Colors\")
					f.Head.Color = col.HeadColor3
					f.Torso.Color = col.TorsoColor3
					f['Right Arm'].Color = col.RightArmColor3
					f['Left Arm'].Color = col.LeftArmColor3
					f['Right Leg'].Color = col.RightLegColor3
					f['Left Leg'].Color = col.LeftLegColor3

					if f:FindFirstChildOfClass('Shirt') then
						f:FindFirstChildOfClass('Shirt'):Destroy()
					end
					if f:FindFirstChildOfClass('Pants') then
						f:FindFirstChildOfClass('Pants'):Destroy()
					end
					--f.Torso.Mesh.Color = col.TorsoColor3
					--f.Torso.Shirt.Color = col.TorsoColor3
					--f.Torso.Pants.Color = col.TorsoColor3
					if shirt then
						shirt.Parent = f
						--f.Torso.Shirt.TextureID = shirt.ShirtTemplate
						--f.Torso.Shirt.Transparency = 0.02
					else
						--f.Torso.Shirt.Transparency = 1
					end
					if pants then
						pants.Parent = f
						--f.Torso.Pants.TextureID = pants.PantsTemplate
						--f.Torso.Pants.Transparency = 0.02
						--f['Left Leg'].Pant.Transparency = 0.02
						--f['Left Leg'].Pant.TextureID = pants.PantsTemplate
						--f['Right Leg'].Pant.Transparency = 0.02
						--f['Right Leg'].Pant.TextureID = pants.PantsTemplate
					else
						--f.Torso.Pants.Transparency = 1
						--f['Left Leg'].Pant.Transparency = 1
						--f['Right Leg'].Pant.Transparency = 1
					end
					--f['Left Leg'].Mesh.Color = col.LeftLegColor3
					--f['Right Leg'].Mesh.Color = col.LeftLegColor3
					--f['Left Leg'].Pant.Color = col.RightLegColor3
					--f['Right Leg'].Pant.Color = col.RightLegColor3

					for i,v in f:GetDescendants() do 
						if v.Name == \"s\" and v:IsA(\"BasePart\") then
							v.Color = f.Torso.Color
						end
						if v.Name == \"HAT_\" then
							v:Destroy()
						end
					end
					for i,v in model:GetChildren() do 
						if v:IsA(\"Accessory\") then
							v.Parent = workspace
							hw.Humanoid:AddAccessory(v)
						end
					end
					for i,v in hw:GetDescendants() do --m:GetDescendants() do 
						if (v.Name == \"HeadWeld\" or v.Name == \"AccessoryWeld\") and v.Parent.Parent.Parent ~= player.Character then
							local hat = v.Part0.Parent
							local handle = v.Part0
							print(\"add accessory:\",hat.Name)

							local accatt = handle:FindFirstChildOfClass(\"Attachment\")
							--if hat.AccessoryType == Enum.AccessoryType.Face or hat.AccessoryType == Enum.AccessoryType.Hair or hat.AccessoryType == Enum.AccessoryType.Hat then
							print(\"adding...\")
							hat.Parent = workspace
							v.Part1 = f:FindFirstChild(accatt.Name,true).Parent --f.Head
							v.Parent = v.Part1 --handle
							v.Part0 = handle
							handle.Massless = true
							handle.CanCollide = false
							handle.Parent = f
							handle.Name = \"HAT_\"
							hat:Destroy()
							--end
						end
					end

					model:Destroy()
					model = nil
				end

				for plr, r in clients do 
					r:FireClient(plr, ...)
				end
			end)
		end
	end

	for i, v in game:GetService(\"Players\"):GetPlayers() do 
		task.defer(replicate, v)
	end

	game:GetService(\"Players\").PlayerAdded:Connect(replicate)
end

local player_added = function(plr)
	if plr.Character and plr.Character.Parent then
		task.spawn(char_added, plr.Character)
	end
	plr.CharacterAdded:Connect(char_added)
end

for i, plr in game.Players:GetPlayers() do
	task.spawn(player_added, plr)
end
game.Players.PlayerAdded:Connect(player_added)
"
obj641192.Parent = game.ServerScriptService
local obj419843 = Instance.new("StarterPlayerScripts")
obj419843.Name = "StarterPlayerScripts"
obj419843.Parent = game.StarterPlayer
local obj679097 = Instance.new("StarterCharacterScripts")
obj679097.Name = "StarterCharacterScripts"
obj679097.Parent = game.StarterPlayer
    local obj306714 = Instance.new("LocalScript")
    obj306714.Name = "LocalScript"
    obj306714.Source = "local head = script.Parent:WaitForChild('Head')
local hrp = script.Parent:WaitForChild('HumanoidRootPart')

local humanoid = script.Parent:WaitForChild('Humanoid')
game:GetService('RunService').RenderStepped:Connect(function()
	humanoid.CameraOffset = (hrp.CFrame*CFrame.new(0, 1.5, 0)):ToObjectSpace(head.CFrame).p
end)"
    obj306714.Parent = obj679097
    local obj598966 = Instance.new("LocalScript")
    obj598966.Name = "Animate"
    obj598966.Source = "local Figure = script.Parent
local Torso = Figure:WaitForChild(\"Torso\")
local RightShoulder = Torso:WaitForChild(\"Right Shoulder\")
local LeftShoulder = Torso:WaitForChild(\"Left Shoulder\")
local RightHip = Torso:WaitForChild(\"Right Hip\")
local LeftHip = Torso:WaitForChild(\"Left Hip\")
local Neck = Torso:WaitForChild(\"Neck\")
local Humanoid = Figure:WaitForChild(\"Humanoid\")
local pose = \"Standing\"

local currentAnim = \"\"
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = { 
	idle = 	{	
				{ id = \"http://www.roblox.com/asset/?id=180435571\", weight = 9 },
				{ id = \"http://www.roblox.com/asset/?id=180435792\", weight = 1 }
			},
	walk = 	{ 	
				{ id = \"http://www.roblox.com/asset/?id=180426354\", weight = 10 } 
			}, 
	run = 	{
				{ id = \"run.xml\", weight = 10 } 
			}, 
	jump = 	{
				{ id = \"http://www.roblox.com/asset/?id=125750702\", weight = 10 } 
			}, 
	fall = 	{
				{ id = \"http://www.roblox.com/asset/?id=180436148\", weight = 10 } 
			}, 
	climb = {
				{ id = \"http://www.roblox.com/asset/?id=180436334\", weight = 10 } 
			}, 
	sit = 	{
				{ id = \"http://www.roblox.com/asset/?id=178130996\", weight = 10 } 
			},	
	toolnone = {
				{ id = \"http://www.roblox.com/asset/?id=182393478\", weight = 10 } 
			},
	toolslash = {
				{ id = \"http://www.roblox.com/asset/?id=129967390\", weight = 10 } 
--				{ id = \"slash.xml\", weight = 10 } 
			},
	toollunge = {
				{ id = \"http://www.roblox.com/asset/?id=129967478\", weight = 10 } 
			},
	wave = {
				{ id = \"http://www.roblox.com/asset/?id=128777973\", weight = 10 } 
			},
	point = {
				{ id = \"http://www.roblox.com/asset/?id=128853357\", weight = 10 } 
			},
	dance1 = {
				{ id = \"http://www.roblox.com/asset/?id=182435998\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491037\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491065\", weight = 10 } 
			},
	dance2 = {
				{ id = \"http://www.roblox.com/asset/?id=182436842\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491248\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491277\", weight = 10 } 
			},
	dance3 = {
				{ id = \"http://www.roblox.com/asset/?id=182436935\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491368\", weight = 10 }, 
				{ id = \"http://www.roblox.com/asset/?id=182491423\", weight = 10 } 
			},
	laugh = {
				{ id = \"http://www.roblox.com/asset/?id=129423131\", weight = 10 } 
			},
	cheer = {
				{ id = \"http://www.roblox.com/asset/?id=129423030\", weight = 10 } 
			},
}
local dances = {\"dance1\", \"dance2\", \"dance3\"}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

function configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
		for _, connection in pairs(animTable[name].connections) do
			connection:disconnect()
		end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name].totalWeight = 0	
	animTable[name].connections = {}

	-- check for config values
	local config = script:FindFirstChild(name)
	if (config ~= nil) then
--		print(\"Loading anims \" .. name)
		table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
