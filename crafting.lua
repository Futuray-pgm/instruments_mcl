minetest.register_craft({
	output = "instruments_mcl:fretboard",
	recipe = {
		{"group:tree", "mcl_core:iron_ingot"},
		{"group:tree", "mcl_core:iron_ingot"},
		{"group:tree", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:tuning_peg 2",
	recipe = {
		{"mcl_core:iron_ingot", "mcl_core:stick", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:headsheet",
	recipe = {
		{"mcl_core:paper", "mcl_core:paper", "mcl_core:paper"},
		{"mcl_mobitems:string", "mcl_mobitems:string", "mcl_mobitems:string"},
	}
})



minetest.register_craft({
	output = "instruments_mcl:banjo_body",
	recipe = {
		{"group:tree", "instruments_mcl:headsheet", "group:tree"},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:banjo_stock",
	recipe = {
		{"instruments_mcl:tuning_peg", "mcl_core:iron_ingot", "instruments_mcl:tuning_peg"},
		{"instruments_mcl:tuning_peg", "mcl_core:iron_ingot", "instruments_mcl:tuning_peg"},
		{"", "instruments_mcl:fretboard", ""}
	}
})

minetest.register_craft({
	output = "instruments_mcl:banjo",
	recipe = {
		{"instruments_mcl:banjo_stock"},
		{"mcl_mobitems:string"},
		{"instruments_mcl:banjo_body"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:harmonica_body",
	recipe = {
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
		{"mcl_amethyst:amethyst_shard", "mcl_amethyst:amethyst_shard", "mcl_amethyst:amethyst_shard"},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
	}
})

minetest.register_craft({
	output = "instruments_mcl:harmonica_casing",
	recipe = {
		{"mcl_core:gold_ingot", "mcl_core:iron_ingot", "mcl_core:gold_ingot"},
		{"", "", ""},
		{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
	}
})

minetest.register_craft({
	output = "instruments_mcl:harmonica",
	type = "shapeless",
	recipe = {"instruments_mcl:harmonica_body", "instruments_mcl:harmonica_casing"}
})

minetest.register_craft({
	output = "instruments_mcl:drum",
	recipe = {
		{"group:tree", "instruments_mcl:headsheet", "group:tree"},
		{"group:tree", "", "group:tree"},
		{"group:tree", "", "group:tree"},
	}
})

minetest.register_craft({
	output = "instruments_mcl:drum_stick",
	recipe = {
		{"mcl_core:deadbush"},
		{"mcl_core:stick"}
	}
})



if minetest.get_modpath("moreores") ~= nil then
	minetest.register_craft({
		output = "instruments_mcl:silver_pipe",
		recipe = {
			{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
			{"", "", ""},
			{"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"}
		}
	})
	minetest.register_craft({
		output = "instruments_mcl:flute_keys 2",
		recipe = {
			{"", "moreores:silver_ingot", "moreores:silver_ingot"},
			{"mcl_core:iron_ingot", "", ""}
		}
	})
	minetest.register_craft({
		output = "instruments_mcl:embouchure",
		recipe = {
			{"moreores:silver_ingot", "", "moreores:silver_ingot"},
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"}
		}
	})
else
	minetest.register_craft({
		output = "instruments_mcl:silver_pipe",
		recipe = {
			{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
			{"", "", ""},
			{"mcl_core:iron_ingot", "mcl_core:iron_ingot", "mcl_core:iron_ingot"}
		}
	})
	minetest.register_craft({
		output = "instruments_mcl:flute_keys 2",
		recipe = {
			{"", "mcl_core:iron_ingot", "mcl_core:iron_ingot"},
			{"mcl_core:iron_ingot", "", ""}
		}
	})
	minetest.register_craft({
		output = "instruments_mcl:embouchure",
		recipe = {
			{"", "", "mcl_core:iron_ingot"},
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"},
			{"mcl_core:iron_ingot", "", "mcl_core:iron_ingot"}
		}
	})
end

minetest.register_craft({
	output = "instruments_mcl:flute",
	recipe = {
		{"instruments_mcl:embouchure", "instruments_mcl:flute_keys", "instruments_mcl:flute_keys"},
		{"instruments_mcl:silver_pipe", "instruments_mcl:silver_pipe", "instruments_mcl:silver_pipe"},
		{"", "instruments_mcl:flute_keys", "instruments_mcl:flute_keys"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:untuned_resonator",
	recipe = {
		{"instruments_mcl:tuning_peg", "instruments_mcl:tuning_peg", "instruments_mcl:tuning_peg"},
		{"mcl_mobitems:string", "mcl_mobitems:string", "mcl_mobitems:string"},
		{"mcl_core:stick", "mcl_core:paper", "mcl_core:stick"}
	}
})
