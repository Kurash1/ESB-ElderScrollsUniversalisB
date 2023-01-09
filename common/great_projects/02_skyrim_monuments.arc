# twilight_sepulcher
# riften_canals
# blackreach
# windhelm_palace
# shimmermist_cave
# high_hrothgar
# skyforge
# college_of_winterhold
# etherial_forge
# sky_haven_temple
# gjukars_monument
# blue_palace
# castle_volkihar
# skykiller_gallery

#To be done

#1287#arcwind_point
#1342#bards_college
#7199#bthardamz
#2767#fortress_of_ice
#7080#isle_of_gold
#1270#kagrenzel
#1325#bromjunaar
#7173#kilkreath_temple
#1355#nchuand-zel
#3139#redwater_spring
#2783#saarthal
#2819#skuldafn
#2995#vault_of_mhuvnak
#2812#yngol_barrow

#7158#icereach
#7186#kynes_aegis
#1303#olenveld

#7196#forgotten_vale

forgotten_vale = {
	start = 7196
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		culture_group = snow_elves_cg
		has_owner_culture = yes
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		culture_group = snow_elves_cg
		has_owner_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = snow_elves_cg
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
		province_modifiers = { 
		}
		area_modifier = { 
		}
		country_modifiers = { 
			prestige = 0.5
			defensiveness = 0.1
			land_morale = 0.1
			development_cost = -0.05
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
			prestige = 1
			defensiveness = 0.2
			land_morale = 0.2
			development_cost = -0.1
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
			prestige = 1.5
			defensiveness = 0.25
			land_morale = 0.25
			development_cost = -0.15
		}
		on_upgraded = { }
	}
}

olenveld = {
	start = 1303
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
		owner = { 
			full_idea_group = necromacy_ideas
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		owner = {
			full_idea_group = necromacy_ideas
		}
	}
	can_upgrade_trigger = {
		owner = { 
			full_idea_group = necromacy_ideas
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
			manpower_recovery_speed = 0.1
			global_regiment_cost = -0.05
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
			manpower_recovery_speed = 0.2
			global_regiment_cost = -0.1
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
			manpower_recovery_speed = 0.33
			global_regiment_cost = -0.15
			reinforce_speed = 0.33
		}
		on_upgraded = { }
	}
}

