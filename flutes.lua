--treble flute notes
local notes = {"flute_1", "flute_3", "flute_5", "flute_1", "flute_6", "flute_5", "flute_2", "flute_1", "flute_2", "flute_3", "flute_1",
"flute_0", "flute_3", "flute_5", "flute_0", "flute_6", "flute_5", "flute_2", "flute_1", "flute_2", "flute_3", "flute_7", "flute_5"}
local current_note = 0
local current_sound = 0

--bass flute notes
local bnotes = {"bassflute_0", "bassflute_1", "bassflute_2", "bassflute_1", "bassflute_0", "bassflute_1", "bassflute_2", "bassflute_1", "bassflute_3", "bassflute_4"}
local bcurrent_note = 0
local bcurrent_sound = 0

minetest.register_tool("instruments:flute", {
	description = "Flute",
	range = 0.35,
	inventory_image = "flute.png",
	wield_image = "flute.png",
	on_secondary_use = function()
		minetest.sound_fade(current_sound, 10, 0)
		current_note = current_note + 1
		if current_note > table.getn(notes) then
			current_note = 1
		end
		--minetest.log(current_note)
		--minetest.log(notes[current_note])
		current_sound = minetest.sound_play(notes[current_note], {gain = 1})
	end,
	wield_scale = {x=1.5,y=1,z=1}
})

minetest.register_craftitem("instruments:embouchure", {
	description = "Flute Embouchure",
	inventory_image = "embouchure.png",
	wield_image = "embouchure.png"
})

minetest.register_craftitem("instruments:flute_keys", {
	description = "Flute Keys",
	inventory_image = "silver_keys.png",
	wield_image = "silver_keys.png"
})

minetest.register_craftitem("instruments:silver_pipe", {
	description = "Flute Pipe",
	inventory_image = "silver_pipe.png",
	wield_image = "silver_pipe.png"
})
