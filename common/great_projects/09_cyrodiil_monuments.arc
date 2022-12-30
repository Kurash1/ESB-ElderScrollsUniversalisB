# sancre_tor
# temple_of_ancestor_moth
# cloud_top
# cloud_ruler_temple
# three_sisters_inn
# the_sentinel
# the_great_forest
# crypt_of_the_night_mother
# anvil_lighthouse
# kvatch_arena
# shrine_of_azura
# shrine_of_boethia
# shrine_of_clavicus_vile
# shrine_of_hermaeus_mora
# shrine_of_hircine
# shrine_of_malacath
# shrine_of_mephala
# shrine_of_meridia
# shrine_of_molag_bal
# shrine_of_namira
# shrine_of_nocturnal
# shrine_of_peryite
# shrine_of_sanguine
# shrine_of_sheogorath
# shrine_of_vaermina
# statue_of_saint_osla
# statue_of_arkay
# white_gold_tower

#1161#anvil_castle
#5389#arcane_university
#5769#battlehorn_castle
#5897#dive_rock
#1206#green_emperor_way
#5387#imperial_city_prison
#5841#pale_pass
#5591#priory_of_the_nine
#1206#temple_of_the_one
#1206#imperial_arboretum
#1206#imperial_arena
#1206#imperial_dragonfire_cathedral
#1206#imperial_elven_gardens
#1206#imperial_talos_plaza
#5390#imperial_waterfront

imperial_waterfront = {
	start = 5390
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
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
			trade_efficiency = 0.1
			sailors_recovery_speed = 0.1
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
			trade_efficiency = 0.2
			sailors_recovery_speed = 0.2
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
			trade_efficiency = 0.25
			sailors_recovery_speed = 0.25
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

imperial_talos_plaza = {
	start = 1206
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
		religion = nine_divines
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		religion = nine_divines
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		religion = nine_divines
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
			tolerance_own = 2
			global_missionary_strength = 0.02
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
			tolerance_own = 3
			global_missionary_strength = 0.03
			missionaries = 1
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

imperial_elven_gardens = {
	start = 1206
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
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
		province_modifiers = { 
			local_unrest = -2
			local_development_cost = -0.05
		}
		area_modifier = {
			local_development_cost = -0.05
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
			local_unrest = -4
			local_development_cost = -0.1
		}
		area_modifier = {
			local_development_cost = -0.075
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
			local_unrest = -5
			local_development_cost = -0.15
		}
		area_modifier = {
			local_development_cost = -0.1
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

imperial_dragonfire_cathedral = {
	start = 1206
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
				tag = ALE
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = ALE
				tag = CYR
				tag = TAM
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
			legitimacy = 0.5
			monthly_heir_claim_increase = 0.05
			stability_cost_modifier = -0.1
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
			legitimacy = 1
			monthly_heir_claim_increase = 0.1
			stability_cost_modifier = -0.2
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
			legitimacy = 1.5
			monthly_heir_claim_increase = 0.15
			stability_cost_modifier = -0.3
		}
		on_upgraded = { }
	}
}

imperial_arena = {
	start = 1206
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
				tag = CYR
				tag = TAM
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
				tag = CYR
				tag = TAM
			}
		}
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
			global_unrest = -2
			army_tradition = 0.5
			drill_gain_modifier = 0.5
			drill_decay_modifier = -0.1
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
			global_unrest = -4
			army_tradition = 1
			drill_gain_modifier = 1
			drill_decay_modifier = -0.2
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
			global_unrest = -5
			army_tradition = 1.5
			drill_gain_modifier = 1.5
			drill_decay_modifier = -0.3
		}
		on_upgraded = { }
	}
}

imperial_arboretum = {
	start = 1206
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
			technology_cost = -0.05
			idea_cost = -0.05
			prestige_decay = -0.005
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
			technology_cost = -0.075
			idea_cost = -0.1
			prestige_decay = -0.01
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
			technology_cost = -0.1
			idea_cost = -0.15
			prestige_decay = -0.015
		}
		on_upgraded = { }
	}
}

