return {
	--[[
		IconButtons are buttons with icons, that have their functionality server side as actions in lua.
	--]]
	push_button = function(iface, id, action, pngbase64)
		table.insert
		(				
			iface.items,
			{
				id = id,
				action = action,
				type = "IconButton",
				pngbase64 = pngbase64
			}
		)
	end,	
	--[[
		Special Actions are actions that aren't actually server side.
		Save buttons for instance are special client implemented actions.
	--]]
	push_special_action_button = function(iface, id, special_action, pngbase64)
		table.insert
		(			
			iface.items,
			{
				id = id,
				type = "IconButton",
				special_action = special_action,
				pngbase64 = pngbase64
			}
		)
	end,
	--[[
		Splitters are visual seperations to make categories
	--]]
	push_splitter = function(iface)
		table.insert
		(
			iface.items,
			{
				type = "Splitter",
				pngbase64 = image
			}
		)
	end,
	--[[
		Combo Boxes contain string items to be chosen from. Users can select things here necesssary for actions.
	--]]
	push_combo_box = function(iface, id)
		table.insert
		(
			iface.items,
			{
				id = id,
				type = "ComboBox",
				pngbase64 = image
			}
		)
	end,
	push_menu_button = function(iface, id)
		table.insert
		(
			iface.items,
			{
				id = id,
				type = "MenuButton",
				pngbase64 = image
			}
		)
	end
}