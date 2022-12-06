flavour_missions_1_vam = {
	slot = 6
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = vampire capital_scope = { superregion = coldharbour_superregion } }

	es_harbour_of_stability_mission = {
		icon = stability_icon_es
		position = 1
		required_missions = { }
		
		trigger = {
			stability = 3
			NOT = { average_unrest = 0.1 }
			OR = {
				legitimacy = 100
				republican_tradition = 100
				devotion = 100
				horde_unity = 100
				meritocracy = 100
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_harbour_of_stability_modifier"
				duration = 9125
			}
		}	
	}
	
	es_gold_and_blood_mission = {
		icon = gold_and_blood
		position = 2
		required_missions = { es_harbour_of_stability_mission }
		
		trigger = {
			total_development = 150
			years_of_income = 3.5
			NOT = { inflation = 0.1 }
			
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_gold_and_blood_modifier"
				duration = 18250
			}
		}	
	}
	
	es_mortal_markets_mission = {
		icon = slaves_sl
		position = 3
		required_missions = { es_gold_and_blood_mission }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 5
				OR = {
				    has_building = marketplace
					has_building = trade_depot
					has_building = stock_exchange
				}
				province_has_center_of_trade_of_level = 1
			}
		}
		effect = {
			add_years_of_income = 1.0
			add_country_modifier = {
				name = "es_mortal_markets_modifier"
				duration = 9125
			}
		}	
	}
	
	es_thrall_s_workshops_mission = {
		icon = workshop
		position = 4
		required_missions = { es_mortal_markets_mission }
		
		provinces_to_highlight = {
		    OR = {
				trade_goods = iron
				trade_goods = copper
				trade_goods = moonstone
			}
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 5
				OR = {
				    has_building = workshop
					has_building = counting_house
					has_building = customs_house
				}
				OR = {
					trade_goods = iron
					trade_goods = copper
					trade_goods = moonstone
				}
			}
		}
		effect = {
			add_years_of_income = 1.0
			add_country_modifier = {
				name = "es_thrall_s_workshops_modifier"
				duration = 9125
			}
		}	
	}
	
	es_temples_for_molag_bal_mission = {
		icon = molag_bal_shrine
		position = 5
		required_missions = { es_thrall_s_workshops_mission }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				OR = {
				    has_building = temple
					has_building = cathedral
				}
				base_tax = 10
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_temples_for_molag_bal_modifier"
				duration = -1
			}
			capital_scope = {
				add_base_tax = 3
				add_base_production = 3
				add_base_manpower = 3
			}
		}	
	}
	
	es_feeding_traditions_mission = {
		icon = vampire_feeding
		position = 6
		required_missions = { }
		
		trigger = {
			army_tradition = 35
		}
		effect = {
			create_general = {
				tradition = 50
			}
			add_country_modifier = {
				name = "es_feeding_traditions_modifier"
				duration = 9125
			}
		}	
	}
	
	es_drill_vampires_mission = {
		icon = vampire_sword
		position = 7
		required_missions = { es_feeding_traditions_mission }
		
		trigger = {
			OR = {
				army_professionalism = 1.0
				has_commanding_three_star = yes
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_drill_vampires_modifier"
				duration = 18250
			}
		}	
	}
	
	es_blood_knights_mission = {
		icon = vampire_blood_knight
		position = 8
		required_missions = { es_drill_vampires_mission }
		
		trigger = {
			government_rank = 7
			num_of_cities = 500
		}
		effect = {
			random_owned_province = { add_base_manpower = 3 }
			random_owned_province = { add_base_manpower = 3 }
			random_owned_province = { add_base_manpower = 3 }
			random_owned_province = { add_base_manpower = 3 }
			random_owned_province = { add_base_manpower = 3 }
			add_country_modifier = {
				name = "es_blood_knights_modifier"
				duration = -1
			}
		}	
	}
	
	es_sanguine_wine_production_mission = {
		icon = blood_wine
		position = 9
		required_missions = { }
		
		provinces_to_highlight = {
		    OR = {
				trade_goods = wine
				trade_goods = spiced_wine
				trade_goods = west_weald_wine
			}
		}
		
		trigger = {
			esu_bard = 3
			num_of_owned_provinces_with = {
				value = 5
				OR = {
					trade_goods = wine
					trade_goods = spiced_wine
					trade_goods = west_weald_wine
				}
			}
		}
		effect = {
			add_years_of_income = 1.5
			add_country_modifier = {
				name = "es_sanguine_wine_production_modifier"
				duration = 36500
			}
		}	
	}
	
	es_human_feast_mission = {
		icon = human_flesh
		position = 10
		required_missions = { es_sanguine_wine_production_mission es_human_blood_mission }
		
		provinces_to_highlight = {
		    trade_goods = human_flesh
		}
		
		trigger = {
			esu_bard = 3
			any_owned_province = {
				trade_goods = human_flesh
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_human_feast_modifier"
				duration = -1
			}
		}	
	}
	
	es_conquest_of_pyandonea_lr_vam = {
		icon = pyandonea_mission
		position = 11
		required_missions = { }
		trigger = {
			owns_core_province = 224		
			owns_core_province = 240
			owns_core_province = 2050
			owns_core_province = 2089
			owns_core_province = 209
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 224		
			province_id = 240
			province_id = 2050
			province_id = 2089
			province_id = 209
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_pyandonea_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = pyandonea_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			4740 = { add_core = ROOT }
			if = { limit = { ai = yes 4740 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			4740 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 4740 } } } } }
		}
	}
	
	es_conquest_of_summerset_lr_vam = {
		icon = summerset_mission
		position = 12
		required_missions = { }
		trigger = {
			owns_core_province = 271		
			owns_core_province = 4740
			owns_core_province = 281
			owns_core_province = 249
			owns_core_province = 299
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 271		
			province_id = 4740
			province_id = 281
			province_id = 249
			province_id = 299
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_summerset_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = summerset_lr
			region = auridon_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			337 = { add_core = ROOT }
			if = { limit = { ai = yes 337 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			337 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 337 } } } } }
			
			209 = { add_core = ROOT }
			if = { limit = { ai = yes 209 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			209 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 209 } } } } }
		}
	}
	
	es_conquest_of_continental_atmora_lr_vam = {
		icon = atmora_mission
		position = 13
		required_missions = { }
		trigger = {
			owns_core_province = 357
			owns_core_province = 367
			owns_core_province = 373
			owns_core_province = 382
			owns_core_province = 384
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 357		
			province_id = 367
			province_id = 373
			province_id = 382
			province_id = 384
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_continental_atmora_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			is_city = yes
			OR = {
			area = atmora_1_la
			area = atmora_2_la
			area = atmora_3_la
			area = atmora_4_la
			area = atmora_5_la
			area = atmora_6_la
			}
			}
			add_permanent_claim = ROOT
			}
			}
			
			1299 = { add_core = ROOT }
			if = { limit = { ai = yes 1299 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1299 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1299 } } } } }
			
			483 = { add_core = ROOT }
			if = { limit = { ai = yes 483 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			483 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 483 } } } } }
			
			415 = { add_core = ROOT }
			if = { limit = { ai = yes 415 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			415 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 415 } } } } }
		}
	}
	
	es_conquest_of_islandic_atmora_lr_vam = {
		icon = roscrea_mission
		position = 14
		required_missions = { }
		trigger = {
			owns_core_province = 393
			owns_core_province = 483
			owns_core_province = 2225
			owns_core_province = 2216
			owns_core_province = 479
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 393		
			province_id = 483
			province_id = 2225
			province_id = 2216
			province_id = 479
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_islandic_atmora_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			is_city = yes
			OR = {
			area = atmora_7_la
			area = atmora_10_la
			}
			}
			add_permanent_claim = ROOT
			}
			}
			
			1299 = { add_core = ROOT }
			if = { limit = { ai = yes 1299 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1299 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1299 } } } } }
			
			373 = { add_core = ROOT }
			if = { limit = { ai = yes 373 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			373 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 373 } } } } }
			
			415 = { add_core = ROOT }
			if = { limit = { ai = yes 415 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			415 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 415 } } } } }
		}
	}
	
	es_conquest_of_far_atmora_lr_vam = {
		icon = atmoran_islands_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 407
			owns_core_province = 415
			owns_core_province = 2211
			owns_core_province = 411
			owns_core_province = 1535
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 407		
			province_id = 415
			province_id = 2211
			province_id = 411
			province_id = 1535
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_far_atmora_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			is_city = yes
			OR = {
			area = atmora_8_la
			area = atmora_9_la
			}
			}
			add_permanent_claim = ROOT
			}
			}
			
			395 = { add_core = ROOT }
			if = { limit = { ai = yes 395 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			395 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 395 } } } } }
			
			373 = { add_core = ROOT }
			if = { limit = { ai = yes 373 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			373 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 373 } } } } }
			
			795 = { add_core = ROOT }
			if = { limit = { ai = yes 795 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			795 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 795 } } } } }
		}
	}
	
}