temple_of_the_one = {
	start = 1206
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
			religion = nine_divines
			owner = { tag = ORD }
		}
		has_owner_religion = yes
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
		OR = {
			religion = nine_divines
			owner = { tag = ORD }
		}
		has_owner_religion = yes
	}
	can_upgrade_trigger = {
		OR = {
			religion = nine_divines
			owner = { tag = ORD }
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
			global_heretic_missionary_strength = 0.01
			religious_unity = 0.05
			tolerance_own = 1
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
			global_heretic_missionary_strength = 0.02
			religious_unity = 0.1
			tolerance_own = 2
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
			global_heretic_missionary_strength = 0.03
			religious_unity = 0.15
			missionaries = 1
			tolerance_own = 3
		}
		on_upgraded = { }
	}
}

priory_of_the_nine = {
	start = 5591
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
			land_morale = 0.05
			global_trade_goods_size_modifier = 0.05
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
			land_morale = 0.1
			global_trade_goods_size_modifier = 0.075
			prestige = 1.0
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
			land_morale = 0.15
			global_trade_goods_size_modifier = 0.1
			prestige = 1.5
		}
		on_upgraded = { }
	}
}

pale_pass = {
	start = 5841
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
		province_modifiers = { 
			local_defender_dice_roll_bonus = 1
		}
		area_modifier = { 
			local_defensiveness = 0.25
			supply_limit_modifier = 0.2
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
			local_defender_dice_roll_bonus = 1
		}
		area_modifier = { 
			local_defensiveness = 0.4
			supply_limit_modifier = 0.4
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
			local_defender_dice_roll_bonus = 2
		}
		area_modifier = { 
			local_defensiveness = 0.5
			supply_limit_modifier = 0.6
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

imperial_city_prison = {
	start = 5387
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
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
			harsh_treatment_cost = -0.25
			reduced_liberty_desire = 5
			global_spy_defence = 0.1
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
			reduced_liberty_desire = 10
			global_spy_defence = 0.2
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
			reduced_liberty_desire = 15
			global_spy_defence = 0.3
		}
		on_upgraded = { }
	}
}

green_emperor_way = {
	start = 1206
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
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
			advisor_pool = 1
			advisor_cost = -0.1
			monarch_lifespan = 0.05
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
			advisor_pool = 2
			advisor_cost = -0.2
			monarch_lifespan = 0.1
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
			advisor_pool = 3
			advisor_cost = -0.25
			monarch_lifespan = 0.15
		}
		on_upgraded = { }
	}
}

dive_rock = {
	start = 5897
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
			land_morale = 0.05
			prestige = 0.5
			global_regiment_cost = -0.1
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
			land_morale = 0.1
			prestige = 1
			global_regiment_cost = -0.2
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
			land_morale = 0.15
			prestige = 1.5
			global_regiment_cost = -0.25
		}
		on_upgraded = { }
	}
}

battlehorn_castle = {
	start = 5769
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
			months = 60 
		}
		cost_to_upgrade = {
			factor = defines.constants.minor_monument_price_tier1 
		}
		province_modifiers = {
			local_fort_maintenance_modifier = -0.25
		}
		area_modifier = { 
			local_defensiveness = 0.25
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
			local_defender_dice_roll_bonus = 1
			local_fort_maintenance_modifier = -0.5
		}
		area_modifier = { 
			local_defensiveness = 0.4
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
			local_defender_dice_roll_bonus = 1
			local_fort_maintenance_modifier = -0.75
		}
		area_modifier = { 
			local_defensiveness = 0.5
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

arcane_university = {
	start = 5389
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
				tag = CYR
				tag = TAM
			}
		}
	}
	on_built = {
	}
	on_destroyed = {
	}
	can_use_modifiers_trigger = {
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				tag = CYR
				tag = TAM
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
			fire_damage_received = -0.02
			fire_damage = 0.05
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
			fire_damage_received = -0.04
			fire_damage = 0.075
			technology_cost = -0.075
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
			fire_damage_received = -0.05
			fire_damage = 0.1
			technology_cost = -0.1
		}
		on_upgraded = { }
	}
}

anvil_castle = {
	start = 1161
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
		province_modifiers = {
			local_fort_maintenance_modifier = -0.25
		}
		area_modifier = { 
			local_defensiveness = 0.25
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
			local_fort_maintenance_modifier = -0.5
			local_defender_dice_roll_bonus = 1
		}
		area_modifier = { 
			local_defensiveness = 0.4
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
			local_fort_maintenance_modifier = -0.75
			local_defender_dice_roll_bonus = 1
		}
		area_modifier = { 
			local_defensiveness = 0.5
		}
		country_modifiers = { }
		on_upgraded = { }
	}
}

