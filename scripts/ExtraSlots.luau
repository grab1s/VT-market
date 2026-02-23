local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UI = Vantality.CreateSection("EXTRA SLOTS")

UI:AddParagraph({
	Title = "Features Info",
	Content = "These features unlock paid game content (Extra Slots and a Second Emotes Page)."
})

UI:AddButton({
	Name = "Enable Extra Slots", 
	Callback = function()
		LocalPlayer:SetAttribute("ExtraSlots", true)
		
		Vantality.Notify({
			Title = "Success",
			Content = "Extra Slots включены!",
			Icon = "check",
			Duration = 2
		})
	end
})

UI:AddButton({
	Name = "Enable Search Bar",
	Callback = function()
		LocalPlayer:SetAttribute("EmoteSearchBar", true)
		
		Vantality.Notify({
			Title = "Success",
			Content = "Search Bar включен!",
			Icon = "check",
			Duration = 2
		})
	end
})

function OnUnload()
	LocalPlayer:SetAttribute("ExtraSlots", false)
	LocalPlayer:SetAttribute("EmoteSearchBar", false)
end
