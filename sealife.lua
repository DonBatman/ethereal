-- Seaweed
minetest.register_node("ethereal:seaweed", {
	description = "Seaweed",
	drawtype = "plantlike",
	tiles = {"seaweed.png"},
	inventory_image = "seaweed.png",
	wield_image = "seaweed.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {snappy = 3},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:dark_green 3",
	recipe = {"ethereal:seaweed",},
})

-- Blue Coral
minetest.register_node("ethereal:coral2", {
	description = "Blue Coral",
	drawtype = "plantlike",
	tiles = {"coral2.png"},
	inventory_image = "coral2.png",
	wield_image = "coral2.png",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	light_source = 3,
	groups = {snappy = 3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:cyan 3",
	recipe = {"ethereal:coral2",},
})

-- Orange Coral
minetest.register_node("ethereal:coral3", {
	description = "Orange Coral",
	drawtype = "plantlike",
	tiles = {"coral3.png"},
	inventory_image = "coral3.png",
	wield_image = "coral3.png",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	light_source = 3,
	groups = {snappy = 3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:orange 3",
	recipe = {"ethereal:coral3",},
})

-- Pink Coral
minetest.register_node("ethereal:coral4", {
	description = "Pink Coral",
	drawtype = "plantlike",
	tiles = {"coral4.png"},
	inventory_image = "coral4.png",
	wield_image = "coral4.png",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	light_source = 3,
	groups = {snappy = 3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:pink 3",
	recipe = {"ethereal:coral4",},
})

-- Green Coral
minetest.register_node("ethereal:coral5", {
	description = "Green Coral",
	drawtype = "plantlike",
	tiles = {"coral5.png"},
	inventory_image = "coral5.png",
	wield_image = "coral5.png",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	light_source = 3,
	groups = {snappy = 3},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:green 3",
	recipe = {"ethereal:coral5",},
})

-- Undersea Sand
minetest.register_node("ethereal:sandy", {
	description = "Sandy",
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {
		crumbly = 3, falling_node = 1, sand = 1, soil = 1,
		not_in_creative_inventory = 1
	},
	drop = "default:sand",
	sounds = default.node_sound_sand_defaults(),
})

-- Register Undersea Sand
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ethereal:sandy",
	wherein        = "default:sand",
	clust_scarcity = 10*10*10,
	clust_num_ores = 24,
	clust_size     = 4,
	y_max     = -12,
	y_min     = -100,
})

-- randomly generate coral or seaweed and have seaweed grow up to 14 high
minetest.register_abm({
	nodenames = {"ethereal:sandy"},
	neighbors = {"group:water"},
	interval = 15,
	chance = 10,
	catch_up = false,
	action = function(pos, node)

		local sel = math.random(1, 5)

		pos.y = pos.y + 1

		local nod = minetest.get_node(pos).name

		if nod == "default:water_source"
		and sel > 1 then

			if minetest.get_node(pos).name == "default:water_source" then

				minetest.swap_node(pos, {name = "ethereal:coral" .. sel})
			end

			return
		end

		if nod == "ethereal:seaweed"
		or sel == 1 then

			local height = 0
			local high = 14

			while height < high
			and minetest.get_node(pos).name == "ethereal:seaweed" do
				height = height + 1
				pos.y = pos.y + 1
			end

			if pos.y < 1
			and height < high
			and minetest.get_node(pos).name == "default:water_source" then

				minetest.swap_node(pos, {name = "ethereal:seaweed"})
			end

		end

	end,
})
