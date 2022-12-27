# xinchei_konu
# bogmother
# ten_maur_wolk
# ixtaxh_thitithil_meht
# murkwood
# sunscale_strand
# shrine_of_the_black_maw
# blackrose_prison

#6537#mazzatun
#6478#norg_tzel
#6676#eld_angavar

eld_angavar = {
	start = 6676
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
		culture = barsaebic
		has_owner_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture = barsaebic
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture = barsaebic
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
			all_power_cost = -0.05
			technology_cost = -0.05
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
			all_power_cost = -0.075
			technology_cost = -0.1
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
			all_power_cost = -0.1
			technology_cost = -0.15
		}
		on_upgraded = { }
	}
}

norg_tzel = {
	start = 6478
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
		has_owner_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = marsh_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = marsh_cg
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
			harsh_treatment_cost = -0.25
			global_manpower_modifier = 0.1
			global_unrest = -2
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
			harsh_treatment_cost = -0.4
			global_manpower_modifier = 0.2
			global_unrest = -4
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
			harsh_treatment_cost = -0.5
			global_manpower_modifier = 0.3
			global_unrest = -5
		}
		on_upgraded = { }
	}
}

mazzatun = {
	start = 6537
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
		has_owner_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = marsh_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = marsh_cg
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
			defensiveness = 0.25
			prestige = 0.5
			ae_impact = -0.05
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
			defensiveness = 0.4
			prestige = 1
			ae_impact = -0.1
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
			defensiveness = 0.5
			prestige = 1.5
			ae_impact = -0.15
		}
		on_upgraded = { }
	}
}

blackrose_prison = {
	start = 6745
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		has_owner_culture = no
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		has_owner_culture = no
	}
	can_upgrade_trigger = {
		has_owner_culture = no
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
			yearly_absolutism = 0.1
			harsh_treatment_cost = -0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			yearly_absolutism = 0.2
			harsh_treatment_cost = -0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			yearly_absolutism = 0.3
			harsh_treatment_cost = -0.75
		}
		on_upgraded = { }
	}
}

shrine_of_the_black_maw = {
	start = 6532
	
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
		area_modifier = { 
			 trade_goods_size_modifier = 0.1
		}
		country_modifiers = {
			slavers_loyalty_modifier = 0.1
			culture_conversion_cost = -0.10
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { 
			 trade_goods_size_modifier = 0.20
		}
		country_modifiers = {
			slavers_loyalty_modifier = 0.15
			culture_conversion_cost = -0.20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { 
			 trade_goods_size_modifier = 0.25
		}
		country_modifiers = {
			slavers_loyalty_modifier = 0.3
			culture_conversion_cost = -0.25
		}
		on_upgraded = { }
	}
}

murkwood = {
	start = 6644
	
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
		area_modifier = { 
			local_hostile_movement_speed = -0.1
		}
		country_modifiers = { 
			hostile_attrition = 0.5 
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { 
			local_hostile_movement_speed = -0.25
		}
		country_modifiers = { 
			hostile_attrition = 1.0 
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { 
			local_hostile_movement_speed = -0.5
		}
		country_modifiers = { 
			hostile_attrition = 1.5 
		}
		on_upgraded = { }
	}
}

sunscale_strand = {
	start = 6634
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = hist
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			religion = hist
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = hist
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
			manpower_recovery_speed = 0.1
			reinforce_speed = 0.1
			reinforce_cost_modifier = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.15
			reinforce_speed = 0.2
			reinforce_cost_modifier = -0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.2
			reinforce_speed = 0.3
			reinforce_cost_modifier = -0.3
		}
		on_upgraded = { }
	}
}

ixtaxh_thitithil_meht = {
	start = 6820
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = hist
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			religion = hist
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = hist
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
			global_institution_spread  = 0.1
			reform_progress_growth = 0.05
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
			global_institution_spread  = 0.2
			reform_progress_growth = 0.10
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			prestige = 1 
			global_institution_spread  = 0.3
			reform_progress_growth = 0.15
		}
		on_upgraded = { }
	}
}

ten_maur_wolk = {
	start = 6627
	
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
				religion = boethiah_cult
				religion = vaermina_cult
				religion = chimer_pantheon
			}
		}
		OR = {
			culture = house_dunmer
			culture = house_chimer
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
				religion = boethiah_cult
				religion = vaermina_cult
				religion = chimer_pantheon
			}
		}
		OR = {
			culture = house_dunmer
			culture = house_chimer
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				religion = boethiah_cult
				religion = vaermina_cult
				religion = chimer_pantheon
			}
		}
		OR = {
			culture = house_dunmer
			culture = house_chimer
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
			global_missionary_strength = 0.005
			trade_steering = 0.05
			loot_amount = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_missionary_strength = 0.01
			trade_steering = 0.1
			loot_amount = 0.5 
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_missionary_strength = 0.02
			trade_steering = 0.2
			loot_amount = 0.75 
		}
		on_upgraded = { }
	}
}

bogmother = {
	start = 1077
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			culture_group = marsh_cg
			religion = hist
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
			culture_group = marsh_cg
			religion = hist
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			culture_group = marsh_cg
			religion = hist
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
			monthly_karma = 0.05
			tolerance_own = 1
			devotion = 0.25
			relation_with_same_religion = 10
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			monthly_karma = 0.10
			tolerance_own = 2
			devotion = 0.5
			relation_with_same_religion = 20
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			monthly_karma = 0.15
			tolerance_own = 3
			devotion = 1
			relation_with_same_religion = 30
		}
		on_upgraded = { }
	}
}

xinchei_konu = {
	start = 1110
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = hist
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = {
			religion = hist
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = hist
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
			global_prosperity_growth = 0.05
			global_spy_defence = 0.1
		}
		on_upgraded = { 
			custom_tooltip = weatherwitch_tooltip_one.tt
		}
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_prosperity_growth = 0.1
			global_spy_defence = 0.2
		}
		on_upgraded = { 
			custom_tooltip = weatherwitch_tooltip_two.tt
		}
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			global_prosperity_growth = 0.15
			global_spy_defence = 0.25
		}
		on_upgraded = { 
			custom_tooltip = weatherwitch_tooltip_three.tt
		}
	}
}