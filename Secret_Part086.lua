				--[\"fw\"] = CFrame.Angles(math.rad(30), 0, 0)--[[ * CFrame.new(0, 0, 0.1)]==] - Vector3.new(0, 0.35, 0) + Vector3.new(0, 0, .2),
				[\"fw\"] = CFrame.Angles(math.rad(50), 0, 0),-- * CFrame.new(0, 0, 0.1) - Vector3.new(0, 0.35, 0) + Vector3.new(0, 0, .2),
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.04) * CFrame.Angles(math.rad(-102.37 - 30), math.rad(0), math.rad(179.98)) - Vector3.new(0, 0.2, 0.1);
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-101.38), math.rad(0), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-37.75 - 45));
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-133.66 + 30));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(21.9 + 45));
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(118.02 - 30));
			};
			{
				--[\"fw\"] = CFrame.Angles(math.rad(-14 - 10), 0, 0)--[[ * CFrame.new(0, 0, 0)]==] - Vector3.new(0, 0.35, 0),
				[\"fw\"] = CFrame.Angles(math.rad(-14 - 10), 0, 0),-- * CFrame.new(0, 0, 0) - Vector3.new(0, 0.35, 0),
				[\"RootJoint\"] = CFrame.new(0, -0.1, -1.18) * CFrame.Angles(math.rad(-94.85 + 5), math.rad(0), math.rad(179.98)) + Vector3.new(0, 0.1, 0.05);
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-98.21), math.rad(0), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-26.35), math.rad(-78.53), math.rad(-23.47 + 5));
				[\"Right Shoulder\"] = CFrame.new(0.85, 0.13, -0.51) * CFrame.Angles(math.rad(-171.33), math.rad(70.91), math.rad(-145.75 - 30));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10.52), math.rad(80.89), math.rad(7.61 - 5));
				[\"Left Shoulder\"] = CFrame.new(-0.89, -0.05, -0.38) * CFrame.Angles(math.rad(-180), math.rad(-66.02), math.rad(130.1 + 30));
			};
		},
		f = {
			{
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(12), 0, 0),
				[\"RootJoint\"] = CFrame.new(0, -1.82, -1.65) * CFrame.Angles(math.rad(144.84 + 17), math.rad(0.02), math.rad(-179.99)) - Vector3.new(0, 0, 0.2);
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(18.4), math.rad(-0.02), math.rad(-179.99));
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12 - 7), math.rad(-109.58 + 5));
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 + 5))- Vector3.new(0, -0.4, 0);
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85 + 7), math.rad(122.82 - 5));
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.rad(-68.98), math.rad(-27.25), math.rad(81.99 - 5))- Vector3.new(0, -0.4, 0);
			};
			{
				[\"bw\"] = CFrame.new(0, 0, 0),
				[\"RootJoint\"] = CFrame.new(0, -1.79, -1.78) * CFrame.Angles(math.rad(148.72 + 17), math.rad(0.02), math.rad(-179.99)) + Vector3.new(0, 0, 0.3);
				[\"Neck\"] = CFrame.new(0, 0.93, 0.22) * CFrame.Angles(math.rad(25.74), math.rad(-0.02), math.rad(-179.99));
				[\"Left Hip\"] = CFrame.new(-1.11, -1.29, 0.17) * CFrame.Angles(math.rad(18.95), math.rad(-68.12 - 7), math.rad(-103.02 - 10));
				[\"Right Shoulder\"] = CFrame.new(1.01, 0.78, -0.35) * CFrame.Angles(math.rad(-64.92), math.rad(31.32), math.rad(-83.75 - 10))- Vector3.new(0, -0.55, 0);
				[\"Right Hip\"] = CFrame.new(1.14, -1.13, 0.24) * CFrame.Angles(math.rad(2.7), math.rad(72.85 + 7), math.rad(116.27 + 10));
				[\"Left Shoulder\"] = CFrame.new(-1.03, 0.76, -0.24) * CFrame.Angles(math.rad(-68.98), math.rad(-27.25), math.rad(81.99 + 10)) - Vector3.new(0, -0.55, 0);
			};
		}
	},
	bj = {
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
		fortnite = CFrame.Angles(math.rad(35), 0, 0), --CFrame.Angles(math.rad(5), 0, 0) - Vector3.new(0,0.05,0), --CFrame.Angles(math.rad(-15), 0, 0),
		offset =  CFrame.new(0, 0, -1),
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.new(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -1,
		c_offset = CFrame.new(0, -1, -1.9) * CFrame.Angles(math.pi + math.rad(20),0,0),
		f_when_done = true,
		transparent = false,
		t_transparent = false, --true,
		head = true,
		cumshot = true,
		f_done = {
			--[\"Left Hip\"] = CFrame.new(-0.97, -0.43, -0.89) * CFrame.Angles(math.rad(178.89), math.rad(-81.11), math.rad(-112.34));
			--[\"Right Hip\"] = CFrame.new(0.98, -0.45, -0.95) * CFrame.Angles(math.rad(178.63), math.rad(83.26), math.rad(111.54));
			--[\"RootJoint\"] = CFrame.new(0.08, -1.82, -1.42) * CFrame.Angles(math.rad(-70.73), math.rad(-1.13), math.rad(-3.22)) * CFrame.new(0, -0.2, 0);
			[\"Left Hip\"] = CFrame.new(-0.97, -0.43, -0.89) * CFrame.Angles(math.rad(178.89), math.rad(-81.11), math.rad(-112.34)) + Vector3.new(0,-0.5,0.5);
			[\"Right Hip\"] = CFrame.new(0.98, -0.45, -0.95) * CFrame.Angles(math.rad(178.63), math.rad(83.26), math.rad(111.54)) + Vector3.new(0,-0.5,0.5);
			[\"RootJoint\"] = CFrame.new(0.08, -1.32, -1.42) * CFrame.Angles(math.rad(-70.73), math.rad(-1.13), math.rad(-3.22)) * CFrame.new(0, -0.2, 0);
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-127.06), math.rad(0.01), math.rad(179.98)) * CFrame.Angles(math.rad(-20),0 ,0);
			[\"Right Shoulder\"] = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(-160.5), math.rad(67.38), math.rad(-94.87));
			[\"Left Shoulder\"] = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(-166.38), math.rad(-69.71), math.rad(93.9));
		},
		m_done = {
			--[\"fw\"] = CFrame.Angles(math.rad(-8), 0, 0) * CFrame.new(0, 0, 0.3) - Vector3.new(0,0.55, 0),
			[\"fw\"] = CFrame.Angles(math.rad(35), 0, 0),
			[\"RootJoint\"] = CFrame.new(0, -0.02, -0.33) * CFrame.Angles(math.rad(-77.49), math.rad(-0.01), math.rad(179.98));
			[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-101.56), math.rad(0), math.rad(179.98));
			[\"Left Hip\"] = CFrame.new(-1.12, -0.99, 0.03) * CFrame.Angles(math.rad(-14.85), math.rad(-74.68), math.rad(6.3));
			[\"Right Shoulder\"] = CFrame.new(0.73, 0.59, -0.32) * CFrame.Angles(math.rad(141.9), math.rad(49.34), math.rad(-94.92));
			[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-9.97), math.rad(78.92), math.rad(-5.75));
			[\"Left Shoulder\"] = CFrame.new(-0.9, 0.3, -0.2) * CFrame.Angles(math.rad(179.13), math.rad(-48.77), math.rad(138.97));
		},
		m = {
			{
				[\"RootJoint\"] = CFrame.new(0, -0.02, -0.33) * CFrame.Angles(math.rad(-87.05), math.rad(0), math.rad(179.98));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-118.63), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1.12, -0.99, 0.03) * CFrame.Angles(math.rad(-14.85), math.rad(-74.68), math.rad(-6.59));
				[\"Right Shoulder\"] = CFrame.new(0.73, 0.59, -0.32) * CFrame.Angles(math.rad(141.9), math.rad(49.34), math.rad(-66.18));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-9.97), math.rad(78.92), math.rad(7.14));
				[\"Left Shoulder\"] = CFrame.new(-0.9, 0.3, -0.2) * CFrame.Angles(math.rad(-178), math.rad(-51.31), math.rad(127.08));
			};
			{
				[\"RootJoint\"] = CFrame.new(0, -0.02, -0.33) * CFrame.Angles(math.rad(-83.89), math.rad(0), math.rad(179.98));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-123.65), math.rad(0.01), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-1.12, -0.99, 0.03) * CFrame.Angles(math.rad(-14.85), math.rad(-74.68), math.rad(-2.5));
				[\"Right Shoulder\"] = CFrame.new(0.73, 0.59, -0.32) * CFrame.Angles(math.rad(141.9), math.rad(49.34), math.rad(-74.17));
				[\"Right Hip\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-9.97), math.rad(78.92), math.rad(3.05));
				[\"Left Shoulder\"] = CFrame.new(-0.9, 0.3, -0.2) * CFrame.Angles(math.rad(179.13), math.rad(-48.77), math.rad(131.38));
			};
		},
		f = {
			{
				[\"bw\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7), 0, 0),
				--[\"RootJoint\"] = CFrame.new(0.08, -1.82, -1.42) * CFrame.Angles(math.rad(-72.84), math.rad(-1.01), math.rad(-3.26));
				[\"RootJoint\"] = CFrame.new(0.08, -1.32, -1.42) * CFrame.Angles(math.rad(-72.84), math.rad(-1.01), math.rad(-3.26));
				[\"Neck\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-91.23), math.rad(0), math.rad(179.98));
				[\"Left Hip\"] = CFrame.new(-0.97, -0.48, -0.91) * CFrame.Angles(math.rad(178.89), math.rad(-81.11), math.rad(-108.78)) + Vector3.new(0,-0.5,0.5);
				[\"Right Shoulder\"] = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(-160.5), math.rad(67.38), math.rad(-94.08));
				[\"Right Hip\"] = CFrame.new(0.98, -0.49, -0.97) * CFrame.Angles(math.rad(178.63), math.rad(83.26), math.rad(107.97)) + Vector3.new(0,-0.5,0.5);
				[\"Left Shoulder\"] = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(-166.38), math.rad(-69.71), math.rad(93.11));
