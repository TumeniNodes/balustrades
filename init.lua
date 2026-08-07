balustrade = {}
-- [MOD]Balustrade[mod]balustrade [Ver. 0.4.]
-- Copyright (C) 2026 TumeniNodes

   ----------
-- Balustrade
   ----------

function balustrade.register_post(modname, subname, recipeitem, desc, is_wood)
	local node_groups = {cracky = 3, balustrade = 1}
	local node_sounds = default.node_sound_stone_defaults()

	if is_wood then
		node_groups = {choppy = 3, oddly_breakable_by_hand = 2, balustrade = 1}
		node_sounds = default.node_sound_wood_defaults()
	end

	minetest.register_node("balustrade:" .. subname .. "_post", {
		description = desc .. " Post",
		tiles = {
			modname .. "_" .. subname .. ".png",
			modname .. "_" .. subname .. ".png",
			modname .. "_" .. subname .. ".png",
			modname .. "_" .. subname .. ".png",
			modname .. "_" .. subname .. ".png",
			modname .. "_" .. subname .. ".png"
		},
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "nodebox",
		node_box = {
			type = "connected",
			fixed = {
				{-2/16, -8/16, -2/16, 2/16, 5/16, 2/16},
				{1/16, -8/16, 1/16, 3/16, 5/16, 3/16},
				{1/16, -8/16, -3/16, 3/16, 5/16, -1/16},
				{-3/16, -8/16, -3/16, -1/16, 5/16, -1/16},
				{-3/16, -8/16, 1/16, -1/16, 5/16, 3/16},
				{-3/16, 3/16, -3/16, 3/16, 5/16, 3/16},
				{-1/16, 7/16, -1/16, 1/16, 8/16, 1/16},
				{-3/16, 6/16, -3/16, 3/16, 7/16, 3/16},
				{-5/16, 5/16, -5/16, 5/16, 6/16, 5/16},
				{-3/16, -8/16, -3/16, 3/16, -5/16, 3/16}
			},
			connect_front = {
				{-2/16, -7/16, -8/16, 2/16, -6/16, -3/16},
				{-2/16, 4/16, -8/16, 2/16, 5/16, -2/16},
				{-1/16, -6/16, -8/16, 1/16, -5/16, -3/16},
				{-1/16, 3/16, -8/16, 1/16, 5/16, -2/16},
				{-1/16, -5/16, -7/16, 1/16, 3/16, -5/16}
			},
			connect_left = {
				{-8/16, -7/16, -2/16, -3/16, -6/16, 2/16},
				{-8/16, 4/16, -2/16, -2/16, 5/16, 2/16},
				{-8/16, -6/16, -1/16, -3/16, -5/16, 1/16},
				{-8/16, 3/16, -1/16, -2/16, 4/16, 1/16},
				{-7/16, -5/16, -1/16, -5/16, 3/16, 1/16}
			},
			connect_back = {
				{-2/16, -7/16, 3/16, 2/16, -6/16, 8/16},
				{-2/16, 4/16, 2/16, 2/16, 5/16, 8/16},
				{-1/16, -6/16, 3/16, 1/16, -5/16, 8/16},
				{-1/16, 3/16, 2/16, 1/16, 4/16, 8/16},
				{-1/16, -5/16, 5/16, 1/16, 3/16, 7/16}
			},
			connect_right = {
				{3/16, -7/16, -2/16, 8/16, -6/16, 2/16},
				{2/16, 4/16, -2/16, 8/16, 5/16, 2/16},
				{3/16, -6/16, -1/16, 8/16, -5/16, 1/16},
				{2/16, 3/16, -1/16, 8/16, 4/16, 1/16},
				{5/16, -5/16, -1/16, 7/16, 3/16, 1/16}
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {-5/16, -8/16, -5/16, 5/16, 8/16, 5/16}
		},
		groups = node_groups,
		sounds = node_sounds,
		connects_to = {"group:balustrade"},
		use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
	})
end


   ---------
-- Balusters
   ---------

function balustrade.register_balusters(modname, subname, recipeitem, desc, is_wood)
	local node_groups = {cracky = 3, balustrade = 1}
	local node_sounds = default.node_sound_stone_defaults()

	if is_wood then
		node_groups = {choppy = 3, oddly_breakable_by_hand = 2, balustrade = 1}
		node_sounds = default.node_sound_wood_defaults()
	end

	minetest.register_node("balustrade:" .. subname .. "_balusters", {
		description = desc .. " Balusters",
		tiles = { modname .. "_" .. subname .. ".png" },
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "baluster.obj",
		selection_box = {
			type = "fixed",
			fixed = {-8/16, -8/16, -2/16, 8/16, 5/16, 2/16}
		},
		groups = node_groups,
		sounds = node_sounds,
		connects_to = {"group:balustrade"},
		use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
	})
end


   ---------------
-- Stair Balusters
   ---------------

function balustrade.register_stair_balusters(modname, subname, recipeitem, desc, is_wood)
	local node_groups = {cracky = 3, balustrade = 1}
	local node_sounds = default.node_sound_stone_defaults()

	if is_wood then
		node_groups = {choppy = 3, oddly_breakable_by_hand = 2, balustrade = 1}
		node_sounds = default.node_sound_wood_defaults()
	end

	minetest.register_node("balustrade:" .. subname .. "_stair_balusters", {
		description = desc .. " Stair Balusters",
		tiles = { modname .. "_" .. subname .. ".png" },
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "stair_baluster.obj",
		selection_box = {
			type = "fixed",
			fixed = {-8/16, -8/16, -2/16, 8/16, 8/16, 2/16}
		},
		groups = node_groups,
		sounds = node_sounds,
		connects_to = {"group:balustrade"},
		use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
	})
end


   ---------------------
-- Stair Balusters Upper
   ---------------------

function balustrade.register_stair_balusters_upper(modname, subname, recipeitem, desc, is_wood)
	local node_groups = {cracky = 3, balustrade = 1}
	local node_sounds = default.node_sound_stone_defaults()

	if is_wood then
		node_groups = {choppy = 3, oddly_breakable_by_hand = 2, balustrade = 1}
		node_sounds = default.node_sound_wood_defaults()
	end

	minetest.register_node("balustrade:" .. subname .. "_stair_balusters_upper", {
		description = desc .. " Upper Stair Balusters",
		tiles = { modname .. "_" .. subname .. ".png" },
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "stair_baluster_upper.obj",
		selection_box = {
			type = "fixed",
			fixed = {-8/16, -8/16, -2/16, 8/16, 5/16, 2/16}
		},
		groups = node_groups,
		sounds = node_sounds,
		connects_to = {"group:balustrade"},
		use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
	})
end


   ---------------------
-- Stair Balusters Lower
   ---------------------

function balustrade.register_stair_balusters_lower(modname, subname, recipeitem, desc, is_wood)
	local node_groups = {cracky = 3, balustrade = 1}
	local node_sounds = default.node_sound_stone_defaults()

	if is_wood then
		node_groups = {choppy = 3, oddly_breakable_by_hand = 2, balustrade = 1}
		node_sounds = default.node_sound_wood_defaults()
	end

	minetest.register_node("balustrade:" .. subname .. "_stair_balusters_lower", {
		description = desc .. " Lower Stair Balusters",
		tiles = { modname .. "_" .. subname .. ".png" },
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "stair_baluster_lower.obj",
		selection_box = {
			type = "fixed",
			fixed = {-8/16, -8/16, -2/16, 8/16, 8/16, 2/16}
		},
		groups = node_groups,
		sounds = node_sounds,
		connects_to = {"group:balustrade"},
		use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
	})
end


   ------------------------
-- Register Nodes/Materials
   ------------------------

function balustrade.register_balustrade_nodes(modname, subname, recipeitem, desc, is_wood)
	balustrade.register_post(modname, subname, recipeitem, desc, is_wood)
	balustrade.register_balusters(modname, subname, recipeitem, desc, is_wood)
	balustrade.register_stair_balusters(modname, subname, recipeitem, desc, is_wood)
	balustrade.register_stair_balusters_upper(modname, subname, recipeitem, desc, is_wood)
	balustrade.register_stair_balusters_lower(modname, subname, recipeitem, desc, is_wood)

	-- Craft: Posts
	minetest.register_craft({
		output = "balustrade:" .. subname .. "_post 4",
		recipe = {
			{recipeitem, "", recipeitem},
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, "", recipeitem},
		}
	})

	-- Craft: Regular Balusters
	minetest.register_craft({
		output = "balustrade:" .. subname .. "_balusters 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		}
	})

	-- Craft: Stair Balusters (Mid)
	minetest.register_craft({
		output = "balustrade:" .. subname .. "_stair_balusters 4",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, ""},
			{recipeitem, "", ""},
		}
	})

	-- Craft: Upper Stair Balusters
	minetest.register_craft({
		output = "balustrade:" .. subname .. "_stair_balusters_upper 4",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
		}
	})

	-- Craft: Lower Stair Balusters
	minetest.register_craft({
		output = "balustrade:" .. subname .. "_stair_balusters_lower 4",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		}
	})
