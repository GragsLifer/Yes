	elseif (pose == \"Dead\" or pose == \"GettingUp\" or pose == \"FallingDown\" or pose == \"Seated\" or pose == \"PlatformStanding\") then
--		print(\"Wha \" .. pose)
		stopAllAnimations()
		amplitude = 0.1
		frequency = 1
		setAngles = true
	end

	if (setAngles) then
		local desiredAngle = amplitude * math.sin(time * frequency)

		RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
		LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
		RightHip:SetDesiredAngle(-desiredAngle)
		LeftHip:SetDesiredAngle(-desiredAngle)
	end

	-- Tool Animation handling
	local tool = getTool()
	if tool and tool:FindFirstChild(\"Handle\") then
	
		local animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObject.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = \"None\"
		end

		animateTool()		
	else
		stopToolAnimations()
		toolAnim = \"None\"
		toolAnimInstance = nil
		toolAnimTime = 0
	end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService(\"Players\").LocalPlayer.Chatted:connect(function(msg)
	local emote = \"\"
	if msg == \"/e dance\" then
		emote = dances[math.random(1, #dances)]
	elseif (string.sub(msg, 1, 3) == \"/e \") then
		emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7) == \"/emote \") then
		emote = string.sub(msg, 8)
	end
	
	if (pose == \"Standing\" and emoteNames[emote] ~= nil) then
		playAnimation(emote, 0.1, Humanoid)
	end

end)


-- main program

-- initialize to idle
playAnimation(\"idle\", 0.1, Humanoid)
pose = \"Standing\"

while Figure.Parent ~= nil do
	local _, time = wait(0.1)
	move(time)
end


"
    obj598966.Parent = obj679097
        local obj691226 = Instance.new("StringValue")
        obj691226.Name = "idle"
        obj691226.Parent = obj598966
            local obj547891 = Instance.new("Animation")
            obj547891.Name = "Animation1"
            obj547891.Parent = obj691226
                local obj134620 = Instance.new("NumberValue")
                obj134620.Name = "Weight"
                obj134620.Parent = obj547891
            local obj416450 = Instance.new("Animation")
            obj416450.Name = "Animation2"
            obj416450.Parent = obj691226
                local obj571260 = Instance.new("NumberValue")
                obj571260.Name = "Weight"
                obj571260.Parent = obj416450
        local obj446011 = Instance.new("StringValue")
        obj446011.Name = "walk"
        obj446011.Parent = obj598966
            local obj888993 = Instance.new("Animation")
            obj888993.Name = "WalkAnim"
            obj888993.Parent = obj446011
        local obj155912 = Instance.new("StringValue")
        obj155912.Name = "run"
        obj155912.Parent = obj598966
            local obj293522 = Instance.new("Animation")
            obj293522.Name = "RunAnim"
            obj293522.Parent = obj155912
        local obj956911 = Instance.new("StringValue")
        obj956911.Name = "jump"
        obj956911.Parent = obj598966
            local obj140403 = Instance.new("Animation")
            obj140403.Name = "JumpAnim"
            obj140403.Parent = obj956911
        local obj370089 = Instance.new("StringValue")
        obj370089.Name = "climb"
        obj370089.Parent = obj598966
            local obj698771 = Instance.new("Animation")
            obj698771.Name = "ClimbAnim"
            obj698771.Parent = obj370089
        local obj417665 = Instance.new("StringValue")
        obj417665.Name = "toolnone"
        obj417665.Parent = obj598966
            local obj331957 = Instance.new("Animation")
            obj331957.Name = "ToolNoneAnim"
            obj331957.Parent = obj417665
        local obj316968 = Instance.new("StringValue")
        obj316968.Name = "fall"
        obj316968.Parent = obj598966
            local obj779253 = Instance.new("Animation")
            obj779253.Name = "FallAnim"
            obj779253.Parent = obj316968
        local obj717713 = Instance.new("StringValue")
        obj717713.Name = "sit"
        obj717713.Parent = obj598966
            local obj596492 = Instance.new("Animation")
            obj596492.Name = "SitAnim"
            obj596492.Parent = obj717713
        local obj324853 = Instance.new("NumberValue")
        obj324853.Name = "ScaleDampeningPercent"
        obj324853.Parent = obj598966
    local obj836750 = Instance.new("Script")
    obj836750.Name = "LoadCharacter"
    obj836750.Source = "local model = script.Parent
local plr = game.Players:GetPlayerFromCharacter(script.Parent)
local humanoid = model:WaitForChild(\"Humanoid\")
local description = game:GetService(\"Players\"):GetHumanoidDescriptionFromUserId(plr.UserId)
humanoid:ApplyDescription(description)
wait(1)
script:Destroy()]]
    obj836750.Parent = obj679097
local obj295215 = Instance.new("Model")
obj295215.Name = "StarterCharacter"
obj295215.Parent = game.StarterPlayer
    local obj275422 = Instance.new("Part")
    obj275422.Name = "Head"
    obj275422.Size = Vector3.new(1, 1, 1)
    obj275422.Position = Vector3.new(18.16925811767578, 0.6202583312988281, -21.391109466552734)
    obj275422.Anchored = false
    obj275422.BrickColor = BrickColor.new("Light orange")
    obj275422.Parent = obj295215
        local obj933123 = Instance.new("SpecialMesh")
        obj933123.Name = "Mesh"
        obj933123.Parent = obj275422
        local obj332457 = Instance.new("Attachment")
        obj332457.Name = "HairAttachment"
        obj332457.Parent = obj275422
        local obj927095 = Instance.new("Attachment")
        obj927095.Name = "HatAttachment"
        obj927095.Parent = obj275422
        local obj334133 = Instance.new("Attachment")
        obj334133.Name = "FaceFrontAttachment"
        obj334133.Parent = obj275422
        local obj629001 = Instance.new("Attachment")
        obj629001.Name = "FaceCenterAttachment"
        obj629001.Parent = obj275422
        local obj467995 = Instance.new("Decal")
        obj467995.Name = "face"
        obj467995.Parent = obj275422
    local obj679311 = Instance.new("Part")
    obj679311.Name = "Torso"
    obj679311.Size = Vector3.new(2, 2, 1)
    obj679311.Position = Vector3.new(18.16925811767578, -0.8797416687011719, -21.391109466552734)
    obj679311.Anchored = false
    obj679311.BrickColor = BrickColor.new("Light orange")
    obj679311.Parent = obj295215
        local obj572698 = Instance.new("Attachment")
        obj572698.Name = "NeckAttachment"
        obj572698.Parent = obj679311
        local obj563897 = Instance.new("Attachment")
        obj563897.Name = "BodyFrontAttachment"
        obj563897.Parent = obj679311
        local obj746626 = Instance.new("Attachment")
        obj746626.Name = "BodyBackAttachment"
        obj746626.Parent = obj679311
        local obj643034 = Instance.new("Attachment")
        obj643034.Name = "LeftCollarAttachment"
        obj643034.Parent = obj679311
        local obj131278 = Instance.new("Attachment")
        obj131278.Name = "RightCollarAttachment"
        obj131278.Parent = obj679311
        local obj358812 = Instance.new("Attachment")
        obj358812.Name = "WaistFrontAttachment"
        obj358812.Parent = obj679311
        local obj171303 = Instance.new("Attachment")
        obj171303.Name = "WaistCenterAttachment"
        obj171303.Parent = obj679311
        local obj469366 = Instance.new("Attachment")
        obj469366.Name = "WaistBackAttachment"
        obj469366.Parent = obj679311
        local obj984779 = Instance.new("Motor6D")
        obj984779.Name = "Right Shoulder"
        obj984779.Parent = obj679311
        local obj240973 = Instance.new("Motor6D")
        obj240973.Name = "Left Shoulder"
        obj240973.Parent = obj679311
        local obj604369 = Instance.new("Motor6D")
        obj604369.Name = "Right Hip"
        obj604369.Parent = obj679311
        local obj112550 = Instance.new("Motor6D")
        obj112550.Name = "Left Hip"
        obj112550.Parent = obj679311
        local obj305783 = Instance.new("Motor6D")
        obj305783.Name = "Neck"
        obj305783.Parent = obj679311
        local obj144342 = Instance.new("Weld")
        obj144342.Name = "Weld"
        obj144342.Parent = obj679311
        local obj757054 = Instance.new("Weld")
        obj757054.Name = "Weld"
        obj757054.Parent = obj679311
        local obj298084 = Instance.new("Weld")
        obj298084.Name = "Weld"
        obj298084.Parent = obj679311
    local obj646765 = Instance.new("Part")
    obj646765.Name = "Left Arm"
    obj646765.Size = Vector3.new(1, 2, 1)
