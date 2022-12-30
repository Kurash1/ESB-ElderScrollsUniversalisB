# jylkurfyk_shipyard
# dragon_sanctuary
# the_frostwood
# shivering_glacier

# crane_shore
# jarnfell_pass

# great_runestones
# dead_pass
# naugrheim
# shor_statue

shor_statue = {
    start = 367
    
    date = 54.01.01
    
    time = { months = 0 }
    
    build_cost = defines.constants.major_monument_price_tier1 
    can_be_moved = no
    move_days_per_unit_distance = 10
    starting_tier = 0
    
    type = monument

    build_trigger = { 
		owner = {
			has_personal_deity = Shor
		}
	}

    on_built = { }
    on_destroyed = { }

    can_use_modifiers_trigger = { 
		owner = {
			has_personal_deity = Shor
		}
	}
    can_upgrade_trigger = { 
		owner = {
			has_personal_deity = Shor
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
			religious_unity = 0.05
			global_missionary_strength = 0.01
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
			religious_unity = 0.1
			global_missionary_strength = 0.02
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
			religious_unity = 0.15
			global_missionary_strength = 0.03
		}
        on_upgraded = { }
    }
}

dead_pass = {
    start = 2443
    
    date = 54.01.01
    
    time = { months = 0 }
    
    build_cost = defines.constants.major_monument_price_tier1 
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
			defensiveness = 0.1
			hostile_attrition = 0.5
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
			hostile_attrition = 1.0
		}
        on_upgraded = { }
    }

    tier_3 = {
        upgrade_time = { months = 360 }
        cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
        province_modifiers = { }
        area_modifier = { }
        country_modifiers = { 
			global_defender_dice_roll_bonus = 1
			defensiveness = 0.3
			hostile_attrition = 1.5
		}
        on_upgraded = { }
    }
}

great_runestones = {
	start = 384
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.major_monument_price_tier1 
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = nordic_pantheon
		has_owner_religion = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = nordic_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = nordic_pantheon
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
			prestige = 0.5
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
			tolerance_own = 2
			prestige = 1.0
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
			tolerance_own = 3
			prestige = 1.5
			land_morale = 0.15
		}
		on_upgraded = { }
	}
}

jarnfell_pass = {
	start = 484
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.major_monument_price_tier1 
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
			local_defensiveness = 0.25
			local_hostile_movement_speed = -0.25
		}
		country_modifiers = { 
			hostile_attrition = 0.33
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { 
		}
		area_modifier = { 
			local_defensiveness = 0.4
			local_hostile_movement_speed = -0.4
		}
		country_modifiers = { 
			hostile_attrition = 0.66
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
		}
		country_modifiers = { 
			hostile_attrition = 1
		}
		on_upgraded = { }
	}
}

crane_shore = {
	start = 2228
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.major_monument_price_tier1 
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier1 }
		province_modifiers = {
			local_development_cost = -0.05
			trade_goods_size_modifier = 0.05 
			trade_value_modifier = 0.05
		}
		area_modifier = {
			local_prosperity_growth = 0.05
			local_defensiveness = 0.05
		}
		country_modifiers = { 
			global_colonial_growth = 10
			range = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = {
			local_development_cost = -0.10
			trade_goods_size_modifier = 0.10 
			trade_value_modifier = 0.10
		}
		area_modifier = {
			local_prosperity_growth = 0.075
			local_defensiveness = 0.10
		}
		country_modifiers = { 
			global_colonial_growth = 25
			range = 0.25
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = {
			local_development_cost = -0.15
			trade_goods_size_modifier = 0.15 
			trade_value_modifier = 0.15
		}
		area_modifier = {
			local_prosperity_growth = 0.1
			local_defensiveness = 0.15
		}
		country_modifiers = { 
			colonists = 1
			global_colonial_growth = 50
			range = 0.5
		}
		on_upgraded = { }
	}
}

shivering_glacier = {
	start = 2314
	
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
			prestige_from_land = 0.1
			land_attrition = -0.05
			development_cost = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige_from_land = 0.2
			land_attrition = -0.1
			development_cost = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige_from_land = 0.35
			land_attrition = -0.15
			development_cost = -0.35
		}
		on_upgraded = { }
	}
}

the_frostwood = {
	start = 359
	
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
			prestige = 0.25
			reinforce_speed = 0.1
			global_supply_limit_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige = 0.5
			reinforce_speed = 0.2
			global_supply_limit_modifier = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 0.75
			reinforce_speed = 0.33
			global_supply_limit_modifier = 0.33
		}
		on_upgraded = { }
	}
}

dragon_sanctuary = {
	start = 1572
	
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
				religion = dragon_cult
				religion = miraak_cult
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
				religion = dragon_cult
				religion = miraak_cult
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
				religion = dragon_cult
				religion = miraak_cult
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
			tolerance_own = 1
			tolerance_heretic = -3
			tolerance_heathen = -4
			global_missionary_strength = 0.01
			prestige_per_development_from_conversion = 0.33
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			missionaries = 2
			tolerance_own = 2
			tolerance_heretic = -4
			tolerance_heathen = -6
			global_missionary_strength = 0.02
			prestige_per_development_from_conversion = 0.66
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
			tolerance_own = 3
			tolerance_heretic = -6
			tolerance_heathen = -8
			global_missionary_strength = 0.03
			prestige_per_development_from_conversion = 1
			all_power_cost = -0.05
		}
		on_upgraded = { }
	}
}

jylkurfyk_shipyard = {
	start = 2236
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			NOT = {
				culture_group = high_elves_cg
				culture_group = maormer_cg
				culture_group = snow_elves_cg
				culture_group = dwemer_cg
				culture_group = orsimer_cg
				culture_group = bosmer_cg
				culture_group = velothi_cg
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
			NOT = {
				culture_group = high_elves_cg
				culture_group = maormer_cg
				culture_group = snow_elves_cg
				culture_group = dwemer_cg
				culture_group = orsimer_cg
				culture_group = bosmer_cg
				culture_group = velothi_cg
			}
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			NOT = {
				culture_group = high_elves_cg
				culture_group = maormer_cg
				culture_group = snow_elves_cg
				culture_group = dwemer_cg
				culture_group = orsimer_cg
				culture_group = bosmer_cg
				culture_group = velothi_cg
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
			prestige = 0.25
			mercenary_discipline = 0.033
			naval_attrition = -0.1
			mercenary_manpower = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			prestige = 0.5
			mercenary_discipline = 0.066
			naval_attrition = -0.2
			mercenary_manpower = 0.15
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige = 0.75
			mercenary_discipline = 0.1
			naval_attrition = -0.3
			mercenary_manpower = 0.25
		}
		on_upgraded = { }
	}
}