local S = ...

petz.armor_destroy = function(name, player)
	local pos = player:getpos()
	if pos then
		minetest.sound_play({
			name = "brewing_break_armor_sound",
			pos = pos,
			gain = 0.5,
		})
	end
end

--
--THE WOLF COAT
--

armor:register_armor("petz:prince_north_coat", {
	description = S("Prince of North Coat"),
	inventory_image = "petz_prince_north_coat_inv.png",
	texture = "petz_prince_north_coat.png",
	preview = "petz_prince_north_coat_preview.png",
	groups = {armor_torso=1, armor_use=350, flammable=0},
	armor_groups = {fleshy=10, radiation=10},
	damage_groups = {cracky=3, snappy=3, choppy=3, crumbly=3, level=1},
	reciprocate_damage = true,
	on_destroy = function(player, index, stack)
		petz.armor_destroy("brewing_break_armor_sound", player)
	end,
})

minetest.register_craft({
	output = "petz:prince_north_coat",
	type = "shaped",
	recipe = {
		{"", "petz:wolf_fur", ""},
		{"", "wool:blue", ""},
		{"group:leather", "wool:blue", "group:leather"},
	},
})

--
--THE ANT HELMET
--

armor:register_armor("petz:ant_helmet", {
	description = S("Ant Helmet"),
	inventory_image = "petz_ant_helmet_inv.png",
	texture = "petz_ant_helmet.png",
	preview = "petz_ant_helmet_preview.png",
	groups = {armor_head=1, armor_use=250, flammable=0},
	armor_groups = {fleshy=7, radiation=10},
	damage_groups = {cracky=3, snappy=3, choppy=3, crumbly=3, level=1},
	reciprocate_damage = true,
	on_destroy = function(player, index, stack)
		petz.armor_destroy("brewing_break_armor_sound", player)
	end,
})

minetest.register_craft({
	output = "petz:ant_helmet",
	type = "shaped",
	recipe = {
		{"petz:ant_head", "petz:ant_head", "petz:ant_head"},
		{"petz:ant_head", "", "petz:ant_head"},
		{"", "", ""},
	},
})
