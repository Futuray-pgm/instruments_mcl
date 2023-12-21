minetest.register_craft({
	output = "instruments_mcl:pine_fibre",
	recipe = {
		{"default:pine_needles"},
		{"default:pine_needles"},
		{"default:pine_needles"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:leaf_fibre",
	recipe = {
		{"default:leaves"},
		{"default:leaves"},
		{"default:leaves"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:pine_fibre 3",
	recipe = {
		{"default:pine_sapling"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:leaf_fibre 3",
	recipe = {
		{"default:sapling"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:grass_fibre 2",
	recipe = {
		{"default:grass_1"},
		{"default:grass_1"},
		{"default:grass_1"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:string",
	recipe = {
		{"", "instruments_mcl:pine_fibre", "instruments_mcl:pine_fibre"},
		{"instruments_mcl:pine_fibre", "instruments_mcl:pine_fibre", "instruments_mcl:pine_fibre"},
		{"instruments_mcl:pine_fibre", "instruments_mcl:pine_fibre", ""}
	}
})

minetest.register_craft({
	output = "default:paper",
	recipe = {
		{"instruments_mcl:grass_fibre", "instruments_mcl:grass_fibre"},
		{"instruments_mcl:grass_fibre", "instruments_mcl:grass_fibre"},
		{"instruments_mcl:grass_fibre", "instruments_mcl:grass_fibre"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:fretboard",
	recipe = {
		{"default:wood", "default:stick"},
		{"default:wood", "default:stick"},
		{"default:wood", "default:stick"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:headsheet",
	recipe = {
		{"default:paper", "default:paper", "default:paper"},
		{"instruments_mcl:string", "instruments_mcl:string", "instruments_mcl:string"},
	}
})

minetest.register_craft({
	output = "instruments_mcl:banjo_body",
	recipe = {
		{"default:pine_tree", "instruments_mcl:headsheet", "default:pine_tree"},
		{"default:wood", "default:wood", "default:wood"}
	}
})

minetest.register_craft({
	output = "instruments_mcl:banjo_stock",
	recipe = {
		{"default:stick", "default:wood", "default:stick"},
		{"default:stick", "default:wood", "default:stick"},
		{"", "instruments_mcl:fretboard", ""}
	}
})

minetest.register_craft({
	output = "instruments_mcl:banjo",
	recipe = {
		{"instruments_mcl:banjo_stock"},
		{"instruments_mcl:string"},
		{"instruments_mcl:banjo_body"}
	}
})
