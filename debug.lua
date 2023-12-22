local bnotes = {"banjo_0", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_3",
"banjo_1", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_7", "banjo_5",
"banjo_2", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_3",
"banjo_1", "banjo_3", "banjo_5", "banjo_3", "banjo_6", "banjo_5", "banjo_4", "banjo_3", "banjo_4", "banjo_5", "banjo_7", "banjo_5"}
local bcurrent_note = 0

minetest.register_tool("instruments_mcl:debug_banjo", {
	description = "Debugging Banjo",
	range = 0,
	on_secondary_use = function()
		bcurrent_note = bcurrent_note + 1
		if bcurrent_note > table.getn(bnotes) then
			bcurrent_note = 1
		end
		minetest.log(bcurrent_note)
		minetest.log(bnotes[bcurrent_note])
		minetest.sound_play(bnotes[bcurrent_note], {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})



local hnotes = {"harmonica_0", "harmonica_1", "harmonica_2", "harmonica_3", "harmonica_4", "harmonica_3", "harmonica_1", "harmonica_2"}
local hcurrent_note = 0

minetest.register_tool("instruments_mcl:debug_harmonica", {
	description = "Debugging Harmonica",
	range = 0,
	on_secondary_use = function()
		hcurrent_note = hcurrent_note + 1
		if hcurrent_note > table.getn(hnotes) then
			hcurrent_note = 1
		end
		minetest.log(hcurrent_note)
		minetest.log(hnotes[hcurrent_note])
		minetest.sound_play(hnotes[hcurrent_note], {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})



minetest.register_tool("instruments_mcl:debug_drum", {
	description = "Debugging Drum",
	range = 0,
	on_secondary_use = function()
		minetest.log("drum 0")
		minetest.sound_play("drum_smack", {gain = 5})
	end,
	on_use = function()
		minetest.log("drum 1")
		minetest.sound_play("drum_strike", {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})



local pnotes = {"piano_5", "piano_2", "piano_5", "piano_2", "piano_5", "piano_6",
"piano_5", "piano_6", "piano_5", "piano_6", "piano_5", "piano_4",
"piano_5", "piano_2", "piano_0", "piano_5", "piano_1", "piano_0",
"piano_6", "piano_7", "piano_6", "piano_7", "piano_6", "piano_7", "piano_9", "piano_7",
"piano_5", "piano_2", "piano_5", "piano_2", "piano_5", "piano_6",
"piano_5", "piano_4", "piano_5", "piano_4", "piano_8", "piano_7",
"piano_5", "piano_2", "piano_0", "piano_5", "piano_1", "piano_0",
"piano_6", "piano_7", "piano_6", "piano_7", "piano_6", "piano_7", "piano_9", "piano_7"
}
local pcurrent_note = 0

minetest.register_tool("instruments_mcl:debug_piano", {
	description = "Debugging Piano",
	range = 0,
	on_secondary_use = function()
		pcurrent_note = pcurrent_note + 1
		if pcurrent_note > table.getn(pnotes) then
			pcurrent_note = 1
		end
		minetest.log(pcurrent_note)
		minetest.log(pnotes[pcurrent_note])
		minetest.sound_play(pnotes[pcurrent_note], {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})



local fnotes = {"flute_1", "flute_3", "flute_5", "flute_1", "flute_6", "flute_5", "flute_2", "flute_1", "flute_2", "flute_3", "flute_1",
"flute_0", "flute_3", "flute_5", "flute_0", "flute_6", "flute_5", "flute_2", "flute_1", "flute_2", "flute_3", "flute_7", "flute_5"}
local fcurrent_note = 0
local fcurrent_sound = 0

minetest.register_tool("instruments_mcl:debug_flute", {
	description = "Debugging Flute",
	range = 0,
	on_secondary_use = function()
		minetest.sound_fade(fcurrent_sound, 20, 0)
		fcurrent_note = fcurrent_note + 1
		if fcurrent_note > table.getn(fnotes) then
			fcurrent_note = 1
		end
		minetest.log(fcurrent_note)
		minetest.log(fnotes[fcurrent_note])
		fcurrent_sound = minetest.sound_play(fnotes[fcurrent_note], {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})

local bfnotes = {"bassflute_0", "bassflute_1", "bassflute_2", "bassflute_1", "bassflute_0", "bassflute_1", "bassflute_2", "bassflute_1", "bassflute_3", "bassflute_4"}
local bfcurrent_note = 0
local bfcurrent_sound = 0

minetest.register_tool("instruments_mcl:debug__bassflute", {
	description = "Debugging Bass Flute",
	range = 0,
	on_secondary_use = function()
		minetest.sound_fade(bfcurrent_sound, 20, 0)
		bfcurrent_note = bfcurrent_note + 1
		if bfcurrent_note > table.getn(bfnotes) then
			bfcurrent_note = 1
		end
		minetest.log(bfcurrent_note)
		minetest.log(bfnotes[bfcurrent_note])
		bfcurrent_sound = minetest.sound_play(bfnotes[bfcurrent_note], {gain = 5})
	end,
	groups = {not_in_creative_inventory = 1}
})
