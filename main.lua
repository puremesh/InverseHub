-- CREATED BY INVERSE.
-- INVERSE HUB 2021.
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

if game.PlaceId == 3823781113 then
    getgenv().win = lib:Window("INVERSE HUB\nSABER SIMULATOR",Color3.fromRGB(132, 18, 226), Enum.KeyCode.RightShift)
    spawn(function()
    while true do
            wait(1)
            if getgenv().autobuyswords == true then
            local args = {
                [1] = "Swords"
            }
            
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
            end
            if getgenv().autobuydna == true then
            local args = {
                [1] = "Backpacks"
            }
            
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
            end
            
            if getgenv().jumpboosts == true then
            local args = {
                [1] = "JumpBoosts"
            }
            
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
            end
                
            if getgenv().bosshits == true then
            local args = {
                [1] = "BossBoosts"
            }
            
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
            end
        end
    end)
    getgenv().doublejumpval = 15 -- // give the player 15 jumps at the beginning because we are kind :D
    getgenv().ws = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed
    getgenv().jp = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower
    spawn(function()
        while true do
            wait()
            game:GetService("Players").puremesh.PlayerScripts["Double Jump"].MaxJumps.Value = getgenv().doublejumpval
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = getgenv().jp
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = getgenv().ws
        end
    end)
    spawn(function()
        while true do
            wait(0.25)
            if getgenv().autoclicker == true then
                game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
            end
        end
    end)
    local autofarm = win:Tab("AutoFarm")
    local misc = win:Tab("Misc")
    autofarm:Toggle("Toggle AutoClicker",false,function(t)
        getgenv().autoclicker = t
    end)
    autofarm:Toggle("Toggle AutoBuy Sabers",false,function(t)
        getgenv().autobuyswords = t
    end)
    autofarm:Toggle("Toggle AutoBuy DNA/Backpacks",false,function(t)
        getgenv().autobuydna = t
    end)
    autofarm:Toggle("Toggle AutoBuy Jump Boosts",false,function(t)
        getgenv().jumpboosts = t
    end)
    autofarm:Toggle("Toggle AutoBuy Boss Hits",false,function(t)
        getgenv().bosshits = t
    end)

    misc:Slider("Max Double Jumps",1,1000,15, function(val)
        getgenv().doublejumpval = val
    end)
    misc:Slider("Custom JumpPower",1,5000,50, function(val)
        getgenv().jp = val
    end)
    misc:Slider("Custom WalkSpeed",1,1000,16, function(val)
        getgenv().ws = val
    end)
    

    local changeclr = win:Tab("Change UI Color")

    changeclr:Colorpicker("Change UI Color",Color3.fromRGB(132, 18, 226), function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
    end)


elseif game.PlaceId == 537413528 then
getgenv().win = lib:Window("INVERSE HUB\nBUILD A BOAT FOR TREASURE",Color3.fromRGB(132, 18, 226), Enum.KeyCode.RightShift)
local autofarm = win:Tab("AutoFarm")
getgenv().babftautofarm = getgenv().babftautofarm or false
getgenv().babftsetts = {
    TimeToTeleport = 1,
    WaitBeforeFinish = 5,
}
-- credits to stefanuk12 for the general idea of this
function af()
    local respawned;
    local character = game.Players.LocalPlayer.Character
    local stages = game.Workspace.BoatStages.NormalStages
    for i = 1,10 do
        local currentStage = stages["CaveStage"..i]
        local dp = currentStage:FindFirstChild("DarknessPart") or nil
        if dp ~= nil and dp then
            local part = Instance.new("Part",character)
            character.HumanoidRootPart.CFrame = dp.CFrame
            part.Anchored = true
            part.Transparency = 1
            part.Position = character.HumanoidRootPart.Position - Vector3.new(0,6.5,0)
            wait(getgenv().babftsetts.TimeToTeleport)
            part:Destroy()
        end
    end
    repeat wait()
        character.HumanoidRootPart.CFrame = stages.TheEnd.GoldenChest.Trigger.CFrame
    until game.Lighting.ClockTime ~= 14
    local respawnedd
    respawnedd = game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
        respawned = true
        respawnedd:Disconnect()
    end)
    repeat wait() until respawned
    wait(getgenv().babftsetts.WaitBeforeFinish)
    print("Autofarm finished")
