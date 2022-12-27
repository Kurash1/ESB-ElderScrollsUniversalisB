# orgnums_palace
# port_humbled
# sun_kissed_shores

orgnums_palace = {
	start = 224
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		religion = serpant_king
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		religion = serpant_king
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		religion = serpant_king
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
			may_perform_slave_raid = yes
			naval_morale = 0.1
			leader_naval_manuever = 1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			may_perform_slave_raid = yes
			naval_morale = 0.2
			leader_naval_shock = 1
			leader_naval_manuever = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			may_perform_slave_raid = yes
			naval_morale = 0.25
			leader_naval_fire = 1
			leader_naval_shock = 1
			leader_naval_manuever = 1
		}
		on_upgraded = { }
	}
}

port_humbled = {
	start = 2076
	
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
			trade_efficiency = 0.1
			naval_maintenance_modifier = -0.1
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
			trade_efficiency = 0.2
			naval_maintenance_modifier = -0.2
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
			trade_efficiency = 0.25
			merchants = 1
			naval_maintenance_modifier = -0.25
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

sun_kissed_shores = {
	start = 2021
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = {
		culture_group = maormer_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = maormer_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		} 
	}
	can_upgrade_trigger = {
		culture_group = maormer_cg
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
			global_unrest = -2
			sailors_recovery_speed = 0.1
			development_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_unrest = -4
			sailors_recovery_speed = 0.2
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
			global_unrest = -5
			sailors_recovery_speed = 0.25
			development_cost = -0.15
		}
		on_upgraded = { }
	}
}