-- Telekinesis Telekinesis (Final v3.1 - No accidental swap)
-- LocalScript đặt trong StarterPack > TelekinesisTool
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = player:GetMouse()
-- If script is inside the Tool, use script.Parent; otherwise create a tool automatically
local tool = script.Parent
if not tool or not tool:IsA("Tool") then
tool = Instance.new("Tool")
tool.Name = "Telekinesis"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = player:WaitForChild("Backpack")
end
-- GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TelekGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")
local container = Instance.new("Frame")
container.Size = UDim2.new(0,220,0,200)
container.AnchorPoint = Vector2.new(1,1)
container.Position = UDim2.new(1,-20,1,-20)
container.BackgroundTransparency = 1
container.Visible = false
container.Parent = screenGui
local function makeBtn(name,pos)
local b = Instance.new("TextButton")
b.Name = name
b.Size = UDim2.new(0,64,0,40)
b.Position = pos
b.Font = Enum.Font.GothamBold
b.TextSize = 16
b.Text = name
b.TextColor3 = Color3.fromRGB(255,255,255)
b.BackgroundColor3 = Color3.fromRGB(25,25,25)
b.AutoButtonColor = true
b.Parent = container
return b
end
-- Buttons
local btnFWD = makeBtn("FWD", UDim2.new(0,78,0,10))
local btnBCK = makeBtn("BCK", UDim2.new(0,78,0,60))
local btnLFT = makeBtn("LFT", UDim2.new(0,10,0,35))
local btnRGT = makeBtn("RGT", UDim2.new(0,146,0,35))
local btnUP = makeBtn("UP", UDim2.new(0,78,0,110))
local btnDN = makeBtn("DN", UDim2.new(0,78,0,150))
local btnThrow= makeBtn("THROW",UDim2.new(0,146,0,110))
local btnDrop = makeBtn("DROP", UDim2.new(0,10,0,110))
local btnReset= makeBtn("RESET",UDim2.new(0,10,0,150))
-- Highlight helper
local function makeHighlight(part)
local box = Instance.new("SelectionBox")
box.Name = "TelekHighlight"
box.LineThickness = 0.05
box.Adornee = part
box.Color3 = Color3.fromRGB(0,200,255)
box.Parent = part
return bo
