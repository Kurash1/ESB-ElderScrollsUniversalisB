# obsidian_gorge
# cormaris_crypt
# gnisis_mine
# barilzars_tower
# temple_of_miraak
# telvanni_mushroom_tower
# slave_market_of_tear 
# shrine_of_ularradallaku
# abandonned_site foyada ashur dan
# ghostgate
# high_fane
# clockwork_city
# tribunal_temple

#ash_mountain
#tormented_spire
#brothers_of_strife
#darkshade_caverns
#fort_virak
#shad_astula
#shrine_of_saint_veloth
#valley_of_the_wind

valley_of_the_wind = {
	start = 4139
	
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
			movement_speed = 0.05
			leader_land_manuever = 1
			reinforce_speed = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			movement_speed = 0.1
			leader_land_manuever = 2
			reinforce_speed = 0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			movement_speed = 0.15
			leader_land_manuever = 3
			reinforce_speed = 0.5
		}
		on_upgraded = { }
	}
}

shrine_of_saint_veloth = {
	start = 3993
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		culture_group = velothi_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = velothi_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = velothi_cg
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
			tolerance_own = 1
			global_missionary_strength = 0.01
			global_unrest = -2
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
			tolerance_own = 2
			global_missionary_strength = 0.02
			global_unrest = -4
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
			tolerance_own = 3
			missionaries = 1
			global_missionary_strength = 0.03
			global_unrest = -5
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

shad_astula = {
	start = 3967
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			has_estate = estate_mages
			num_accepted_cultures = 2
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			has_estate = estate_mages
			num_accepted_cultures = 2
		}
	}
	can_upgrade_trigger = {
		owner = {
			has_estate = estate_mages
			num_accepted_cultures = 2
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
			num_accepted_cultures = 1
			relation_with_accepted_culture = 10
			promote_culture_cost = -0.25
			mages_loyalty_modifier = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			num_accepted_cultures = 2
			relation_with_accepted_culture = 20
			promote_culture_cost = -0.4
			mages_loyalty_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			num_accepted_cultures = 3
			relation_with_accepted_culture = 30
			promote_culture_cost = -0.5
			mages_loyalty_modifier = 0.15
		}
		on_upgraded = { }
	}
}

fort_virak = {
	start = 966
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		fort_level = 1
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		fort_level = 1
	}
	can_upgrade_trigger = {
		fort_level = 1
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
		province_modifiers = {
		}
		area_modifier = {
			local_defensiveness = 0.15
			local_hostile_movement_speed = -0.25
		}
		country_modifiers = { 
			defensiveness = 0.1
			fort_maintenance_modifier = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = {
		}
		area_modifier = { 
			local_defensiveness = 0.3
			local_hostile_movement_speed = -0.4
			local_hostile_attrition = 1
		}
		country_modifiers = { 
			defensiveness = 0.2
			fort_maintenance_modifier = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = {
		}
		area_modifier = { 
			local_defensiveness = 0.5
			local_hostile_movement_speed = -0.5
			local_hostile_attrition = 2
		}
		country_modifiers = { 
			defensiveness = 0.3
			fort_maintenance_modifier = -0.15
		}
		on_upgraded = { }
	}
}

darkshade_caverns = {
	start = 1006
	
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
			global_trade_goods_size_modifier = 0.05
			global_tax_modifier = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_trade_goods_size_modifier = 0.1
			global_tax_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_trade_goods_size_modifier = 0.15
			global_tax_modifier = 0.15
		}
		on_upgraded = { }
	}
}

brothers_of_strife = {
	start = 3224
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = chimer_pantheon
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = chimer_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = chimer_pantheon
		has_owner_religion = yes
	}
	keep_trigger = { always = yes }

	tier_0 = {
		upgrade_time = { months = 0 }
		cost_to_upgrade = { factor = 0 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
		
		}
		on_upgraded = { }
	}

	tier_1 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige = 0.5
			shock_damage_received = -0.05
			land_morale = 0.05
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
			shock_damage_received = -0.075
			land_morale = 0.10
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
			shock_damage_received = -0.1
			land_morale = 0.15
		}
		on_upgraded = { }
	}
}

