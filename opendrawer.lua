local ts = game:GetService('TweenService')


local prompt = script.Parent.CloseDrawer.ProximityPrompt
opened = false
prompt.Triggered:Connect(function()
	if opened == false then
		ts:Create(script.Parent.Base,TweenInfo.new(1,0,0),{CFrame = script.Parent.OpenDrawer.CFrame}):Play()
		opened = true
	else
		ts:Create(script.Parent.Base,TweenInfo.new(1,0,0),{CFrame = script.Parent.CloseDrawer.CFrame}):Play()
		opened = false
	end
end)