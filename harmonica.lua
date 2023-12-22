local notes = {"harmonica_0", "harmonica_1", "harmonica_2", "harmonica_3", "harmonica_4", "harmonica_3", "harmonica_1", "harmonica_2"}
local current_note = 0
local current_sound = 0

minetest.register_tool("instruments_mcl:harmonica", {
	description = "Harmonica",
	range = 0.35,
	inventory_image = "harmonica.png",
	wield_image = "harmonica.png",
	on_secondary_use = function()
		minetest.sound_fade(current_sound, 0,5, 0)
		current_note = current_note + 1
		if current_note > table.getn(notes) then
			current_note = 1
		end
		--minetest.log(current_note)
		--minetest.log(notes[current_note])
		current_sound = minetest.sound_play(notes[current_note], {gain = 1})
	end
})

minetest.register_craftitem("instruments_mcl:harmonica_casing", {
	description = "Harmonica Casing",
	inventory_image = "harmonica_casing.png",
	wield_image = "harmonica_casing.png"
})

minetest.register_craftitem("instruments_mcl:harmonica_body", {
	description = "Harmonica Body",
	inventory_image = "harmonica_body.png",
	wield_image = "harmonica_body.png"
})
