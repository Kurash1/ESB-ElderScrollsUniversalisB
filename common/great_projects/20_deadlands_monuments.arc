# igneous_keep
# knives_of_discord
# smelted_hunting_grounds
# hollowed_caverns
# blazzing_coastline

#3872#ganonah

ganonah = {
	start = 3872
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
		culture_group = daedra_cg
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = daedra_cg
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = daedra_cg
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
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
			army_tradition = 0.5
			state_maintenance_modifier = -0.05
			reinforce_speed = 0.1
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
			army_tradition = 1
			state_maintenance_modifier = -0.1
			reinforce_speed = 0.2
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
			army_tradition = 1.5
			state_maintenance_modifier = -0.15
			reinforce_speed = 0.25
		}
		on_upgraded = { }
	}
}

blazzing_coastline = {
	start = 4143
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { 
			is_free_or_tributary_trigger = yes
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
			is_free_or_tributary_trigger = yes
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { 
			is_free_or_tributary_trigger = yes
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
		country_modifiers = { all_power_cost = -0.025 }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { all_power_cost = -0.05 }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { all_power_cost = -0.075 }
		on_upgraded = { }
	}
}

hollowed_caverns = {
	start = 4151
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { 
			is_free_or_tributary_trigger = yes
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
			is_free_or_tributary_trigger = yes
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { 
			is_free_or_tributary_trigger = yes
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
			movement_speed = 0.05
			build_cost = -0.1
			build_time = -0.1
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
			build_cost = -0.2
			build_time = -0.2
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
			build_cost = -0.25
			build_time = -0.25
		}
		on_upgraded = { }
	}
}

smelted_hunting_grounds = {
	start = 4337
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { 
			num_of_cavalry = 10
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
			num_of_cavalry = 10
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { 
			num_of_cavalry = 10
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
			cavalry_flanking = 0.25
			cav_to_inf_ratio = 0.25
			cavalry_power = 0.05
			movement_speed = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			cavalry_flanking = 0.4
			cav_to_inf_ratio = 0.4
			cavalry_power = 0.1
			movement_speed = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			cavalry_flanking = 0.5
			cav_to_inf_ratio = 0.5
			cavalry_power = 0.15
			movement_speed = 0.15
		}
		on_upgraded = { }
	}
}

knives_of_discord = {
	start = 3879
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { 
			religion = mehrunes_dagon_cult
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
			religion = mehrunes_dagon_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { 
			religion = mehrunes_dagon_cult
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
			land_morale = 0.05
			artillery_power = 0.05
			backrow_artillery_damage = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			land_morale = 0.1
			artillery_power = 0.1
			backrow_artillery_damage = 0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			land_morale = 0.15
			artillery_power = 0.15
			backrow_artillery_damage = 0.5
		}
		on_upgraded = { }
	}
}

igneous_keep = {
	start = 4077
	
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
				culture_group = void_cg
				culture_group = daedra_cg
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
				culture_group = void_cg
				culture_group = daedra_cg
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
				culture_group = void_cg
				culture_group = daedra_cg
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
			administrative_efficiency = 0.075
			governing_capacity_modifier = 0.10
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			administrative_efficiency = 0.05
			governing_capacity_modifier = 0.05
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			administrative_efficiency = 0.1
			governing_capacity_modifier = 0.15
		}
		on_upgraded = { }
	}
}

###Deadlands Caves###

hate_tunnels = {
    type = canal
    
	start = 3864

	date = 54.01.01
	
	can_be_moved = no
	move_days_per_unit_distance = 10
    
    build_cost = 150
	time = {
		months = 12
	}

	starting_tier = 1

    # Construction
	build_trigger = {
        FROM = {
			owns_or_vassal_of = 3864
		}
	}
	on_built = {
		add_canal = hate_tunnels
	}
	on_destroyed = {
		remove_canal = hate_tunnels
	}
    
    # Conditions
	can_use_modifiers_trigger = {
		FROM = {
			owns_or_vassal_of = 3864
		}
	}
	can_upgrade_trigger = {
		FROM = {
			owns_or_vassal_of = 3864
		}
	}
	keep_trigger = { always = yes }

	# Tiers
	tier_0 = {
		upgrade_time = {
			months = 12
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
            
		}
		area_modifier = {
            
		}
		country_modifiers = {
            
		}
		on_upgraded = {
		}
	}
	tier_1 = {
		upgrade_time = {
			months = 32 # Tier 1 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 # Tier 3 Cost
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.25
		}
		area_modifier = {            
            local_prosperity_growth = 0.05
		}
		country_modifiers = {
            production_efficiency = 0.075
			movement_speed = 0.075
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 64 # Tier 2 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.50
		}
		area_modifier = {            
            local_prosperity_growth = 0.15
		}
		country_modifiers = {
            production_efficiency = 0.05
			movement_speed = 0.05
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 120 # Tier 3 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.75
		}
		area_modifier = {            
            local_prosperity_growth = 0.25
		}
		country_modifiers = {
            production_efficiency = 0.075
			movement_speed = 0.075
		}
		on_upgraded = {
		}
	}
}