kynes_aegis = {
	start = 7186
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
		is_year = 179
		owner = {
			OR = {
				primary_culture = vampire
				religion = dragon_cult
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
			owner = {
			OR = {
				primary_culture = vampire
				religion = dragon_cult
			}
		}
	}
	can_upgrade_trigger = {
			owner = {
			OR = {
				primary_culture = vampire
				religion = dragon_cult
			}
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
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = { }
		area_modifier = { 
			local_unrest = -1.5
			local_regiment_cost = -0.15
		}
		country_modifiers = {
			global_missionary_strength = 0.005
		}
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = {
			months = 48
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = { }
		area_modifier = {
			local_unrest = -3
			local_regiment_cost = -0.3
		}
		country_modifiers = { 
			global_missionary_strength = 0.01
		}
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = {
			months = 72
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier3 
		}
		province_modifiers = { }
		area_modifier = {
			local_unrest = -5
			local_regiment_cost = -0.5
		}
		country_modifiers = {
			global_missionary_strength = 0.015
		}
		on_upgraded = { }
	}
}

icereach = {
	start = 7158
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
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = { }
		area_modifier = {
			local_hostile_attrition = 1
			max_attrition = 2
			local_development_cost = -0.1
			supply_limit_modifier = 0.33
		}
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = {
			months = 48
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = { }
		area_modifier = { 
			local_hostile_attrition = 2
			max_attrition = 4
			local_development_cost = -0.2
			supply_limit_modifier = 0.66
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
		province_modifiers = { }
		area_modifier = {
			local_hostile_attrition = 3
			max_attrition = 6
			local_development_cost = -0.33
			supply_limit_modifier = 1
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

yngol_barrow = {
	start = 2812
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
		owner = {
			culture_group = northern_cg
		}
		has_owner_culture = yes
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
			shock_damage = 0.025
			prestige = 0.25
			discipline = 0.025
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
			shock_damage = 0.05
			prestige = 5
			discipline = 0.05
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
			shock_damage = 0.075
			prestige = 1
			discipline = 0.075
		}
		on_upgraded = { }
	}
}

vault_of_mhuvnak = {
	start = 2995
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
		culture_group = dwemer_cg
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
		culture_group = dwemer_cg
		OR = {
			has_owner_accepted_culture = yes
			has_owner_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = dwemer_cg
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
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = { 
		}
		area_modifier = { 
			local_defensiveness = 0.2
			local_hostile_attrition = 1
			local_production_efficiency = 0.2
			fort_maintenance_modifier = 0.2
		}
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = {
			months = 48
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
			local_defensiveness = 0.4
			local_hostile_attrition = 2
			local_production_efficiency = 0.4
			max_attrition = 1
			fort_maintenance_modifier = 0.4
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
		}
		area_modifier = { 
			local_defensiveness = 0.6
			local_hostile_attrition = 3
			local_production_efficiency = 0.6
			max_attrition = 2
			fort_maintenance_modifier = 0.6
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

skuldafn = {
	start = 2819
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
		owner = {
			OR = {
				religion = dragon_cult
				religion = miraak_cult
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		owner = {
			OR = {
				religion = dragon_cult
				religion = miraak_cult
			}
		}
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				religion = dragon_cult
				religion = miraak_cult
			}
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
			global_missionary_strength = 0.01
			missionaries = 1
			movement_speed = 0.05
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
			global_missionary_strength = 0.02
			missionaries = 2
			movement_speed = 0.1
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
			global_missionary_strength = 0.04
			missionaries = 2
			movement_speed = 0.15
		}
		on_upgraded = { }
	}
}

saarthal = {
	start = 2783
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
		culture_group = northern_cg
		has_owner_culture = yes
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
			prestige = 0.5
			land_morale = 0.025
			land_forcelimit_modifier = 0.1
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
			prestige = 1
			land_morale = 0.05
			land_forcelimit_modifier = 0.2
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
			land_morale = 0.1
			naval_forcelimit_modifier = 0.25
		}
		on_upgraded = { }
	}
}

redwater_spring = {
	start = 3139
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture = vampire
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture = vampire
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture = vampire
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
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			legitimacy = 1.0
			loot_amount = 1.5
			available_province_loot = 1.5
			prestige = 1.5
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			legitimacy = 1.0
			loot_amount = 1.5
			available_province_loot = 1.5
			prestige = 1.5
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			legitimacy = 1.0
			loot_amount = 1.5
			available_province_loot = 1.5
			prestige = 1.5
		}
		on_upgraded = {
		}
	}
}

kilkreath_temple = {
	start = 7173
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
		#OR = {
			#AND = {
				religion = meridia_cult
				has_owner_religion = yes
			#}
			#owner = { has_country_modifier = meridias_beacon }
		#}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		#OR = {
			#AND = {
				religion = meridia_cult
				has_owner_religion = yes
			#}
			#owner = { has_country_modifier = meridias_beacon }
		#}
	}
	can_upgrade_trigger = {
		#OR = {
			#AND = {
				religion = meridia_cult
				has_owner_religion = yes
			#}
			#owner = { has_country_modifier = meridias_beacon }
		#}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = { 
			fire_damage = 0.05
			prestige = 0.5
			global_missionary_strength = 0.01
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			fire_damage = 0.075
			prestige = 1.0
			global_missionary_strength = 0.02
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = { 
			fire_damage = 0.1
			prestige = 1.5
			global_missionary_strength = 0.03
		}
		on_upgraded = { }
	}
}

bromjunaar = {
	start = 1325
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
		religion = dragon_cult
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = dragon_cult
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = dragon_cult
		has_owner_religion = yes
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_development_cost = -0.05
			trade_goods_size_modifier = 0.05 
			trade_value_modifier = 0.05
			local_hostile_movement_speed = -0.25
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
			local_hostile_movement_speed = -0.5
			local_defender_dice_roll_bonus = 1
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
			local_hostile_movement_speed = -0.75 
			local_defender_dice_roll_bonus = 2
		}
		area_modifier = {
			local_prosperity_growth = 0.1
			local_defensiveness = 0.15
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

isle_of_gold = {
	start = 7080
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
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
			development_cost = -0.05
			trade_value_modifier = 0.05
		}
		area_modifier = {
			trade_goods_size_modifier = 0.05
		}
		country_modifiers = {
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 48
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = {
			development_cost = -0.1
			trade_value_modifier = 0.1
		}
		area_modifier = {
			trade_goods_size_modifier = 0.1
		}
		country_modifiers = {
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 72
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier3 
		}
		province_modifiers = {
			development_cost = -0.15
			trade_value_modifier = 0.15
		}
		area_modifier = {
			trade_goods_size_modifier = 0.15
		}
		country_modifiers = {
		}
		on_upgraded = {
		}
	}
}

fortress_of_ice = {
	start = 2767
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
		owner = {
			has_country_flag = shalidor
		}
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		owner = {
			has_country_flag = shalidor
		}
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		owner = {
			has_country_flag = shalidor
		}
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
			
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 0.5
			all_power_cost = -0.025
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 1
			all_power_cost = -0.05
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 1.5
			all_power_cost = -0.075
		}
		on_upgraded = {
		}
	}
}