white_gold_tower = {
	start = 1206
	
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
			governing_capacity_modifier = 0.1
			liberty_desire_from_subject_development = -0.1
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
			governing_capacity_modifier = 0.15
			liberty_desire_from_subject_development = -0.2
			prestige = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			administrative_efficiency = 0.05
			governing_capacity_modifier = 0.25
			liberty_desire_from_subject_development = -0.33
			prestige = 1.5
		}
		on_upgraded = { }
	}
}	

shrine_of_vaermina = {
	start = 5988
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = vaermina_cult
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
			religion = vaermina_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = vaermina_cult
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
		spy_offence = 0.05
		global_spy_defence = 0.1
		reduced_liberty_desire = 7.5
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
		spy_offence = 0.1
		global_spy_defence = 0.2
		global_missionary_strength = 0.02
		reduced_liberty_desire = 15
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
		spy_offence = 0.15
		global_spy_defence = 0.3 
		missionaries = 1
		reduced_liberty_desire = 25
		global_missionary_strength = 0.03
		}
		on_upgraded = { }
	}
}

shrine_of_sheogorath = {
	start = 5497
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = sheogorath_cult
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
			religion = sheogorath_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = sheogorath_cult
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
			war_exhaustion = -0.1
			loot_amount = 0.15
			unjustified_demands = -0.05
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
			war_exhaustion = -0.2
			loot_amount = 0.15
			unjustified_demands = -0.1
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
			war_exhaustion = -0.3
			loot_amount = 0.25
			unjustified_demands = -0.15 
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_sanguine = {
	start = 5358
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = sanguine_cult
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
			religion = sanguine_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = sanguine_cult
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
		area_modifier = {
			local_unrest = -2.5
		}
		country_modifiers = { 
			improve_relation_modifier = 0.15 
			global_unrest = -1
			global_missionary_strength = 0.01
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { 
			local_unrest = -2.5 
		}
		country_modifiers = {
			improve_relation_modifier = 0.25 
			all_estate_loyalty_equilibrium = 0.05
			global_unrest = -2
			global_missionary_strength = 0.02
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_unrest = -5 }
		country_modifiers = { 
			improve_relation_modifier = 0.35 
			all_estate_loyalty_equilibrium = 0.1
			global_unrest = -3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_peryite = {
	start = 5412
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = peryite_cult
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
			religion = peryite_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = peryite_cult
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
			global_monthly_devastation = -0.05
			land_attrition = -0.1
			hostile_attrition = 1
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
			global_monthly_devastation = -0.1
			land_attrition = -0.2
			hostile_attrition = 2
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
			global_monthly_devastation = -0.15
			land_attrition = -0.3
			hostile_attrition = 3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_nocturnal = {
	start = 5308
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = nocturnal_cult
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
			religion = nocturnal_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = nocturnal_cult
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
			unjustified_demands = -0.10
			spy_offence = 0.1
			global_missionary_strength = 0.01
			loot_amount = 0.25
			available_province_loot = 0.25
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			unjustified_demands = -0.15
			spy_offence = 0.2
			global_missionary_strength = 0.02
			loot_amount = 0.5
			available_province_loot = 0.5
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			unjustified_demands = -0.25
			missionaries = 1
			global_missionary_strength = 0.03
			spy_offence = 0.3
			loot_amount = 0.75
			available_province_loot = 0.75
		}
		on_upgraded = { }
	}
}

shrine_of_namira = {
	start = 5860
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = namira_cult
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
			religion = namira_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = namira_cult
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
			global_supply_limit_modifier = 0.10 
			war_taxes_cost_modifier = -0.5
			reserves_organisation = 0.2
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
			global_supply_limit_modifier = 0.2 
			war_taxes_cost_modifier = -0.5
			reserves_organisation = 0.4
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
		global_supply_limit_modifier = 0.3
		war_taxes_cost_modifier = -1
		reserves_organisation = 0.6
		global_missionary_strength = 0.03
		missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_molag_bal = {
	start = 5781
	
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
			yearly_absolutism = 0.2
			harsh_treatment_cost = -0.2
			infantry_power = 0.05
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
			yearly_absolutism = 0.4
			harsh_treatment_cost = -0.4
			infantry_power = 0.1
			global_missionary_strength = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			yearly_absolutism = 0.6
			harsh_treatment_cost = -0.6
			infantry_power = 0.15
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_meridia = {
	start = 5360
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = meridia_cult
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
			religion = meridia_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = meridia_cult
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
			legitimacy = 0.5
			devotion = 1
			republican_tradition = 0.2
			stability_cost_modifier = -0.1
			diplomatic_reputation = 1
			land_morale = 0.05
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
			legitimacy = 1
			devotion = 2
			republican_tradition = 0.4
			stability_cost_modifier = -0.2
			diplomatic_reputation = 2
			land_morale = 0.1
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
			legitimacy = 1.5
			devotion = 3
			republican_tradition = 0.6
			stability_cost_modifier = -0.3
			diplomatic_reputation = 3
			land_morale = 0.15
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_mephala = {
	start = 5882
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = mephala_cult
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
			religion = mephala_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = mephala_cult
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
			diplomatic_annexation_cost = -0.1
			spy_offence = 0.1
			global_unrest = -1
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
			diplomatic_annexation_cost = -0.2
			spy_offence = 0.2
			global_unrest = -2
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
			diplomatic_annexation_cost = -0.3
			spy_offence = 0.3
			global_unrest = -3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_malacath = {
	start = 5689
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = malacath_cult
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
			religion = malacath_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = malacath_cult
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
			army_tradition = 0.25
			discipline = 0.025
			land_morale = 0.05
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
			army_tradition = 0.5
			discipline = 0.05
			land_morale = 0.1
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
			army_tradition = 0.75
			discipline = 0.075
			land_morale = 0.15
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_hircine = {
	start = 1136
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = hircine_cult
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
			religion = hircine_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = hircine_cult
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
			land_attrition = -0.1
			prestige = 0.5
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
			movement_speed = 0.1
			land_attrition = -0.2
			prestige = 1
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
			movement_speed = 0.15
			land_attrition = -0.3
			prestige = 1.5
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_hermaeus_mora = {
	start = 1181
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = hermeus_mora_cult
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
			religion = hermeus_mora_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = hermeus_mora_cult
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
			technology_cost = -0.05
			idea_cost = -0.05
			global_institution_spread = 0.1
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
			technology_cost = -0.1
			idea_cost = -0.1
			global_institution_spread = 0.2
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
			technology_cost = -0.15
			idea_cost = -0.15
			global_institution_spread = 0.3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_clavicus_vile = {
	start = 1137
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = clavicus_vile_cult
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
			religion = clavicus_vile_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = clavicus_vile_cult
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
			interest = -0.5
			trade_efficiency = 0.1
			global_tax_modifier = 0.05
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
			interest = -1
			trade_efficiency = 0.2
			global_tax_modifier = 0.1
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
			interest = -1.5
			trade_efficiency = 0.3
			global_tax_modifier = 0.15
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}
	
shrine_of_boethia = {
	start = 6005
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		owner = {
			religion = boethiah_cult
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
			religion = boethiah_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = boethiah_cult
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
			discipline = 0.025
			siege_ability = 0.05
			spy_offence = 0.1
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
			discipline = 0.05
			siege_ability = 0.1
			spy_offence = 0.2
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
			discipline = 0.075
			siege_ability = 0.15
			spy_offence = 0.3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}

shrine_of_azura = {
	start = 5424
	
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
				religion = azura_cult
				religion = chimer_pantheon 
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
			religion = azura_cult
		}
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		owner = {
			religion = azura_cult
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
			diplomatic_reputation = 1
			global_unrest = -1
			improve_relation_modifier = 0.1
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
			diplomatic_reputation = 2
			global_unrest = -2
			improve_relation_modifier = 0.2
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
			diplomatic_reputation = 3
			global_unrest = -3
			improve_relation_modifier = 0.3
			global_missionary_strength = 0.03
			missionaries = 1
		}
		on_upgraded = { }
	}
}

temple_of_ancestor_moth = {
	start = 5899
	
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
		owner = {
			religion = cult_of_the_moth
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
			global_institution_spread = 0.2
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
			global_institution_spread = 0.4
			prestige = 1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			global_institution_spread = 0.6
			prestige = 1.5
			all_power_cost = -0.05
		}
		on_upgraded = { }
	}
}

cloud_top = {
	start = 5755
	
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
		area_modifier = { local_defensiveness = 0.15 }
		country_modifiers = { 
			fort_maintenance_modifier = -0.1
			defensiveness = 0.05
			hostile_attrition = 0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { local_defensiveness = 0.3 }
		country_modifiers = {  
			fort_maintenance_modifier = -0.2
			defensiveness = 0.1
			hostile_attrition = 0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_defensiveness = 0.45 }
		country_modifiers = { 
			fort_maintenance_modifier = -0.3
			defensiveness = 0.15
			hostile_attrition = 0.15
		}
		on_upgraded = { }
	}
}

cloud_ruler_temple = {
	start = 5376
	
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
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { 
			OR = {
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
		}
	}
	
	can_upgrade_trigger = {
		owner = { 
			OR = {
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
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
			special_unit_forcelimit = 0.33
			discipline = 0.025
			army_tradition_decay = -0.005
			leader_cost = -0.2
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			special_unit_forcelimit = 0.66
			discipline = 0.05
			army_tradition_decay = -0.01
			leader_cost = -0.4
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			special_unit_forcelimit = 1
			discipline = 0.075
			army_tradition_decay = -0.015
			leader_cost = -0.6
		}
		on_upgraded = { }
	}
}

three_sisters_inn = {
	start = 1120
	
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
		area_modifier = { 
			regiment_recruit_speed = -0.25 
			local_regiment_cost = -0.1
			local_manpower_modifier = 0.2
		}
		country_modifiers = {
			mercenary_cost = -0.1
			merc_maintenance_modifier = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = {
			regiment_recruit_speed = -0.5
			local_regiment_cost = -0.2
			local_manpower_modifier = 0.4
		}
		country_modifiers = { 
			mercenary_cost = -0.2
			merc_maintenance_modifier = -0.1
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = {
			regiment_recruit_speed = -0.5
			local_regiment_cost = -0.2
			local_manpower_modifier = 0.6
		}
		country_modifiers = { 
			mercenary_cost = -0.3
			merc_maintenance_modifier = -0.15
		}
		on_upgraded = { }
	}
}

the_sentinel = {
	start = 1193
	
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
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		owner = { 
			OR = {
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
		}
	}
	can_upgrade_trigger = {
		owner = { 
			OR = {
				culture_group = tsaesci_cg
				accepted_culture = tsaesci
			}
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
		area_modifier = {  supply_limit_modifier = 0.5 }
		country_modifiers = { 
			movement_speed = 0.05
			global_supply_limit_modifier = 0.05
			land_attrition = -0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { supply_limit_modifier = 1 }
		country_modifiers = {
			movement_speed = 0.1
			global_supply_limit_modifier = 0.1
			land_attrition = -0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { supply_limit_modifier = 1.5 }
		country_modifiers = { 
			movement_speed = 0.15
			global_supply_limit_modifier = 0.2
			land_attrition = -0.3
		}
		on_upgraded = { }
	}
}

the_great_forest = {
	start = 5645
	
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
			global_supply_limit_modifier = 0.1
			land_attrition = -0.05
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			development_cost = -0.1
			global_supply_limit_modifier = 0.2
			land_attrition = -0.1
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
			global_supply_limit_modifier = 0.3
			land_attrition = -0.15
		}
		on_upgraded = { }
	}
}

crypt_of_the_night_mother = {
	start = 1130
	
	date = 54.01.01
	
	time = { months = 0 }
	
	build_cost = defines.constants.minor_monument_price_tier1
	can_be_moved = no
	move_days_per_unit_distance = 10
	starting_tier = 0
	
	type = monument

	build_trigger = { 
		has_estate = estate_dark_brotherhood
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	on_built = { }
	on_destroyed = { }
	can_use_modifiers_trigger = {
		has_estate = estate_dark_brotherhood
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
	}
	can_upgrade_trigger = {
		has_estate = estate_dark_brotherhood
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
			dark_brotherhood_loyalty_modifier = 0.05
			spy_offence = 0.2
			reduced_liberty_desire = 5
			dark_brotherhood_influence_modifier = 0.05
		}
		on_upgraded = { add_prestige = -10 }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			dark_brotherhood_loyalty_modifier = 0.1
			spy_offence = 0.4
			reduced_liberty_desire = 10
			dark_brotherhood_influence_modifier = 0.1
		}
		on_upgraded = { add_prestige = -20 }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			dark_brotherhood_loyalty_modifier = 0.15
			spy_offence = 0.6
			reduced_liberty_desire = 15
			dark_brotherhood_influence_modifier = 0.15
		}
		on_upgraded = { add_prestige = -30 }
	}
}

anvil_lighthouse = {
	start = 1161
	
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
		area_modifier = { local_ship_cost = -0.25 }
		country_modifiers = {
			navy_tradition = 0.33
			naval_morale = 0.1
			global_sailors_modifier = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { local_ship_cost = -0.5 }
		country_modifiers = {
			navy_tradition = 0.66 
			naval_morale = 0.2
			global_sailors_modifier = 0.3
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_ship_cost = -0.75 }
		country_modifiers = {
			navy_tradition = 1
			naval_morale = 0.3
			global_sailors_modifier = 0.3
		}
		on_upgraded = { }
	}
}

kvatch_arena = {
	start = 1150
	
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
		area_modifier = { local_unrest = -2 }
		country_modifiers = {
			global_unrest = -1
			army_tradition_decay = -0.0025
			leader_cost = -0.1
			global_manpower_modifier = 0.1
		}
		on_upgraded = {
			owner = { create_general = {
				tradition = 50
			} }
		}
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { local_unrest = -4 }
		country_modifiers = {
			global_unrest = -1
			army_tradition_decay = -0.005
			leader_cost = -0.15
			global_manpower_modifier = 0.2
		}
		on_upgraded = { 
			owner = { create_general = {
				tradition = 75
			} }
		}
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_unrest = -6 }
		country_modifiers = { 
			global_unrest = -2
			army_tradition_decay = -0.0075
			leader_cost = -0.2
			global_manpower_modifier = 0.3
		}
		on_upgraded = { 
			owner = { create_general = {
				tradition = 100
			} }
		}
	}
}

sancre_tor = {
	start = 5777
	
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
		always = yes
	}
	can_upgrade_trigger = {
		owner = {
			OR = {
				NOT = { religion_group = daedric_group }
				culture_group = cyrodiil_cg
			}
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
			land_morale = 0.025
			prestige = 0.25
			legitimacy = 0.25
			devotion = 0.2
			republican_tradition = 0.1
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { local_defensiveness = 0.25 }
		country_modifiers = {
			land_morale = 0.05
			prestige = 0.5
			legitimacy = 0.5
			devotion = 0.4
			republican_tradition = 0.2
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { local_defensiveness = 0.50 }
		country_modifiers = { 
			land_morale = 0.1
			prestige = 1
			legitimacy = 1
			devotion = 0.6
			republican_tradition = 0.3
		}
		on_upgraded = { }
	}
}

statue_of_saint_osla = {
	start = 5657
	
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
			war_exhaustion = -0.02
			manpower_recovery_speed = 0.1
			shock_damage_received = -0.025
			fire_damage_received = -0.025
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = {
			war_exhaustion = -0.04
			manpower_recovery_speed = 0.2
			shock_damage_received = -0.05
			fire_damage_received = -0.05
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			war_exhaustion = -0.06
			manpower_recovery_speed = 0.3
			shock_damage_received = -0.075
			fire_damage_received = -0.075
		}
		on_upgraded = { }
	}
}

statue_of_arkay = {
	start = 5947
	
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
		owner = {
			OR = {
				religion = nedic_pantheon
				religion = eight_divines
				religion = nine_divines
				religion = twelve_divines
				religion = thirty_divines
			}
		}
	}

	on_built = { }
	on_destroyed = { }

	can_use_modifiers_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		owner = {
			OR = {
				religion = nedic_pantheon
				religion = eight_divines
				religion = nine_divines
				religion = twelve_divines
				religion = thirty_divines
			}
		}
	}
	can_upgrade_trigger = {
		OR = {
			has_owner_culture = yes
			has_owner_accepted_culture = yes
		}
		owner = {
			OR = {
				religion = nedic_pantheon
				religion = eight_divines
				religion = nine_divines
				religion = twelve_divines
				religion = thirty_divines
			}
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
			reinforce_speed = 0.15
			reinforce_cost_modifier = -0.15
		}
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 240 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier2 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.2
			reinforce_speed = 0.25
			reinforce_cost_modifier = -0.25
		}
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 360 }
		cost_to_upgrade = { factor = defines.constants.major_monument_price_tier3 }
		province_modifiers = { }
		area_modifier = { }
		country_modifiers = { 
			manpower_recovery_speed = 0.3
			reinforce_speed = 0.3
			reinforce_cost_modifier = -0.3
		}
		on_upgraded = { }
	}
}