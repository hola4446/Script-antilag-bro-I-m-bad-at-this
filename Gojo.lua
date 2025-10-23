----------------[[ THE STRONGEST SORCERER ]]----------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")
-- Remove old title if it exists
if head:FindFirstChild("SorcererTitle") then
	head.SorcererTitle:Destroy()
end
-- BillboardGui
local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "SorcererTitle"
billboardGui.Parent = head
billboardGui.Adornee = head
billboardGui.Size = UDim2.new(0, 200, 0, 50)
billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
billboardGui.AlwaysOnTop = true
-- TextLabel
local label = Instance.new("TextLabel")
label.Parent = billboardGui
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "The Strongest Sorcerer"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextStrokeTransparency = 0
label.TextStrokeColor3 = Color3.new(0, 0, 0)
label.TextScaled = true
label.Font = Enum.Font.SpecialElite
-- Shake Effect
local originalOffset = Vector3.new(0, 2.5, 0)
RunService.RenderStepped:Connect(function()
	local xShake = math.random(-2, 2) / 10
	local yShake = math.random(-2, 2) / 10
	billboardGui.StudsOffset = originalOffset + Vector3.new(xShake, yShake, 0)
end)
----------------------//--tools--\\------------------------
------------------[The honored one spawn]----------------------
loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/The%20honored%20one%20spawn%20emote.txt"))()
----------------------//--tools--\\------------------------
------------------[Infinity/limitless]----------------------
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Infinity%20(1).txt"))()
----------------------//--tools--\\------------------------
------------------[amplification blue.]----------------------
 
local cooldownTime = 3
local lastUsed = 0
 
local tool = Instance.new("Tool")
tool.Name = "Reverse cursed amplification: blue"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack
 
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsed >= cooldownTime then
        lastUsed = currentTime
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Lapse%20blue%20revamp.txt"))()
    end
end)
Wait(0.1)
----------------------//--tools--\\------------------------
------------------[Reversal red]----------------------
 
local cooldownTime = 5
local lastUsed = 0
 
local tool = Instance.new("Tool")
tool.Name = "Reverse cursed technique: red"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack
 
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsed >= cooldownTime then
        lastUsed = currentTime
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Reversal%20red.txt"))()
    end
end)
Wait(0.1)
----------------------//--tools--\\------------------------
------------------[hollow purple]----------------------
 
-- Functions
function GetGitSoundID(GithubSnd, SoundName)
    SoundName = tostring(SoundName)
    local url = GithubSnd
    local FileName = SoundName
    writefile("customObject_Sound_"..FileName..".mp3", game:HttpGet(url))
    return (getcustomasset or getsynasset)("customObject_Sound_"..FileName..".mp3")
end
 
function sfx(id, parent, duration)
    local sound = Instance.new("Sound")
    sound.SoundId = id  
    sound.Parent = parent
    sound.Volume = 2  
    sound:Play()
    game.Debris:AddItem(sound, duration or 40)
    return sound
end
 
function getsfxid(id)
    local hi = nil
    if id == "clang" then
        hi = "rbxassetid://495135507"
    elseif id == "Theme" then
        hi = GetGitSoundID("https://github.com/Themindofneo/Kj/raw/refs/heads/main/gojo-hollow-purple-made-with-Voicemod.mp3", "Theme")
    end
    return tostring(hi)
end
 
-- Tool Setup
local cooldownTime = 9
local lastUsed = 0
 
local tool = Instance.new("Tool")
tool.Name = "Imaginary technique: hollow purple"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack
 
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsed >= cooldownTime then
        lastUsed = currentTime
 
        -- Load remote Hollow Purple script
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Hollow%20purple%20(1).txt"))()
        -- Delay 3 seconds before playing the custom sound
        task.delay(0.1, function()
            sfx(getsfxid("Theme"), workspace, 100)
        end)
    end
end)
----------------------//--tools--\\------------------------
------------------[infinite void.]----------------------
 
local cooldownTime = 11
local lastUsed = 0
 
local tool = Instance.new("Tool")
tool.Name = "Domain expansion: infinite void | laggy if you're in big server/map"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack
 
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsed >= cooldownTime then
        lastUsed = currentTime
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Domain%20expansion%20(1).txt"))()
    end
end)
 
----------------------//--tools--\\------------------------
------------------[maximum red.]----------------------
 
local cooldownTime = 5
local lastUsed = 0
 
local tool = Instance.new("Tool")
tool.Name = "Maximum output: reversal red"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer.Backpack
 
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastUsed >= cooldownTime then
        lastUsed = currentTime
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Maximum%20output%20reversal%20red.txt"))()
    end
end)
 
 
 
---------------- [[ black flash ]] --------------
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humRoot = character:WaitForChild("HumanoidRootPart")
local rightArm = character:WaitForChild("Right Arm")
 
local radius = 7
local cooldownTime = 5
local lastUsed = 0
 
-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "black flash"
tool.RequiresHandle = false
tool.Parent = player.Backpack
 
-- Check if part is an NPC
local function isNPC(model)
	local hum = model:FindFirstChildOfClass("Humanoid")
	return hum and not Players:GetPlayerFromCharacter(model)
end
 
-- Check if nearby valid target exists
local function hasNearbyTargets()
	for _, descendant in ipairs(workspace:GetDescendants()) do
		if descendant:IsA("BasePart") and descendant:IsDescendantOf(character) == false then
			local distance = (descendant.Position - humRoot.Position).Magnitude
			if distance <= radius then
				if not descendant.Anchored then
					return true
				end
				local model = descendant:FindFirstAncestorOfClass("Model")
				if model and isNPC(model) then
					return true
				end
			end
		end
	end
	return false
end
 
-- Cyan fire effect
local function playCyanFire()
	if rightArm:FindFirstChild("CyanFire") then
		rightArm.CyanFire:Destroy()
	end
 
	local attachment = Instance.new("Attachment")
	attachment.Name = "CyanFire"
	attachment.Position = Vector3.new(0, -1, 0)
	attachment.Parent = rightArm
 
	local particle = Instance.new("ParticleEmitter")
	particle.Name = "FireEffect"
	particle.Texture = "rbxassetid://284205403"
	particle.Parent = attachment
	particle.Rate = 60
	particle.Lifetime = NumberRange.new(0.5, 0.7)
	particle.Speed = NumberRange.new(1, 2)
	particle.Rotation = NumberRange.new(0, 360)
	particle.RotSpeed = NumberRange.new(-90, 90)
 
	particle.Size = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.3, 1.5),
		NumberSequenceKeypoint.new(1, 0)
	}
 
	particle.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.1),
		NumberSequenceKeypoint.new(0.6, 0.3),
		NumberSequenceKeypoint.new(1, 1)
	}
 
	particle.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 10)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0, 255, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 180, 180))
	}
 
	particle.LightEmission = 0.6
	particle.LightInfluence = 0.3
	particle.Enabled = true
 
	task.delay(1.8, function()
		if attachment and attachment.Parent then
			attachment:Destroy()
		end
	end)
end
 
-- Tool activated
tool.Activated:Connect(function()
	local currentTime = tick()
	if currentTime - lastUsed < cooldownTime then return end
	lastUsed = currentTime
 
	if hasNearbyTargets() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Themindofneo/Kj/refs/heads/main/Black%20flash%20nerf%20(1).txt"))()
	else
		playCyanFire()
	end
end)
