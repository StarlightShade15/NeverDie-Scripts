local Atlas = loadstring(game:HttpGet("https://shiawaseu.github.io/Atlas-Lib-Mirror/Atlas.lua"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local Camera = workspace.CurrentCamera

local LocalPlayer = Players.LocalPlayer
local placeId = game.PlaceId
local jobId = game.JobId

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
raycastParams.IgnoreWater = true

local Config = {
    FOVValue = 85,
    NightMode = false,
    BHopEnabled = false,
    AimbotEnabled = false,
    AimbotFOV = 80,
    AimbotSmooth = 60,
    AimbotTeam = true,
    AimbotVisible = true,
    AimbotKeyActive = false,
    TriggerEnabled = false,
    TriggerDelay = 20,
    TriggerTeam = true,
    TriggerVisible = true,
    TriggerRadius = 20,
    TriggerMaxDistance = 300,
    ESPEnabled = false,
    ESPTeam = true,
    ESPVisible = false,
    ESPBox = true,
    ESPHealth = true,
    ESPName = true,
    ThirdPersonEnabled = false,
    ThirdPersonDistance = 3,
    FlashRemoval = false,
    SmokeRemoval = false,
    AntiAimEnabled = false,
    AntiAimMode = "Back"
}

local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = false
FOVCircle.Thickness = 1
FOVCircle.Transparency = 1
FOVCircle.Color = Color3.fromRGB(255,0,0)

local yaw = 0
local pitch = 0
local SpaceHeld = false
local LastFire = 0
local align

local function IsTeammate(p)
    return p:GetAttribute("Team") == LocalPlayer:GetAttribute("Team")
end

local function IsVisible(part, char)
    raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
    local dir = part.Position - Camera.CFrame.Position
    local res = workspace:Raycast(Camera.CFrame.Position, dir, raycastParams)
    return not res or res.Instance:IsDescendantOf(char)
end

local function OnGround(h)
    return h.FloorMaterial ~= Enum.Material.Air
end

local function PrepareAntiAim(character)
    local hrp = character:WaitForChild("HumanoidRootPart")
    local a = hrp:FindFirstChild("AntiAimAlign")
    if not a then
        a = Instance.new("AlignOrientation")
        a.Name = "AntiAimAlign"
        local at = Instance.new("Attachment")
        at.Parent = hrp
        a.Attachment0 = at
        a.RigidityEnabled = true
        a.Parent = hrp
    end
    return a, hrp
end

local function GetWeapon()
    local data = HttpService:JSONDecode(LocalPlayer:GetAttribute("CurrentEquipped"))
    return data.Name
end

local ESP = {}

local function CreateESP(p)
    ESP[p] = {
        Box = Drawing.new("Square"),
        Name = Drawing.new("Text"),
        Health = Drawing.new("Line")
    }
    local e = ESP[p]
    e.Box.Thickness = 1
    e.Box.Filled = false
    e.Box.Color = Color3.new(1,1,1)
    e.Name.Size = 14
    e.Name.Center = true
    e.Name.Outline = true
    e.Name.Color = Color3.new(1,1,1)
    e.Health.Thickness = 2
end

local function RemoveESP(p)
    if not ESP[p] then return end
    for _,v in pairs(ESP[p]) do v:Remove() end
    ESP[p] = nil
end

local function HookPlayer(p)
    p.CharacterAdded:Connect(function()
        CreateESP(p)
    end)
    p.CharacterRemoving:Connect(function()
        RemoveESP(p)
    end)
end

for _,p in ipairs(Players:GetPlayers()) do
    if p ~= LocalPlayer then
        HookPlayer(p)
        if p.Character then CreateESP(p) end
    end
end

Players.PlayerAdded:Connect(HookPlayer)

UserInputService.InputBegan:Connect(function(i)
    if i.KeyCode == Enum.KeyCode.Space then SpaceHeld = true end
    if i.UserInputType == Enum.UserInputType.MouseMovement and Config.ThirdPersonEnabled then
        yaw -= i.Delta.X * 0.002
        pitch = math.clamp(pitch - i.Delta.Y * 0.002, -1.3, 1.3)
    end
end)

UserInputService.InputEnded:Connect(function(i)
    if i.KeyCode == Enum.KeyCode.Space then SpaceHeld = false end
end)

local function httpGet(url)
    if syn and syn.request then
        return syn.request({Url = url, Method = "GET"}).Body
    elseif http_request then
        return http_request({Url = url, Method = "GET"}).Body
    elseif request then
        return request({Url = url, Method = "GET"}).Body
    elseif game and game.HttpGet then
        return game:HttpGet(url)
    else
        error("No HTTP method available")
    end
end

-- UI with one section per tab

local base_path = "http://node70.lunes.host:3163"

local UI = Atlas.new({
	Name = "BloxStrike - b1";
	ConfigFolder = "BS_b1";
	Credit = "Made By Starlight & Keezthekiddo_";
	Color = Color3.fromRGB(255,0,0);
	Bind = "RightShift";
	UseLoader = true;
	FullName = "BloxStrike Script";
	CheckKey = function(inputtedKey)
		local success, response = pcall(function()
			return httpGet(base_path.."/check_key?key="..inputtedKey)
		end)

		if not success or not response then
			return false
		end

		local data = HttpService:JSONDecode(response)
		return data and data.ok == true
	end;
	Discord = "https://discord.gg/jmWphWKU6Q";
})


local AimingTab = UI:CreatePage("Aiming")
local TriggerTab = UI:CreatePage("TriggerBot")
local ESPTab = UI:CreatePage("ESP")
local WorldTab = UI:CreatePage("World")
local LocalTab = UI:CreatePage("LocalPlayer")

local AimSection = AimingTab:CreateSection("Settings")
AimSection:CreateToggle({Name="Aimbot Enabled", Flag="AimbotEnabled", Default=false, Callback=function(v) Config.AimbotEnabled=v end})
AimSection:CreateToggle({Name="Team Check", Flag="AimbotTeam", Default=true, Callback=function(v) Config.AimbotTeam=v end})
AimSection:CreateToggle({Name="Visible Check", Flag="AimbotVisible", Default=true, Callback=function(v) Config.AimbotVisible=v end})
AimSection:CreateSlider({Name="Aimbot FOV", Flag="AimbotFOV", Min=20, Max=180, Default=80, Callback=function(v) Config.AimbotFOV=v end})
AimSection:CreateSlider({Name="Aimbot Smooth", Flag="AimbotSmooth", Min=1, Max=100, Default=60, Callback=function(v) Config.AimbotSmooth=v end})
AimSection:CreateKeybind({Name="Aimbot Key", Flag="AimbotKey", Default="E", KeyPressed=function() Config.AimbotKeyActive=true end, KeyReleased=function() Config.AimbotKeyActive=false end})

local TriggerSection = TriggerTab:CreateSection("Settings")
TriggerSection:CreateToggle({Name="TriggerBot Enabled", Flag="TriggerEnabled", Default=false, Callback=function(v) Config.TriggerEnabled=v end})
TriggerSection:CreateSlider({Name="Trigger Delay", Flag="TriggerDelay", Min=1, Max=150, Default=20, Callback=function(v) Config.TriggerDelay=v end})
TriggerSection:CreateSlider({Name="Trigger Radius", Flag="TriggerRadius", Min=5, Max=50, Default=20, Callback=function(v) Config.TriggerRadius=v end})
TriggerSection:CreateSlider({Name="Trigger Max Distance", Flag="TriggerMaxDistance", Min=50, Max=1000, Default=300, Callback=function(v) Config.TriggerMaxDistance=v end})
TriggerSection:CreateToggle({Name="Team Check", Flag="TriggerTeam", Default=true, Callback=function(v) Config.TriggerTeam=v end})
TriggerSection:CreateToggle({Name="Visible Check", Flag="TriggerVisible", Default=true, Callback=function(v) Config.TriggerVisible=v end})

local ESPSection = ESPTab:CreateSection("Settings")
ESPSection:CreateToggle({Name="ESP Enabled", Flag="ESPEnabled", Default=false, Callback=function(v) Config.ESPEnabled=v end})
ESPSection:CreateToggle({Name="Team Check", Flag="ESPTeam", Default=true, Callback=function(v) Config.ESPTeam=v end})
ESPSection:CreateToggle({Name="Visible Check", Flag="ESPVisible", Default=false, Callback=function(v) Config.ESPVisible=v end})
ESPSection:CreateToggle({Name="ESP Box", Flag="ESPBox", Default=true, Callback=function(v) Config.ESPBox=v end})
ESPSection:CreateToggle({Name="ESP Health", Flag="ESPHealth", Default=true, Callback=function(v) Config.ESPHealth=v end})
ESPSection:CreateToggle({Name="ESP Name", Flag="ESPName", Default=true, Callback=function(v) Config.ESPName=v end})

local WorldSection = WorldTab:CreateSection("Settings")
WorldSection:CreateToggle({Name="Night Mode", Flag="NightMode", Default=false, Callback=function(v) Config.NightMode=v end})
WorldSection:CreateToggle({Name="Flash Removal", Flag="FlashRemoval", Default=false, Callback=function(v) Config.FlashRemoval=v end})
WorldSection:CreateToggle({Name="Smoke Removal", Flag="SmokeRemoval", Default=false, Callback=function(v) Config.SmokeRemoval=v end})

local LocalSection = LocalTab:CreateSection("Settings")
LocalSection:CreateSlider({Name="Camera FOV", Flag="CameraFOV", Min=70, Max=110, Default=85, Callback=function(v) Config.FOVValue=v end})
LocalSection:CreateToggle({Name="Third Person", Flag="ThirdPersonEnabled", Default=false, Callback=function(v) Config.ThirdPersonEnabled=v end})
LocalSection:CreateSlider({Name="Third Person Distance", Flag="ThirdPersonDistance", Min=1, Max=20, Default=3, Callback=function(v) Config.ThirdPersonDistance=v end})
LocalSection:CreateDropdown({Name="Anti-Aim Mode", Flag="AntiAimMode", Options={"None","Back","Defensive","Jitter"}, Default="Back", Callback=function(v) Config.AntiAimMode=v end})
LocalSection:CreateToggle({Name="Anti-Aim Enabled", Flag="AntiAimEnabled", Default=false, Callback=function(v) Config.AntiAimEnabled=v end})
LocalSection:CreateButton({Name="Rejoin Server", Flag="RejoinServer", Callback=function() TeleportService:TeleportToPlaceInstance(placeId,jobId,LocalPlayer) end})
LocalSection:CreateButton({Name="Rejoin Game", Flag="RejoinGame", Callback=function() TeleportService:Teleport(placeId,LocalPlayer) end})

RunService.RenderStepped:Connect(function()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:FindFirstChild("Humanoid")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local head = character:FindFirstChild("Head")

    if humanoid and hrp and head then
        Camera.FieldOfView = Config.FOVValue
        Lighting.ClockTime = Config.NightMode and 21 or 13

        local center = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
        FOVCircle.Visible = Config.AimbotEnabled
        FOVCircle.Position = center
        FOVCircle.Radius = Config.AimbotFOV

        -- Third Person Camera
        if Config.ThirdPersonEnabled then
            Camera.CameraType = Enum.CameraType.Scriptable
            local rot = CFrame.Angles(0,yaw,0)*CFrame.Angles(pitch,0,0)
            local offset = rot:VectorToWorldSpace(Vector3.new(0,2,Config.ThirdPersonDistance))
            Camera.CFrame = CFrame.new(hrp.Position-offset, hrp.Position+Vector3.new(0,1.5,0))
        else
            Camera.CameraType = Enum.CameraType.Custom
            Camera.CameraSubject = humanoid
        end

        -- Anti-Aim
        if Config.AntiAimEnabled then
            if not align then
                align, hrp = PrepareAntiAim(character)
                humanoid.AutoRotate = false
            end
            local _,cy,_ = hrp.CFrame:ToOrientation()
            local ty = cy
            if Config.AntiAimMode == "Back" then
                ty = cy + math.pi
            elseif Config.AntiAimMode == "Jitter" then
                ty = cy + math.rad(math.random(140,220))*(math.random()<0.5 and 1 or -1)
            elseif Config.AntiAimMode == "Defensive" then
                ty = cy + math.pi
            end
            align.CFrame = CFrame.new(hrp.Position)*CFrame.Angles(0,ty,0)
        elseif align then
            humanoid.AutoRotate = true
            align:Destroy()
            align = nil
        end
    end

    local bestPos
    local bestDist = math.huge
    local center = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)

    for p,e in pairs(ESP) do
        local c = p.Character
        if not c then
            e.Box.Visible = false e.Name.Visible = false e.Health.Visible = false
            continue
        end
        local h = c:FindFirstChild("Humanoid")
        local r = c:FindFirstChild("HumanoidRootPart")
        local hd = c:FindFirstChild("Head")

        if not h or not r or not hd or h.Health <= 0 then
            e.Box.Visible = false e.Name.Visible = false e.Health.Visible = false
        else
            -- ESP
            if Config.ESPEnabled and (not Config.ESPTeam or not IsTeammate(p)) then
                local hrpPos,on = Camera:WorldToViewportPoint(r.Position)
                local headPos = Camera:WorldToViewportPoint(hd.Position + Vector3.new(0,0.5,0))
                local legPos = Camera:WorldToViewportPoint(r.Position - Vector3.new(0,3,0))
                if on then
                    local hgt = math.abs(headPos.Y-legPos.Y)
                    local wdt = hgt/2
                    e.Box.Size = Vector2.new(wdt,hgt)
                    e.Box.Position = Vector2.new(hrpPos.X-wdt/2, headPos.Y)
                    e.Box.Visible = Config.ESPBox
                    e.Name.Text = p.DisplayName
                    e.Name.Position = Vector2.new(hrpPos.X, headPos.Y-14)
                    e.Name.Visible = Config.ESPName
                    if Config.ESPHealth then
                        local frac = math.clamp(h.Health/h.MaxHealth,0,1)
                        e.Health.From = Vector2.new(e.Box.Position.X-4, e.Box.Position.Y+hgt)
                        e.Health.To = Vector2.new(e.Box.Position.X-4, e.Box.Position.Y+hgt*(1-frac))
                        e.Health.Color = frac>0.5 and Color3.new(0,1,0) or Color3.new(1,0,0)
                        e.Health.Visible = true
                    else
                        e.Health.Visible = false
                    end
                else
                    e.Box.Visible=false e.Name.Visible=false e.Health.Visible=false
                end
            else
                e.Box.Visible=false e.Name.Visible=false e.Health.Visible=false
            end

            -- Aimbot
            if Config.AimbotEnabled and Config.AimbotKeyActive and (not Config.AimbotTeam or not IsTeammate(p)) then
                if not Config.AimbotVisible or IsVisible(hd,c) then
                    local sp,on = Camera:WorldToViewportPoint(hd.Position)
                    if on then
                        local d = (Vector2.new(sp.X,sp.Y)-center).Magnitude
                        if d<Config.AimbotFOV and d<bestDist then
                            bestDist = d
                            bestPos = Vector2.new(sp.X,sp.Y)
                        end
                    end
                end
            end

            -- TriggerBot
            if Config.TriggerEnabled and (not Config.TriggerTeam or not IsTeammate(p)) then
                local sp,on = Camera:WorldToViewportPoint(hd.Position)
                if on and (Vector2.new(sp.X,sp.Y)-center).Magnitude<=Config.TriggerRadius and tick()-LastFire>=Config.TriggerDelay/1000 then
                    mouse1click()
                    LastFire = tick()
                end
            end
        end
    end

    -- Move mouse for Aimbot
    if bestPos then
        local delta = (bestPos-center)*(Config.AimbotSmooth/100)
        mousemoverel(delta.X,delta.Y)
    end

    -- Bunny Hop
    if Config.BHopEnabled and SpaceHeld and humanoid and OnGround(humanoid) then
        humanoid.Jump = true
    end
end)
