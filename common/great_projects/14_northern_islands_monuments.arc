# black_bay
# shore_of_bones
# forgotten_temple
# smugglers_market
# winter_gardens

winter_gardens = {
	start = 3524
	
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
			advisor_cost = -0.1
			prestige = 0.5
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
			advisor_cost = -0.2
			prestige = 1.0
			development_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			advisor_cost = -0.25
			prestige = 1.5
			own_coast_naval_combat_bonus = 1.0
			development_cost = -0.15
		}
		on_upgraded = { }
	}
}

smugglers_market = {
	start = 3495
	
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
			privateer_efficiency = 0.25
			trade_efficiency = 0.1
			may_perform_slave_raid = yes
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			privateer_efficiency = 0.4
			trade_efficiency = 0.2
			may_perform_slave_raid = yes
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			privateer_efficiency = 0.5
			trade_efficiency = 0.25
			may_perform_slave_raid = yes
		}
		on_upgraded = { }
	}
}

forgotten_temple = {
	start = 794
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { religion_group = occult_group }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { religion_group = occult_group }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { religion_group = occult_group }
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
			tolerance_own = 1
			defensiveness = 0.1
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
			tolerance_own = 2
			defensiveness = 0.2
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
			missionaries = 1
			global_missionary_strength = 0.03
			tolerance_own = 3
			defensiveness = 0.25
		}
		on_upgraded = { }
	}
}

shore_of_bones = {
	start = 2211
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = { culture_group = transpandomaic_cg }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { culture_group = transpandomaic_cg }
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		owner = { culture_group = transpandomaic_cg }
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
			global_manpower_modifier = 0.1
			land_forcelimit_modifier = 0.1
			land_attrition = -0.05
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
			global_manpower_modifier = 0.2
			land_forcelimit_modifier = 0.2
			land_attrition = -0.1
			manpower_recovery_speed = 0.1
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
			land_forcelimit_modifier = 0.25
			land_attrition = -0.15
			manpower_recovery_speed = 0.15
		}
		on_upgraded = { }
	}
}

black_bay = {
	start = 800
	
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
			naval_forcelimit_modifier = 0.1
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
			naval_forcelimit_modifier = 0.2
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
			naval_forcelimit_modifier = 0.25
			global_sailors_modifier = 0.25
		}
		on_upgraded = { }
	}
}