end
spawn(function()
while true do
    wait()
    if getgenv().babftautofarm == true then
        af()
    end
end
end)
autofarm:Slider("Time To Teleport",1,10,1,function(t)
    getgenv().babftsetts.TimeToTeleport = t
end)
autofarm:Slider("Wait Before Finish",5,15,5,function(t)
    getgenv().babftsetts.WaitBeforeFinish = t
end)
autofarm:Toggle("Toggle AutoFarm",false,function(t)
    getgenv().babftautofarm = t
end)

local changeclr = win:Tab("Change UI Color")

changeclr:Colorpicker("Change UI Color",Color3.fromRGB(132, 18, 226), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
elseif game.PlaceId == 286090429 then
    getgenv().win = lib:Window("INVERSE HUB\nARSENAL",Color3.fromRGB(132, 18, 226), Enum.KeyCode.RightShift)

    local plrtab = win:Tab("Client")
    local aim = win:Tab("Aim")
    local esp = win:Tab("ESP")
    local changeclr = win:Tab("Change UI Color")
    changeclr:Colorpicker("Change UI Color",Color3.fromRGB(132, 18, 226), function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
    end)
    -- stuff from old hub
    _G.wsenabled = false
	_G.jpenabled = false
	_G.hipenabled = false
	_G.ws = 16
	_G.jp = 50 -- broken
	_G.hip = 0 -- broken
	_G.SilentAim = false
	_G.WallBang = false
    _G.TeamCheck = true
	_G.AimAssist = false
	_G.AimAssistDistance = 15
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/bigpoopy.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/lol.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/frr.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/kick.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/realclip.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/lunamacb.lua"))()
	loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/relaimbot.lua"))()

    -- // AIM TAB \\ --
    aim:Toggle("Team Check",true,function(v)
        _G.TeamCheck = v
    end)
    
    aim:Toggle("WallBang",false,function(v)
        _G.WallBang = v
    end)
    aim:Toggle("Silent Aim",false,function(v)
        _G.SilentAim = v
    end)
    aim:Toggle("Aimbot",false,function(v)
        _G.AimbotEnabled = v
    end)
    aim:Toggle("Aim Assist",false,function(v)
        _G.AimAssist = v
    end)
    aim:Slider("Aim Assist Distance",10,150,15,function(v)
        _G.AimAssistDistance = v
    end)
    -- // END AIM TAB/START PLAYER TAB \\ --
    plrtab:Slider("WalkSpeed Changer",0,420,69,function(v)
        _G.ws = v
    end)
    plrtab:Toggle("WalkSpeed Changer Enabled",false,function(v)
        _G.wsenabled = v
    end)
    infjump = false
	plrtab:Toggle("Infinite Jump",false, function(v)
		infjump = v
	end)
	mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(key)
		if key:byte() == 32 and infjump then
			local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			hum:ChangeState("Jumping")
		end
	end)
    plrtab:Toggle("Noclip",false, function(v)
		_G.Noclip = not _G.Noclip
	end)
    -- // END PLAYER TAB/START ESP TAB \\ --
    loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/lunatracers69.lua"))()
    loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/lunaboxesp69.lua"))()
    loadstring(game:HttpGet("https://luna.menuwins.xyz/lunaScripts/lunanameesp69.lua"))()
	_G.OnMyTeamCheck = true
	_G.Tracers = false
	_G.NameESP = false
	_G.BoxESP = false
    esp:Toggle("Tracers",false, function(v)
		_G.Tracers = v
	end)
	esp:Toggle("Box ESP",false, function(v)
		_G.BoxESP = v
	end)
	esp:Toggle("Name ESP (Buggy)",false, function(v)
		_G.NameESP = v
	end)
	esp:Toggle("Team Check",true, function(v)
		_G.OnMyTeamCheck = v
	end)
    -- // END ARSENAL \\ --
end

