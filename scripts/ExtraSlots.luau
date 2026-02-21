local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UI = Vantality.CreateSection("EXTRA SLOTS")

UI:AddParagraph({
	Title = "Features Info",
	Content = "These features unlock paid game content (Extra Slots and a Second Emotes Page)."
})

local SlotsToggle = UI:AddToggle({
	Name = "Extra Emote Slots",
	Default = LocalPlayer:GetAttribute("ExtraSlots") == true, 
	Callback = function(state)
		LocalPlayer:SetAttribute("ExtraSlots", state)
	end
})

local SearchToggle = UI:AddToggle({
	Name = "Emote Search Bar",
	Default = LocalPlayer:GetAttribute("EmoteSearchBar") == true, 
	Callback = function(state)
		LocalPlayer:SetAttribute("EmoteSearchBar", state)
	end
})


UI:AddButton({
	Name = "Check Status (Console)",
	Callback = function()
		print(">> Status Report:")
		print("ExtraSlots:", LocalPlayer:GetAttribute("ExtraSlots"))
		print("EmoteSearchBar:", LocalPlayer:GetAttribute("EmoteSearchBar"))
		
		Vantality.Notify({
			Title = "Check Console",
			Content = "Статус атрибутов выведен в консоль (F9)",
			Duration = 3
		})
	end
})

function OnUnload()
	print(">> Unloading...")

	LocalPlayer:SetAttribute("ExtraSlots", false)
	LocalPlayer:SetAttribute("EmoteSearchBar", false)
	
	print(">> Attributes reset to false.")
end
