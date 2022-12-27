#port_of_arch
#hattu_mountain
#high_desert
#orichalic_tower

orichalic_tower = {
	start = 340
	
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
			shock_damage = 0.05
			culture_conversion_cost = -0.1
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
			shock_damage = 0.1
			culture_conversion_cost = -0.2
			infantry_power = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			shock_damage = 0.15
			culture_conversion_cost = -0.25
			infantry_power = 0.15
		}
		on_upgraded = { }
	}
}

port_of_arch = {
	start = 350
	
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
			naval_forcelimit_modifier = 0.1
			trade_efficiency = 0.1
			naval_morale = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			naval_forcelimit_modifier = 0.2
			trade_efficiency = 0.2
			naval_morale = 0.2
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
			trade_efficiency = 0.25
			naval_morale = 0.25
		}
		on_upgraded = { }
	}
}

hattu_mountain = {
	start = 2122
	
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
			prestige = 0.5
			land_morale = 0.05
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
			prestige = 1.0
			land_morale = 0.10
			shock_damage = 0.075
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
			land_morale = 0.15
			shock_damage = 0.1
		}
		on_upgraded = { }
	}
}

high_desert = {
	start = 2175
	
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
			development_cost = -0.05
			hostile_attrition = 0.5
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
			development_cost = -0.10
			hostile_attrition = 1.0
			movement_speed = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			development_cost = -0.10
			hostile_attrition = 1.5
			movement_speed = 0.15
		}
		on_upgraded = { }
	}
}