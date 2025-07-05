						Font = Enum.Font.Code
					})	
				end)
			end)
		end]==]
		if inp.KeyCode == Enum.KeyCode.C then
			camModeToggle = not camModeToggle
			if camModeToggle then
				local ff 
				local fov = 70

				ff = uis.InputChanged:Connect(function(i)
					if i.UserInputType == Enum.UserInputType.MouseWheel then
						fov += i.Position.Z * -15
						fov = math.clamp(fov, 1, 120)
					end
				end)
				
				while camModeToggle do 
					game:GetService(\"RunService\").RenderStepped:Wait()
					if anim.transparent then
						for i, v in m:GetDescendants() do 
							if v:IsA(\"BasePart\") and not v:IsDescendantOf(f)then
								if v.Parent.Name == \"p\" and v:IsA(\"UnionOperation\") then
									v.LocalTransparencyModifier = 1
								elseif v.Parent.Name ~= \"p\" then
									v.LocalTransparencyModifier = 1
								end
							end
						end
					end
					workspace.CurrentCamera.FieldOfView = lerp(workspace.CurrentCamera.FieldOfView, fov, 0.2)
					workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
					workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(f.Torso.CFrame * anim.c_offset, 0.4)
				end
				ff:Disconnect()
				for i, v in m:GetDescendants() do 
					if v:IsA(\"BasePart\")then
						v.LocalTransparencyModifier = 0
					end
				end
 				workspace.CurrentCamera.FieldOfView = 70
				workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			end
		end
	end)
else 
	canRun = true
	script.Name = \"fakeRep\"
end
repeat task.wait() until canRun
task.defer(function()
	while true do 
		game:GetService(\"RunService\").Stepped:Wait()
		f.face.mouth3.Transparency = m3
		f.face.mouth2.Transparency = m2
		f.face.mouth.Transparency = m1
		for i,v in f:GetDescendants() do 
			if v:IsA(\"BasePart\")then
				v.CanCollide = false
				v.Massless = true
			end
		end
		--f.face.brow2.Transparency = m2
	end
end)

local plap = 0

local updating = false

local vag = f:WaitForChild('v')
local v_opened = vag:WaitForChild('Opened')
local v_aroused = vag:WaitForChild('Aroused')
local v_closed = vag:WaitForChild('Closed')

local cur_type
local set_vag = function(type)
	type = type or 0
	if cur_type == type then
		return
	end
	cur_type = type
	
	for i,v in v_opened:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	for i,v in v_closed:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	for i,v in v_aroused:GetChildren() do 
		if v:IsA(\"BasePart\") then
			v.Transparency = 1
		end
	end
	
	if type == 0 then
		for i,v in v_closed:GetChildren() do 
			if v:IsA(\"BasePart\") then
				v.Transparency = 0
			end
		end
	elseif type == 1 then
		for i,v in v_aroused:GetChildren() do 
			if v:IsA(\"BasePart\") then
				v.Transparency = 0
			end
		end
	elseif type == 2 then
		for i,v in v_opened:GetChildren() do 
			if v:IsA(\"BasePart\") then
				v.Transparency = 0
			end
		end
	end
end

game:GetService(\"RunService\").RenderStepped:Connect(function(dt)
	if updating then return end
	updating = true
	
--while true do 
--	local dt = game:GetService(\"RunService\").RenderStepped:Wait()
	t += dt
	--m.fw.C0 = m.fw.C1 * anim.fortnite
	m.fw.Transform = anim.fortnite
	m.cn.C0 = anim.offset
	f.bw.C0 = anim.shield_offset
	f.rbw.C0 = anim.rshield_offset
	f.lbw.C0 = anim.lshield_offset
	--m.fortnite.p.p.Transparency = anim.t_transparent and 1 or 0
	--m.fortnite.p.o.Transparency = anim.t_transparent and 1 or 0
	local speed = anim.default * speedMult
	local sine = t * speed
	local lerpSpeed = 1
	
	--// Rendering
	for i,v in f:GetDescendants() do
		if v:IsA(\"BasePart\") and v:GetAttribute(\"DONTRENDER\") then
			v.Transparency = 1
		end
	end
	if animname == \"bbj\" or animname == \"bj\" or animname == \"acg\" or animname == 'dga' then
		set_vag(0)
	elseif animname == 'bj' then
		set_vag(1)
	elseif animname == 'cg' or animname == 'dg' or animname == 'cy' then
		set_vag(2)
	end
	
	for motor, pose in anim.m[1] do 
		motor = m:FindFirstChild(motor, true)
		if motor then
			local t = sine + anim.m_delay
			if motor.Name == \"Neck\"then
				t += anim.m_neck_delay
			elseif motor.Name:find(\"Hip\")then
				t += anim.m_hip_delay
			elseif motor.Name:find(\"Shoulder\")then
				t += anim.m_shoulder_delay
			end
			local e = 0.5 + (math.sin(t) / 2)
			if motor:IsA('Motor6D') then
				if motor.Name == 'fw' then
					motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
				else
					motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
				end
			elseif motor:IsA('Bone') then
				motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), lerpSpeed)
			end
		end
	end
	for motor, pose in anim.f[1] do 
		motor = f:FindFirstChild(motor, true)
		if motor then
			local t = sine + anim.f_delay
			if motor.Name == \"Neck\"then
				t += anim.f_neck_delay
			elseif motor.Name:find(\"Hip\")then
				t += anim.f_hip_delay
			elseif motor.Name:find(\"Shoulder\")then
				t += anim.f_shoulder_delay
			elseif motor.Name == \"bw\" or motor.Name == \"rbw\" or motor.Name == \"lbw\" then
				t += anim.bw_delay
			end
			local e = 0.5 + (math.sin(t) / 2) 
			if motor:IsA('Motor6D') then
				motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][motor.Name], e), lerpSpeed)
			elseif motor:IsA('Bone') then
				motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.f[2][motor.Name], e), lerpSpeed)
			end
		end
	end
	local a = ((ack-1)%4) + 1
	local over25 = false
	if not ismn then
		if speed >= 25 then
			over25 = true
			m3 = 0 
			m2 = 1 
			m1 = 1
		else 
			over25 = false
			m3 = 1
			m2 = 1
			m1 = 0
		end
	end
	if t > anim.sfx/speed then
		t = 0
		ack = math.min(ack + 1, max)
		if not anim.head then
			fsfx(8142423452, 2)
			fsfx(sfx2[a], 2)
		else 
			fsfx(8142423452, 2)
			fsfx(9114122475, 1, 1.5)
		end
		if math.random() <= (anim.sfx/speed)/2 and not ismn then
			ismn = true
			--[[local m = fsfx(sfx[a], 1)
			if anim.head then
				--m.Volume = 2
				m.Volume = 0.5
				script.eq:Clone().Parent = m
			end]==]
			m3 = 0 
			m2 = 1 
			m1 = 1
			local l, l2 = over25 and 1 or 0, over25 and 0 or 1
			task.delay(0.2, function()
				if isdn then
					return
				end
				m3 = 1 
				m2 = 0
				m1 = 1
				task.wait(0.2)
				if isdn then
					return
				end
				m3 = 1 
				m2 = 1
				m1 = 1
				f.face.mouth4.Transparency = 0
				task.wait(0.2)
				if isdn then
					return
				end
				f.face.mouth4.Transparency = 1
				ismn = false
				m3 = l2
				m2 = 1
				m1 = l
			end)
		end
		if lplr.Name == m.Name then
			if ack <= math.floor(max/2.5) and not rel then
				lplr.PlayerGui.ui.Frame.start.bar.Size = UDim2.fromScale(1, ack/math.floor(max/2.5))
				plap += 1
				
				if plap % 5 == 0 then
					task.defer(function()
						f.v:FindFirstChild(\"prt\",true):Emit(math.random(1,5))
					end)
				end
			else 
				local s = (ack-math.floor(max/2.5))/(max-math.floor(max/2.5))
				lplr.PlayerGui.ui.Frame.meter.bar.Size = UDim2.fromScale(1, math.min(1, s))
				if rel then --s == 1 then
					isdn = true
					ismn = true
					m3 = 0 
					m2 = 1 
					m1 = 1
					f.face.eyes2.Transparency = 0
					f.face.eyes.Transparency = 1
					task.delay(0.2, function()
						m3 = 1 
						m2 = 0
						task.wait(0.2)
						m2 = 1
						f.face.mouth4.Transparency = 0
						task.wait(0.5)
						f.face.mouth4.Transparency = 1
						f.face.mouth5.Transparency = 0
					end)
					local mn = fsfx(2440889605, 1)
					if anim.head then
						mn.Volume = 2
						script.eq:Clone().Parent = mn
					end
					fsfx(sfx2[a], 0.9)


					task.defer(function()
						for i = 1, 4 do 
							task.wait(0.7)
							if not anim.head and not anim.b then
								f.v:FindFirstChild(\"prt\",true):Emit(17)
							elseif anim.head and not anim.b then
								f.Head:FindFirstChild(\"prt\",true):Emit(17)
							else 
								m.fortnite:FindFirstChild(\"prt\",true):Emit(17)
							end
							if anim.cumshot then
								--local shot = script.CumShot:Clone()
								--local pivotpoint = shot:GetPivot().Position
								--for _,v in shot:GetChildren() do
								--	if v:IsA(\"BasePart\") then
								--		v.Position = pivotpoint
								--		v.CanCollide = true
								--		v.Anchored = false
								--		v.TopSurface = Enum.SurfaceType.Glue
								--		v.BottomSurface = Enum.SurfaceType.Glue
								--		v.LeftSurface = Enum.SurfaceType.Glue
								--		v.RightSurface = Enum.SurfaceType.Glue
								--		v.FrontSurface = Enum.SurfaceType.Glue
								--		v.BackSurface	 = Enum.SurfaceType.Glue
								--	end
								--end
								--local shotcframe = m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldCFrame
								--shot:PivotTo(shotcframe + shotcframe.LookVector * 0.1)
								--shot.Parent = workspace.Terrain
								--shot:GetChildren()[1].AssemblyLinearVelocity = shotcframe.LookVector * math.random(50,100)
								--game.Debris:AddItem(shot, 5)
								local shotcframe = m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldCFrame
								local shotvel = shotcframe.LookVector * 20 + Vector3.new(
									math.random(-5, 5),
									0,
									math.random(-5, 5)
								)
