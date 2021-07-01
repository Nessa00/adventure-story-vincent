local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/y4eeFHp0"))()

local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.T)

local Rage = FinityWindow:Category("Adventure Story")

local Sas = Rage:Sector("Main Functions")

local speaker = game.Players.LocalPlayer

Sas:Cheat("Slider", "WalkSpeed", function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end, {min = 30, max = 100, suffix = " ws"})

Sas:Cheat("Checkbox", "GodMode", function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod
    local args = {...}
      
    if tostring(self) == "AttackFX" and args[2] ~= game.Players.LocalPlayer.Character then --Attack Remote
            return warn("blocked enemy attack");
    end
return namecall(self, table.unpack(args))
end)
end)



Sas:Cheat("Checkbox", "Anti Enemy Chase", function()

local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod
    local args = {...}
      
    if tostring(self) == "MoveNPC" then 
        return warn("froze enemy");
    end
return namecall(self, table.unpack(args))
end)

end)


Sas:Cheat("Button", "Hide Identity", function()

for i,v in pairs(speaker.Character:GetDescendants())do
        if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
            v:Destroy()
        end
    end
    local function charPartAdded(part)
        if part:IsA("BillboardGui") or part:IsA("SurfaceGui") then
            wait()
            part:Destroy()
        end
    end
    charPartTrigger = speaker.Character.DescendantAdded:Connect(charPartAdded)
speaker:ClearCharacterAppearance()    
end)

Sas:Cheat("Button", "Reset/End Battle", function()
    speaker.Character:BreakJoints()
end)

Sas:Cheat("Button", "Heal (Need 5 coins)", function()
    speaker.Character.HumanoidRootPart.CFrame = CFrame.new(235, 113, -1639)
    wait(0.5)
    local args = {
        [1] = workspace.NPCs.Hopella
    }
    game:GetService("ReplicatedStorage").RS.Remotes.INC:FireServer(unpack(args))
end)

Sas:Cheat("Button", "Join Random Battle", function()
local args = {
    [1] = workspace.BattleCage
}

game:GetService("ReplicatedStorage").RS.Remotes.JoinBattle3:FireServer(unpack(args))
end)



Sas:Cheat("Checkbox", "Coin Autofarm", function(state)
state = true
while state do
wait()
local plr = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
for i,v in pairs(game.Workspace.Map:GetDescendants()) do
if v.Name == "SingleCent" then
v.CFrame = plr.CFrame
wait()
end
end
end
end)

Sas:Cheat("Button", "Destroy GUI", function()
    game.CoreGui.FinityUI:Destroy()
end)

local CreditsCategory = FinityWindow:Category("Credits")
local CreditsCreator = CreditsCategory:Sector("Script Creator")
local Codef = CreditsCategory:Sector("Some code from")

CreditsCreator:Cheat("Label", "Vincent127292 @ v3rmillion.net")
Codef:Cheat("Label", "Infinite Yield")
Codef:Cheat("Label", "FunTrat0r")
