local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UI = Vantality.CreateSection("EXTRA SLOTS")

UI:AddParagraph({
	Title = "Features Info",
	Content = "These features unlock paid game content (Extra Slots and a Second Emotes Page)."
})

UI:AddButton({
	Name = "Extra Emote Slots", 
	Callback = function()
		LocalPlayer:SetAttribute("ExtraSlots", true)
		
		Vantality.Notify({
			Title = "Success",
			Content = "Extra Slots",
			Icon = "check",
			Duration = 2
		})
	end
})

UI:AddButton({
	Name = "Second Emotes Page",
	Callback = function()
		LocalPlayer:SetAttribute("EmoteSearchBar", true)
		
		Vantality.Notify({
			Title = "Success",
			Content = "Second Page",
			Icon = "check",
			Duration = 2
		})
	end
})

function OnUnload()
	LocalPlayer:SetAttribute("ExtraSlots", false)
	LocalPlayer:SetAttribute("EmoteSearchBar", false)
end