flavour_missions_2_vam = {
	slot = 7
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = vampire capital_scope = { superregion = coldharbour_superregion } }

	es_trade_domination_mission = {
		icon = nordic_trade_squar
		position = 2
		required_missions = { es_harbour_of_stability_mission }
		
		trigger = {
			esu_merchant = 3
			dip_power = 1000
			home_trade_node = {
				trade_share = {
					country = ROOT
					share = 70
				}
			}
		}
		effect = {
			add_dip_power = -1000
			add_country_modifier = {
				name = "es_trade_domination_modifier"
				duration = 36500
			}
		}	
	}
	
	es_war_with_scamps_mission = {
		icon = scamp_1
		position = 3
		required_missions = { es_true_allies_mission_mission }
		
		provinces_to_highlight = {
			OR = {
				province_id = 2883
				culture = scamp
			}
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 2883
			NOT = { exists = CS5 }
			num_of_owned_provinces_with = {
				value = 15
				culture = scamp
			}
		}
		effect = {
			custom_tooltip = es_war_with_scamps_mission_tooltip
			add_prestige = 15
			hidden_effect = {
				every_province = {
					limit = {
						NOT = { owned_by = ROOT }
						culture = scamp
						continent = Oblivion
					}
					add_permanent_claim = ROOT
				}
			}
		}	
	}
	
	es_taste_scamp_blood_mission = {
		icon = scamp_2
		position = 4
		required_missions = { es_war_with_scamps_mission }
		
		trigger = {
			any_subject_country = {
				primary_culture = scamp
			}
		}
		effect = {
			create_general = {
				tradition = 50
			}
			add_country_modifier = {
				name = "es_scamp_blood_modifier"
				duration = 9125
			}
		}	
	}
	
	es_flay_the_bastards_mission = {
		icon = scamp_skin
		position = 5
		required_missions = { es_taste_scamp_blood_mission }
		
		provinces_to_highlight = {
			trade_goods = scamp_skin
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 3
				trade_goods = scamp_skin
			}
		}
		effect = {
			add_years_of_income = 5.0
			add_country_modifier = {
				name = "es_scamp_skin_trade_modifier"
				duration = 9125
			}
		}	
	}
	
	es_wipe_dagon_servants_out_mission = {
		icon = scamp_3
		position = 6
		required_missions = { es_flay_the_bastards_mission }
		
		trigger = {
			NOT = {
				any_country = {
					capital_scope = { superregion = coldharbour_superregion }
					OR = {
						primary_culture = scamp
						religion = mehrunes_dagon_cult
					}
				}
			}
		}
		effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_no_more_destructive_influence_modifier"
				duration = -1
			}
		}	
	}
	
	es_military_settlements_mission = {
		icon = iron_sword
		position = 7
		required_missions = { es_feeding_traditions_mission }
		
		trigger = {
			esu_recruiter = 3
			army_size = 50
			num_of_owned_provinces_with = {
				value = 5
				base_manpower = 5
			}
		}
		effect = {
			add_yearly_manpower = 5.0
			add_country_modifier = {
				name = "es_military_towns_modifier"
				duration = 9125
			}
		}	
	}
	
	es_industrial_centers_mission = {
		icon = forge
		position = 8
		required_missions = { es_military_settlements_mission }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				base_production = 15
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_industrial_centers_modifier"
				duration = 9125
			}
		}	
	}
	
	es_human_blood_mission = {
		icon = human_warrior
		position = 9
		required_missions = { es_vampiric_invasion_mission }
		
		provinces_to_highlight = {
		    culture_group = cyrodiil_cg
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				culture_group = cyrodiil_cg
			}
		}
		effect = {
			define_advisor = {
				type = esu_lich
				skill = 3
				discount = yes
				culture = nedic
				religion = ROOT
			}
			add_country_modifier = {
				name = "es_human_blood_modifier"
				duration = 9125
			}
		}	
	}
	
	es_human_subjects_mission = {
		icon = human_vassal
		position = 10
		required_missions = { es_human_blood_mission }
		
		trigger = {
			any_subject_country = {
				is_subject_of_type = march
				culture_group = cyrodiil_cg
			}
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_human_subjects_modifier"
				duration = -1
			}
		}	
	}
	
	es_conquest_of_yokuda_lr_vam = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_vam = {
		icon = tsakara_mission
		position = 12
		required_missions = { }
		trigger = {
			owns_core_province = 724
			owns_core_province = 702
			owns_core_province = 730
			owns_core_province = 685
			owns_core_province = 700
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 724		
			province_id = 702
			province_id = 730
			province_id = 685
			province_id = 700
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_tsakara_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = tsakara_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
			1206 = { add_core = ROOT }
			if = { limit = { ai = yes 1206 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1206 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1206 } } } } }
		}
	}
	
	es_conquest_of_kamal_lr_vam = {
		icon = kamal_mission
		position = 13
		required_missions = { }
		trigger = {
			owns_core_province = 508
			owns_core_province = 503
			owns_core_province = 493
			owns_core_province = 2600
			owns_core_province = 2573
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 508		
			province_id = 503
			province_id = 493
			province_id = 2600
			province_id = 2573
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_northern_kamal_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = kamal_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
			800 = { add_core = ROOT }
			if = { limit = { ai = yes 800 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			800 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 800 } } } } }
			
			1299 = { add_core = ROOT }
			if = { limit = { ai = yes 1299 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1299 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1299 } } } } }
			
			1049 = { add_core = ROOT }
			if = { limit = { ai = yes 1049 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1049 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1049 } } } } }
		
		}
	}
	
	es_conquest_of_thousand_lr_vam = {
		icon = thousand_island_mission
		position = 14
		required_missions = { }
		trigger = {
			owns_core_province = 542
			owns_core_province = 571
			owns_core_province = 561
			owns_core_province = 551
			owns_core_province = 575
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 542		
			province_id = 571
			province_id = 561
			province_id = 551
			province_id = 575
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_thousand_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = thousand_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
		}
	}
	
	es_conquest_of_po_tun_lr_vam = {
		icon = po_tun_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 611
			owns_core_province = 646
			owns_core_province = 651
			owns_core_province = 666
			owns_core_province = 623
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 611		
			province_id = 646
			province_id = 651
			province_id = 666
			province_id = 623
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_po_tun_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = po_tun_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
}

