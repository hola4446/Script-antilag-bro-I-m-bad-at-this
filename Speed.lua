-- Put this LocalScript inside StarterGui > ScreenGui
-- Add a TextBox named "SpeedBox" inside the ScreenGui

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local screenGui = script.Parent
local speedBox = screenGui:WaitForChild("SpeedBox")

-- When the player presses Enter after typing a speed
speedBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local newSpeed = tonumber(speedBox.Text)
		if newSpeed and newSpeed > 0 then
			humanoid.WalkSpeed = newSpeed
			print("Speed changed to:", newSpeed)
		else
			print("Please type a valid number.")
		end
	end
end)
