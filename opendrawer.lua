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
-- tween add's a smoothing to the transition to the desired "new" position,
-- opendrawer and closedrawer are a part that is invisible to the player and act as the desired locations of the "Base" drawer to reach when the function is activated.
--"opened = false" sets the default value for the drawer starting closed so the script has a correct cycle.
