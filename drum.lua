local function get_node_group(name, group)
    if not minetest.registered_nodes[name] or not minetest.registered_nodes[name].groups[group] then
        return false
    end
    return minetest.registered_nodes[name].groups[group]
end

minetest.register_node("instruments_mcl:drum", {
	description = "Drum",
	tiles = {
		"drum_top.png",
		"default_acacia_tree.png",
		"default_acacia_tree.png",
		"default_acacia_tree.png",
		"default_acacia_tree.png",
		"default_acacia_tree.png",
		"default_acacia_tree.png",
	},
	use_texture_alpha = "clip",
	groups = {handy = 1, pickaxey = 1, drum = 1},
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3, -0.50, -0.3, 0.3, 0.35, 0.3}
		}
	},
	on_rightclick = function()
		minetest.sound_play("drum_smack", {gain = 1})
	end,
})

minetest.register_tool("instruments_mcl:drum_stick", {
	description = "Drumstick",
	inventory_image = "drum_stick.png",
	wield_image = "drum_stick.png",
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == 'node' then
			local node = minetest.get_node(minetest.get_pointed_thing_position(pointed_thing))
			if get_node_group(node.name, "drum") then
				minetest.sound_play("drum_strike", {gain = 1})
			end
		end
	end
})

minetest.register_craftitem("instruments_mcl:untuned_resonator", {
	description = "Untuned String Resonator",
	inventory_image = "untuned_resonator.png",
	wield_image = "untuned_resonator.png",
	groups = {string_resonator = 1}
})

local register_drum_tuning = function(color, chord, ch_name)
	minetest.register_node("instruments_mcl:drum_tuned_"..chord, {
		description = ch_name.." Tuned Drum",
		tiles = {
			"drum_top.png",
			"default_acacia_tree.png",
			"default_acacia_tree.png^overlay_drum_"..color..".png",
			"default_acacia_tree.png^overlay_drum_"..color..".png",
			"default_acacia_tree.png^overlay_drum_"..color..".png",
			"default_acacia_tree.png^overlay_drum_"..color..".png"
		},
		use_texture_alpha = "clip",
		groups = {handy = 1, pickaxey = 1, drum = 1},
		paramtype = "light",
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.3, -0.50, -0.3, 0.3, 0.35, 0.3}
			}
		},
		on_rightclick = function()
			minetest.sound_play("drum_smack_"..chord, {gain = 1})
		end,
	})
	minetest.register_craftitem("instruments_mcl:tuned_resonator_"..chord, {
		description = ch_name.." Tuned String Resonator",
		inventory_image = "untuned_resonator.png^overlay_tuning_"..color..".png",
		wield_image = "untuned_resonator.png^overlay_tuning_"..color..".png",
		groups = {string_resonator = 1}
	})
	minetest.register_craft({
		output = "instruments_mcl:tuned_resonator_"..chord,
		type = "shapeless",
		recipe = {"group:string_resonator", "mcl_dye:"..color}
	})
	minetest.register_craft({
		output = "instruments_mcl:drum_tuned_"..chord,
		type = "shapeless",
		recipe = {"instruments_mcl:drum", "instruments_mcl:tuned_resonator_"..chord}
	})
end


register_drum_tuning("dark_green", "g", "G Major (I)")
register_drum_tuning("yellow", "am", "A Minor (ii)")
register_drum_tuning("orange", "bm", "B Minor (iii)")
register_drum_tuning("red", "c", "C Major (IV)")
register_drum_tuning("violet", "d", "D Major (V)")
register_drum_tuning("cyan", "em", "E Minor (vi)")
register_drum_tuning("blue", "fsmb5", "F# Minor Dimininished (viio)")
register_drum_tuning("green", "g_high", "G Major (octave)")

register_drum_tuning("black", "c5", "C5 (I)")
register_drum_tuning("dark_grey", "d5", "D5 (II)")
register_drum_tuning("grey", "e5", "E5 (III)")
register_drum_tuning("brown", "fs5", "F#5 (IV)")
register_drum_tuning("white", "g5", "G5 (V)")
register_drum_tuning("magenta", "a5", "A5 (VI)")
register_drum_tuning("pink", "b5", "B5 (VII)")
