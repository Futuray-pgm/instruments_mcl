local notes = {"piano_5", "piano_2", "piano_5", "piano_2", "piano_5", "piano_6",
"piano_5", "piano_6", "piano_5", "piano_6", "piano_5", "piano_4",
"piano_5", "piano_2", "piano_0", "piano_5", "piano_1", "piano_0",
"piano_6", "piano_7", "piano_6", "piano_7", "piano_6", "piano_7", "piano_9", "piano_7",
"piano_5", "piano_2", "piano_5", "piano_2", "piano_5", "piano_6",
"piano_5", "piano_4", "piano_5", "piano_4", "piano_8", "piano_7",
"piano_5", "piano_2", "piano_0", "piano_5", "piano_1", "piano_0",
"piano_6", "piano_7", "piano_6", "piano_7", "piano_6", "piano_7", "piano_9", "piano_7"
}
local current_note = 0

minetest.override_item("homedecor:piano", {
    on_rightclick = function()
        current_note = current_note + 1
        if current_note > table.getn(notes) then
            current_note = 1
        end
        --minetest.log(current_note)
        --minetest.log(notes[current_note])
        minetest.sound_play(notes[current_note], {gain = 1})
    end
})
