local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/ui-libs/main/Akali_Notify_Library/AkaliNotifyLibrary"))();

local Notify = AkaliNotif.Notify;

Notify({
    Description = " Loading scripts ";
    Title = " Loading IDs System ";
    Duration = 5;
});
wait("6")
Notify({
    Description = " authenticating ";
    Title = " authenticating wait 5 seconds ";
    Duration = 3;
});
wait("5")
Notify({
    Description = " authenticated wait 5 seconds ";
    Title = " authenticated wait 5 seconds ";
    Duration = 2;
});
wait("4")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Checking id", HidePremium = false,IntroText = "Net Hub Checking id", SaveConfig = true, ConfigFolder = "OrionTest"})
local player = game.Players.LocalPlayer
local whitelist = {3620776639,2313283831} -- Lista de IDs permitidas
local blacklist = {1782259947,4281918792,4273722840} -- Lista de IDs no permitidas

local Tab = Window:MakeTab({
Name = "Checking",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})
local Section = Tab:AddSection({
Name = "Checking"
})
Tab:AddButton({
Name = "Check ID",
Callback = function()
if table.find(whitelist, player.UserId, 1,2,3,4) then
Tab:AddLabel("Estado/Condition")
Tab:AddLabel("Jugador permitido/Allowed player (3 sec)")
wait("3")
loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/World-Hub-for-owners/main/YesWorldHubOwner.lua"))()
wait("2")
OrionLib:Destroy()
else
print("no whitelist in owners version!")
Tab:AddLabel("Estado/Condition")
	Tab:AddLabel("Jugador no registrado en listas/Player not registered in lists")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/Key-system/main/YesKeysystem.lua"))()
end
if table.find(blacklist, player.UserId, 1) then
	Tab:AddLabel("Estado/Condition")
	Tab:AddLabel("Jugador no permitido/Player not allowed")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/comet3456998765/forblackedlist/main/Yesblacklisteds"))()
	else

end
end
})
OrionLib:Init()

