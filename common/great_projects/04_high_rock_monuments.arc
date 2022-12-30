# stonetooth_fortress
# bank_of_daggerfall
# temple_of_the_divines
# koeglin_lighthouse
# the_sloshing_tankard
# wyrd_tree
# morkul_stronghold
# doomscrag
# cath_bedraud
# crypt_of_hearts
# direnii_tower

#Half Done

#1422#argent_mine
#6276#bangkorai_garrison
#6952#cryngaine_field
#6903#frostbreak_fortress
#1432#honors_rest
#7067#murtag_stronghold
#6842#privateers_hold
#6878#shedungent
#7005#silverhoof_vale
#6985#storm_talon_temple

#6914#seaveil_spire
#7045#grayhome

grayhome = {
	start = 7045
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
		culture = vampire
		has_owner_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture = vampire
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture = vampire
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
			prestige = 0.5
			defensiveness = 0.1
			manpower_recovery_speed = 0.1
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
			prestige = 1.0
			defensiveness = 0.2
			manpower_recovery_speed = 0.2
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
			prestige = 1.5
			defensiveness = 0.25
			manpower_recovery_speed = 0.25
		}
		on_upgraded = { }
	}
}

seaveil_spire = {
	start = 6914
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
		religion = celestials
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = celestials
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = celestials
		has_owner_religion = yes
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
			build_cost = -0.1
			tolerance_own = 1
			global_missionary_strength = 0.01
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
			build_cost = -0.2
			tolerance_own = 2
			global_missionary_strength = 0.02
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
			build_cost = -0.25
			tolerance_own = 3
			global_missionary_strength = 0.03
		}
		on_upgraded = { }
	}
}

direnii_tower = {
	start = 1382
	
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
			vassal_income = 0.1 
			governing_capacity_modifier = 0.1
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
			vassal_income = 0.2 
			governing_capacity_modifier = 0.2
			all_power_cost = -0.04
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			vassal_income = 0.25 
			governing_capacity_modifier = 0.25
			all_power_cost = -0.05
		}
		on_upgraded = { }
	}
}

storm_talon_temple = {
	start = 6985
	
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			technology_cost = -0.1
			idea_cost = -0.05
			advisor_pool = 1
			advisor_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			technology_cost = -0.2
			idea_cost = -0.1
			advisor_pool = 2
			advisor_cost = -0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			technology_cost = -0.25
			idea_cost = -0.15
			advisor_pool = 3
			advisor_cost = -0.25
		}
		on_upgraded = { }
	}
}


silverhoof_vale = {
	start = 7005
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		culture_group = yokudo_redguard_cg
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = yokudo_redguard_cg
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = yokudo_redguard_cg
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			cavalry_cost = -0.1
			cavalry_power = 0.05
			cav_to_inf_ratio = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			cavalry_cost = -0.2
			cavalry_power = 0.1
			cav_to_inf_ratio = 0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			cavalry_cost = -0.25
			cavalry_power = 0.15
			cav_to_inf_ratio = 0.5
		}
		on_upgraded = { }
	}
}

shedungent = {
	start = 6878
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			tag = BA1
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			tag = BA1
		}
	}
	can_upgrade_trigger = {
		owner = {
			tag = BA1
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			fire_damage = 0.025
			technology_cost = -0.05
			prestige = 0.5
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			fire_damage = 0.05
			technology_cost = -0.1
			prestige = 1.0
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			fire_damage = 0.075
			technology_cost = -0.15
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

privateers_hold = {
	start = 6842
	
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			privateer_efficiency = 0.1
			embargo_efficiency = 0.1
			capture_ship_chance = 0.25
			blockade_efficiency = 0.1
			ship_durability = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			privateer_efficiency = 0.2
			embargo_efficiency = 0.2
			capture_ship_chance = 0.5
			blockade_efficiency = 0.2
			ship_durability = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			privateer_efficiency = 0.25
			embargo_efficiency = 0.25
			capture_ship_chance = 0.75
			blockade_efficiency = 0.25
			ship_durability = 0.25
		}
		on_upgraded = { }
	}
}

murtag_stronghold = {
	start = 7067
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		culture_group = orsimer_cg
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = orsimer_cg
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = orsimer_cg
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
		province_modifiers = { 
		}
		area_modifier = { 
			local_defensiveness = 0.1
		}
		country_modifiers = { 
			defensiveness = 0.1
			production_efficiency = 0.05
			siege_ability = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
			local_defensiveness = 0.2
		}
		country_modifiers = { 
			defensiveness = 0.2
			production_efficiency = 0.1
			siege_ability = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
			local_defensiveness = 0.3
		}
		country_modifiers = { 
			defensiveness = 0.25
			production_efficiency = 0.15
			siege_ability = 0.25
		}
		on_upgraded = { }
	}
}

