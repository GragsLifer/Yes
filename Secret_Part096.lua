        obj162676.BackgroundColor3 = Color3.new(1, 1, 1)
        obj162676.Parent = obj230210
        local obj539263 = Instance.new("TextButton")
        obj539263.Name = "TextButton"
        obj539263.Text = "Three - Doggy"
        obj539263.TextSize = 14
        obj539263.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj539263.BackgroundColor3 = Color3.new(1, 1, 1)
        obj539263.Parent = obj230210
        local obj603738 = Instance.new("TextButton")
        obj603738.Name = "TextButton"
        obj603738.Text = "Four - Blow"
        obj603738.TextSize = 14
        obj603738.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj603738.BackgroundColor3 = Color3.new(1, 1, 1)
        obj603738.Parent = obj230210
        local obj345877 = Instance.new("TextButton")
        obj345877.Name = "TextButton"
        obj345877.Text = "Five - Boob"
        obj345877.TextSize = 14
        obj345877.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj345877.BackgroundColor3 = Color3.new(1, 1, 1)
        obj345877.Parent = obj230210
        local obj390547 = Instance.new("TextButton")
        obj390547.Name = "TextButton"
        obj390547.Text = "H - Toggle interface visibility"
        obj390547.TextSize = 14
        obj390547.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj390547.BackgroundColor3 = Color3.new(1, 1, 1)
        obj390547.Parent = obj230210
    local obj150105 = Instance.new("TextBox")
    obj150105.Name = "user"
    obj150105.Text = "Username"
    obj150105.TextSize = 14
    obj150105.Size = UDim2.new(0.1125548928976059, 0, 0.029496531933546066, 0)
    obj150105.BackgroundColor3 = Color3.new(0, 0, 0)
    obj150105.Parent = obj665777
        local obj493444 = Instance.new("LocalScript")
        obj493444.Name = "LocalScript"
        obj493444.Source = "script.Parent.FocusLost:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"appearance\", script.Parent.Text)
end)"
        obj493444.Parent = obj150105
    local obj468564 = Instance.new("LocalScript")
    obj468564.Name = "LocalScript"
    obj468564.Source = "game:GetService(\"UserInputService\").InputBegan:Connect(function(i, gp)
	if i.KeyCode== Enum.KeyCode.H and not gp then
		for i,v in next, script.Parent:GetChildren() do 
			if (v:IsA(\"TextButton\") or v:IsA(\"Frame\") or v:IsA(\"TextBox\")) and v.Name ~= \"tog\" and v.Name ~= \"user\" then
				v.Visible = not v.Visible
			end
		end
	end
end)"
    obj468564.Parent = obj665777
    local obj377566 = Instance.new("TextButton")
    obj377566.Name = "r"
    obj377566.Text = "Female view"
    obj377566.TextSize = 14
    obj377566.Size = UDim2.new(0.1125548928976059, 0, 0.029496531933546066, 0)
    obj377566.BackgroundColor3 = Color3.new(0, 0, 0)
    obj377566.Parent = obj665777
        local obj522693 = Instance.new("LocalScript")
        obj522693.Name = "LocalScript"
        obj522693.Source = "script.Parent.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\"view\")
end)"
        obj522693.Parent = obj377566
    local obj167694 = Instance.new("TextButton")
    obj167694.Name = "cg"
    obj167694.Text = "Cowgirl"
    obj167694.TextSize = 14
    obj167694.Size = UDim2.new(0.03244419023394585, 0, 0.05864846333861351, 0)
    obj167694.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj167694.Parent = obj665777
        local obj246417 = Instance.new("UIAspectRatioConstraint")
        obj246417.Name = "UIAspectRatioConstraint"
        obj246417.Parent = obj167694
    local obj862624 = Instance.new("TextButton")
    obj862624.Name = "cy"
    obj862624.Text = "Carry"
    obj862624.TextSize = 14
    obj862624.Size = UDim2.new(0.033741552382707596, 0, 0.05864845961332321, 0)
    obj862624.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj862624.Parent = obj665777
        local obj224557 = Instance.new("UIAspectRatioConstraint")
        obj224557.Name = "UIAspectRatioConstraint"
        obj224557.Parent = obj862624
    local obj482872 = Instance.new("TextButton")
    obj482872.Name = "dg"
    obj482872.Text = "Doggy"
    obj482872.TextSize = 14
    obj482872.Size = UDim2.new(0.03318219259381294, 0, 0.05864844471216202, 0)
    obj482872.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj482872.Parent = obj665777
        local obj772982 = Instance.new("UIAspectRatioConstraint")
        obj772982.Name = "UIAspectRatioConstraint"
        obj772982.Parent = obj482872
    local obj947954 = Instance.new("TextButton")
    obj947954.Name = "bj"
    obj947954.Text = "Blow"
    obj947954.TextSize = 14
    obj947954.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj947954.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj947954.Parent = obj665777
        local obj781315 = Instance.new("UIAspectRatioConstraint")
        obj781315.Name = "UIAspectRatioConstraint"
        obj781315.Parent = obj947954
    local obj523588 = Instance.new("TextButton")
    obj523588.Name = "bbj"
    obj523588.Text = "Boob"
    obj523588.TextSize = 14
    obj523588.Size = UDim2.new(0.03174786642193794, 0, 0.05864843726158142, 0)
    obj523588.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj523588.Parent = obj665777
        local obj425469 = Instance.new("UIAspectRatioConstraint")
        obj425469.Name = "UIAspectRatioConstraint"
        obj425469.Parent = obj523588
    local obj887028 = Instance.new("TextButton")
    obj887028.Name = "tog"
    obj887028.Text = "Hide GUI"
    obj887028.TextSize = 14
    obj887028.Size = UDim2.new(0.02774455025792122, 0, 0.052055004984140396, 0)
    obj887028.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj887028.Parent = obj665777
        local obj289269 = Instance.new("LocalScript")
        obj289269.Name = "LocalScript"
        obj289269.Source = "script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, script.Parent.Parent:GetChildren() do 
		if v ~= script.Parent then
			v.Visible = not v.Visible
		end
	end
