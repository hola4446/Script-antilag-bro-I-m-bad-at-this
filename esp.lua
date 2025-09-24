-- Box ESP + Name ESP
-- LocalScript inside StarterPlayerScripts

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Function to create ESP for a character
local function createESP(player)
    if player == localPlayer then return end

    player.CharacterAdded:Connect(function(character)
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local head = character:WaitForChild("Head")

        -- Billboard for name
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "NameESP"
        billboard.Adornee = head
        billboard
