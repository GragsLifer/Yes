								task.defer(newcumshot, shotcframe, shotvel, cm_ignore)
							else
								local params = RaycastParams.new()
								params.RespectCanCollide = true
								params.FilterDescendantsInstances = {m, f}
								local results = workspace:Raycast(m.fortnite:FindFirstChildWhichIsA(\"Attachment\",true).WorldPosition, Vector3.new(0,-999.999,0), params)
								if results then
									local puddle = script.Puddle:Clone()
									puddle.CanQuery = false
									puddle.CanTouch = false
									puddle.Anchored = true
									puddle.CanCollide = false
									puddle.Transparency = 0.1
									puddle.CFrame = CFrame.new(results.Position, results.Position + results.Normal) * CFrame.fromOrientation(-math.rad(90),0,0) * CFrame.fromOrientation(0, math.rad(math.random(0,360)), 0)
									puddle.Parent = workspace.Terrain
									task.delay(4, function()
										game:GetService(\"TweenService\"):Create(puddle, TweenInfo.new(0.7), {Transparency = 1}):Play()
									end)
									game.Debris:AddItem(puddle, 5)
								end
							end
							
							if not anim.head and not anim.b then
								for i,v in (anim.anal and f.v.Anus:GetChildren() or f.v:GetChildren()) do 
									if v.Name == \"d\" and v:IsA(\"BasePart\") then
										local s = v.Size
										v.Size *= 1.6
										game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()
									end
								end
							elseif anim.head and not anim.b then 
								local v = f.Head.d
								local s = v.Size
								v.Size *= 1.6
								game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()
							else 
								for i,v in f.a:GetChildren() do 
									if v.Name == \"d\" and v:IsA(\"BasePart\") then
										local s = v.Size
										v.Size *= 1.6
										game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()
									end
								end
							end


							for i,v in m.fortnite:GetDescendants() do 
								if v.Name == \"d\" and v:IsA(\"BasePart\")then
									local s = v.Size
									v.Size *= 1.6
									game:GetService(\"TweenService\"):Create(v, TweenInfo.new(0.7, Enum.EasingStyle.Elastic), {Transparency = 0, Size = s}):Play()
								end
							end
							fsfx(491214142, 1, 0.35)
							fsfx(8142423452, 1.4)
						end
					end)
					local p2 = {}
					for motor, pose in anim.f_done do 
						motor = f:FindFirstChild(motor, true)
						if motor:IsA('Motor6D') then
							p2[motor] = motor.C0:Lerp(pose, 1.4)
						else
							p2[motor] = motor.Transform:Lerp(pose, 1.4)
						end
					end
					local mp2 = {}
					if anim.m_done then
						for motor, pose in anim.m_done do 
							motor = m:FindFirstChild(motor, true)
							if motor then
								--mp2[motor] = motor.C0:Lerp(pose, 1.4)
								if motor.Name == 'fw' then
									mp2[motor] = motor.Transform:Lerp(pose, 1.4)
								else
									mp2[motor] = motor.C0:Lerp(pose, 1.4)
								end
							else
								mp2[motor] = motor.Transform:Lerp(pose, 1.4)
							end
						end
					end
					for i = 1, 250 do 
						sine += task.wait() * 23
						if m.Name == lplr.Name then
							lplr.PlayerGui.ui.Frame.start.bar.Size = lplr.PlayerGui.ui.Frame.start.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)
							lplr.PlayerGui.ui.Frame.meter.bar.Size = lplr.PlayerGui.ui.Frame.meter.bar.Size:Lerp(UDim2.fromScale(1, 0), 0.15)
						end
						if anim.m_done then
							for motor, pose in anim.m_done do 
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
									if mp2[motor] then
										if motor:IsA('Motor6D') then
											--local pivot = if motor.Name == 'fw' then motor.C1 else CFrame.new()
											--motor.C0 = pivot * motor.C0:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
											if motor.Name == 'fw' then
												motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)
											else
												motor.C0 = motor.C0:Lerp(mp2[motor]:Lerp(pose, 0.5 + (math.sin(t)/2)), 0.15)
											end
										elseif motor:IsA('Bone') then
											motor.Transform = motor.Transform:Lerp(mp2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										end
									end
								end
							end
						else
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
						end

						for motor, pose in anim.f_done do 
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
								if p2[motor] then
									if motor:IsA('Motor6D') then
										motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									end
								end
							end
						end
					end
					for i = 1, 100 do 
						for motor, pose in anim.f_done do 
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
								if p2[motor] then
									if motor:IsA('Motor6D') then
										if motor.Name == 'fw' then
											motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										else
											motor.C0 = motor.C0:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
										end
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform:Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									end
								end
							end
						end
					end
					for i = 1, 50 do 
						task.wait()
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
									motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)
								elseif motor:IsA('Bone') then
									motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.f[2][motor.Name], e), i/50)
								end
							end
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
										motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									else
										motor.C0 = motor.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									end
								elseif motor:IsA('Bone') then
