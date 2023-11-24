local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/debug.lua")


if minetest.get_modpath("world_test") == nil then
	dofile(modpath.."/banjo.lua")
	dofile(modpath.."/harmonica.lua")
	dofile(modpath.."/drum.lua")

	if minetest.get_modpath("homedecor_misc") ~= nil then
		dofile(modpath.."/homedecor_piano.lua")
	end
	
	--dofile(modpath.."/musicbox.lua")
	dofile(modpath.."/flutes.lua")

	dofile(modpath.."/parts.lua")
	dofile(modpath.."/crafting.lua")
else
	dofile(modpath.."/world_test/parts.lua")
	dofile(modpath.."/world_test/crafting.lua")
	dofile(modpath.."/world_test/banjo.lua")
end