tormented_spire = {
	start = 3221
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = chimer_pantheon
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = chimer_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = chimer_pantheon
		has_owner_religion = yes
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
			harsh_treatment_cost = -0.1
			max_absolutism = 5
			global_unrest = -2
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.2
			max_absolutism = 10
			global_unrest = -4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			harsh_treatment_cost = -0.25
			max_absolutism = 15
			global_unrest = -5
		}
		on_upgraded = { }
	}
}

ash_mountain = {
	start = 988
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		OR = {
			religion = molag_bal_cult
			religion = boethiah_cult
			religion = chimer_pantheon
		}
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			religion = molag_bal_cult
			religion = boethiah_cult
			religion = chimer_pantheon
		}
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		OR = {
			religion = molag_bal_cult
			religion = boethiah_cult
			religion = chimer_pantheon
		}
		has_owner_religion = yes
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
			harsh_treatment_cost = -0.1
			max_absolutism = 5
			tolerance_own = 1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.2
			max_absolutism = 10
			tolerance_own = 2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			harsh_treatment_cost = -0.25
			max_absolutism = 15
			tolerance_own = 3
		}
		on_upgraded = { }
	}
}


obsidian_gorge = {
	start = 3975
	
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
			caravan_power = 0.2
			trade_steering = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			caravan_power = 0.3
			trade_steering = 0.15
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			caravan_power = 0.4
			trade_steering = 0.2
			merchants = 1
		}
		on_upgraded = { }
	}
}

high_fane = {
	start = 1043
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = tribunal_pantheon
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = tribunal_pantheon
	}
	can_upgrade_trigger = {
		religion = tribunal_pantheon
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
			governing_capacity_modifier = 0.05
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
			governing_capacity_modifier = 0.075
			prestige = 0.75
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			administrative_efficiency = 0.05
			governing_capacity_modifier = 0.1
			prestige = 1
		}
		on_upgraded = { }
	}
}

clockwork_city = {
	start = 4124
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = tribunal_pantheon
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = tribunal_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = tribunal_pantheon
		has_owner_religion = yes
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
			advisor_cost = -0.05
			advisor_pool = 1 
			idea_cost = -0.05
			technology_cost = -0.05
			institution_spread_from_true_faith = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			advisor_cost = -0.10
			advisor_pool = 2 
			idea_cost = -0.075
			technology_cost = -0.075
			institution_spread_from_true_faith = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			advisor_cost = -0.15
			advisor_pool = 3 
			idea_cost = -0.1
			technology_cost = -0.1
			institution_spread_from_true_faith = 0.15
		}
		on_upgraded = { }
	}
}

tribunal_temple = {
	start = 3248
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = tribunal_pantheon
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = tribunal_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = tribunal_pantheon
		has_owner_religion = yes
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
			tolerance_own = 1
			global_missionary_strength = 0.01
			manpower_in_true_faith_provinces = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			tolerance_own = 2
			global_missionary_strength = 0.02
			manpower_in_true_faith_provinces = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			tolerance_own = 3
			global_missionary_strength = 0.03
			missionaries = 1
			manpower_in_true_faith_provinces = 0.15
		}
		on_upgraded = { }
	}
}

