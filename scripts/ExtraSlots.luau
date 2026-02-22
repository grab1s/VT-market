local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UI = Vantality.CreateSection("EXTRA SLOTS")

UI:AddParagraph({
	Title = "Features Info",
	Content = "These features unlock paid game content (Extra Slots and a Second Emotes Page)."
})

local SlotsToggle = UI:AddButton({
	Name = "Extra Emote Slots",
	Callback = function(state)
		LocalPlayer:SetAttribute("ExtraSlots", state)
	end
})

local SearchToggle = UI:AddButton({
	Name = "Emote Search Bar",
	Callback = function(state)
		LocalPlayer:SetAttribute("EmoteSearchBar", state)
	end
})

function OnUnload()
	print(">> Unloading...")

	LocalPlayer:SetAttribute("ExtraSlots", false)
	LocalPlayer:SetAttribute("EmoteSearchBar", false)
	
	print(">> Attributes reset to false.")
end

