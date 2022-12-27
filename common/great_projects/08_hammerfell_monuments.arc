# motalion_necropolis
# city_of_mages 
# skyreach_pinnacle
# abahs_landing 
# tuwhaccas_throne 
# the_grave 
# hegathe_docks

# To be Done

# Bloodroot Forge
# Bthzark
# Dragonstar
# Earthtear Caverns
# Fang Lair
# Hall of Heroes
# Hel Ra Citadel
# Port Hunding
# Samuruik
# Scourg Barrow
# Volenfell
# Wind Scour Temple

#6116#isle_of_ngasta

isle_of_ngasta = {
	start = 6116
	date = 54.01.01
	time = {
		months = 0
	}
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	type = monument
	build_trigger = {
		culture = sload
		has_owner_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture = sload
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture = sload
		has_owner_culture = yes
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = {
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.1
			land_forcelimit_modifier = 0.1
			land_maintenance_modifier = -0.1
		}
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.2
			land_forcelimit_modifier = 0.2
			land_maintenance_modifier = -0.2
		}
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.25
			land_forcelimit_modifier = 0.25
			land_maintenance_modifier = -0.25
		}
		on_upgraded = { }
	}
}

wind_scour_temple = {
	start = 6351
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = tsaesci_cg
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = tsaesci_cg
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = tsaesci_cg
		has_owner_accepted_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.025
			idea_cost = -0.05
			technology_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.04
			idea_cost = -0.1
			technology_cost = -0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.05
			idea_cost = -0.15
			technology_cost = -0.25
		}
		on_upgraded = { }
	}
}

volenfell = {
	start = 6356
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			land_attrition = -0.1
			global_monthly_devastation = -0.05
			technology_cost = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			land_attrition = -0.2
			global_monthly_devastation = -0.075
			technology_cost = -0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			land_attrition = -0.25
			global_monthly_devastation = -0.1
			technology_cost = -0.15
		}
		on_upgraded = { }
	}
}

scourg_barrow = {
	start = 1490
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		owner = {
			full_idea_group = necromacy_ideas
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			full_idea_group = necromacy_ideas
		}
	}
	can_upgrade_trigger = {
		owner = {
			full_idea_group = necromacy_ideas
		}
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.1
			land_attrition = -0.2
			reinforce_speed = 0.2
			reinforce_cost_modifier = -0.2
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.2
			land_attrition = -0.4
			reinforce_speed = 0.4
			reinforce_cost_modifier = -0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.25
			land_attrition = -0.5
			reinforce_speed = 0.5
			reinforce_cost_modifier = -0.5
		}
		on_upgraded = { }
	}
}

samuruik = {
	start = 1510
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {

	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {

	}
	can_upgrade_trigger = {

	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 0.5
			hostile_attrition = 0.5
			development_cost = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 1.0
			hostile_attrition = 1.0
			development_cost = -0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 1.5
			hostile_attrition = 1.5
			development_cost = -0.15
		}
		on_upgraded = { }
	}
}

port_hunding = {
	start = 1504
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = yokudo_redguard_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		
	}
	can_upgrade_trigger = {

	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			heavy_ship_power = 0.1
			heavy_ship_cost = -0.1
			global_ship_repair = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			heavy_ship_power = 0.2
			heavy_ship_cost = -0.2
			global_ship_repair = 0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			heavy_ship_power = 0.25
			heavy_ship_cost = -0.25
			global_ship_repair = 0.75
		}
		on_upgraded = { }
	}
}

hel_ra_citadel = {
	start = 1461
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		OR = {
			culture_group = cyrodiil_cg
			culture_group = yokudo_redguard_cg
		}
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			culture_group = cyrodiil_cg
			culture_group = yokudo_redguard_cg
		}
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		OR = {
			culture_group = cyrodiil_cg
			culture_group = yokudo_redguard_cg
		}
		has_owner_accepted_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			defensiveness = 0.1
			war_exhaustion = -0.01
			fort_maintenance_modifier = -0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			defensiveness = 0.2
			war_exhaustion = -0.02
			fort_maintenance_modifier = -0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			defensiveness = 0.25
			war_exhaustion = -0.03
			fort_maintenance_modifier = -0.5
		}
		on_upgraded = { }
	}
}

hall_of_heroes = {
	start = 1471
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = yokudo_redguard_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = yokudo_redguard_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = yokudo_redguard_cg
		has_owner_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 1
			army_tradition_decay = -0.005
			land_morale = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 2
			army_tradition_decay = -0.01
			land_morale = 0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 3
			army_tradition_decay = -0.015
			land_morale = 0.25
		}
		on_upgraded = { }
	}
}

fang_lair = {
	start = 1469
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = dwemer_cg
		has_owner_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			idea_cost = -0.05
			prestige = 0.5
			discipline = 0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			idea_cost = -0.1
			prestige = 1.0
			discipline = 0.04
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			idea_cost = -0.15
			prestige = 1.5
			discipline = 0.05
		}
		on_upgraded = { }
	}
}

earthtear_caverns = {
	start = 6252
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {

	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {

	}
	can_upgrade_trigger = {

	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			envoy_travel_time = -0.25
			production_efficiency = 0.05
			spy_offence = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			envoy_travel_time = -0.5
			production_efficiency = 0.1
			spy_offence = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			envoy_travel_time = -0.75
			production_efficiency = 0.15
			spy_offence = 0.15
		}
		on_upgraded = { }
	}
}