flavour_missions_3_vam = {
	slot = 8
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = vampire capital_scope = { superregion = coldharbour_superregion } }
	
	es_strengthen_our_bloodlines_mission = {
		icon = vampire_throne
		position = 1
		required_missions = { }
		
		trigger = {
			OR = {			 
				num_of_trusted_allies = 1
				AND = {
					has_consort = yes
					has_heir = yes
				}
			}
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_strengthened_bloodline_modifier"
				duration = 9125
			}
		}	
	}
	
	es_true_allies_mission_mission = {
		icon = allies
		position = 2
		required_missions = { es_strengthen_our_bloodlines_mission }
		
		trigger = {
			num_of_subjects = 1
		}
		effect = {
			add_country_modifier = {
				name = "es_true_allies_modifier"
				duration = 36500
			}
		}	
	}
	
	es_blood_of_coldharbour_mission = {
		icon = vampire_castle
		position = 3
		required_missions = { es_true_allies_mission_mission }
		
		trigger = {
			capital_scope = {
				development = 21
			}
			esu_steward = 2
		}
		effect = {
			add_yearly_manpower = 2.5
			add_country_modifier = {
				name = "es_blood_of_coldharbour_modifier"
				duration = 9125
			}
		}	
	}
	
	es_fiest_of_molag_bal_mission = {
		icon = molag_bal_mace
		position = 4
		required_missions = { es_blood_of_coldharbour_mission }
		
		trigger = {
			is_defender_of_faith = yes
			religious_unity = 1.0
			NOT = { had_recent_war = 25 }
		}
		effect = {
			add_country_modifier = {
				name = "es_fiest_of_molag_bal_modifier"
				duration = -1
			}
		}	
	}
	
	es_origin_of_inscription_mission = {
		icon = daedric_runes
		position = 5
		required_missions = { }
		
		trigger = {
			is_year = 100
			total_development = 250
			esu_curator = 3
		}
		effect = {
			add_adm_power = 350
			add_dip_power = 350
			add_mil_power = 350
			capital_scope = {
				add_institution_embracement = {
					which = inscription
					value = 100
				}
			}
		}	
	}
	
	es_vampire_unification_mission = {
		icon = vampire_flag
		position = 6
		required_missions = { }
		
		trigger = {
			OR = {
				tag = VAM
				AND = {
					NOT = { capital_scope = { superregion = coldharbour_superregion } }
					total_development = 1000
				}
			}
		}
		effect = {
			add_stability = 1
			add_country_modifier = {
				name = "es_vampire_unification_modifier"
				duration = 9125
			}
		}	
	}
	
	es_planemeld_preparations_mission = {
		icon = coldharbour_gate
		position = 7
		required_missions = { es_vampire_unification_mission }
		
		provinces_to_highlight = {
		    province_id = 3187
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			3187 = { has_great_project = { type = cold_heart_canal tier = 3 } }
		}
		effect = {
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
			random_province = { limit = { superregion = cyrodiil_superregion NOT = { culture = vampire } } change_culture = vampire change_religion = ROOT }
		}	
	}
	
	es_vampiric_invasion_mission = {
		icon = vampire_warrior
		position = 8
		required_missions = { es_planemeld_preparations_mission }
		
		trigger = {
			any_owned_province = {
				continent = Tamriel
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_vampiric_invasion_modifier"
				duration = 9125
			}
		}	
	}
	
	es_thrall_ships_mission = {
		icon = vampire_ship_1
		position = 9
		required_missions = { es_vampiric_invasion_mission }
		
		trigger = {
			num_of_transport = 10
		}
		effect = {
			add_sailors = 5000
			add_country_modifier = {
				name = "es_thrall_ships_modifier"
				duration = 9125
			}
		}	
	}
	
	es_undead_fleet_mission = {
		icon = vampire_ship_2
		position = 10
		required_missions = { es_thrall_ships_mission }
		
		trigger = {
			num_of_heavy_ship = 15
			num_of_light_ship = 25
			num_of_galley = 35
		}
		effect = {
			add_dip_power = 500
			add_country_modifier = {
				name = "es_undead_fleet_modifier"
				duration = 9125
			}
		}	
	}
	
	es_conquest_of_upper_tsakara_lr_vam = {
		icon = transakavir_mission
		position = 11
		required_missions = { }
		trigger = {
			owns_core_province = 741
			owns_core_province = 750
			owns_core_province = 772
			owns_core_province = 761
			owns_core_province = 757
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 741		
			province_id = 750
			province_id = 772
			province_id = 761
			province_id = 757
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_upper_tsakara_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = upper_tsakara_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
		}
	}
	
	es_conquest_of_islandic_tsakara_lr_vam = {
		icon = northern_islands_mission
		position = 12
		required_missions = { }
		trigger = {
			owns_core_province = 1541
			owns_core_province = 800
			owns_core_province = 806
			owns_core_province = 795
			owns_core_province = 799
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1541		
			province_id = 800
			province_id = 806
			province_id = 795
			province_id = 799
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_islandic_tsakara_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			region = northern_islands_lr
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
			493 = { add_core = ROOT }
			if = { limit = { ai = yes 493 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			493 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 493 } } } } }
			
			415 = { add_core = ROOT }
			if = { limit = { ai = yes 415 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			415 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 415 } } } } }
		}
	}
	
	es_conquest_of_valenwood_lr_vam = {
		icon = valenwood_mission
		position = 13
		required_missions = { }
		trigger = {
			owns_core_province = 820		
			owns_core_province = 812
			owns_core_province = 868
			owns_core_province = 4941
			owns_core_province = 844
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 820		
			province_id = 812
			province_id = 868
			province_id = 4941
			province_id = 844
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_valenwood_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = northern_valenwood_lr
			region = southern_valenwood_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_elsweyr_lr_vam = {
		icon = elsweyr_mission
		position = 14
		required_missions = { }
		trigger = {
			owns_core_province = 922		
			owns_core_province = 5117
			owns_core_province = 5237
			owns_core_province = 5285
			owns_core_province = 888
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 922		
			province_id = 5117
			province_id = 5237
			province_id = 5285
			province_id = 888
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_elsweyr_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = anequina_lr
			region = pelletine_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_vvardenfell_lr_vam = {
		icon = vvardenfell_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 1043		
			owns_core_province = 1049
			owns_core_province = 1018
			owns_core_province = 4098
			owns_core_province = 1028
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1043		
			province_id = 1049
			province_id = 1018
			province_id = 4098
			province_id = 1028
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_vvardenfell_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = vvardenfell_lr
			region = llothanis_peninsula_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
}

flavour_missions_4_vam = {
	slot = 9
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = vampire capital_scope = { superregion = coldharbour_superregion } }
	
	es_undead_army_mission = {
		icon = skeleton_warrior
		position = 2
		required_missions = { es_secure_sovereignty_mission }
		
		trigger = {
			num_of_infantry = 25
			num_of_cavalry = 10
			manpower = 50
		}
		effect = {
			add_country_modifier = {
				name = "es_undead_army_modifier"
				duration = 9125
			}
		}	
	}
	
	es_taste_dremoran_blood_mission = {
		icon = dremora_1
		position = 3
		required_missions = { es_undead_army_mission es_true_allies_mission_mission }
		
		provinces_to_highlight = {
			culture = dremoran
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 15
				culture = dremoran
			}
		}
		effect = {
			add_yearly_manpower = 3.5
			add_country_modifier = {
				name = "es_dremoran_blood_modifier"
				duration = 9125
			}
		}	
	}
	
	es_deal_with_dremoran_threat_mission = {
		icon = dremoran_warrior
		position = 4
		required_missions = { es_taste_dremoran_blood_mission }
		
		provinces_to_highlight = {
			OR = {
				province_id = 2744
				province_id = 2775
				province_id = 2799
				province_id = 2828
				province_id = 2727
			}
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 2744
			owns_core_province = 2775
			owns_core_province = 2799
			owns_core_province = 2828
			owns_core_province = 2727
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_deal_with_dremoran_threat_modifier"
				duration = -1
			}
		}	
	}
	
	es_war_with_soul_schriven_mission = {
		icon = soul_schriven
		position = 5
		required_missions = { es_deal_with_dremoran_threat_mission }
		
		provinces_to_highlight = {
			OR = {
				province_id = 2970
				province_id = 2987
				province_id = 3147
				province_id = 3157
				province_id = 3168
			}
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 2970
			owns_core_province = 2987
			owns_core_province = 3147
			owns_core_province = 3157
			owns_core_province = 3168
		}
		effect = {	
			add_years_of_income = 5.0
			add_country_modifier = {
				name = "es_soul_schriven_slaves_modifier"
				duration = 9125
			}
		}	
	}
	
	es_take_lightless_oubliette_mission = {
		icon = lightless_oubliette
		position = 6
		required_missions = { es_war_with_soul_schriven_mission }
		
		provinces_to_highlight = {
			province_id = 3188
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 3188
		}
		effect = {
			random_owned_province = { spawn_rebels = { type = molag_bal_cult_rebels size = 3 win = yes unrest = 10 } }
			random_owned_province = { spawn_rebels = { type = molag_bal_cult_rebels size = 3 win = yes unrest = 10 } }
			random_owned_province = { spawn_rebels = { type = molag_bal_cult_rebels size = 3 win = yes unrest = 10 } }
			
			add_country_modifier = {
				name = "es_lightless_oubliette_owners_modifier"
				duration = 36500
			}
		}	
	}
	
	es_spread_vampiric_drain_mission = {
		icon = vampire_drain
		position = 7
		required_missions = { es_vampire_lords_mission }
		
		trigger = {
			has_idea_group = restoration_ideas
			esu_mage = 3
			adm = 4
		}
		effect = {
			add_country_modifier = {
				name = "es_spread_vampiric_drain_modifier"
				duration = 18250
			}
		}	
	}
	
	es_acquire_daedra_hearts_mission = {
		icon = daedra_heart
		position = 8
		required_missions = { es_spread_vampiric_drain_mission }
		
		provinces_to_highlight = {
		    trade_goods = daedra_heart
		}
		
		trigger = {
			any_owned_province = {
				trade_goods = daedra_heart
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_acquire_daedra_hearts_modifier"
				duration = 36500
			}
		}	
	}
	
	es_elven_blood_mission = {
		icon = high_elf
		position = 9
		required_missions = { es_vampiric_invasion_mission }
		
		provinces_to_highlight = {
		    culture_group = high_elves_cg
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				culture_group = high_elves_cg
			}
		}
		effect = {
			define_advisor = {
				type = esu_occultist
				skill = 3
				discount = yes
				culture = altmer
				religion = ROOT
			}
			add_country_modifier = {
				name = "es_elven_blood_modifier"
				duration = 9125
			}
		}	
	}
	
	es_elven_subjects_mission = {
		icon = ayleid_ruler
		position = 10
		required_missions = { es_elven_blood_mission }
		
		trigger = {
			any_subject_country = {
				is_subject_of_type = march
				culture_group = high_elves_cg
			}
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_elven_subjects_modifier"
				duration = 9125
			}
		}	
	}
	
	es_conquest_of_morrowind_lr_vam = {
		icon = morrowind_mission
		position = 11
		required_missions = { }
		trigger = {
			owns_core_province = 1002
			owns_core_province = 990
			owns_core_province = 3373
			owns_core_province = 958
			owns_core_province = 3904
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1002		
			province_id = 990
			province_id = 3373
			province_id = 958
			province_id = 3904
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_morrowind_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = morrowind_lr
			region = deshaan_lr
			region = velothi_mountains_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_black_marsh_lr_vam = {
		icon = black_marsh_mission
		position = 12
		required_missions = { }
		trigger = {
			owns_core_province = 1087		
			owns_core_province = 1098
			owns_core_province = 1075
			owns_core_province = 1069
			owns_core_province = 1064
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1087		
			province_id = 1098
			province_id = 1075
			province_id = 1069
			province_id = 1064
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_black_marsh_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = black_marsh_lr
			region = shadowfen_lr
			region = murkmire_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_western_cyrodiil_lr_vam = {
		icon = colovia_mission
		position = 13
		required_missions = { }
		trigger = {
			owns_core_province = 1161
			owns_core_province = 1144
			owns_core_province = 5657
			owns_core_province = 5616
			owns_core_province = 5695
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1161		
			province_id = 1144
			province_id = 5657
			province_id = 5616
			province_id = 5695
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_western_cyrodiil_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = western_cyrodiil_lr
			region = golden_coast_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_eastern_cyrodiil_lr_vam = {
		icon = nibenay_mission
		position = 14
		required_missions = { }
		trigger = {
			owns_core_province = 1120
			owns_core_province = 1251
			owns_core_province = 1238
			owns_core_province = 6044
			owns_core_province = 1230
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1120		
			province_id = 1251
			province_id = 1238
			province_id = 6044
			province_id = 1230
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_eastern_cyrodiil_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = eastern_cyrodiil_lr
			region = valus_mountains_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_central_cyrodiil_lr_vam = {
		icon = central_cyrodiil_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 1206
			owns_core_province = 1130
			owns_core_province = 1194
			owns_core_province = 5905
			owns_core_province = 1209
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1206		
			province_id = 1130
			province_id = 1194
			province_id = 5905
			province_id = 1209
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_central_cyrodiil_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
				limit = {
					OR = {
						region = central_cyrodiil_lr
						region = jerall_mountains_lr
					}
					is_city = yes
				}
				add_permanent_claim = ROOT
				}
			}
		}
	}
	
}

flavour_missions_5_vam = {
	slot = 10
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = vampire capital_scope = { superregion = coldharbour_superregion } }
	
	es_secure_sovereignty_mission = {
		icon = vampire_warrior_2
		position = 1
		required_missions = { }
		
		trigger = {
			is_at_war = yes
			war_score = 99
			any_rival_country = {
				defensive_war_with = ROOT
			}
		}
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_secure_sovereignty_modifier"
				duration = 9125
			}
		}	
	}
	
	es_lemevan_embassy_mission = {
		icon = vampire_coldharbour
		position = 2
		required_missions = { es_secure_sovereignty_mission }
		
		provinces_to_highlight = {
			province_id = 2897
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			OR = {
				AND = {
					CS6 = {
							has_opinion = {
								who = root
								value = 150
							}					
						}
					alliance_with = CS6
				}
				owns_core_province = 2897
				tag = CS6
			}
		}
		effect = {
			add_prestige = 10
			if = {
				limit = {
					NOT = { tag = CS6 }
				}
				every_owned_province = {
					limit = {
						is_core = CS6
					}
					cede_province = CS6
				}
				create_subject = {
					subject_type = vassal
					subject = CS6
				}
			}
		}	
	}
	
	es_subjugate_clans_mission = {
		icon = vampire_lord_2
		position = 3
		required_missions = { es_lemevan_embassy_mission }
		
		provinces_to_highlight = {
			OR = {
				province_id = 2850
				province_id = 2834
				province_id = 2756
			}
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 2850
			owns_core_province = 2834
			owns_core_province = 2756
		}
		
		effect = {
			add_years_of_income = 3.75
			if = {
				limit = {
					NOT = { tag = CR5 }
				}
				every_owned_province = {
					limit = {
						is_core = CR5
					}
					cede_province = CR5
				}
				create_subject = {
					subject_type = vassal
					subject = CR5
				}
			}
			if = {
				limit = {
					NOT = { tag = CS1 }
				}
				every_owned_province = {
					limit = {
						is_core = CS1
					}
					cede_province = CS1
				}
				create_subject = {
					subject_type = vassal
					subject = CS1
				}
			}
			if = {
				limit = {
					NOT = { tag = CQ7 }
				}
				every_owned_province = {
					limit = {
						is_core = CQ7
					}
					cede_province = CQ7
				}
				create_subject = {
					subject_type = vassal
					subject = CQ7
				}
			}
		}	
	}
	
	es_colonize_the_east_mission = {
		icon = coldharbour
		position = 4
		required_missions = { es_subjugate_clans_mission }
		
		provinces_to_highlight = {
			region = eastern_coldharbour_lr
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			esu_adventurer = 2
			any_owned_province = {
				region = eastern_coldharbour_lr
			}
		}
		effect = {
			create_conquistador = { tradition = 50 }
			add_country_modifier = {
				name = "es_new_lands_colonisation_modifier"
				duration = 9125
			}
		}	
	}
	
	es_secure_vile_laboratory_mission = {
		icon = vile_laboratory
		position = 5
		required_missions = { es_colonize_the_east_mission }
		
		provinces_to_highlight = {
			province_id = 2903
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 2903
		}
		effect = {
			add_adm_tech = 1
			add_dip_tech = 1
			add_mil_tech = 1
		}	
	}
	
	es_vampire_lords_mission = {
		icon = vampire_lord
		position = 6
		required_missions = { }
		
		trigger = {
			mil = 5
		}
		effect = {
			add_prestige = 10
			create_general = { tradition = 50 }
			add_country_modifier = {
				name = "es_vampire_lords_modifier"
				duration = 9125
			}
		}	
	}
	
	es_submit_the_chasm_mission = {
		icon = the_chasm
		position = 7
		required_missions = { }
		
		provinces_to_highlight = {
			province_id = 2727
			NOT = { controlled_by = ROOT }
		}
		
		trigger = {
			2727 = { controlled_by = ROOT }
		}
		effect = {
			define_advisor = {
				type = esu_torturer
				skill = 3
				discount = yes
				culture = dremoran
				religion = ROOT
			}
			every_owned_province = {
				limit = {
					is_core = CQ3
				}
				cede_province = CQ3
			}
			create_subject = {
				subject_type = vassal
				subject = CQ3
			}
		}	
	}
	
	es_tolerate_dremoran_culture_mission = {
		icon = dremora_2
		position = 7
		required_missions = { es_submit_the_chasm_mission }
		
		trigger = {
			accepted_culture = dremoran
			esu_bard = 3
		}
		effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_dremoran_culture_modifier"
				duration = 18250
			}
		}	
	}
	
	es_family_crypts_mission = {
		icon = vampire_crypt
		position = 9
		required_missions = { }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				development = 15
				OR = {
					has_building = fort_15th
					has_building = fort_16th
					has_building = fort_17th
					has_building = fort_18th
				}
			}
			esu_officer = 3
		}
		effect = {
			add_years_of_income = 2.5
			add_country_modifier = {
				name = "es_family_crypts_modifier"
				duration = 9125
			}
		}	
	}
	
	es_the_sole_owner_of_state_mission = {
		icon = vampire_king
		position = 10
		required_missions = { }
		
		trigger = {
			crown_land_share = 75
		}
		effect = {
			add_prestige = 15
			add_country_modifier = {
				name = "es_the_sole_owner_of_state"
				duration = 9125
			}
		}	
	}
	
	es_conquest_of_western_skyrim_lr_vam = {
		icon = northern_skyrim
		position = 11
		required_missions = { }
		trigger = {
			owns_core_province = 1342
			owns_core_province = 1306
			owns_core_province = 1355
			owns_core_province = 1275
			owns_core_province = 1331
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1342		
			province_id = 1306
			province_id = 1355
			province_id = 1275
			province_id = 1331
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_western_skyrim_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = reach_lr
			region = great_planes_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
			479 = { add_core = ROOT }
			if = { limit = { ai = yes 479 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			479 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 479 } } } } }
		}
	}
	
	es_conquest_of_eastern_skyrim_lr_vam = {
		icon = southern_skyrim_mission
		position = 12
		required_missions = { }
		trigger = {
			owns_core_province = 1319
			owns_core_province = 1291
			owns_core_province = 1268
			owns_core_province = 1286
			owns_core_province = 2924
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1319		
			province_id = 1291
			province_id = 1268
			province_id = 1286
			province_id = 2924
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_eastern_skyrim_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = rift_lr
			region = great_planes_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_hgh_rock_lr_vam = {
		icon = high_rock_mission
		position = 13
		required_missions = { }
		trigger = {
			owns_core_province = 1369
			owns_core_province = 1391
			owns_core_province = 1413
			owns_core_province = 7019
			owns_core_province = 1379
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1369		
			province_id = 1391
			province_id = 1413
			province_id = 7019
			province_id = 1379
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_hgh_rock_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = high_rock_lr
			region = wrothgar_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
	es_conquest_of_hammerfell_lr_vam = {
		icon = hammerfell_mission
		position = 14
		required_missions = { }
		trigger = {
			owns_core_province = 1510		
			owns_core_province = 1446
			owns_core_province = 1478
			owns_core_province = 6257
			owns_core_province = 6178
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 1510		
			province_id = 1446
			province_id = 1478
			province_id = 6257
			province_id = 6178
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
			custom_tooltip = es_conquest_of_hammerfell_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = corten_heights_lr
			region = dragontail_mountains_lr
			region = alikr_desert_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
			
			1501 = { add_core = ROOT }
			if = { limit = { ai = yes 1501 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = PREV } NOT = { is_subject_of = PREV }  } } } }
			1501 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1501 } } } } }
		}
	}
	
	es_conquest_of_coldharbour_lr_vam = {
		icon = coldharbour_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 3188
			owns_core_province = 2970
			owns_core_province = 2710
			owns_core_province = 2828
			owns_core_province = 2915
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 3188		
			province_id = 2970
			province_id = 2710
			province_id = 2828
			province_id = 2915
			}
			NOT = { owned_by = ROOT }
		}
		effect = {
		    custom_tooltip = es_conquest_of_coldharbour_lr_tooltip
		    add_prestige = 10
			hidden_effect = {
			every_province = {
			limit = {
			OR = {
			region = southern_coldharbour_lr
			region = eastern_coldharbour_lr
			region = western_coldharbour_lr
			region = northern_coldharbour_lr
			}
			is_city = yes
			}
			add_permanent_claim = ROOT
			}
			}
		}
	}
	
}