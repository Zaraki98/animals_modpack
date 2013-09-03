-------------------------------------------------------------------------------
-- Mob Framework Mod by Sapier
-- 
-- You may copy, use, modify or do nearly anything except removing this
-- copyright notice. 
-- And of course you are NOT allow to pretend you have written it.
--
--! @file init.lua
--! @brief npc implementation
--! @copyright Sapier
--! @author Sapier
--! @date 2013-01-27
--
-- Contact sapier a t gmx net
-------------------------------------------------------------------------------
minetest.log("action","MOD: mob_npc mod loading ...")

local version = "0.0.13"
local npc_groups = {
						not_in_creative_inventory=1
					}

local modpath = minetest.get_modpath("mob_npc")

dofile (modpath .. "/spawn_building.lua")

npc_prototype = {
		name="npc",
		modname="mob_npc",
	
		generic = {
					description="NPC",
					base_health=40,
					kill_result="",
					armor_groups= {
						fleshy=90,
					},
					groups = npc_groups,
					envid="on_ground_1",
				},
		movement =  {
					min_accel=0.3,
					max_accel=0.7,
					max_speed=1.5,
					min_speed=0.01,
					pattern="stop_and_go",
					canfly=false,
					},
		
		spawning = {
					primary_algorithms = {
						{
						rate=0,
						density=0,
						algorithm="none",
						height=2
						},
					}
				},
		states = {
				{ 
				name = "walking",
				movgen = "probab_mov_gen",
				typical_state_time = 180,
				chance = 0.50,
				animation = "walk",
				},
				{ 
				name = "default",
				movgen = "none",
				typical_state_time = 180,
				chance = 0.00,
				animation = "stand",
				graphics_3d = {
					visual = "mesh",
					mesh = "npc_character.b3d",
					textures = {"zombie.png"},
					collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
					visual_size= {x=1, y=1},
					},
				},
			},
		animation = {
				walk = {
					start_frame = 168,
					end_frame   = 187,
					},
				stand = {
					start_frame = 0,
					end_frame   = 79,
					},
			},
		}
		
npc_trader_prototype = {
		name="npc_trader",
		modname="mob_npc",
	
		generic = {
					description="Trader",
					base_health=200,
					kill_result="",
					armor_groups= {
						fleshy=60,
					},
					groups = npc_groups,
					envid="on_ground_1",
					custom_on_activate_handler=mob_inventory.init_trader_inventory,
				},
		movement =  {
					min_accel=0.3,
					max_accel=0.7,
					max_speed=1.5,
					min_speed=0.01,
					pattern="stop_and_go",
					canfly=false,
					},
		
		spawning = {
					primary_algorithms = {
						{
						rate=0,
						density=2000,
						algorithm="building_spawner",
						height=2
						},
					}
				},
		states = {
				{ 
				name = "default",
				movgen = "none",
				chance = 0,
				animation = "stand",
				graphics = {
					visual = "upright_sprite",
					sprite_scale={x=1.5,y=2},
					sprite_div = {x=1,y=1},
					visible_height = 2,
					visible_width = 1,
					},
				graphics_3d = {
					visual = "mesh",
					mesh = "npc_character.b3d",
					textures = {"mob_npc_trader_mesh.png"},
					collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
					visual_size= {x=1, y=1},
					},
				},
			},
		animation = {
				walk = {
					start_frame = 168,
					end_frame   = 187,
					},
				stand = {
					start_frame = 0,
					end_frame   = 79,
					},
			},
		attention = {
				hear_distance = 3,
				hear_distance_value = 0.5,
				view_angle = nil,
				own_view_value = 0,
				remote_view = false,
				remote_view_value = 0,
				attention_distance_value = 0.2,
				watch_threshold = 2,
				attack_threshold = nil,
				attention_distance = 7.5,
				attention_max = 10,
		},
		trader_inventory = {
				goods = {
							{ "default:mese 1", "argent:billet200", "argent:billet100 2"},
							{ "default:fence_wood 30", "argent:billet10", "argent:piece_acier 10"},
							{ "animalmaterials:saddle 1", "argent:billet50", "argent:billet10 5"},
							{ "default:sword_steel 1", "argent:billet20", "argent:billet10 2"},
							{ "bucket:bucket_empty 1", "argent:billet10", "argent:piece_acier 10"},
							{ "default:pick_mese 1", "argent:billet50 3", "argent:billet10 15"},
							{ "default:shovel_steel 1", "argent:billet20", "argent:billet10 2"},
							{ "default:axe_steel 1", "argent:billet20", "argent:billet10 2"},
							{ "default:torch 35", "argent:billet10", "argent:piece_acier 10"},
							{ "default:ladder 20", "argent:billet10", "argent:piece_acier 10"},
							{ "default:paper 20", "argent:piece_acier 5", "argent:piece_cuivre 10"},
							{ "default:chest_locked 1", "argent:billet10", "argent:piece_acier 10"},
							{ "mob_archer:archer 1","argent:billet100","argent:billet50 2"},
							{ "mob_guard:guard 1","argent:billet100","argent:billet50 2"},
							{ "doors:door_steel 1","argent:billet50","argent:billet10 5"},
							{ "mobf:path_marker 1","argent:piece_cuivre","argent:piece_etain 5"},
},
				random_names = { "Hans","Franz","Xaver","Fritz","Thomas","Martin"},
			}
		}
		
--register with animals mod
minetest.log("action","\tadding mob "..npc_trader_prototype.name)
mobf_add_mob(npc_trader_prototype)
minetest.log("action","\tadding mob "..npc_prototype.name)
mobf_add_mob(npc_prototype)
minetest.log("action","MOD: mob_npc mod                version " .. version .. " loaded")
