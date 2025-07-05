        obj208323.Position = Vector3.new(-1.1294059753417969, -360.7516174316406, 301.3967590332031)
        obj208323.Anchored = false
        obj208323.BrickColor = BrickColor.new("Medium stone grey")
        obj208323.Parent = obj560915
            local obj780340 = Instance.new("SpecialMesh")
            obj780340.Name = "SpecialMesh"
            obj780340.Parent = obj208323
            local obj337460 = Instance.new("StringValue")
            obj337460.Name = "AvatarPartScaleType"
            obj337460.Parent = obj208323
            local obj940998 = Instance.new("Attachment")
            obj940998.Name = "HairAttachment"
            obj940998.Parent = obj208323
            local obj258448 = Instance.new("Vector3Value")
            obj258448.Name = "OriginalSize"
            obj258448.Parent = obj208323
            local obj564038 = Instance.new("Weld")
            obj564038.Name = "AccessoryWeld"
            obj564038.Parent = obj208323
        local obj423973 = Instance.new("Part")
        obj423973.Name = "HAT_"
        obj423973.Size = Vector3.new(1, 1, 1)
        obj423973.Position = Vector3.new(-1.1481285095214844, -361.8341979980469, 301.3674011230469)
        obj423973.Anchored = false
        obj423973.BrickColor = BrickColor.new("Medium stone grey")
        obj423973.Parent = obj560915
            local obj489947 = Instance.new("SpecialMesh")
            obj489947.Name = "SpecialMesh"
            obj489947.Parent = obj423973
            local obj466894 = Instance.new("StringValue")
            obj466894.Name = "AvatarPartScaleType"
            obj466894.Parent = obj423973
            local obj300035 = Instance.new("Attachment")
            obj300035.Name = "HairAttachment"
            obj300035.Parent = obj423973
            local obj704548 = Instance.new("Vector3Value")
            obj704548.Name = "OriginalSize"
            obj704548.Parent = obj423973
            local obj127378 = Instance.new("WeldConstraint")
            obj127378.Name = "WeldConstraint"
            obj127378.Parent = obj423973
local obj665777 = Instance.new("ScreenGui")
obj665777.Name = "ui"
obj665777.Parent = game.ServerStorage
    local obj175928 = Instance.new("Frame")
    obj175928.Name = "Frame"
    obj175928.Size = UDim2.new(0.17137965559959412, 0, 0.30146196484565735, 0)
    obj175928.BackgroundColor3 = Color3.new(1, 1, 1)
    obj175928.Parent = obj665777
        local obj608588 = Instance.new("Frame")
        obj608588.Name = "meter"
        obj608588.Size = UDim2.new(0.1635674238204956, 0, 0.5461598038673401, 0)
        obj608588.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
        obj608588.Parent = obj175928
            local obj303649 = Instance.new("Frame")
            obj303649.Name = "bar"
            obj303649.Size = UDim2.new(1, 0, 0, 0)
            obj303649.BackgroundColor3 = Color3.new(1, 1, 1)
            obj303649.Parent = obj608588
        local obj812018 = Instance.new("Frame")
        obj812018.Name = "start"
        obj812018.Size = UDim2.new(0.49142682552337646, 0, 0.1407284140586853, 0)
        obj812018.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
        obj812018.Parent = obj175928
            local obj388708 = Instance.new("Frame")
            obj388708.Name = "bar"
            obj388708.Size = UDim2.new(1, 0, 0, 0)
            obj388708.BackgroundColor3 = Color3.new(1, 1, 1)
            obj388708.Parent = obj812018
        local obj590596 = Instance.new("UIAspectRatioConstraint")
        obj590596.Name = "UIAspectRatioConstraint"
        obj590596.Parent = obj175928
        local obj730480 = Instance.new("TextButton")
        obj730480.Name = "TextButton"
        obj730480.Text = "RELEASE"
        obj730480.TextSize = 14
        obj730480.Size = UDim2.new(0.49142682552337646, 0, 0.10054600983858109, 0)
        obj730480.BackgroundColor3 = Color3.new(0, 0, 0)
        obj730480.Parent = obj175928
            local obj743032 = Instance.new("LocalScript")
            obj743032.Name = "LocalScript"
            obj743032.Source = "script.Parent.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"rel\")