end

balustrade.register_balustrade_nodes("default", "clay", "default:clay", "Clay", false)
balustrade.register_balustrade_nodes("default", "desert_sandstone", "default:desert_sandstone", "Desert Sandstone", false)
balustrade.register_balustrade_nodes("default", "desert_stone", "default:desert_stone", "Desert Stone", false)
balustrade.register_balustrade_nodes("default", "sandstone", "default:sandstone", "Sandstone", false)
balustrade.register_balustrade_nodes("default", "silver_sandstone", "default:silver_sandstone", "Silver Sandstone", false)
balustrade.register_balustrade_nodes("default", "stone", "default:stone", "Stone", false)

balustrade.register_balustrade_nodes("default", "wood", "default:wood", "Wooden", true)
balustrade.register_balustrade_nodes("default", "junglewood", "default:junglewood", "Jungle Wood", true)
balustrade.register_balustrade_nodes("default", "pine_wood", "default:pine_wood", "Pine Wood", true)
balustrade.register_balustrade_nodes("default", "acacia_wood", "default:acacia_wood", "Acacia Wood", true)
balustrade.register_balustrade_nodes("default", "aspen_wood", "default:aspen_wood", "Aspen Wood", true)

--Example-- to add your favorite mod's nodes
--[[
if minetest.get_modpath("granite") then
	balustrade.register_balustrade_nodes("granite", "granite", "granite:granite", "Granite", false)
end
]]--
