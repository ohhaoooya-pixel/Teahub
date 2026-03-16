-- [[ TEAHUB: LALOL BYPASS VERSION ]]
return function()
    local masterID = "103566138846006"
    local tex = "rbxassetid://" .. masterID

    -- 1. THE INSTANT STRIKE (Runs before he can react)
    local function deploy()
        -- Skybox
        local s = Instance.new("Sky", game:GetService("Lighting"))
        s.SkyboxBk = tex s.SkyboxDn = tex s.SkyboxFt = tex
        s.SkyboxLf = tex s.SkyboxRt = tex s.SkyboxUp = tex
        
        -- Decals
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") then
                local d = Instance.new("Decal", v)
                d.Texture = tex
                d.Face = "Front" -- Faster than doing all 6 sides at once
            end
        end
    end

    -- 2. THE ANTI-KICK (Metatable Hook)
    -- This prevents most simple "Kick" scripts from working on you
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        if getnamecallmethod() == "Kick" then return nil end
        return old(self, ...)
    end)
    setreadonly(mt, true)

    -- 3. EXECUTE
    task.spawn(deploy)
    print("tea66668: Stealth Mode Active.")
end