end)"
        obj289269.Parent = obj887028
        local obj983611 = Instance.new("UIAspectRatioConstraint")
        obj983611.Name = "UIAspectRatioConstraint"
        obj983611.Parent = obj887028
    local obj320228 = Instance.new("TextButton")
    obj320228.Name = "anl"
    obj320228.Text = "Anal"
    obj320228.TextSize = 14
    obj320228.Size = UDim2.new(0.03303753584623337, 0, 0.059655312448740005, 0)
    obj320228.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj320228.Parent = obj665777
        local obj184516 = Instance.new("UIAspectRatioConstraint")
        obj184516.Name = "UIAspectRatioConstraint"
        obj184516.Parent = obj320228
    local obj653610 = Instance.new("TextButton")
    obj653610.Name = "dga"
    obj653610.Text = "Doggy Anal"
    obj653610.TextSize = 14
    obj653610.Size = UDim2.new(0.03599042817950249, 0, 0.058695536106824875, 0)
    obj653610.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj653610.Parent = obj665777
        local obj834710 = Instance.new("UIAspectRatioConstraint")
        obj834710.Name = "UIAspectRatioConstraint"
        obj834710.Parent = obj653610
    local obj810353 = Instance.new("TextButton")
    obj810353.Name = "del"
    obj810353.Text = "Del Shirt"
    obj810353.TextSize = 14
    obj810353.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj810353.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj810353.Parent = obj665777
        local obj388119 = Instance.new("UIAspectRatioConstraint")
        obj388119.Name = "UIAspectRatioConstraint"
        obj388119.Parent = obj810353
        local obj610491 = Instance.new("LocalScript")
        obj610491.Name = "LocalScript"
        obj610491.Source = "script.Parent.MouseButton1Down:Connect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object:IsA(\"Shirt\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
	end
end)
"
        obj610491.Parent = obj810353
    local obj723011 = Instance.new("TextButton")
    obj723011.Name = "del2"
    obj723011.Text = "Del pants"
    obj723011.TextSize = 14
    obj723011.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj723011.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj723011.Parent = obj665777
        local obj547460 = Instance.new("UIAspectRatioConstraint")
        obj547460.Name = "UIAspectRatioConstraint"
        obj547460.Parent = obj723011
        local obj294535 = Instance.new("LocalScript")
        obj294535.Name = "LocalScript"
        obj294535.Source = "script.Parent.MouseButton1Down:Connect(function()
