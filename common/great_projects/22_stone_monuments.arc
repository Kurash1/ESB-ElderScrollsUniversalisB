#skyrim_apprentice_stone
#skyrim_atronach_stone
#skyrim_lady_stone
#skyrim_lord_stone
#skyrim_lover_stone
#skyrim_mage_stone
#skyrim_ritual_stone
#skyrim_serpent_stone
#skyrim_shadow_stone
#skyrim_steed_stone
#skyrim_thief_stone
#skyrim_tower_stone
#skyrim_warrior_stone

#cyrodiil_apprentice_stone
#cyrodiil_atronach_stone
#cyrodiil_lady_stone
#cyrodiil_lord_stone
#cyrodiil_lover_stone
#cyrodiil_mage_stone
#cyrodiil_ritual_stone
#cyrodiil_serpent_stone
#cyrodiil_shadow_stone
#cyrodiil_steed_stone
#cyrodiil_thief_stone
#cyrodiil_tower_stone
#cyrodiil_warrior_stone

#cyrodiil_aetherius_stone
#cyrodiil_dragon_stone
#cyrodiil_jode_stone
#cyrodiil_jone_stone
#cyrodiil_magnus_stone
#cyrodiil_nirn_stone
#cyrodiil_shezarr_stone
#cyrodiil_sithian_stone

cyrodiil_aetherius_stone = {
    start = 5670
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 2 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 2 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 2 }
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
			fire_damage_received = -0.02
			idea_cost = -0.05
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
			fire_damage_received = -0.04
			idea_cost = -0.075
			global_unrest = -2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			fire_damage_received = -0.05
			idea_cost = -0.10
			global_unrest = -3
		}
		on_upgraded = { }
	}
}
cyrodiil_dragon_stone = {
    start = 5902
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 7 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 7 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 7 }
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
			war_exhaustion = -0.01
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
			prestige = 1.0
			war_exhaustion = -0.02
			defensiveness = 0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			prestige = 1.5
			war_exhaustion = -0.03
			defensiveness = 0.25
		}
		on_upgraded = { }
	}
}
cyrodiil_jode_stone = {
    start = 1154
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 3 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 3 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 3 }
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
			shock_damage = 0.025
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
			shock_damage = 0.04
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			land_morale = 0.15
			shock_damage = 0.05
		}
		on_upgraded = { }
	}
}
cyrodiil_jone_stone = {
    start = 5661
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 1 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 1 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 1 }
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
			spy_offence = 0.05
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
			spy_offence = 0.10
			movement_speed = 0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			spy_offence = 0.15
			movement_speed = 0.1
		}
		on_upgraded = { }
	}
}
cyrodiil_magnus_stone = {
    start = 5415
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 5 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 5 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 5	}
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
			idea_cost = -0.05
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
			idea_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			technology_cost = -0.15
			idea_cost = -0.15
		}
		on_upgraded = { }
	}
}
cyrodiil_shezarr_stone  = {
    start = 5484
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { is_human_nation_trigger = yes government_rank = 6 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { is_human_nation_trigger = yes government_rank = 6 }
    }
    can_upgrade_trigger = {
		owner = { is_human_nation_trigger = yes government_rank = 6	}
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
			shock_damage_received = -0.02
			fire_damage_received = -0.02
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
			shock_damage_received = -0.04
			fire_damage_received = -0.04
			defensiveness = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			shock_damage_received = -0.05
			fire_damage_received = -0.05
			defensiveness = 0.25
		}
		on_upgraded = { }
	}
}

cyrodiil_sithian_stone  = {
    start = 5718
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
		owner = { government_rank = 4 }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
		owner = { government_rank = 4 }
    }
    can_upgrade_trigger = {
		owner = { government_rank = 4 }
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
			trade_efficiency = 0.05
			improve_relation_modifier = 0.05
			global_spy_defence = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			trade_efficiency = 0.1
			improve_relation_modifier = 0.1
			global_spy_defence = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			trade_efficiency = 0.15
			improve_relation_modifier = 0.15
			global_spy_defence = 0.15
		}
		on_upgraded = { }
	}
}

