local Options = {
    SetSpoofValue = true,
    Properties = {"JumpPower", "WalkSpeed"}
    }
    
    local PLAYER = game:GetService("Players").LocalPlayer
    
    
    local metatable = getrawmetatable(game)
    local proxy = {__index = metatable.__index, __newindex = metatable.__newindex}
    
    
    local vA = {}
    local vB = PLAYER.Character:FindFirstChildOfClass("Humanoid")
    
    for lvA, lvB in next, Options.Properties do
    vA[lvB] = vB[lvB]
    end
    
    setreadonly(metatable, false)
    
    metatable.__index = newcclosure(function(self, pA)
    if not checkcaller() and vA[pA] and self == PLAYER.Character:FindFirstChildOfClass("Humanoid") then
    return Options.SetSpoofValue or vA[pA]
    end
    
    return proxy.__index(self, pA)
    end)
    
    metatable.__newindex = newcclosure(function(self, pA, pB)
    if not checkcaller() and vA[pA] and self == PLAYER.Character:FindFirstChildOfClass("Humanoid") then
    vA[pA] = pB
    return
    end
    
    proxy.__newindex(self, pA, pB)
end)
