local modpath, modname, S = ...

local creative_mode = minetest.settings:get_bool("creative_mode")

assert(loadfile(modpath .. "/api_helper_functions.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_orders.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_init_prop.lua"))(modpath, S) --Load the init the properties for the entities
assert(loadfile(modpath .. "/api_forms.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_on_rightclick.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_on_die.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_on_punch.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_drops.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_replace.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_feed_tame.lua"))(modpath, S, creative_mode)
assert(loadfile(modpath .. "/api_capture.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_tamagochi.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_breed.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_wool_milk.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_mount.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_dreamcatcher.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_eggs.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_squareball.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_wolf_to_puppy.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_nametag.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_dam_beaver.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_sound.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_particles.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_whistle.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_silk.lua"))(modpath, S)
assert(loadfile(modpath .. "/api_sleep.lua"))(modpath, S)
if minetest.get_modpath("3d_armor") ~= nil then --Armors (optional)
	assert(loadfile(modpath .. "/armors.lua"))(modpath, S)
end
