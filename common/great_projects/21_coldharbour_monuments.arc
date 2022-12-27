# chapel_of_light
# the_everfull_flagon
# font_of_shcems
# the_vile_laboratory
# tower_of_lies
# black_gold_tower

#2970#haj_uxith
#2710#hollow_city

hollow_city = {
	start = 2710
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
		culture = hollow
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
		culture = hollow
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture = hollow
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_development_cost = -0.05
			trade_goods_size_modifier = 0.05 
			trade_value_modifier = 0.05
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.05
			local_defensiveness = 0.05
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_development_cost = -0.10
			trade_goods_size_modifier = 0.10 
			trade_value_modifier = 0.10
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.075
			local_defensiveness = 0.10
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_development_cost = -0.15
			trade_goods_size_modifier = 0.15 
			trade_value_modifier = 0.15
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.1
			local_defensiveness = 0.15
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

haj_uxith = {
	start = 2970
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
		culture_group = marsh_cg
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
		culture_group = marsh_cg
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = marsh_cg
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_development_cost = -0.05
			trade_goods_size_modifier = 0.05 
			trade_value_modifier = 0.05
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.05
			local_defensiveness = 0.05
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_development_cost = -0.10
			trade_goods_size_modifier = 0.10 
			trade_value_modifier = 0.10
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.075
			local_defensiveness = 0.10
		}
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_development_cost = -0.15
			trade_goods_size_modifier = 0.15 
			trade_value_modifier = 0.15
			fort_level = 1
		}
		area_modifier = {
			local_prosperity_growth = 0.1
			local_defensiveness = 0.15
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

black_gold_tower = {
	start = 3188
	
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
			harsh_treatment_cost = -0.25
			infantry_cost = -0.1
			land_forcelimit_modifier = 0.1
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
			infantry_cost = -0.2
			land_forcelimit_modifier = 0.2
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
			infantry_cost = -0.25
			land_forcelimit_modifier = 0.25
		}
		on_upgraded = { }
	}
}

tower_of_lies = {
	start = 2744
	
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
				culture_group = daedra_cg
				culture_group = dead_cg
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
				culture_group = daedra_cg
				culture_group = dead_cg
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
				culture_group = daedra_cg
				culture_group = dead_cg
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
			harsh_treatment_cost = -0.2
			max_absolutism = 5
			global_unrest = -1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			harsh_treatment_cost = -0.4
			max_absolutism = 10
			global_unrest = -2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			harsh_treatment_cost = -0.6
			max_absolutism = 15
			global_unrest = -4
		}
		on_upgraded = { }
	}
}

the_vile_laboratory = {
	start = 2903
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		OR = {
			culture_group = daedra_cg
			culture_group = dwemer_cg
		}
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			culture_group = daedra_cg
			culture_group = dwemer_cg
		}
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		OR = {
			culture_group = daedra_cg
			culture_group = dwemer_cg
		}
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
			technology_cost = -0.05
			global_institution_spread = 0.1
			reform_progress_growth = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			technology_cost = -0.1
			global_institution_spread = 0.2
			reform_progress_growth = 0.15
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
			global_institution_spread = 0.33
			reform_progress_growth = 0.25
		}
		on_upgraded = { }
	}
}


font_of_shcems = {
	start = 2880
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { 
			religion = molag_bal_cult
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
			religion = molag_bal_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { 
			religion = molag_bal_cult
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
			spy_offence = 0.25
			global_spy_defence = 0.1
			improve_relation_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			spy_offence = 0.4
			global_spy_defence = 0.2
			improve_relation_modifier = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			spy_offence = 0.5
			diplomats = 1
			global_spy_defence = 0.25
			improve_relation_modifier = 0.25 
		}
		on_upgraded = { }
	}
}

the_everfull_flagon = {
	start = 2953
	
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
			global_own_trade_power = 0.05 
			caravan_power = 0.05
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
			global_own_trade_power = 0.1
			caravan_power = 0.1
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
			global_own_trade_power = 0.15 
			caravan_power = 0.15
			global_unrest = -5
		}
		on_upgraded = { }
	}
}

chapel_of_light = {
	start = 2710
	
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
			religious_unity = 0.05
			global_missionary_strength = 0.01
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
			religious_unity = 0.1
			global_missionary_strength = 0.02
			land_morale = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			religious_unity = 0.15
			global_missionary_strength = 0.03
			missionaries = 1
			land_morale = 0.15
		}
		on_upgraded = { }
	}
}