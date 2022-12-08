local ts = game:GetService('TweenService')

local prompt = script.Parent.Sensor
opened = false
prompt.Touched:Connect(function(hit)
	if hit.parent:FindFirstChild("Humanoid") then
	if opened == false then
		ts:Create(script.Parent.Left,TweenInfo.new(1,0,0),{CFrame = script.Parent.LeftOpen.CFrame}):Play()
		ts:Create(script.Parent.Right,TweenInfo.new(1,0,0),{CFrame = script.Parent.RightOpen.CFrame}):Play()
		opened = true
		wait(5)
		ts:Create(script.Parent.Left,TweenInfo.new(1,0,0),{CFrame = script.Parent.LeftClosed.CFrame}):Play()
		ts:Create(script.Parent.Right,TweenInfo.new(1,0,0),{CFrame = script.Parent.RightClosed.CFrame}):Play()
		opened = false
	end
	end
end)