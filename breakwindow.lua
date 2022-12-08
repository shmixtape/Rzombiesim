
local prompt = script.Parent.Base.ProximityPrompt


prompt.Triggered:Connect(function()
	prompt.Enabled = false	
	for i,v in pairs(script.Parent.Break:GetChildren()) do
		v.Anchored = false
	end
	wait(5)--How long till it destroys
	--need to add a destroy function
	wait(1800)
	--add a restore function
	
end)
-- proximity prompt is a stationary UI bound to the parent part that acts as the interaction for the user
--prompt is enabled by default and when disabled it removes the ability to be acted upon by the user again
--wait(n) function waits n=seconds within the script at that line before moving to the next line
-- children are parts within the specified directory on the explorer, so script.parent.break is seeing the script, then moving to it's Parent, then back down to the part specified by the name "Break"
-- all parts are anchored to their position by default and "un-anchoring" them results in them "ragdolling" and falling from their position semirandomly and allowing them to be moved by the player or gravity
