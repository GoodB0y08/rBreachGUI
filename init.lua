    local function exploit()
	local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "SynapseX [ SUPPORTED ]") or
        (secure_load and "Shitenel [ UNKNOWN ]") or
        (is_sirhurt_closure and "PedoHurt [ UNKNOWN ]") or
        (pebc_execute and "ProtoCrasher [ UNKNOWN ]") or
        (getexecutorname and identifyexecutor and "Scriptware [ SUPPORTED ]") or
        (KRNL_LOADED and "KRNL [ SUPPORTED ]") or
        (WrapGlobal and "WeAreSkids [ UNSUPPORTED ]") or
        (isvm and "Proxo [ UNKNOWN ]") or
        (shadow_env and "Shadow [ UNKNOWN ]") or
        (jit and "EasyExploits [ UNKNOWN ]") or
        (getscriptenvs and "Calamari [ UNKNOWN ]") or
        (unit and not syn and "Unit [ UNKNOWN ]") or
        (OXYGEN_LOADED and "Oxygen U [ UNKNOWN ]") or
        (IsElectron and "Electron [ UNSUPPORTED ]") or
        ("[ UNDETECTED EXPLOIT ]")
	return exploit
end
local N=game:GetService("VirtualInputManager")
N:SendKeyEvent(true,"F9",false,game)
wait(.2)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Loading started, Exploit:"..exploit().." Player_Name:"..game.Players.LocalPlayer.Name..".")
wait(.2)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 GUI Loaded. MAIN [1%] \226\148\130 \226\150\136\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146")
wait(.1)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Defined variables. MAIN [2%] \226\148\130 \226\150\136\226\150\136\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146")
wait(.1)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Loading gamesense GUI. MAIN [3%] \226\148\130 \226\150\136\226\150\136\226\150\136\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146")
wait(.5)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Getting bloxycola. MAIN [19%] \226\148\130 \226\150\136\226\150\136\226\150\136\226\150\136\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146\226\150\146")
wait(.1)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Please buy my shirt https://www.roblox.com/catalog/750383851/Mythical-Sword-of-Flames. MAIN [35%] \226\148\130 \226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\146\226\150\146\226\150\146\226\150\146")
wait(.9)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Bypasses loaded. MAIN [100%] \226\148\130 \226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136\226\150\136")
wait(.1)
warn("\232\183\175 AERO HUB LOADER \229\166\187 \226\148\130 Loading finished, starting GUI.")
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/GoodB0y08/rBreachGUI/main/rBreach.perthscriptingutility"))("E")