bthardamz = {
	start = 7199
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
			
		}
		area_modifier = {
			
		}
		country_modifiers = {
			hostile_attrition = 0.5
			siege_ability = 0.1
			loot_amount = 0.25
			available_province_loot = 0.25
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		
		}
		area_modifier = {
			
		}
		country_modifiers = {
			hostile_attrition = 1.0
			siege_ability = 0.2
			loot_amount = 0.5
			available_province_loot = 0.5
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		
		}
		area_modifier = {
			
		}
		country_modifiers = {
			hostile_attrition = 1.5
			siege_ability = 0.25
			loot_amount = 0.75
			available_province_loot = 0.75
		}
		on_upgraded = {
		}
	}
}

bards_college = {
	start = 1342
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
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
			
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 0.5
			monthly_reform_progress_modifier = 0.05
			improve_relation_modifier = 0.10
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 1.5
			monthly_reform_progress_modifier = 0.10
			improve_relation_modifier = 0.20
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		
		}
		area_modifier = {
			
		}
		country_modifiers = {
			prestige = 1.5
			monthly_reform_progress_modifier = 0.15
			improve_relation_modifier = 0.25
		}
		on_upgraded = {
		}
	}
}

arcwind_point = {
	start = 1287
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
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	can_upgrade_trigger = {
		culture_group = northern_cg
		has_owner_accepted_culture = yes
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 12
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
			development_cost = -0.1
			local_garrison_size = 0.2
			hostile_attrition = 1
		}
		area_modifier = {
			local_defensiveness = 0.1			
			local_friendly_movement_speed = 0.6
			local_hostile_movement_speed = -0.6
		}
		country_modifiers = {

		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier2 
		}
		province_modifiers = {
			development_cost = -0.2
			local_garrison_size = 0.4
			hostile_attrition = 1
		}
		area_modifier = {
			local_defensiveness = 0.2
			local_friendly_movement_speed = 0.6
			local_hostile_movement_speed = -0.6
		}
		country_modifiers = {
	
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 36
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier3 
		}
		province_modifiers = {
			development_cost = -0.25
			local_garrison_size = 0.6
			local_defender_dice_roll_bonus = 1
			hostile_attrition = 2
			max_attrition = 1
		}
		area_modifier = {
			local_defensiveness = 0.25
			local_friendly_movement_speed = 0.6
			local_hostile_movement_speed = -0.6
		}
		country_modifiers = {
		
		}
		on_upgraded = {
		}
	}
}

twilight_sepulcher = {
	start = 1295
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
		religion = nocturnal_cult
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = nocturnal_cult
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = nocturnal_cult
		has_owner_religion = yes
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.1
			global_spy_defence = 0.1
			tolerance_own = 1
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.2
			global_spy_defence = 0.2
			tolerance_own = 2
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.25
			leader_land_manuever = 1
			global_spy_defence = 0.25
			tolerance_own = 3
		}
		on_upgraded = {
		}
	}
}

riften_canals = {
	start = 1268
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
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.1
			trade_efficiency = 0.05
			global_unrest = -1
			yearly_corruption = 0.01
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.2
			trade_efficiency = 0.1
			global_unrest = -2
			yearly_corruption = 0.02
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			spy_offence = 0.25
			trade_efficiency = 0.15
			global_unrest = -3
			yearly_corruption = 0.03
		}
		on_upgraded = {
		}
	}
}

silent_city = {
	start = 2949
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
		#OR = {
		#	7129 = { #Mzark
		#		OR = {
		#			has_owner_culture = yes
		#			has_owner_accepted_culture = yes
		#		}
		#		culture_group = dwemer_cg
		#		owned_by = ROOT
		#	}
		#	2949 = { #Rald
		#		OR = {
		#	    	has_owner_culture = yes
		#	    	has_owner_accepted_culture = yes
		#	    }
		#	    culture_group = dwemer_cg
		#		owned_by = ROOT
		#	}
		#	7320 = { #Mzinch
		#		OR = {
		#	    	has_owner_culture = yes
		#	    	has_owner_accepted_culture = yes
		#	    }
		#	    culture_group = dwemer_cg
		#		owned_by = ROOT
		#	}
		#	2740 = { #Alft
		#		OR = {
		#	    	has_owner_culture = yes
		#	    	has_owner_accepted_culture = yes
		#	    }
		#	    culture_group = dwemer_cg
		#		owned_by = ROOT
		#	}
		#}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			development_cost = -0.05
			administrative_efficiency = 0.02
			movement_speed = 0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			development_cost = -0.10
			administrative_efficiency = 0.04
			movement_speed = 0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			development_cost = -0.15
			administrative_efficiency = 0.05
			movement_speed = 0.15
		}
		on_upgraded = {
		}
	}
}

