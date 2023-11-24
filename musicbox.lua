local notes = {"0", "dead", "dead", "dead", "11", "10", "9", "8", "6", "7", "8", "7", "10", "8", "7", "10", "8", "7", "5", "dead", "dead", "dead", "2", "3", "4", "3", "2", "3", "4", "3", "2", "0", "dead", "dead", "dead"}
local current_note = 0

minetest.register_node("instruments:musicbox", {

	on_rightclick = function()
		current_note = current_note + 1
		if current_note > table.getn(notes) then
			current_note = 1
		end
		--minetest.log(current_note)
		--minetest.log(notes[current_note])
		minetest.sound_play("musicbox_"..notes[current_note], {gain = 1})
	end,
	groups = {oddly_breakable_by_hand = 3}
})