bthzark = {
	start = 1501
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = dwemer_cg
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			culture_group = dwemer_cg
			owner = {
				has_estate = estate_nobility
				OR = {
					has_estate_privilege = nobility_elite_footmen
					has_estate_privilege = nobility_elite_cavalry
				}
			}
		}
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		OR = {
			culture_group = dwemer_cg
			owner = {
				has_estate = estate_nobility
				OR = {
					has_estate_privilege = nobility_elite_footmen
					has_estate_privilege = nobility_elite_cavalry
				}
			}
		}
		has_owner_accepted_culture = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.025
			drill_gain_modifier = 0.25
			yearly_army_professionalism = 0.001
			army_tradition = 0.5
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.04
			drill_gain_modifier = 0.4
			yearly_army_professionalism = 0.002
			army_tradition = 1.0
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			discipline = 0.05
			drill_gain_modifier = 0.5
			yearly_army_professionalism = 0.003
			army_tradition = 1.5
		}
		on_upgraded = { }
	}
}

bloodroot_forge = {
	start = 6172
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = cyrodiil_cg
		religion = hircine_cult
		has_owner_culture = yes
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			AND = {
				culture_group = cyrodiil_cg
				has_owner_accepted_culture = yes
			}
			AND = {
				religion = hircine_cult
				has_owner_religion = yes
			}
		}
	}
	can_upgrade_trigger = {
		OR = {
			AND = {
				culture_group = cyrodiil_cg
				has_owner_accepted_culture = yes
			}
			AND = {
				religion = hircine_cult
				has_owner_religion = yes
			}
		}
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			shock_damage = 0.025
			shock_damage_received = -0.05
			infantry_power = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			shock_damage = 0.05
			shock_damage_received = -0.075
			infantry_power = 0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			shock_damage = 0.075
			shock_damage_received = -0.1
			infantry_power = 0.1
		}
		on_upgraded = { }
	}
}

motalion_necropolis = {
	start = 6345
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.05 
			reinforce_cost_modifier = -0.10
			reinforce_speed = 0.10
			land_forcelimit_modifier = 0.05
			land_maintenance_modifier = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.10 
			reinforce_cost_modifier = -0.20
			reinforce_speed = 0.20
			land_forcelimit_modifier = 0.10
			land_maintenance_modifier = -0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_manpower_modifier = 0.15 
			reinforce_cost_modifier = -0.25
			reinforce_speed = 0.25
			land_forcelimit_modifier = 0.15
			land_maintenance_modifier = -0.15
		}
		on_upgraded = { }
	}
}

city_of_mages = {
	start = 6178
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		owner = { has_estate = estate_mages has_estate_privilege = mages_colleges }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { has_estate = estate_mages has_estate_privilege = mages_colleges }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { has_estate = estate_mages has_estate_privilege = mages_colleges }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			technology_cost = -0.05
			fire_damage = 0.025
			fire_damage_received = -0.025
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			technology_cost = -0.10
			fire_damage = 0.05
			fire_damage_received = -0.05
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			technology_cost = -0.15
			all_power_cost = -0.05
			fire_damage = 0.075
			fire_damage_received = -0.075
		}
		on_upgraded = { }
	}
}

skyreach_pinnacle = {
	start = 6072
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = cyrodiil_cg 
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = cyrodiil_cg 
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		culture_group = cyrodiil_cg 
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			liberty_desire_from_subject_development = -0.10 
			diplomatic_reputation = 0.5
			manpower_recovery_speed = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			liberty_desire_from_subject_development = -0.20 
			diplomatic_reputation = 1.0
			manpower_recovery_speed = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			liberty_desire_from_subject_development = -0.30 
			diplomatic_reputation = 1.5
			manpower_recovery_speed = 0.15
		}
		on_upgraded = { }
	}
}

abahs_landing = {
	start = 6421
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = yokudo_redguard_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = yokudo_redguard_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = yokudo_redguard_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			naval_forcelimit_modifier = 0.1
			naval_maintenance_modifier = -0.1
			sailors_recovery_speed = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			naval_forcelimit_modifier = 0.20
			naval_maintenance_modifier = -0.20
			sailors_recovery_speed = 0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			naval_forcelimit_modifier = 0.25
			naval_maintenance_modifier = -0.25
			sailors_recovery_speed = 0.25
		}
		on_upgraded = { }
	}
}

tuwhaccas_throne = {
	start = 1508
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		OR = {
			religion = yokudan_pantheon
			religion = redguard_pantheon
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			religion = yokudan_pantheon
			religion = redguard_pantheon
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		OR = {
			religion = yokudan_pantheon
			religion = redguard_pantheon
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_missionary_strength = 0.01
			improve_relation_modifier = 0.10
			prestige = 0.5
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_missionary_strength = 0.02
			improve_relation_modifier = 0.20
			prestige = 1.0
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_missionary_strength = 0.03
			missionaries = 1
			improve_relation_modifier = 0.25
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

the_grave = {
	start = 1502
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.25
			global_unrest = -2
			max_absolutism = 10
			yearly_absolutism = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.5
			global_unrest = -4
			max_absolutism = 20
			yearly_absolutism = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.75
			global_unrest = -5
			max_absolutism = 30
			yearly_absolutism = 0.3
		}
		on_upgraded = { }
	}
}

hegathe_docks = {
	start = 1482
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { is_free_or_tributary_trigger = yes }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_steering = 0.1
			navy_tradition = 0.5
			global_sailors_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_steering = 0.2
			navy_tradition = 1.0
			global_sailors_modifier = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_steering = 0.25
			navy_tradition = 1.5
			global_sailors_modifier = 0.25
		}
		on_upgraded = { }
	}
}