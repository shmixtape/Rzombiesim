local CollectionService = game:GetService("CollectionService")
local HumanoidList = require(game.ServerStorage.ROBLOX_HumanoidList)
local RESET_TIME = 5
local NPC = game.ReplicatedStorage.Zombie

for _,part in CollectionService:GetTagged("eventBrick")do
	part.Touched:Connect(function(hit)
		if hit.parent:FindFirstChild("Humanoid") then
			local humanoids = HumanoidList:GetCurrent()
			if hit.parent.Name == "Zombie" then return end
			if not part:GetAttribute("Touched") then
				print("working!")
				 part:SetAttribute("Touched", true)  -- Set attribute to true
				local brick = part	
				local function spawnzombie()
					local Clone = NPC: Clone()
					local areatrans = math.random((-15), 15)
					Clone.HumanoidRootPart.CFrame = brick.CFrame * CFrame.new(areatrans, areatrans, areatrans)
					Clone.Parent = workspace
					task.wait(1)
				end
while wait(.1) do
	local eventNumber = math.random(0, 10)		
	if eventNumber == 0 then
						print ("nothing!")
						return
	end
	if eventNumber == 1 then
		task.wait(5)
		print ("zombies1")
			local brick = part

			while true do
							spawnzombie()
							spawnzombie()
							spawnzombie()
				eventNumber = 0
							wait(10)		
							return
			end
	end
	if eventNumber == 2 then
		task.wait(5)
		print ("item crate1")
					--execute item crate spawn function radius of 10
						wait(10)	
						return
	end
	if eventNumber == 3 then
		task.wait(5)
		print ("gun crate1")
					--execute gun crate spawn function radius of 10
						wait(10)	
						return
	end
	if eventNumber == 4 then
		task.wait(5)
		print ("zombies2")
			local NPC = game.ReplicatedStorage.Zombie
			local brick = part

			while true do
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
						eventNumber = 0
							wait(10)	
							return
						end
						end
	if eventNumber == 5 then
		task.wait(5)
		print ("item crate2")
						--execute item crate spawn function radius of 10
							wait(10)	
							return
	end
	if eventNumber == 6 then
		task.wait(5)
		print ("item crate3")
						--execute item crate spawn function radius of 10
							wait(10)	
							return
	end
	if eventNumber == 7 then
		task.wait(5)
		print ("zombies3")
				local NPC = game.ReplicatedStorage.Zombie
				local brick = part

				while true do
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							eventNumber = 0
								wait(10)	
								return
							end
							end
	if eventNumber == 8 then
		task.wait(5)
		print ("gun crate2")
							--execute gun crate spawn function radius of 10
								wait(10)	
								return
	end
	if eventNumber == 9 then
		task.wait(5)
		print ("zombiesplus")
					local NPC = game.ReplicatedStorage.Zombie
					local brick = part

					while true do
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
							spawnzombie()
								eventNumber = 0
									wait(10)	
									return
								end
								end
	if eventNumber == 10 then
		task.wait(5)
								print ("new ally!")
									wait(10)	
									return
		end
					end
				end
					end
					task.wait(RESET_TIME)  -- Wait for reset duration
					part:SetAttribute("Touched", false)
					print("Working!!!!!!!!!!!!")-- Reset attribute
				end)
end