greymoor_caverns = {
	start = 1359
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture_group = dwemer_cg
			culture = vampire
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture_group = dwemer_cg
			culture = vampire
		}
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture_group = dwemer_cg
			culture = vampire
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			defensiveness = 0.10
			discipline = 0.02
			governing_capacity_modifier = 0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			defensiveness = 0.20
			discipline = 0.04
			governing_capacity_modifier = 0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			defensiveness = 0.25
			discipline = 0.05
			governing_capacity_modifier = 0.15
		}
		on_upgraded = {
		}
	}
}

arkthzand_cavern = {
	start = 7229
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture = vampire
			culture_group = dwemer_cg
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture = vampire
			culture_group = dwemer_cg
		}
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		OR = {
			culture = vampire
			culture_group = dwemer_cg
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.05
			advisor_cost = -0.1
			innovativeness_gain = 0.1
		}
		on_upgraded = {
			owner = {
				change_innovativeness = 5
			}
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.10
			advisor_cost = -0.20
			innovativeness_gain = 0.2
		}
		on_upgraded = {
			owner = {
				change_innovativeness = 10
			}
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.15
			advisor_cost = -0.25
			innovativeness_gain = 0.3
			advisor_pool = 1
		}
		on_upgraded = {
			owner = {
				change_innovativeness = 25
			}
		}
	}
}

windhelm_palace = {
	start = 1275
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
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
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			yearly_corruption = -0.05
			administrative_efficiency = 0.02
			governing_capacity_modifier = 0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			yearly_corruption = -0.10
			administrative_efficiency = 0.04
			governing_capacity_modifier = 0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			yearly_corruption = -0.15
			administrative_efficiency = 0.05
			governing_capacity_modifier = 0.15
		}
		on_upgraded = {
		}
	}
}

shimmermist_cave = {
	start = 3012
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = snow_elves_cg
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = snow_elves_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = snow_elves_cg
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			culture_conversion_cost = -0.1
			production_efficiency = 0.05
			global_autonomy = -0.01
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			culture_conversion_cost = -0.20
			production_efficiency = 0.10
			global_autonomy = -0.02
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			culture_conversion_cost = -0.25
			production_efficiency = 0.15
			global_autonomy = -0.03
		}
		on_upgraded = {
		}
	}
}

high_hrothgar = {
	start = 3090
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = northern_cg
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = northern_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = northern_cg
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			tolerance_own = 1
			global_missionary_strength = 0.01
			prestige = 0.5
			land_morale = 0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			tolerance_own = 2
			global_missionary_strength = 0.02
			prestige = 1.0
			land_morale = 0.1
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			tolerance_own = 3
			missionaries = 1
			global_missionary_strength = 0.03
			prestige = 1.5
			land_morale = 0.15
		}
		on_upgraded = {
		}
	}
}

skyforge = {
	start = 1319
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
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
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			infantry_power = 0.05
			discipline = 0.025
			land_maintenance_modifier = -0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			infantry_power = 0.10
			discipline = 0.05
			land_maintenance_modifier = -0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			infantry_power = 0.15
			discipline = 0.075
			land_maintenance_modifier = -0.15
		}
		on_upgraded = {
		}
	}
}

college_of_winterhold = {
	start = 7112
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
		owner = {
			has_country_flag = shalidor
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		owner = {
			has_country_flag = shalidor
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			has_country_flag = shalidor
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.025
			fire_damage = 0.05
		}
		on_upgraded = {
			7112 = {
				change_province_name = "College of Winterhold"
				rename_capital = "College of Winterhold"
				add_core = WIT
			}
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.04
			fire_damage = 0.075
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			idea_cost = -0.05
			leader_land_fire = 1
			fire_damage = 0.10
		}
		on_upgraded = {
		}
	}
}

etherial_forge = {
	start = 3110
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
		culture_group = dwemer_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		trade_goods = aetherium
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = dwemer_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		trade_goods = aetherium
	}
	can_upgrade_trigger = {
		culture_group = dwemer_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		trade_goods = aetherium
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			land_morale = 0.05
			fire_damage_received = -0.05
			shock_damage_received = -0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			land_morale = 0.10
			fire_damage_received = -0.10
			shock_damage_received = -0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			land_morale = 0.15
			fire_damage_received = -0.15
			shock_damage_received = -0.15
		}
		on_upgraded = {
		}
	}
}

