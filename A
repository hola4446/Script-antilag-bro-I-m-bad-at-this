local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Box = Instance.new("TextBox")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Size = UDim2.new(0, 220, 0, 140)
Frame.Position = UDim2.new(0.5, -110, 0.5, -70)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Title.Text = "Hitbox Editor"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true

Box.Parent = Frame
Box.PlaceholderText = "Enter studs (e.g. 5)"
Box.Size = UDim2.new(0.8, 0, 0, 30)
Box.Position = UDim2.new(0.1, 0, 0.4, 0)
Box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Box.TextColor3 = Color3.new(1, 1, 1)
Box.TextScaled = true

Button.Parent = Frame
Button.Text = "Apply Hitbox"
Button.Size = UDim2.new(0.8, 0, 0, 30)
Button.Position = UDim2.new(0.1, 0, 0.75, 0)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextScaled = true

--// Function to expand hitbox
local function expandHitbox(amount)
    for _, tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if tool:IsA("Tool") and (tool.Name == "Pillow" or tool.Name == "Basketball") then
            local handle = tool:FindFirstChild("Handle") or tool:FindFirstChildWhichIsA("Part")
            if handle then
                handle.Size = Vector3.new(
                    handle.Size.X + amount,
                    handle.Size.Y + amount,
                    handle.Size.Z + amount
                )
                handle.Massless = true
                handle.CanCollide = false
                handle.Transparency = 0.3
                handle.Color = Color3.fromRGB(255, 50, 50)
            end
        end
    end
end

--// Button action
Button.MouseButton1Click:Connect(function()
    local studs = tonumber(Box.Text)
    if studs then
        expandHitbox(studs)
    else
        Box.Text = "Invalid number!"
    end
end)
