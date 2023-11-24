minetest.register_craft({
	output = "instruments:fretboard",
	recipe = {
		{"group:tree", "mcl_core:iron_ingot"},
		{"group:tree", "mcl_core:iron_ingot"},
		{"group:tree", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments:tuning_peg 2",
	recipe = {
		{"mcl_core:iron_ingot", "mcl_core:stick", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments:headsheet",
	recipe = {
		{"mcl_core:paper", "mcl_core:paper", "mcl_core:paper"},
		{"mcl_mobitems:string", "mcl_mobitems:string", "mcl_mobitems:string"},
	}
})



minetest.register_craft({
	output = "instruments:banjo_body",
	recipe = {
		{"group:tree", "instruments:headsheet", "group:tree"},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments:banjo_stock",
	recipe = {
		{"instruments:tuning_peg", "mcl_core:iron_ingot", "instruments:tuning_peg"},
		{"instruments:tuning_peg", "mcl_core:iron_ingot", "instruments:tuning_peg"},
		{"", "instruments:fretboard", ""}
	}
})

minetest.register_craft({
	output = "instruments:banjo",
	recipe = {
		{"instruments:banjo_stock"},
		{"mcl_mobitems:string"},
		{"instruments:banjo_body"}
	}
})

minetest.register_craft({
	output = "instruments:harmonica_body",
	recipe = {
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
		{"mcl_amethyst:amethyst_shard", "mcl_amethyst:amethyst_shard", "mcl_amethyst:amethyst_shard"},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
	}
})

minetest.register_craft({
	output = "instruments:harmonica_casing",
	recipe = {
		{"default:gold_ingot", "mcl_core:iron_ingot", "default:gold_ingot"},
		{"", "", ""},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
	}
})

minetest.register_craft({
	output = "instruments:harmonica",
	type = "shapeless",
	recipe = {"instruments:harmonica_body", "instruments:harmonica_casing"}
})

minetest.register_craft({
	output = "instruments:drum",
	recipe = {
		{"group:tree", "instruments:headsheet", "group:tree"},
		{"group:tree", "", "group:tree"},
		{"group:tree", "", "group:tree"},
	}
})

minetest.register_craft({
	output = "instruments:drum_stick",
	recipe = {
		{"default:dry_shrub"},
		{"mcl_core:stick"}
	}
})



if minetest.get_modpath("moreores") ~= nil then
	minetest.register_craft({
		output = "instruments:silver_pipe",
		recipe = {
			{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
			{"", "", ""},
			{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"}
		}
	})
	minetest.register_craft({
		output = "instruments:flute_keys 2",
		recipe = {
			{"", "moreores:silver_ingot", "moreores:silver_ingot"},
			{"mcl_core:iron_ingot", "", ""}
		}
	})
	minetest.register_craft({
		output = "instruments:embouchure",
		recipe = {
			{"moreores:silver_ingot", "", "moreores:silver_ingot"},
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"}
		}
	})
else
	minetest.register_craft({
		output = "instruments:silver_pipe",
		recipe = {
			{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
			{"", "", ""},
			{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"}
		}
	})
	minetest.register_craft({
		output = "instruments:flute_keys 2",
		recipe = {
			{"", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
			{"mcl_core:iron_ingot", "", ""}
		}
	})
	minetest.register_craft({
		output = "instruments:embouchure",
		recipe = {
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"},
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"}
		}
	})
end

minetest.register_craft({
	output = "instruments:flute",
	recipe = {
		{"instruments:embouchure", "instruments:flute_keys", "instruments:flute_keys"},
		{"instruments:silver_pipe", "instruments:silver_pipe", "instruments:silver_pipe"},
		{"", "instruments:flute_keys", "instruments:flute_keys"}
	}
})

minetest.register_craft({
	output = "instruments:untuned_resonator",
	recipe = {
		{"instruments:tuning_peg", "instruments:tuning_peg", "instruments:tuning_peg"},
		{"mcl_mobitems:string", "mcl_mobitems:string", "mcl_mobitems:string"},
		{"mcl_core:stick", "mcl_core:paper", "mcl_core:stick"}
	}
})
