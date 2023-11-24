local notes = {"banjo_0", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_3",
"banjo_1", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_7", "banjo_5",
"banjo_2", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_3",
"banjo_1", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_7", "banjo_5"}
local current_note = 0

minetest.register_tool("instruments:banjo", {
	description = "Banjo",
	range = 0.35,
	inventory_image = "banjo_front_wt.png",
	wield_image = "banjo_front_wt.png",
	on_secondary_use = function()
		current_note = current_note + 1
		if current_note > table.getn(notes) then
			current_note = 1
		end
		--minetest.log(current_note)
		--minetest.log(notes[current_note])
		minetest.sound_play(notes[current_note], {gain = 1})
	end,
	wield_scale = {x=1.5,y=1.5,z=1}
})



minetest.register_craftitem("instruments:banjo_body", {
	description = "Banjo Body",
	inventory_image = "banjo_body.png",
	wield_image = "banjo_body.png"
})

minetest.register_craftitem("instruments:banjo_stock", {
	description = "Banjo Stock",
	inventory_image = "banjo_stock_wt.png",
	wield_image = "banjo_stock_wt.png"
})