cyrodiil_apprentice_stone = {
    start = 5329
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
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
			all_power_cost = -0.05
			fire_damage = 0.05
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			all_power_cost = -0.075
			fire_damage = 0.075
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			all_power_cost = -0.1
			fire_damage = 0.1
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}
}
cyrodiil_atronach_stone = {
    start = 5359
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
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
			country_admin_power = 1
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
			country_admin_power = 1
			country_diplomatic_power = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			advisor_cost = -0.25
			country_admin_power = 1
			country_diplomatic_power = 1
			country_military_power = 1
		}
		on_upgraded = { }
	}
}
cyrodiil_lady_stone = {
    start = 1168
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
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
			tolerance_heretic = 1
			tolerance_heathen = 1
			tolerance_of_heretics_capacity = 1
			tolerance_of_heathens_capacity = 1
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
			tolerance_heretic = 2
			tolerance_heathen = 2
			tolerance_of_heretics_capacity = 2
			tolerance_of_heathens_capacity = 2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			tolerance_own = 3
			tolerance_heretic = 3
			tolerance_heathen = 3
			tolerance_of_heretics_capacity = 3
			tolerance_of_heathens_capacity = 3
		}
		on_upgraded = { }
	}
}
cyrodiil_lord_stone = {
    start = 5698
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
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
			monarch_lifespan = 0.05
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
			governing_capacity_modifier = 0.1
			monarch_lifespan = 0.1
			prestige = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			governing_capacity_modifier = 0.15
			monarch_lifespan = 0.15
			prestige = 1.5
		}
		on_upgraded = { }
	}
}
cyrodiil_lover_stone = {
    start = 5437
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
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
			diplomatic_reputation = 0.5
			improve_relation_modifier = 0.05
			idea_cost = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			diplomatic_reputation = 1
			improve_relation_modifier = 0.1
			idea_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			diplomatic_reputation = 1.5
			improve_relation_modifier = 0.15
			idea_cost = -0.15
		}
		on_upgraded = { }
	}
}
cyrodiil_mage_stone = {
    start = 5978
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
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
			siege_ability = 0.05
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
			technology_cost = -0.075
			siege_ability = 0.1
			fire_damage = 0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			technology_cost = -0.1
			siege_ability = 0.15
			fire_damage = 0.1
			leader_land_fire = 1
		}
		on_upgraded = { }
	}
}
cyrodiil_ritual_stone = {
    start = 5501
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
       owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
    }
    can_upgrade_trigger = {
        owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
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
			manpower_recovery_speed = 0.05
			war_exhaustion = -0.01
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
			manpower_recovery_speed = 0.1
			war_exhaustion = -0.02
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			global_manpower_modifier = 0.25
			manpower_recovery_speed = 0.15
			war_exhaustion = -0.03
		}
		on_upgraded = { }
	}
}
cyrodiil_serpent_stone = {
    start = 5469
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
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
			all_power_cost = -0.05
			improve_relation_modifier = -0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			all_power_cost = -0.075
			improve_relation_modifier = -0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			all_power_cost = -0.1
			improve_relation_modifier = -0.25
		}
		on_upgraded = { }
	}
}
cyrodiil_shadow_stone = {
    start = 6034
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
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
			discovered_relations_impact = -0.1
			rebel_support_efficiency = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			ae_impact = -0.1
			discovered_relations_impact = -0.2
			rebel_support_efficiency = 0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			ae_impact = -0.15
			discovered_relations_impact = -0.25
			rebel_support_efficiency = 0.75
		}
		on_upgraded = { }
	}
}
cyrodiil_steed_stone = {
    start = 5964
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
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
			loot_amount = 0.1
			movement_speed = 0.05
			raze_power_gain = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			loot_amount = 0.2
			movement_speed = 0.1
			raze_power_gain = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			loot_amount = 0.25
			movement_speed = 0.15
			raze_power_gain = 0.25
		}
		on_upgraded = { }
	}
}
cyrodiil_thief_stone = {
    start = 5855
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
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
			spy_offence = 0.1
			global_spy_defence = 0.1
			yearly_corruption = -0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			spy_offence = 0.2
			global_spy_defence = 0.2
			yearly_corruption = -0.04
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			spy_offence = 0.25
			global_spy_defence = 0.25
			yearly_corruption = -0.05
		}
		on_upgraded = { }
	}
}
cyrodiil_tower_stone = {
    start = 5541
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
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
			global_tax_modifier = 0.1
			spy_offence = 0.1
			global_monthly_devastation = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_tax_modifier = 0.2
			spy_offence = 0.2
			global_monthly_devastation = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			global_tax_modifier = 0.25
			spy_offence = 0.25
			global_monthly_devastation = -0.15
		}
		on_upgraded = { }
	}
}
cyrodiil_warrior_stone = {
    start = 5326
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
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
			discipline = 0.02
			land_morale = 0.05
			recover_army_morale_speed = 0.05
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
			land_morale = 0.1
			recover_army_morale_speed = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			discipline = 0.05
			land_morale = 0.15
			recover_army_morale_speed = 0.15
		}
		on_upgraded = { }
	}
}

