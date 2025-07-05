	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object:IsA(\"Pants\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
	end
end)"
        obj294535.Parent = obj723011
    local obj465387 = Instance.new("TextButton")
    obj465387.Name = "cl"
    obj465387.Text = "Clean up"
    obj465387.TextSize = 14
    obj465387.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj465387.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj465387.Parent = obj665777
        local obj712535 = Instance.new("UIAspectRatioConstraint")
        obj712535.Name = "UIAspectRatioConstraint"
        obj712535.Parent = obj465387
        local obj901565 = Instance.new("LocalScript")
        obj901565.Name = "LocalScript"
        obj901565.Source = "script.Parent.MouseButton1Down:Connect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object.Name== \"d\" and Object:IsA(\"BasePart\") then 
			Object.Transparency = 1 -- Change this to whatever you want to delete 
		end
	end
end)
"
        obj901565.Parent = obj465387
local obj675893 = Instance.new("Script")
obj675893.Name = "Script"
obj675893.Source = "-- Plugin: Full Game Exporter (Split Version)
-- Auto-splits output into multiple scripts to avoid Source size limit

local toolbar = plugin:CreateToolbar(\"Exporter\")
local button = toolbar:CreateButton(\"Export Game (Split)\", \"Export full game and split if needed\", \"\")

local function quote(str)
	return string.format(\"%q\", str)
end

local function escapeSource(src)
	return src and (src:gsub(\"\\\\\", \"\\\\\\\\\"):gsub(\"\\\"\", \"\\\\\\\"\"):gsub(\"\\n\", \"\\\\n\"):gsub(\"\\r\", \"\\\\r\")) or \"\"
end

local function vector3Str(v)
	return string.format(\"Vector3.new(%s, %s, %s)\", v.X, v.Y, v.Z)
end

local function color3Str(c)
	return string.format(\"Color3.new(%s, %s, %s)\", c.R, c.G, c.B)
end

local function udim2Str(u)
	return string.format(\"UDim2.new(%s, %s, %s, %s)\", u.X.Scale, u.X.Offset, u.Y.Scale, u.Y.Offset)
end

local function serializeInstance(inst, parentVar, depth)
	depth = depth or 0
	local indent = string.rep(\"    \", depth)
	local lines = {}
	local varName = \"obj\" .. tostring(math.random(100000,999999))

	table.insert(lines, indent .. string.format(\"local %s = Instance.new(%s)\", varName, quote(inst.ClassName)))
	table.insert(lines, indent .. string.format(\"%s.Name = %s\", varName, quote(inst.Name)))

	if inst:IsA(\"BasePart\") then
		table.insert(lines, indent .. string.format(\"%s.Size = %s\", varName, vector3Str(inst.Size)))
		table.insert(lines, indent .. string.format(\"%s.Position = %s\", varName, vector3Str(inst.Position)))
		table.insert(lines, indent .. string.format(\"%s.Anchored = %s\", varName, tostring(inst.Anchored)))
		table.insert(lines, indent .. string.format(\"%s.BrickColor = BrickColor.new(%s)\", varName, quote(inst.BrickColor.Name)))
	elseif inst:IsA(\"TextLabel\") or inst:IsA(\"TextButton\") or inst:IsA(\"TextBox\") then
		table.insert(lines, indent .. string.format(\"%s.Text = %s\", varName, quote(inst.Text)))
		table.insert(lines, indent .. string.format(\"%s.TextSize = %s\", varName, tostring(inst.TextSize)))
	end

	if inst:IsA(\"GuiObject\") then
		table.insert(lines, indent .. string.format(\"%s.Size = %s\", varName, udim2Str(inst.Size)))
		if inst.BackgroundColor3 then
			table.insert(lines, indent .. string.format(\"%s.BackgroundColor3 = %s\", varName, color3Str(inst.BackgroundColor3)))
		end
	end

	if inst:IsA(\"Script\") or inst:IsA(\"LocalScript\") or inst:IsA(\"ModuleScript\") then
		local ok, src = pcall(function() return inst.Source end)
		if ok and src and #src > 0 then
			table.insert(lines, indent .. string.format(\"%s.Source = %q\", varName, src))
		end
	end

	table.insert(lines, indent .. string.format(\"%s.Parent = %s\", varName, parentVar))

	for _, child in ipairs(inst:GetChildren()) do
		local childLines = serializeInstance(child, varName, depth + 1)
		for _, line in ipairs(childLines) do
			table.insert(lines, line)
		end
	end
	return lines
end

button.Click:Connect(function()
	local services = {
		workspace,
		game:GetService(\"ReplicatedStorage\"),
		game:GetService(\"ServerStorage\"),
		game:GetService(\"ServerScriptService\"),
		game:GetService(\"StarterGui\"),
		game:GetService(\"StarterPack\"),
		game:GetService(\"StarterPlayer\"),
		game:GetService(\"Lighting\"),
	}

	local allLines = {\"-- AUTO EXPORT SCRIPT --\"}
	for _, service in ipairs(services) do
		for _, obj in ipairs(service:GetChildren()) do
			local lines = serializeInstance(obj, \"game.\" .. service.Name)
			for _, l in ipairs(lines) do
				table.insert(allLines, l)
			end
		end
	end

	local full = table.concat(allLines, \"\\n\")
	local maxLen = 190000
	local count = 1
	for i = 1, #full, maxLen do
		local part = full:sub(i, i + maxLen - 1)
		local scriptPart = Instance.new(\"Script\")
		scriptPart.Name = \"ExportedPart_\" .. tostring(count)
		scriptPart.Source = part
		scriptPart.Parent = workspace
		count += 1
	end
	print(\"? Export completed in \" .. tostring(count - 1) .. \" parts.\")
end)"
obj675893.Parent = game.ServerStorage
local obj641192 = Instance.new("Script")
obj641192.Name = "System"
obj641192.Source = "task.wait(.5)

local char_added = function(c)
	--task.wait(2)
	--require(script.R6Module):Fire(plr.Name)
	--task.wait(2)
	--c = plr.Character
	local script = Instance.new(\"Script\", c)
	for i,v in game.ServerStorage:GetChildren() do 
		v:Clone().Parent = script
	end
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503

	local s = script:WaitForChild(\"ModelFolder\") --script:WaitForChild(\"Skull\")
	local m = script.Parent
	local plr = game:GetService(\"Players\"):GetPlayerFromCharacter(m)
	local f = s:WaitForChild(\"f\")
	for _,v in f:WaitForChild(\"v\"):GetDescendants() do
		if v:IsA(\"BasePart\") then
			local weldconstraint = Instance.new(\"WeldConstraint\")
			weldconstraint.Part0 = f.Torso
			weldconstraint.Part1 = v
			weldconstraint.Parent = v
			v.Anchored = false
			v.Massless = true
		end
	end
	local shield = s:WaitForChild(\"a\")
	shield:FindFirstChild(\"rbw\",true).Parent = f
	shield:FindFirstChild(\"lbw\",true).Parent = f

	local hw = script:WaitForChild(\"hatWearer\")
	hw.HumanoidRootPart.Anchored = true
	hw:PivotTo(CFrame.new(99999, 99999, 99999))

	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.HumanoidRootPart
	connect.Part1 = f.HumanoidRootPart
	connect.C0 = CFrame.new(0, 0, -1)
	connect.Name = \"cn\"

	local fortnite = s:WaitForChild(\"fortnite\")
	local fortnite2 = s:WaitForChild(\"fortnite2\")

	local ui = script:WaitForChild(\"ui\")
	ui.Parent = plr.PlayerGui

	local clients = {}
	local speed = 1

	ui.spd.input.OnServerEvent:Connect(function(plr, v)
		for plr, r in clients do 
			r:FireClient(plr, \"speed\", v)
		end
	end)

	for i,v in fortnite.p:GetDescendants() do 
		if v.Name == \"s\"then
			v.Color = m.Torso.Color
		end
		if v:IsA(\"BasePart\")then
			local weld = Instance.new(\"WeldConstraint\")
			weld.Part0 = fortnite.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transparency = 0
			v.Massless = true
		end
	end
	fortnite.Parent = m
	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.Torso
	connect.Part1 = fortnite.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4)
	connect.Name = \"fw\"

	for i,v in fortnite2.s:GetDescendants() do 
		if v.Name == \"s\"then
			v.Color = m.Torso.Color
		end
		if v:IsA(\"BasePart\")then
			local weld = Instance.new(\"WeldConstraint\")
			weld.Part0 = fortnite2.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transparency = 0
			v.Massless = true
		end
	end
	fortnite2.Parent = m
	local connect = Instance.new(\"Motor6D\", m)
	connect.Part0 = m.Torso
	connect.Part1 = fortnite2.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4)
	connect.Name = \"fw2\"

	shield.Parent = f
	local connect = Instance.new(\"Motor6D\", f)
	connect.Part0 = f.Torso
	connect.Part1 = shield.Torso
	connect.Name = \"bw\"

	for i,v in f:GetDescendants() do 
		--if v:IsA(\"BasePart\") and v.Name ~= \"HumanoidRootPart\" and v.Name ~= \"face\"and v.Name ~= \"shield\" and v.Name ~= \"d\" then
		--	v.Transparency = 0
		--	warn(\"made by scandalous#6503\")
		--end
		if v:IsA(\"BasePart\")then
			v.Anchored = false
			v.Massless = true
		end
		if v:IsA(\"Decal\") and v.Name ~= \"face\" then
			v.Transparency = 0
		end
	end
	for i,v in f.v:GetDescendants() do 
		if v:IsA(\"BasePart\") and v.Parent.Name == \"Aroused\" or v.Parent.Name == \"Opened\" then
			v.Transparency = 1
		end
	end
	shield.Torso.Transparency = 1

	for i,v in f:GetDescendants() do 
		if v.Name == \"s\" and v:IsA(\"BasePart\") then
			v.Color = f.Torso.Color
		end
	end
	for i,v in f:GetDescendants() do
		if v:IsA(\"BasePart\") then
			v.Massless = true
			v.CanCollide = v.Name ~= 'HAT_'