honors_rest = {
	start = 1432
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		OR = {
			culture_group = orsimer_cg
			culture = breton
			culture_group = yokudo_redguard_cg
		}
		has_owner_accepted_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			culture_group = orsimer_cg
			culture = breton
			culture_group = yokudo_redguard_cg
		}
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		OR = {
			culture_group = orsimer_cg
			culture = breton
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			army_tradition_decay = 0.005
			discipline = 0.025
			prestige_decay = -0.005
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			army_tradition_decay = 0.01
			discipline = 0.04
			prestige_decay = -0.01
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
		}
		country_modifiers = { 
			army_tradition_decay = -0.015
			discipline = 0.05
			prestige_decay = -0.015
		}
		on_upgraded = { }
	}
}

frostbreak_fortress = {
	start = 6903
	
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
		upgrade_time = { months = 12 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = { 
		}
		area_modifier = { 
			local_defensiveness = 0.1
			max_attrition = 2
			local_hostile_attrition = 1
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
		}
		area_modifier = {
			local_defensiveness = 0.2
			max_attrition = 4
			local_hostile_attrition = 2
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 36 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = { 
		}
		area_modifier = {
			local_defensiveness = 0.25
			max_attrition = 6
			local_hostile_attrition = 3
		}
		country_modifiers = {  }
		on_upgraded = { }
	}
}

cryngaine_field = {
	start = 6952
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			has_won_war_against = {
				who = HB3
				max_years_since = 9999
			}
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			has_won_war_against = {
				who = HB3
				max_years_since = 9999
			}
		}
	}
	can_upgrade_trigger = {
		owner = {
			has_won_war_against = {
				who = HB3
				max_years_since = 9999
			}
		}
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
			army_tradition_from_battle = 0.25
			prestige_from_land = 0.25
			army_tradition_decay = -0.005
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			army_tradition_from_battle = 0.4
			prestige_from_land = 0.4
			army_tradition_decay = -0.01
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			army_tradition_from_battle = 0.5
			prestige_from_land = 0.5
			army_tradition_decay = -0.015
		}
		on_upgraded = { }
	}
}

bangkorai_garrison = {
	start = 6276
	
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
		upgrade_time = { months = 12 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = { 
		}
		area_modifier = { 
			local_defensiveness = 0.1
			local_garrison_size = 0.33
			garrison_growth = 0.25
			local_manpower_modifier = 0.05
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = {
			local_defensiveness = 0.2
			local_garrison_size = 0.66
			garrison_growth = 0.5
			local_manpower_modifier = 0.1
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 36 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = { 
			local_garrison_size = 1
			garrison_growth = 0.75
		}
		area_modifier = {
			local_defensiveness = 0.25
			local_manpower_modifier = 0.15
		}
		country_modifiers = {  }
		on_upgraded = { }
	}
}

argent_mine = {
	start = 1422
	
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
		upgrade_time = { months = 12 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = { 
			trade_goods_size_modifier = 0.1
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = {
			change_trade_goods = silver
		}
	}

	tier_2 = {
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = { 
			trade_goods_size_modifier = 0.2
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = {
			change_trade_goods = silver
		}
	}

	tier_3 = {
		upgrade_time = { months = 36 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			trade_goods_size_modifier = 0.25
		}
		area_modifier = { }
		country_modifiers = {  }
		on_upgraded = { 
			change_trade_goods = silver
		}
	}
}

stonetooth_fortress = {
	start = 6914
	
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
			trade_range_modifier = 0.25
			own_coast_naval_combat_bonus = 0.5
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
			trade_range_modifier = 0.4
			own_coast_naval_combat_bonus = 1
			trade_steering = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_range_modifier = 0.5
			own_coast_naval_combat_bonus = 1.5
			trade_steering = 0.25
		}
		on_upgraded = { }
	}
}

bank_of_daggerfall = {
	start = 1369
	
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
		area_modifier = { local_prosperity_growth = 0.05 }
		country_modifiers = {
			inflation_reduction = 0.1
			global_tax_modifier = 0.075
			interest = -0.5
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { local_prosperity_growth = 0.05 }
		country_modifiers = {
			inflation_reduction = 0.2
			global_tax_modifier = 0.15
			interest = -1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_prosperity_growth = 0.05  }
		country_modifiers = {
			inflation_reduction = 0.3
			global_tax_modifier = 0.25
			interest = -1.5
		}
		on_upgraded = { }
	}
}

temple_of_the_divines = {
	start = 6989
	
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
				religion = eight_divines 
				religion = nine_divines 
				religion = twelve_divines 
				religion = thirty_divines 
			}
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { 
			OR = { 
				religion = eight_divines 
				religion = nine_divines 
				religion = twelve_divines 
				religion = thirty_divines 
			}
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = { 
			OR = { 
				religion = eight_divines 
				religion = nine_divines 
				religion = twelve_divines 
				religion = thirty_divines 
			}
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
			missionaries = 1
			global_missionary_strength = 0.005
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
			missionaries = 1
			global_missionary_strength = 0.01
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
			missionaries = 2
			global_missionary_strength = 0.015
			tolerance_own = 3
		}
		on_upgraded = { }
	}
}

koeglin_lighthouse = {
	start = 6978
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { }

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = { }
	
	can_upgrade_trigger = { }

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
			global_naval_barrage_cost = -0.15
			blockade_efficiency = 0.1
			navy_tradition = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			own_coast_naval_combat_bonus = 1
			global_naval_barrage_cost = -0.25
			blockade_efficiency = 0.2
			navy_tradition = 0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			own_coast_naval_combat_bonus = 1
			global_naval_barrage_cost = -0.35
			blockade_efficiency = 0.3
			navy_tradition = 0.75
		}
		on_upgraded = { }
	}
}