end)"
            obj743032.Parent = obj730480
    local obj336735 = Instance.new("Frame")
    obj336735.Name = "spd"
    obj336735.Size = UDim2.new(0.03787392005324364, 0, 0.3812381327152252, 0)
    obj336735.BackgroundColor3 = Color3.new(0, 0, 0)
    obj336735.Parent = obj665777
        local obj422016 = Instance.new("TextLabel")
        obj422016.Name = "Title"
        obj422016.Text = "Speed"
        obj422016.TextSize = 14
        obj422016.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
        obj422016.BackgroundColor3 = Color3.new(1, 1, 1)
        obj422016.Parent = obj336735
        local obj917541 = Instance.new("TextLabel")
        obj917541.Name = "value"
        obj917541.Text = "1"
        obj917541.TextSize = 14
        obj917541.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
        obj917541.BackgroundColor3 = Color3.new(1, 1, 1)
        obj917541.Parent = obj336735
        local obj777854 = Instance.new("Frame")
        obj777854.Name = "Slider"
        obj777854.Size = UDim2.new(0.009999999776482582, 0, 0.699999988079071, 0)
        obj777854.BackgroundColor3 = Color3.new(1, 1, 1)
        obj777854.Parent = obj336735
            local obj307617 = Instance.new("Frame")
            obj307617.Name = "Knob"
            obj307617.Size = UDim2.new(40.645164489746094, 0, 0.13368558883666992, 0)
            obj307617.BackgroundColor3 = Color3.new(1, 1, 1)
            obj307617.Parent = obj777854
        local obj141929 = Instance.new("LocalScript")
        obj141929.Name = "slider"
        obj141929.Source = "local UIS = game:GetService(\"UserInputService\")

wait(1)

local P = script.Parent
local slider = P.Slider
local knob = slider.Knob
local FOVLabel = P.value
local knobGrabbed = false

local camera = workspace.CurrentCamera

function GrabFOVKnob()
	knobGrabbed = true
end

function round(val, decimal)
	if (decimal) then
		return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
	else
		return math.floor(val+0.5)
	end
end

local val = 1

function MoveFOVKnob(screenPosition)
	local yDiff = screenPosition.Y - slider.AbsolutePosition.y
	local knobPositionRatio = math.min(math.max(yDiff / slider.AbsoluteSize.y, 0), 1)
	
	local newFOV = 3.5 * (1 - knobPositionRatio)
	val = newFOV
	script.Parent.input:FireServer(val)	

	knob.Position = UDim2.new(-knob.Size.X.Scale / 2, 0, knobPositionRatio - knob.Size.Y.Scale / 2, 0)
	FOVLabel.Text = round(newFOV, 2)
end

function ReleaseFOVKnob()
	knobGrabbed = false
end

knob.InputBegan:connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		GrabFOVKnob()
	end
end)

UIS.InputChanged:connect(function(input, gameProcessedEvent)
	if (not gameProcessedEvent and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and knobGrabbed) then
		MoveFOVKnob(input.Position)
	end
end)

UIS.InputEnded:connect(function(input, gameProcessedEvent)
	if (not gameProcessedEvent and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		ReleaseFOVKnob()
	end
end)"
        obj141929.Parent = obj336735
        local obj849757 = Instance.new("RemoteEvent")
        obj849757.Name = "input"
        obj849757.Parent = obj336735
    local obj230210 = Instance.new("TextButton")
    obj230210.Name = "TextButton"
    obj230210.Text = "Controls"
    obj230210.TextSize = 14
    obj230210.Size = UDim2.new(0.11255490034818649, 0, 0.040704891085624695, 0)
    obj230210.BackgroundColor3 = Color3.new(0, 0, 0)
    obj230210.Parent = obj665777
        local obj655257 = Instance.new("LocalScript")
        obj655257.Name = "LocalScript"
        obj655257.Source = "script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, script.Parent:GetChildren() do 
		if v:IsA(\"TextButton\")then
			v.Visible = not v.Visible
		end
	end
end)"
        obj655257.Parent = obj230210
        local obj168140 = Instance.new("TextButton")
        obj168140.Name = "TextButton"
        obj168140.Text = "C - Close up camera"
        obj168140.TextSize = 14
        obj168140.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj168140.BackgroundColor3 = Color3.new(1, 1, 1)
        obj168140.Parent = obj230210
        local obj313405 = Instance.new("TextButton")
        obj313405.Name = "TextButton"
        obj313405.Text = "One - Cowgirl"
        obj313405.TextSize = 14
        obj313405.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj313405.BackgroundColor3 = Color3.new(1, 1, 1)
        obj313405.Parent = obj230210
        local obj162676 = Instance.new("TextButton")
        obj162676.Name = "TextButton"
        obj162676.Text = "Two - Carry"
        obj162676.TextSize = 14
        obj162676.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
