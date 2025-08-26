--// Ultra Anti-Lag Script
--// LocalScript in StarterPlayerScripts

local function ultraAntiLag()
	-- Remove particles, trails, explosions, beams
	for _, v in pairs(workspace:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") then
			v.Enabled = false
		elseif v:IsA("Explosion") then
			v.Visible = false
		elseif v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		end
	end

	-- Lighting optimization
	local Lighting = game:GetService("Lighting")
	Lighting.GlobalShadows = false
	Lighting.Brightness = 1
	Lighting.FogEnd = 9e9
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0
	Lighting.OutdoorAmbient = Color3.new(1,1,1)

	-- Terrain optimization
	local terrain = workspace.Terrain
	terrain.WaterReflectance = 0
	terrain.WaterTransparency = 1
	terrain.WaterWaveSize = 0
	terrain.WaterWaveSpeed = 0

	-- Disable post-processing effects (if game uses them)
	for _, v in pairs(Lighting:GetChildren()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("ColorCorrectionEffect") then
			v.Enabled = false
		end
	end

	-- Lower character textures
	local player = game.Players.LocalPlayer
	if player.Character then
		for _, part in pairs(player.Character:GetDescendants()) do
			if part:IsA("ShirtGraphic") or part:IsA("Shirt") or part:IsA("Pants") then
				part:Destroy() -- removes clothes textures
			elseif part:IsA("Decal") or part:IsA("Texture") then
				part:Destroy() -- removes decals & textures
			end
		end
	end

	print("✅ Ultra Anti-Lag Enabled")
end

-- Run once on join
ultraAntiLag()

-- Run
