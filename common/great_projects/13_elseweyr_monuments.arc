# pridehome_temple
# senchal_palace
# ashen_scar
# weeping_scar
# temple_of_the_two_moons
# temple_of_the_mourning_springs
# laughing_moons_plantation
# anequina_aqueduct
# moon_gate_of_anequina
# halls_of_colossus

#4850#jodes_light
#5159#temple_of_the_dark_moon
#5156#temple_of_the_crescent_moons
#5160#temple_of_two_moons_dance
#5151#moonlit_cove
#5086#desert_wind_adeptorium
#931#dragonhold
#5132#fort_sphinxmoth

fort_sphinxmoth = {
	start = 5132
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
		fort_level = 1
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		fort_level = 1
	}
	can_upgrade_trigger = {
		fort_level = 1
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
			months = 48
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = { 
			max_attrition = 2
		}
		area_modifier = { 
			local_defensiveness = 0.25
			local_hostile_attrition = 2
		}
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = {
			months = 60
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = {
			max_attrition = 4
		}
		area_modifier = {
			local_defensiveness = 0.4
			local_hostile_attrition = 4
		}
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = {
			months = 72
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier3 
		}
		province_modifiers = { 
			max_attrition = 6
		}
		area_modifier = { 
			local_defensiveness = 0.5
			local_hostile_attrition = 6
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

dragonhold = {
	start = 931
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
		OR = {
			religion = dragon_cult
			religion = miraak_cult
		}
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			religion = dragon_cult
			religion = miraak_cult
		}
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		OR = {
			religion = dragon_cult
			religion = miraak_cult
		}
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
			technology_cost = -0.1
			idea_cost = -0.1
			all_power_cost = -0.05
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
			technology_cost = -0.2
			idea_cost = -0.2
			all_power_cost = -0.075
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
			technology_cost = -0.25
			idea_cost = -0.25
			all_power_cost = -0.1
		}
		on_upgraded = { }
	}
}

desert_wind_adeptorium = {
	start = 5086
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
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
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
			envoy_travel_time = -0.1
			reform_progress_growth = 0.05
			build_time = -0.1
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
			envoy_travel_time = -0.2
			reform_progress_growth = 0.1
			build_time = -0.2
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
			envoy_travel_time = -0.25
			reform_progress_growth = 0.15
			build_time = -0.25
		}
		on_upgraded = { }
	}
}

moonlit_cove = {
	start = 5151
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
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
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
			privateer_efficiency = 0.25
			global_trade_goods_size_modifier = 0.05
			global_trade_power = 0.05
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
			privateer_efficiency = 0.4
			global_trade_goods_size_modifier = 0.1
			global_trade_power = 0.1
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
			privateer_efficiency = 0.5
			global_trade_goods_size_modifier = 0.15
			global_trade_power = 0.15
		}
		on_upgraded = { }
	}
}

temple_of_two_moons_dance = {
	start = 5160
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
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
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
			movement_speed = 0.05
			reinforce_speed = 0.1
			manpower_recovery_speed = 0.05
			recover_army_morale_speed = 0.05
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
			movement_speed = 0.075
			reinforce_speed = 0.2
			manpower_recovery_speed = 0.1
			recover_army_morale_speed = 0.1
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
			movement_speed = 0.1
			reinforce_speed = 0.25
			manpower_recovery_speed = 0.15
			recover_army_morale_speed = 0.15
		}
		on_upgraded = { }
	}
}

temple_of_the_crescent_moons = {
	start = 5156
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
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
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
			shock_damage = 0.05
			army_tradition = 0.5
			infantry_power = 0.05
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
			shock_damage = 0.075
			army_tradition = 1
			infantry_power = 0.075
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
			shock_damage = 0.1
			army_tradition = 1.5
			infantry_power = 0.1
		}
		on_upgraded = { }
	}
}

temple_of_the_dark_moon = {
	start = 5159
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
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
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
			yearly_corruption = -0.01
			global_unrest = -2
			prestige = 0.5
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
			yearly_corruption = -0.02
			global_unrest = -4
			prestige = 1
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
			yearly_corruption = -0.03
			global_unrest = -5
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

jodes_light = {
	start = 4850
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
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
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
			tolerance_own = 1
			global_missionary_strength = 0.01
			religious_unity = 0.05
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
			tolerance_own = 2
			global_missionary_strength = 0.02
			religious_unity = 0.1
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
			tolerance_own = 3
			global_missionary_strength = 0.03
			religious_unity = 0.15
		}
		on_upgraded = { }
	}
}

