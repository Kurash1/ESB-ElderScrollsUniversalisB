# Audax Validator "!" Ignore_1007
#avanchnzel
#bthalft
#arkngthamz
#irkngthand

#bthulzand
#raled_makei
#mkalzand
#kherakah
#kogobthar
#leftunch
#hendor_stardumz
#mvelthngth_schel
#ngelftingth
#nchantmntz
#ngalftzel
#mzarfth
#bthungch
#bthung
#khananzr

#chunzefk
#arkngthleft
#bazhthum
#arkantng
#mzingthlegfth
#durthungz
#bthanthamuzand
#amthuandz
#mzankh
#nchazdrumn
#kvazmunduncharz
#manrizache
#bthzundcheft

#mzahnch
#mudan
#arkngthunch_sturdumz
#bethamez
#druscashti
#bthungthumz
#bthanchend
#aleft
#arkngthand
#mzanchend
#nchuleftingh
#nchardumz
#nchurdamz
#nchuleft
#bthuand
#mzuleft
#nchardahrk
#vvardenfell

#fahlbtharz
#kagrumez
#nchardak

#kemel_ze
#banz_amschend
#galom_daeus

kemel_ze = {
	start = 4054
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
banz_amschend = {
	start = 3246
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
galom_daeus = {
	start = 4233
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

fahlbtharz = {
	start = 949
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
kagrumez = {
	start = 3318
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchardak = {
	start = 3320
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

mzahnch = {
	start = 1041
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mudan = {
	start = 3771
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
arkngthunch_sturdumz = {
	start = 4273
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bethamez = {
	start = 4269
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
druscashti = {
	start = 4301
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthungthumz = {
	start = 4303
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthanchend = {
	start = 4304
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
aleft = {
	start = 4251
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
arkngthand = {
	start = 4239
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mzanchend = {
	start = 4206
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchuleftingh = {
	start = 4216
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchardumz = {
	start = 4226
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchurdamz = {
	start = 4223
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchuleft = {
	start = 4138
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthuand = {
	start = 4307
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mzuleft = {
	start = 1049
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchardahrk = {
	start = 1051
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
vvardenfell = {
	start = 1062
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

chunzefk = {
	start = 3258
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
arkngthleft = {
	start = 3260
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bazhthum = {
	start = 1009
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
arkantng = {
	start = 4008
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mzingthlegfth = {
	start = 4016
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
durthungz = {
	start = 3262
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthanthamuzand = {
	start = 3266
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
amthuandz = {
	start = 4053
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mzankh = {
	start = 4093
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchazdrumn = {
	start = 4088
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
kvazmunduncharz = {
	start = 4114
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
manrizache = {
	start = 1037
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthzundcheft = {
	start = 1025
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

bthulzand = {
	start = 3206
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
raled_makei = {
	start = 963
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mkalzand = {
	start = 3321
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
kherakah = {
	start = 3348
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
kogobthar = {
	start = 3356
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
leftunch = {
	start = 3384
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
hendor_stardumz = {
	start = 3391
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mvelthngth_schel = {
	start = 3416
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
ngelftingth = {
	start = 970
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
nchantmntz = {
	start = 3424
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
ngalftzel = {
	start = 3439
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
mzarfth = {
	start = 3783
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthungch = {
	start = 3790
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
bthung = {
	start = 3981
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}
khananzr = {
	start = 3999
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

irkngthand = {
	start = 2946
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
		culture_group = dwemer_cg
	}
	on_built = { }
	on_destroyed = { }
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
		upgrade_time = { months = 60 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier1 }
		province_modifiers = {
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

arkngthamz = {
	start = 7245
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

bthalft = {
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

avanchnzel = {
	start = 3129
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

kagrenzel = {
	start = 1270
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

mzulft = {
	start = 2924
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

great_lift_at_alftand = {
	start = 2737
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

great_lift_at_mzinchaleft = {
	start = 7320
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

great_lift_at_raldbthar = {
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}

tower_mzark = {
	start = 7129
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
			local_defensiveness = 0.1
			local_friendly_movement_speed = 0.05
			local_development_cost = -0.1
			supply_limit = 10
			local_build_cost = -0.1
			local_build_time = -0.1
			regiment_recruit_speed = -0.1
			ship_recruit_speed = -0.1
			local_institution_spread = 0.1
			trade_goods_size_modifier = 0.05
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_2 = {
		upgrade_time = { months = 120 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier2 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 1
			local_defensiveness = 0.20
			local_friendly_movement_speed = 0.10
			local_development_cost = -0.20
			supply_limit = 20
			local_build_cost = -0.20
			local_build_time = -0.20
			regiment_recruit_speed = -0.20
			ship_recruit_speed = -0.20
			local_institution_spread = 0.20
			trade_goods_size_modifier = 0.10
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}

	tier_3 = {
		upgrade_time = { months = 180 }
		cost_to_upgrade = { factor = defines.constants.minor_monument_price_tier3 }
		province_modifiers = {
			local_defender_dice_roll_bonus = 2
			local_defensiveness = 0.30
			local_friendly_movement_speed = 0.15
			local_development_cost = -0.25
			supply_limit = 25
			local_build_cost = -0.25
			local_build_time = -0.25
			regiment_recruit_speed = -0.25
			ship_recruit_speed = -0.25
			local_institution_spread = 0.25
			trade_goods_size_modifier = 0.15
		}
		area_modifier = { }
		country_modifiers = { }
		on_upgraded = { }
	}
}