skyrim_apprentice_stone = {
    start = 7301
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = apprentice_birthsign_mod }
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
			all_power_cost = -0.05
			fire_damage = 0.05
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			all_power_cost = -0.075
			fire_damage = 0.075
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			all_power_cost = -0.1
			fire_damage = 0.1
			fire_damage_received = 0.1 #Yes This is Correct
		}
		on_upgraded = { }
	}
}
skyrim_atronach_stone = {
    start = 2932
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = atronach_birthsign_mod }
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
			country_admin_power = 1
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
			country_admin_power = 1
			country_diplomatic_power = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			advisor_cost = -0.25
			country_admin_power = 1
			country_diplomatic_power = 1
			country_military_power = 1
		}
		on_upgraded = { }
	}
}
skyrim_lady_stone = {
    start = 3065
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lady_birthsign_mod }
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
			tolerance_heretic = 1
			tolerance_heathen = 1
			tolerance_of_heretics_capacity = 1
			tolerance_of_heathens_capacity = 1
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
			tolerance_heretic = 2
			tolerance_heathen = 2
			tolerance_of_heretics_capacity = 2
			tolerance_of_heathens_capacity = 2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			tolerance_own = 3
			tolerance_heretic = 3
			tolerance_heathen = 3
			tolerance_of_heretics_capacity = 3
			tolerance_of_heathens_capacity = 3
		}
		on_upgraded = { }
	}
}
skyrim_lord_stone = {
    start = 2691
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lord_birthsign_mod }
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
			monarch_lifespan = 0.05
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
			governing_capacity_modifier = 0.1
			monarch_lifespan = 0.1
			prestige = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			governing_capacity_modifier = 0.15
			monarch_lifespan = 0.15
			prestige = 1.5
		}
		on_upgraded = { }
	}
}
skyrim_lover_stone = {
    start = 1353
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = lover_birthsign_mod }
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
			diplomatic_reputation = 0.5
			improve_relation_modifier = 0.05
			idea_cost = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			diplomatic_reputation = 1
			improve_relation_modifier = 0.1
			idea_cost = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			diplomatic_reputation = 1.5
			improve_relation_modifier = 0.15
			idea_cost = -0.15
		}
		on_upgraded = { }
	}
}
skyrim_mage_stone = {
    start = 3070
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = mage_birthsign_mod }
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
			siege_ability = 0.05
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
			technology_cost = -0.075
			siege_ability = 0.1
			fire_damage = 0.075
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			technology_cost = -0.1
			siege_ability = 0.15
			fire_damage = 0.1
			leader_land_fire = 1
		}
		on_upgraded = { }
	}
}
skyrim_ritual_stone = {
    start = 7135
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
       owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
    }
    can_upgrade_trigger = {
        owner = { OR = { has_ruler_modifier = ritual_birthsign_aspect_charm_mod has_ruler_modifier = ritual_birthsign_aspect_expedition_mod has_ruler_modifier = ritual_birthsign_aspect_cunning_mod has_ruler_modifier = ritual_birthsign_aspect_knowledge_mod } }
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
			manpower_recovery_speed = 0.05
			war_exhaustion = -0.01
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
			manpower_recovery_speed = 0.1
			war_exhaustion = -0.02
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			global_manpower_modifier = 0.25
			manpower_recovery_speed = 0.15
			war_exhaustion = -0.03
		}
		on_upgraded = { }
	}
}
skyrim_serpent_stone = {
    start = 7114
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = serpent_birthsign_mod }
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
			all_power_cost = -0.05
			improve_relation_modifier = -0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			all_power_cost = -0.075
			improve_relation_modifier = -0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			all_power_cost = -0.1
			improve_relation_modifier = -0.25
		}
		on_upgraded = { }
	}
}
skyrim_shadow_stone = {
    start = 3124
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = shadow_birthsign_mod }
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
			discovered_relations_impact = -0.1
			rebel_support_efficiency = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			ae_impact = -0.1
			discovered_relations_impact = -0.2
			rebel_support_efficiency = 0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			ae_impact = -0.15
			discovered_relations_impact = -0.25
			rebel_support_efficiency = 0.75
		}
		on_upgraded = { }
	}
}
skyrim_steed_stone = {
    start = 7180
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = steed_birthsign_mod }
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
			loot_amount = 0.1
			movement_speed = 0.05
			raze_power_gain = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			loot_amount = 0.2
			movement_speed = 0.1
			raze_power_gain = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			loot_amount = 0.25
			movement_speed = 0.15
			raze_power_gain = 0.25
		}
		on_upgraded = { }
	}
}
skyrim_thief_stone = {
    start = 3070
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = thief_birthsign_mod }
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
			spy_offence = 0.1
			global_spy_defence = 0.1
			yearly_corruption = -0.02
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			spy_offence = 0.2
			global_spy_defence = 0.2
			yearly_corruption = -0.04
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			spy_offence = 0.25
			global_spy_defence = 0.25
			yearly_corruption = -0.05
		}
		on_upgraded = { }
	}
}
skyrim_tower_stone = {
    start = 2716
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = tower_birthsign_mod }
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
			global_tax_modifier = 0.1
			spy_offence = 0.1
			global_monthly_devastation = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_tax_modifier = 0.2
			spy_offence = 0.2
			global_monthly_devastation = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			global_tax_modifier = 0.25
			spy_offence = 0.25
			global_monthly_devastation = -0.15
		}
		on_upgraded = { }
	}
}
skyrim_warrior_stone = {
    start = 3070
    date = 54.1.1 time = { months = 0 }
    build_cost = defines.constants.minor_monument_price_tier1
    can_be_moved = no
    starting_tier = 0
    type = monument

    build_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
    }
    on_built = { }
    on_destroyed = { }
    can_use_modifiers_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
    }
    can_upgrade_trigger = {
        owner = { has_ruler_modifier = warrior_birthsign_mod }
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
			discipline = 0.02
			land_morale = 0.05
			recover_army_morale_speed = 0.05
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
			land_morale = 0.1
			recover_army_morale_speed = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {}
		country_modifiers = { 
			discipline = 0.05
			land_morale = 0.15
			recover_army_morale_speed = 0.15
		}
		on_upgraded = { }
	}
}