
local prompt = script.Parent.Base.ProximityPrompt


prompt.Triggered:Connect(function()
	prompt.Enabled = false	
	for i,v in pairs(script.Parent.Break:GetChildren()) do
		v.Anchored = false
	end
	wait(5)--How long till it destroys, need to add a destroy function
end)

