--- [[ TEAHUB: CHAOS PARTY VERSION ]]
return function()
    local masterID = "103566138846006"
    local tex = "rbxassetid://" .. masterID

    -- 1. THE INSTANT SETUP
    local function setup()
        local s = Instance.new("Sky", game:GetService("Lighting"))
        s.SkyboxBk = tex s.SkyboxDn = tex s.SkyboxFt = tex
        s.SkyboxLf = tex s.SkyboxRt = tex s.SkyboxUp = tex
        
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") then
                local d = Instance.new("Decal", v)
                d.Texture = tex
                d.Face = "Front"
            end
        end
    end
    task.spawn(setup)

    -- 2. DISCO LIGHTING (For the vibe)
    task.spawn(function()
        while task.wait(0.5) do
            game:GetService("Lighting").Ambient = Color3.new(math.random(), math.random(), math.random())
            game:GetService("Lighting").OutdoorAmbient = Color3.new(math.random(), math.random(), math.random())
        end
    end)

    print("tea66668: Party Mode Loaded for BACON_PRO and the crew!")
end


