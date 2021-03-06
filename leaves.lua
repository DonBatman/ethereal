-- Leaf style (set in init.lua file)
if ethereal.leaftype == 0 then
	leaftype = "plantlike"
else
	leaftype = "allfaces_optional"
end

--= Define leaves for ALL trees (and Mushroom Tops)

-- Acacia Leaves
if not minetest.registered_nodes["default:acacia_leaves"] then
minetest.register_node("ethereal:acacia_leaves", {
	description = "Acacia Leaves",
	drawtype = leaftype,
	tiles = {"moretrees_acacia_leaves.png"},
	inventory_image = "moretrees_acacia_leaves.png",
	wield_image = "moretrees_acacia_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.2,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:acacia_sapling"}, rarity = 20},
			{items = {"ethereal:acacia_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})
else
minetest.override_item("default:acacia_leaves", {
	drawtype = leaftype,
	tiles = {"moretrees_acacia_leaves.png"},
	inventory_image = "moretrees_acacia_leaves.png",
	wield_image = "moretrees_acacia_leaves.png",
	visual_scale = 1.2,
	walkable = ethereal.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:acacia_sapling"}, rarity = 20},
			{items = {"default:acacia_leaves"}}
		}
	},
})
minetest.register_alias("ethereal:acacia_leaves", "default:acacia_leaves")
end

-- Willow Twig
minetest.register_node("ethereal:willow_twig", {
	description = "Willow Twig",
	drawtype = "plantlike",
	tiles = {"willow_twig.png"},
	inventory_image = "willow_twig.png",
	wield_image = "willow_twig.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.2,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:willow_sapling"}, rarity = 50},
			{items = {"ethereal:willow_twig"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Redwood leaves
minetest.register_node("ethereal:redwood_leaves", {
	description = "Redwood Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"redwood_leaves.png"},
	inventory_image = "redwood_leaves.png",
	wield_image = "redwood_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:redwood_sapling"}, rarity = 50},
			{items = {"ethereal:redwood_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Default Apple Tree Leaves
minetest.override_item("default:leaves", {
	drawtype = leaftype,
	visual_scale = 1.2,
	inventory_image = "default_leaves.png",
	wield_image = "default_leaves.png",
	walkable = ethereal.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:tree_sapling"}, rarity = 15},
			{items = {"default:leaves"}}
		}
	},
})

-- Orange Tree Leaves
minetest.register_node("ethereal:orange_leaves", {
	description = "Orange Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"orange_leaves.png"},
	inventory_image = "orange_leaves.png",
	wield_image = "orange_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:orange_tree_sapling"}, rarity = 15},
			{items = {"ethereal:orange_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Default Jungle Tree Leaves
minetest.override_item("default:jungleleaves", {
	drawtype = leaftype,
	visual_scale = 1.2,
	inventory_image = "default_jungleleaves.png",
	wield_image = "default_jungleleaves.png",
	walkable = ethereal.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:jungle_tree_sapling"}, rarity = 20},
			{items = {"default:jungleleaves"}}
		}
	},
})

-- Banana Tree Leaves
minetest.register_node("ethereal:bananaleaves", {
	description = "Banana Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"banana_leaf.png"},
	inventory_image = "banana_leaf.png",
	wield_image = "banana_leaf.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:banana_tree_sapling"}, rarity = 15},
			{items = {"ethereal:bananaleaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Healing Tree Leaves
minetest.register_node("ethereal:yellowleaves", {
	description = "Healing Tree Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"yellow_leaves.png"},
	inventory_image = "yellow_leaves.png",
	wield_image = "yellow_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:yellow_tree_sapling"}, rarity = 50},
			{items = {"ethereal:yellowleaves"}}
		}
	},
	-- Leaves are edible, heal half a heart
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
	light_source = 9,
})

-- Palm Tree Leaves
minetest.register_node("ethereal:palmleaves", {
	description = "Palm Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"moretrees_palm_leaves.png"},
	inventory_image = "moretrees_palm_leaves.png",
	wield_image = "moretrees_palm_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:palm_sapling"}, rarity = 15},
			{items = {"ethereal:palmleaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Birch Tree Leaves
minetest.register_node("ethereal:birch_leaves", {
	description = "Birch Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"moretrees_birch_leaves.png"},
	inventory_image = "moretrees_birch_leaves.png",
	wield_image = "moretrees_birch_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:birch_sapling"}, rarity = 20},
			{items = {"ethereal:birch_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Pine Tree Leaves
minetest.override_item("default:pine_needles", {
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"pine_leaves.png"},
	inventory_image = "pine_leaves.png",
	wield_image = "pine_leaves.png",
	walkable = ethereal.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:pine_tree_sapling"}, rarity = 20},
			{items = {"ethereal:pine_nuts"}, rarity = 5},
			{items = {"default:pine_needles"}}
		}
	},
})
minetest.register_alias("ethereal:pineleaves", "default:pine_needles")

-- Frost Tree Leaves
minetest.register_node("ethereal:frost_leaves", {
	description = "Frost Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"ethereal_frost_leaves.png"},
	inventory_image = "ethereal_frost_leaves.png",
	wield_image = "ethereal_frost_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, puts_out_fire = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:frost_tree_sapling"}, rarity = 15},
			{items = {"ethereal:frost_leaves"}}
		}
	},
	light_source = 9,
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- Mushroom Tops
minetest.register_node("ethereal:mushroom", {
	description = "Mushroom Cap",
	tiles = {"mushroom_block.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:mushroom_sapling"}, rarity = 20},
			{items = {"ethereal:mushroom"}}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom",
	burntime = 10,
})

-- Mushroom Pore (Spongelike block inside mushrooms that has special properties)
minetest.register_node("ethereal:mushroom_pore", {
	description = "Mushroom Pore",
	tiles = {"mushroom_pore.png"},
	groups = {
		snappy = 3, cracky = 3, choppy = 3, oddly_breakable_by_hand = 3,
		flammable = 2, disable_jump = 1, fall_damage_add_percent = -100
	},
	sounds = default.node_sound_dirt_defaults(),
})

-- Hedge Block
minetest.register_node("ethereal:bush", {
	description = "Bush",
	tiles = {"ethereal_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "ethereal:bush",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
	}
})

-- Bamboo Leaves
minetest.register_node("ethereal:bamboo_leaves", {
	description = "Bamboo Leaves",
	drawtype = leaftype,
	visual_scale = 1.2,
	tiles = {"bamboo_leaves.png"},
	inventory_image = "bamboo_leaves.png",
	wield_image = "bamboo_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:bamboo_sprout"}, rarity = 10},
			{items = {"ethereal:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})