ghostgate = {
	start = 4234
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = tribunal_pantheon
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			religion = tribunal_pantheon
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = tribunal_pantheon
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
		area_modifier = { 
			defensiveness = 0.15
		}
		country_modifiers = { 
			fort_maintenance_modifier = -0.05
			global_monthly_devastation = -0.05
			war_exhaustion = -0.01
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { 
			defensiveness = 0.2
		}
		country_modifiers = { 
			fort_maintenance_modifier = -0.10
			global_monthly_devastation = -0.10
			war_exhaustion = -0.02
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { 
			defensiveness = 0.25
		}
		country_modifiers = { 
			fort_maintenance_modifier = -0.15
			global_monthly_devastation = -0.15
			war_exhaustion = -0.03
		}
		on_upgraded = { }
	}
}

#nchuleftingth = {
#	start = 4216
#	
#	date = 54.01.01
#	
#	time = { months = 0 }
#	
#	build_cost = defines.constants.minor_monument_price_tier1
#	can_be_moved = no
#	move_days_per_unit_distance = 10
#	starting_tier = 0
#	
#	type = monument
#
#	build_trigger = { 
#		owner = {
#			culture_group = dwemer_cg
#		}
#	}
#
#	on_built = { }
#	on_destroyed = { }
#
#	can_use_modifiers_trigger = {
#		owner = {
#			culture_group = dwemer_cg
#		}
#	}
#	can_upgrade_trigger = {
#		owner = {
#			culture_group = dwemer_cg
#		}
#	}
#	keep_trigger = { always = yes }
#
#	tier_0 = {
#		upgrade_time = { months = 0 }
#		cost_to_upgrade = { factor = 0 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { }
#		on_upgraded = { }
#	}
#
#	tier_1 = {
#		upgrade_time = { months = 120 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { 
#			technology_cost = -0.05
#			innovativeness_gain = 0.1
#		}
#		on_upgraded = { }
#	}
#
#	tier_2 = {
#		upgrade_time = { months = 240 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { 
#			technology_cost = -0.075
#			innovativeness_gain = 0.2
#		}
#		on_upgraded = { }
#	}
#
#	tier_3 = {
#		upgrade_time = { months = 360 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { 
#			technology_cost = -0.1
#			innovativeness_gain = 0.3
#			free_policy = 1
#		}
#		on_upgraded = { }
#	}
#}

slave_market_of_tear = {
	start = 3904
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			has_estate = estate_slavers
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			has_estate = estate_slavers
		}
	}
	can_upgrade_trigger = {
		owner = {
			has_estate = estate_slavers
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
			trade_company_investment_cost = -0.15 
			slavers_loyalty_modifier = 0.1
			global_trade_goods_size_modifier = 0.05
			ship_power_propagation = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_company_investment_cost = -0.25 
			slavers_loyalty_modifier = 0.2
			global_trade_goods_size_modifier = 0.075
			ship_power_propagation = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_company_investment_cost = -0.35 
			slavers_loyalty_modifier = 0.3
			global_trade_goods_size_modifier = 0.1
			ship_power_propagation = 0.15
		}
		on_upgraded = { }
	}
}

telvanni_mushroom_tower = {
	start = 4121
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		has_owner_accepted_culture = yes
		culture_group = velothi_cg
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		has_owner_accepted_culture = yes
		culture_group = velothi_cg
	}
	can_upgrade_trigger = {
		has_owner_accepted_culture = yes
		culture_group = velothi_cg
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
			fire_damage = 0.025
			fire_damage_received = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			fire_damage = 0.04
			fire_damage_received = -0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			leader_land_fire = 1
			fire_damage = 0.05 
			fire_damage_received = -0.10
		}
		on_upgraded = { }
	}
}

temple_of_miraak = {
	start = 3314
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		religion = miraak_cult
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = miraak_cult
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = miraak_cult
		has_owner_religion = yes
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
			discipline = 0.05
			prestige = 0.5
			monthly_fervor_increase = 2
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
			discipline = 0.075
			prestige = 1.0
			monthly_fervor_increase = 4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			missionaries = 1
			global_missionary_strength = 0.03
			discipline = 0.1
			prestige = 1.5
			monthly_fervor_increase = 5
		}
		on_upgraded = { }
	}
}

barilzars_tower = {
	start = 4224
	
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
		culture_group = velothi_cg
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = velothi_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = velothi_cg
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
			movement_speed = 0.05
			all_power_cost = -0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			movement_speed = 0.10
			all_power_cost = -0.03
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			movement_speed = 0.15
			all_power_cost = -0.05
		}
		on_upgraded = { }
	}
}

gnisis_mine = {
	start = 4275
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		culture_group = velothi_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = velothi_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = velothi_cg
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
			production_efficiency = 0.05
		 	monthly_gold_inflation_modifier = -0.25
			gold_depletion_chance_modifier = -0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			production_efficiency = 0.10
		 	monthly_gold_inflation_modifier = -0.4
			gold_depletion_chance_modifier = -0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			production_efficiency = 0.15
		 	monthly_gold_inflation_modifier = -0.5
			gold_depletion_chance_modifier = -0.5
		}
		on_upgraded = { }
	}
}

