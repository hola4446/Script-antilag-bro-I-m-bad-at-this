-- 🍋 Limón Hub - Teleport Script (KRNL Version)
-- Works on PC and Mobile (KRNL, Delta, Fluxus)

-- Wait for player to load
repeat task.wait() until game:IsLoaded()
local player = game.Players.LocalPlayer
repeat task.wait() until player and player:FindFirstChild("PlayerGui")

-- Create GUI safely
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LimonHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.7, 0, 0.4, 0)
Frame.Size = UDim2.new(0, 220, 0, 250)
Frame.Active = true
Frame.Draggable = true
Frame.Visible = true

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "🍋 Limón Hub"
Title.Font = Enum.Font.SourceSansBold
Title.TextScaled = true
Title.TextColor3 = Color3.fromRGB(255, 255, 0)

-- Function to make buttons easily
local function createButton(text, color, posY)
	local btn = Instance.new("TextButton")
	btn.Parent = Frame
	btn.Size = UDim2.new(0.9, 0, 0, 40)
	btn.Position = UDim2.new(0.05, 0, 0, posY)
	btn.BackgroundColor3 = color
	btn.Text = text
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.SourceSansBold
	btn.TextScaled = true
	btn.AutoButtonColor = true
	return btn
end

-- Buttons
local TPButton = createButton("TP - Save Position", Color3.fromRGB(255, 100, 100), 50)
local TP2Button = createButton("TP2 - Go to Position", Color3.fromRGB(100, 255, 100), 100)
local TRASButton = createButton("TRAS - NoClip", Color3.fromRGB(100, 100, 255), 150)
local ToggleButton = createButton("Hide / Show Hub", Color3.fromRGB(255, 255, 0), 200)
ToggleButton.TextColor3 = Color3.new(0, 0, 0)

-- Variables
local savedPosition = nil
local noclip = false
local hidden = false
local char = player.Character or player.CharacterAdded:Wait()

-- Notification helper
local function notify(msg)
	pcall(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "🍋 Limón Hub",
			Text = msg,
			Duration = 2
		})
	end)
end

-- Button logic
TPButton.MouseButton1Click:Connect(function()
	if char and char:FindFirstChild("HumanoidRootPart") then
		savedPosition = char.HumanoidRootPart.Position
		notify("Position saved ✅")
	end
end)

TP2Button.MouseButton1Click:Connect(function()
	if savedPosition and char and char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart.CFrame = CFrame.new(savedPosition)
		notify("Teleported ✨")
	end
end)

TRASButton.MouseButton1Click:Connect(function()
	noclip = not noclip
	notify(noclip and "NoClip ENABLED 🚀" or "NoClip DISABLED ❌")
end)

ToggleButton.MouseButton1Click:Connect(function()
	hidden = not hidden
	for _, obj in pairs(Frame:GetChildren()) do
		if obj:IsA("TextButton") and obj ~= ToggleButton then
			obj.Visible = not hidden
		end
	end
	Title.Visible = not hidden
end)

-- NoClip loop
game:GetService("RunService").Stepped:Connect(function()
	if noclip and char then
		for _, part in pairs(char:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end)

notify("🍋 Limón Hub Loaded Successfully! Use buttons to teleport or NoClip.")
