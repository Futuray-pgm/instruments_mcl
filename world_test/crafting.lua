minetest.register_craft({
	output = "instruments:pine_fibre",
	recipe = {
		{"default:pine_needles"},
		{"default:pine_needles"},
		{"default:pine_needles"}
	}
})

minetest.register_craft({
	output = "instruments:leaf_fibre",
	recipe = {
		{"default:leaves"},
		{"default:leaves"},
		{"default:leaves"}
	}
})

minetest.register_craft({
	output = "instruments:pine_fibre 3",
	recipe = {
		{"default:pine_sapling"}
	}
})

minetest.register_craft({
	output = "instruments:leaf_fibre 3",
	recipe = {
		{"default:sapling"}
	}
})

minetest.register_craft({
	output = "instruments:grass_fibre 2",
	recipe = {
		{"default:grass_1"},
		{"default:grass_1"},
		{"default:grass_1"}
	}
})

minetest.register_craft({
	output = "instruments:string",
	recipe = {
		{"", "instruments:pine_fibre", "instruments:pine_fibre"},
		{"instruments:pine_fibre", "instruments:pine_fibre", "instruments:pine_fibre"},
		{"instruments:pine_fibre", "instruments:pine_fibre", ""}
	}
})

minetest.register_craft({
	output = "default:paper",
	recipe = {
		{"instruments:grass_fibre", "instruments:grass_fibre"},
		{"instruments:grass_fibre", "instruments:grass_fibre"},
		{"instruments:grass_fibre", "instruments:grass_fibre"}
	}
})

minetest.register_craft({
	output = "instruments:fretboard",
	recipe = {
		{"default:wood", "default:stick"},
		{"default:wood", "default:stick"},
		{"default:wood", "default:stick"}
	}
})

minetest.register_craft({
	output = "instruments:headsheet",
	recipe = {
		{"default:paper", "default:paper", "default:paper"},
		{"instruments:string", "instruments:string", "instruments:string"},
	}
})

minetest.register_craft({
	output = "instruments:banjo_body",
	recipe = {
		{"default:pine_tree", "instruments:headsheet", "default:pine_tree"},
		{"default:wood", "default:wood", "default:wood"}
	}
})

minetest.register_craft({
	output = "instruments:banjo_stock",
	recipe = {
		{"default:stick", "default:wood", "default:stick"},
		{"default:stick", "default:wood", "default:stick"},
		{"", "instruments:fretboard", ""}
	}
})

minetest.register_craft({
	output = "instruments:banjo",
	recipe = {
		{"instruments:banjo_stock"},
		{"instruments:string"},
		{"instruments:banjo_body"}
	}
})