#cormaris_crypt = {
#	start = 3204
#	
#	date = 54.01.01
#	
#	time = { months = 0 }
#	
#	build_cost = defines.constants.minor_monument_price_tier1
#	can_be_moved = no
#	move_days_per_unit_distance = 10
#	starting_tier = 0
#	
#	type = monument
#
#	build_trigger = { 
#		owner = {
#			OR = {
#				culture_group = dwemer_cg
#				culture_group = velothi_cg
#			}
#		}
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		}
#	}
#
#	on_built = { }
#	on_destroyed = { }
#
#	can_use_modifiers_trigger = {
#		owner = {
#			OR = {
#				culture_group = dwemer_cg
#				culture_group = velothi_cg
#			}
#		}
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		} 
#	}
#	can_upgrade_trigger = {
#		owner = {
#			OR = {
#				culture_group = dwemer_cg
#				culture_group = velothi_cg
#			}
#		}
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		} 
#	}
#	keep_trigger = { always = yes }
#
#	tier_0 = {
#		upgrade_time = { months = 0 }
#		cost_to_upgrade = { factor = 0 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { }
#		on_upgraded = { }
#	}
#
#	tier_1 = {
#		upgrade_time = { months = 120 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { years_of_nationalism = -2.5 }
#		on_upgraded = { }
#	}
#
#	tier_2 = {
#		upgrade_time = { months = 240 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { years_of_nationalism = -5 }
#		on_upgraded = { }
#	}
#
#	tier_3 = {
#		upgrade_time = { months = 360 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { years_of_nationalism = -7.5 }
#		on_upgraded = { }
#	}
#}

shrine_of_ularradallaku = {
	start = 4262
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			OR = {
				religion = mehrunes_dagon_cult
				religion = hircine_cult
			}
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			OR = {
				religion = mehrunes_dagon_cult
				religion = hircine_cult
			}
		}
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				religion = mehrunes_dagon_cult
				religion = hircine_cult
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
			global_missionary_strength = 0.01
			movement_speed = 0.05
			fire_damage = 0.025
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
			movement_speed = 0.10
			fire_damage = 0.05
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
			movement_speed = 0.15
			fire_damage = 0.075
		}
		on_upgraded = { }
	}
}

#abandonned_site = {
#	start = 4232
#	
#	date = 54.01.01
#	
#	time = { months = 0 }
#	
#	build_cost = defines.constants.minor_monument_price_tier1
#	can_be_moved = no
#	move_days_per_unit_distance = 10
#	starting_tier = 0
#	
#	type = monument
#
#	build_trigger = { 
#		owner = { culture_group = dwemer_cg }
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		}
#	}
#
#	on_built = { }
#	on_destroyed = { }
#
#	can_use_modifiers_trigger = {
#		owner = { culture_group = dwemer_cg }
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		} 
#	}
#	can_upgrade_trigger = {
#		owner = { culture_group = dwemer_cg }
#		OR = {
#			has_owner_culture = yes
#			has_owner_accepted_culture = yes
#		} 
#	}
#	keep_trigger = { always = yes }
#
#	tier_0 = {
#		upgrade_time = { months = 0 }
#		cost_to_upgrade = { factor = 0 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { }
#		on_upgraded = { }
#	}
#
#	tier_1 = {
#		upgrade_time = { months = 120 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { war_exhaustion = -0.015 }
#		on_upgraded = { }
#	}
#
#	tier_2 = {
#		upgrade_time = { months = 240 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { war_exhaustion = -0.025 }
#		on_upgraded = { }
#	}
#
#	tier_3 = {
#		upgrade_time = { months = 360 }
#		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
#		province_modifiers = { }
#		area_modifier = { }
#		country_modifiers = { war_exhaustion = -0.05 }
#		on_upgraded = { }
#	}
#}