molten_halls = {
    type = canal
    
	start = 3768

	date = 54.01.01
	
	can_be_moved = no
	move_days_per_unit_distance = 10
    
    build_cost = 150
	time = {
		months = 12
	}

	starting_tier = 1

    # Construction
	build_trigger = {
        FROM = {
			owns_or_vassal_of = 3768
		}
	}
	on_built = {
		add_canal = molten_halls
	}
	on_destroyed = {
		remove_canal = molten_halls
	}
    
    # Conditions
	can_use_modifiers_trigger = {
		FROM = {
			owns_or_vassal_of = 3768
		}
	}
	can_upgrade_trigger = {
		FROM = {
			owns_or_vassal_of = 3768
		}
	}
	keep_trigger = { always = yes }

	# Tiers
	tier_0 = {
		upgrade_time = {
			months = 12
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
            
		}
		area_modifier = {
            
		}
		country_modifiers = {
            
		}
		on_upgraded = {
		}
	}
	tier_1 = {
		upgrade_time = {
			months = 32 # Tier 1 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 # Tier 3 Cost
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.25
		}
		area_modifier = {            
            local_prosperity_growth = 0.05
		}
		country_modifiers = {
            production_efficiency = 0.025
			movement_speed = 0.025
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 64 # Tier 2 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.50
		}
		area_modifier = {            
            local_prosperity_growth = 0.15
		}
		country_modifiers = {
            production_efficiency = 0.05
			movement_speed = 0.05
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 120 # Tier 3 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.75
		}
		area_modifier = {            
            local_prosperity_growth = 0.25
		}
		country_modifiers = {
            production_efficiency = 0.075
			movement_speed = 0.075
		}
		on_upgraded = {
		}
	}
}

mire_of_ash = {
    type = canal
    
	start = 4314

	date = 54.01.01
	
	can_be_moved = no
	move_days_per_unit_distance = 10
    
    build_cost = 150
	time = {
		months = 12
	}

	starting_tier = 1

    # Construction
	build_trigger = {
        FROM = {
			owns_or_vassal_of = 4314
		}
	}
	on_built = {
		add_canal = mire_of_ash
	}
	on_destroyed = {
		remove_canal = mire_of_ash
	}
    
    # Conditions
	can_use_modifiers_trigger = {
		FROM = {
			owns_or_vassal_of = 4314
		}
	}
	can_upgrade_trigger = {
		FROM = {
			owns_or_vassal_of = 4314
		}
	}
	keep_trigger = { always = yes }

	# Tiers
	tier_0 = {
		upgrade_time = {
			months = 12
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
            
		}
		area_modifier = {
            
		}
		country_modifiers = {
            
		}
		on_upgraded = {
		}
	}
	tier_1 = {
		upgrade_time = {
			months = 32 # Tier 1 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 # Tier 3 Cost
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.25
		}
		area_modifier = {            
            local_prosperity_growth = 0.05
		}
		country_modifiers = {
            production_efficiency = 0.025
			movement_speed = 0.025
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 64 # Tier 2 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.50
		}
		area_modifier = {            
            local_prosperity_growth = 0.15
		}
		country_modifiers = {
            production_efficiency = 0.05
			movement_speed = 0.05
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 120 # Tier 3 Time
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
        province_modifiers = {
			local_friendly_movement_speed = 0.75
		}
		area_modifier = {            
            local_prosperity_growth = 0.25
		}
		country_modifiers = {
            production_efficiency = 0.075
			movement_speed = 0.075
		}
		on_upgraded = {
		}
	}
}