sky_haven_temple = {
	start = 7230
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
		culture_group = tsaesci_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = tsaesci_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = tsaesci_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			army_tradition = 0.5
			drill_gain_modifier = 0.5
			land_morale = 0.05
			shock_damage = 0.05
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			army_tradition = 1.0
			drill_gain_modifier = 1.0
			land_morale = 0.10
			shock_damage = 0.10
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			army_tradition = 1.5
			drill_gain_modifier = 1.5
			land_morale = 0.15
			shock_damage = 0.15
			discipline = 0.1
		}
		on_upgraded = {
		}
	}
}

gjukars_monument = {
	start = 3052
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
		culture_group = cyrodiil_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture_group = cyrodiil_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture_group = cyrodiil_cg
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			leader_cost = -0.1
			leader_land_fire = 1
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			leader_cost = -0.20
			leader_land_fire = 1
			leader_land_manuever = 1
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			leader_cost = -0.25
			leader_land_fire = 1
			leader_land_manuever = 1
			leader_land_shock = 1
		}
		on_upgraded = {
		}
	}
}

blue_palace = {
	start = 1342
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
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
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
			local_unrest = -1
		}
		country_modifiers = {
			legitimacy = 0.5
			republican_tradition = 0.5
			devotion = 0.5
			horde_unity = 0.5
			meritocracy = 0.5
			trade_efficiency = 0.10
			global_autonomy = -0.02
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
			local_unrest = -1.5
		}
		country_modifiers = {
			legitimacy = 1.0
			republican_tradition = 1.0
			devotion = 1.0
			horde_unity = 1.0
			meritocracy = 1.0
			trade_efficiency = 0.20
			global_autonomy = -0.04
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
			local_unrest = -2.5
		}
		country_modifiers = {
			legitimacy = 1.5
			republican_tradition = 1.5
			devotion = 1.5
			horde_unity = 1.5
			meritocracy = 1.5
			trade_efficiency = 0.25
			global_autonomy = -0.06
		}
		on_upgraded = {
		}
	}
}
castle_volkihar = {
	start = 1344
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
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		culture = vampire
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		culture = vampire
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
			defensiveness = 0.1
		}
		country_modifiers = {
			global_manpower_modifier = 0.1
			land_morale = 0.1
			prestige = 0.5
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
			defensiveness = 0.2
		}
		country_modifiers = {
			global_manpower_modifier = 0.20
			land_morale = 0.20
			prestige = 1.0
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
			defensiveness = 0.3
		}
		country_modifiers = {
			global_manpower_modifier = 0.25
			land_morale = 0.25
			prestige = 0.75
		}
		on_upgraded = {
		}
	}
}

skykiller_gallery = {
	start = 7110
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
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		culture_group = dwemer_cg
	}
	keep_trigger = {
		always = yes
	}
	tier_0 = {
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
			
		}
		country_modifiers = {
			development_cost = -0.05
			innovativeness_gain = 0.1
		}
		on_upgraded = {
			custom_tooltip = weatherwitch_tooltip_one.tt
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
			
		}
		country_modifiers = {
			development_cost = -0.10
			innovativeness_gain = 0.2
		}
		on_upgraded = {
			custom_tooltip = weatherwitch_tooltip_two.tt
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
			
		}
		country_modifiers = {
			development_cost = -0.15
			innovativeness_gain = 0.3
		}
		on_upgraded = {
			custom_tooltip = weatherwitch_tooltip_three.tt
		}
	}
} 

dunmeth_pass = {
	start = 2813
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
		upgrade_time = {
			months = 0
		}
		cost_to_upgrade = {
			factor = 0
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
			months = 120
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier1 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			trade_steering = 0.05
			global_institution_spread = 0.05
			fort_maintenance_modifier = -0.10
			defensiveness = 0.10
		}
		on_upgraded = {
		}
	}
	tier_2 = {
		upgrade_time = {
			months = 240
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier2 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			trade_steering = 0.10
			global_institution_spread = 0.10
			fort_maintenance_modifier = -0.20
			defensiveness = 0.20
		}
		on_upgraded = {
		}
	}
	tier_3 = {
		upgrade_time = {
			months = 360
		}
		cost_to_upgrade = {
			factor = defines.constants.major_monument_price_tier3 
		}
		province_modifiers = {
		}
		area_modifier = {
		}
		country_modifiers = {
			trade_steering = 0.15
			global_institution_spread = 0.15
			fort_maintenance_modifier = -0.25
			defensiveness = 0.25
		}
		on_upgraded = {
		}
	}
}