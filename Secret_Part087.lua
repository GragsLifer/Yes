			};
			{
				[\"bw\"] = CFrame.new(0, 0, 0),
				[\"RootJoint\"] = CFrame.new(0.08, -1.32, -1.42) * CFrame.Angles(math.rad(-68.45), math.rad(-1.26), math.rad(-3.17));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-98.86), math.rad(0), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-0.97, -0.43, -0.89) * CFrame.Angles(math.rad(178.89), math.rad(-81.11), math.rad(-112.34)) + Vector3.new(0,-0.5,0.5);
				[\"Right Shoulder\"] = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(-160.5), math.rad(67.38), math.rad(-88.71));
				[\"Right Hip\"] = CFrame.new(0.98, -0.45, -0.95) * CFrame.Angles(math.rad(178.63), math.rad(83.26), math.rad(111.54)) + Vector3.new(0,-0.5,0.5);
				[\"Left Shoulder\"] = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(-166.38), math.rad(-69.71), math.rad(87.74));
			};
		}
	},
	bbj = {
		m_neck_delay = 1,
		m_hip_delay = 0,
		m_shoulder_delay = 0.5,
		f_neck_delay = 1,
		f_hip_delay = 0.3,
		f_shoulder_delay = 0.3,
		m_delay = 0,
		f_delay = 0.3,
		default = 10,
		sfx = 5.8,
		fortnite = CFrame.Angles(0, 0, 0), --CFrame.new(0,-0.25,0) * CFrame.Angles(0, 0, 0),
		offset = CFrame.new(0, 0, -1.2), --CFrame.new(0, 0, -1.1), -- -0.8
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.new(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -0.4,
		c_offset = CFrame.new(0, -1, -1.9) * CFrame.Angles(math.pi + math.rad(20),0,0),
		f_when_done = true,
		transparent = false,
		t_transparent = false,
		b = true,
		cumshot = true,
		f_done = {
			[\"RootJoint\"] = CFrame.new(0.03, -1.23, -0.45) * CFrame.Angles(math.rad(-75), 0, 0);
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-107.83), math.rad(0.01), math.rad(179.98));
			[\"Left Hip\"] = CFrame.new(-1, -1.11, -0.02) * CFrame.Angles(math.rad(-164.61), math.rad(-78.47), math.rad(-95.49));
			[\"Right Shoulder\"] = CFrame.new(1.1, -0.08, 0.3) * CFrame.Angles(math.rad(164.51), math.rad(61.99), math.rad(-58.68));
			[\"Right Hip\"] = CFrame.new(1, -1.32, -0.07) * CFrame.Angles(math.rad(-168.64), math.rad(76.9), math.rad(95.49));
			[\"Left Shoulder\"] = CFrame.new(-1.03, -0.37, 0.36) * CFrame.Angles(math.rad(174.09), math.rad(-56.63), math.rad(57.57));
		},
		m_done = {
			[\"fw\"] = CFrame.Angles(math.rad(3), 0, 0),-- - Vector3.new(0, 0.25, -0.1),
			[\"RootJoint\"] = CFrame.new(0, -2.44, 0.02) * CFrame.Angles(math.rad(-2.87), math.rad(-0.02), math.rad(180));
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-114.61), math.rad(0.01), math.rad(179.98));
			[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-80.29), math.rad(-44.17), math.rad(-83.18));
			[\"Right Shoulder\"] = CFrame.new(1.12, 0.79, 0) * CFrame.Angles(math.rad(-70.49), math.rad(21.15), math.rad(-94.77));
			[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-85.21), math.rad(38.05), math.rad(86.74));
			[\"Left Shoulder\"] = CFrame.new(-0.9, 0.93, 0) * CFrame.Angles(math.rad(-67.12), math.rad(-37.27), math.rad(102.65));
		},
		m = {
			{
				[\"fw\"] = CFrame.Angles(0, 0, 0),-- - Vector3.new(0, 0.25, -0.1),
				[\"RootJoint\"] = CFrame.new(0, -2.44, 0.02) * CFrame.Angles(math.rad(-0.42), math.rad(-0.02), math.rad(180));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-116.81), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-80.29), math.rad(-44.17), math.rad(-79.04));
				[\"Right Shoulder\"] = CFrame.new(1.12, 0.79, 0) * CFrame.Angles(math.rad(-70.49), math.rad(21.15), math.rad(-96.75));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-85.21), math.rad(38.05), math.rad(84.39));
				[\"Left Shoulder\"] = CFrame.new(-0.9, 0.93, 0) * CFrame.Angles(math.rad(-67.12), math.rad(-37.27), math.rad(104.63));
			};
			{
				[\"fw\"] = CFrame.Angles(math.rad(5), 0, 0),-- - Vector3.new(0, 0.25, -0.1),
				[\"RootJoint\"] = CFrame.new(0, -2.44, 0.02) * CFrame.Angles(math.rad(-2.87), math.rad(-0.02), math.rad(180));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-114.61), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-80.29), math.rad(-44.17), math.rad(-83.18));
				[\"Right Shoulder\"] = CFrame.new(1.12, 0.79, 0) * CFrame.Angles(math.rad(-70.49), math.rad(21.15), math.rad(-94.77));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-85.21), math.rad(38.05), math.rad(86.74));
				[\"Left Shoulder\"] = CFrame.new(-0.9, 0.93, 0) * CFrame.Angles(math.rad(-67.12), math.rad(-37.27), math.rad(102.65));
			};
		},
		f = {
			{
				--[\"bw\"] = CFrame.new(0, 0.2, 0) * CFrame.Angles(math.rad(13), 0, 0),
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(50), 0, 0),
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(50), 0, 0),
				--[\"RootJoint\"] = CFrame.new(0.03, -1.23, -0.45) * CFrame.Angles(math.rad(-79.86), math.rad(-0.69), math.rad(-3.86));
				[\"RootJoint\"] = CFrame.new(0.03, -1.23, -0.45) * CFrame.Angles(math.rad(-80), 0, 0);
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-102.44), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1.11, -0.02) * CFrame.Angles(math.rad(-164.61), math.rad(-78.47), math.rad(-90.02));
				[\"Right Shoulder\"] = CFrame.new(1.1, -0.08, 0.3) * CFrame.Angles(math.rad(164.51), math.rad(61.99), math.rad(-50.87));
				[\"Right Hip\"] = CFrame.new(1, -1.32, -0.07) * CFrame.Angles(math.rad(-168.64), math.rad(76.9), math.rad(90.01));
				[\"Left Shoulder\"] = CFrame.new(-1.03, -0.37, 0.36) * CFrame.Angles(math.rad(174.09), math.rad(-56.63), math.rad(49.76));
			};
			{
				--[\"bw\"] = CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(5), 0, 0),
				[\"rbw\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(5), 0, 0),
				[\"lbw\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(5), 0, 0),
				--[\"RootJoint\"] = CFrame.new(0.03, -1.23, -0.45) * CFrame.Angles(math.rad(-74.04), math.rad(-1.08), math.rad(-3.77));
				[\"RootJoint\"] = CFrame.new(0.03, -1.23, -0.45) * CFrame.Angles(math.rad(-75), 0, 0);
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-107.83), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1.11, -0.02) * CFrame.Angles(math.rad(-164.61), math.rad(-78.47), math.rad(-95.49));
				[\"Right Shoulder\"] = CFrame.new(1.1, -0.08, 0.3) * CFrame.Angles(math.rad(164.51), math.rad(61.99), math.rad(-58.68));
				[\"Right Hip\"] = CFrame.new(1, -1.32, -0.07) * CFrame.Angles(math.rad(-168.64), math.rad(76.9), math.rad(95.49));
				[\"Left Shoulder\"] = CFrame.new(-1.03, -0.37, 0.36) * CFrame.Angles(math.rad(174.09), math.rad(-56.63), math.rad(57.57));
			};
		}
	}

}"
    obj437534.Parent = obj879504
    local obj582191 = Instance.new("ObjectValue")
    obj582191.Name = "m"
    obj582191.Parent = obj879504
    local obj959759 = Instance.new("ObjectValue")
    obj959759.Name = "f"
    obj959759.Parent = obj879504
    local obj991354 = Instance.new("RemoteEvent")
    obj991354.Name = "input"
    obj991354.Parent = obj879504
    local obj903820 = Instance.new("BoolValue")
    obj903820.Name = "isPriv"
    obj903820.Parent = obj879504
    local obj239059 = Instance.new("EqualizerSoundEffect")
    obj239059.Name = "eq"
    obj239059.Parent = obj879504
    local obj269190 = Instance.new("Model")
    obj269190.Name = "CumShot"
    obj269190.Parent = obj879504
        local obj743731 = Instance.new("Part")
        obj743731.Name = "2"
        obj743731.Size = Vector3.new(0.0010000000474974513, 0.0010000000474974513, 0.0010000000474974513)
        obj743731.Position = Vector3.new(33.45000076293945, 9.100034713745117, 49.724998474121094)
        obj743731.Anchored = true
        obj743731.BrickColor = BrickColor.new("Medium stone grey")
        obj743731.Parent = obj269190
            local obj979947 = Instance.new("Attachment")
            obj979947.Name = "Attachment"
            obj979947.Parent = obj743731
            local obj587280 = Instance.new("SpringConstraint")
            obj587280.Name = "SpringConstraint_Cum"
            obj587280.Parent = obj743731
            local obj662845 = Instance.new("Attachment")
            obj662845.Name = "Attachment"
            obj662845.Parent = obj743731
            local obj853295 = Instance.new("BallSocketConstraint")
            obj853295.Name = "BallSocketConstraint"
            obj853295.Parent = obj743731
        local obj951971 = Instance.new("Part")
        obj951971.Name = "3"
        obj951971.Size = Vector3.new(0.0010000000474974513, 0.0010000000474974513, 0.0010000000474974513)
        obj951971.Position = Vector3.new(33.45000076293945, 9.100034713745117, 49.07500076293945)
        obj951971.Anchored = true
        obj951971.BrickColor = BrickColor.new("Medium stone grey")
        obj951971.Parent = obj269190
            local obj575005 = Instance.new("Attachment")
            obj575005.Name = "Attachment"
            obj575005.Parent = obj951971
            local obj629076 = Instance.new("SpringConstraint")