the_sloshing_tankard = {
	start = 7045
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { }

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = { }
	
	can_upgrade_trigger = { }

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
			merc_maintenance_modifier = -0.1
			mercenary_discipline = 0.033
			mercenary_manpower = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			merc_maintenance_modifier = -0.2
			mercenary_discipline = 0.066
			mercenary_manpower = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			merc_maintenance_modifier = -0.3
			mercenary_discipline = 0.1
			mercenary_manpower = 0.15
		}
		on_upgraded = { }
	}
}

wyrd_tree = {
	start = 6932
	
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
			num_accepted_cultures = 1
			idea_cost = -0.05
			global_institution_spread = 0.1
			global_missionary_strength = 0.005
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
			idea_cost = -0.1
			global_institution_spread = 0.2
			global_missionary_strength = 0.01
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
			idea_cost = -0.15
			global_institution_spread = 0.3
			global_missionary_strength = 0.015
		}
		on_upgraded = { }
	}
}

morkul_stronghold = {
	start = 6892
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { culture_group = orsimer_cg }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { culture_group = orsimer_cg }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { culture_group = orsimer_cg }
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
		area_modifier = { local_defensiveness = 0.2 }
		country_modifiers = { 
			infantry_power = 0.05
			shock_damage = 0.033
			land_morale = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { local_defender_dice_roll_bonus = 1 }
		area_modifier = { local_defensiveness = 0.4 }
		country_modifiers = {
			infantry_power = 0.1
			shock_damage = 0.066
			land_morale = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { local_defender_dice_roll_bonus = 1 }
		area_modifier = { local_defensiveness = 0.6 }
		country_modifiers = { 
			infantry_power = 0.15
			shock_damage = 0.1
			land_morale = 0.15
		}
		on_upgraded = { }
	}
}

doomscrag = {
	start = 6871
	
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
			fire_damage_received = -0.025
			shock_damage_received = -0.025
			reserves_organisation = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			fire_damage_received = -0.05
			shock_damage_received = -0.05
			reserves_organisation = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			fire_damage_received = -0.075
			shock_damage_received = -0.075
			reserves_organisation = 0.3
		}
		on_upgraded = { }
	}
}

cath_bedraud = {
	start = 6859
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { }

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = { }

	can_upgrade_trigger = { }

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
			manpower_in_true_faith_provinces = 0.1
			hostile_attrition = 0.4
			global_missionary_strength = 0.005
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_in_true_faith_provinces = 0.2
			hostile_attrition = 0.8
			global_missionary_strength = 0.01
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_in_true_faith_provinces = 0.1
			hostile_attrition = 1.25
			global_missionary_strength = 0.015
		}
		on_upgraded = { }
	}
}

crypt_of_hearts = {
	start = 1409
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { }

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = { }

	can_upgrade_trigger = { }

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
			mercenary_discipline = 0.05
			infantry_power = 0.033
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			mercenary_discipline = 0.1
			infantry_power = 0.066
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			mercenary_discipline = 0.15
			infantry_power = 0.1
		}
		on_upgraded = { }
	}
}