moon_gate_of_anequina = {
	start = 5296
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
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
			prestige = 0.5
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
			global_missionary_strength = 0.02
			prestige = 1.0
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
			missionaries = 1
			global_missionary_strength = 0.03
			prestige = 1.5
			global_unrest = -5
		}
		on_upgraded = { }
	}
}

temple_of_the_mourning_springs = {
	start = 5157
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
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
			ae_impact = -0.05
			backrow_artillery_damage = 0.1
			fire_damage = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			ae_impact = -0.10
			backrow_artillery_damage = 0.2
			fire_damage = 0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			ae_impact = -0.15
			backrow_artillery_damage = 0.25
			fire_damage = 0.1
		}
		on_upgraded = { }
	}
}

temple_of_the_two_moons = {
	start = 900
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion =khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion =khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		religion =khajiiti_pantheon
		has_owner_religion = yes
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
			tolerance_own = 1
			spy_offence = 0.10
			shock_damage = 0.05
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
			spy_offence = 0.20
			shock_damage = 0.10
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
			spy_offence = 0.25
			shock_damage = 0.15
		}
		on_upgraded = { }
	}
}

weeping_scar = {
	start = 5088
	
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
				primary_culture = vampire 
				religion = molag_bal_cult 
				accepted_culture = vampire 
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
				primary_culture = vampire 
				religion = molag_bal_cult 
				accepted_culture = vampire 
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
				primary_culture = vampire 
				religion = molag_bal_cult 
				accepted_culture = vampire 
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
			movement_speed = 0.05
			discipline = 0.02
			defensiveness = 0.10
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
			movement_speed = 0.10
			discipline = 0.04
			defensiveness = 0.20
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
			movement_speed = 0.15
			leader_land_shock = 1
			discipline = 0.05
			defensiveness = 0.25
			hostile_attrition = 1.5
		}
		on_upgraded = { }
	}
}

ashen_scar = {
	start = 907
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon
		has_owner_religion = yes
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
			global_spy_defence = 0.1
			prestige = 0.5
			land_morale = 0.1
			devotion = 0.5
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_spy_defence = 0.20
			prestige = 1.0
			land_morale = 0.20
			devotion = 1.0
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_spy_defence = 0.25
			prestige = 1.5
			land_morale = 0.25
			devotion = 1.5
		}
		on_upgraded = { }
	}
}

senchal_palace = {
	start = 5117
	
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
			legitimacy = 0.5
			governing_capacity_modifier = 0.05
			trade_efficiency = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			legitimacy = 1.0
			governing_capacity_modifier = 0.10
			trade_efficiency = 0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			legitimacy = 1.5
			governing_capacity_modifier = 0.15
			trade_efficiency = 0.25
		}
		on_upgraded = { }
	}
}

pridehome_temple = {
	start = 5163
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		religion = khajiiti_pantheon 
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = khajiiti_pantheon 
		has_owner_religion = yes
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		religion = khajiiti_pantheon 
		has_owner_religion = yes
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
			tolerance_own = 0.5
			movement_speed = 0.05
			siege_ability = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			tolerance_own = 1.0
			movement_speed = 0.10
			siege_ability = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			tolerance_own = 1.5
			movement_speed = 0.15
			siege_ability = 0.15
		}
		on_upgraded = { }
	}
}

laughing_moons_plantation = {
	start = 5160
	
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
			global_trade_goods_size_modifier = 0.05 
			production_efficiency = 0.05
			trade_steering = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_trade_goods_size_modifier = 0.10
			production_efficiency = 0.10
			trade_steering = 0.10
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
			production_efficiency = 0.15
			merchants = 1
			trade_steering = 0.15
		}
		on_upgraded = { }
	}
}

anequina_aqueduct = {
	start = 5229
	
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
			development_cost = -0.05
			build_cost = -0.1
			global_monthly_devastation = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			development_cost = -0.10
			build_cost = -0.20
			global_monthly_devastation = -0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			development_cost = -0.15
			build_cost = -0.25
			global_monthly_devastation = -0.25
		}
		on_upgraded = { }
	}
}

halls_of_colossus = {
	start = 5180
	
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
			leader_siege = 1 
			siege_ability = 0.1
			artillery_levels_available_vs_fort = 1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			leader_siege = 2
			siege_ability = 0.2
			artillery_levels_available_vs_fort = 2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			leader_siege = 3 
			siege_ability = 0.25
			artillery_levels_available_vs_fort = 3
		}
		on_upgraded = { }
	}
}