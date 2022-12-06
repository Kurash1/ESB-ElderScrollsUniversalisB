flavour_missions_1_dgf = {
	slot = 6
	generic = no
	ai = yes
    potential = { tag = BA1 }
	has_country_shield = no
	
	es_secure_position_dgf = {
		position = 2
		icon = daggerfall_flag
		required_missions = {
			es_secure_independence_dgf
		}

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			area = high_1_la
		}

		trigger = {
			high_1_la = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_mil_power = 150
			add_yearly_manpower = 2.5
			add_country_modifier = {
				name = es_position_secured_dgf
				duration = 9125
			}
		}
	}

	es_turn_attention_outwards_dgf = {
		position = 3
		icon = human_warrior
		required_missions = {
			es_secure_position_dgf
		}

		trigger = {
			army_size = 20
			army_professionalism = 0.15
		}

		effect = {
			define_advisor = {
				type = esu_trainer
				skill = 2
				discount = yes
			}
			high_15_la = {
				add_permanent_claim = ROOT
			}
			high_16_la = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_fund_expansion_dgf = {
		position = 4
		icon = compass
		required_missions = {
			es_nothern_ambitions_dgf
		}

		trigger = {
			full_idea_group = exploration_ideas
			years_of_income = 2.5
		}

		effect = {
			add_years_of_income = -2.5
			add_country_modifier = {
				name = es_expansion_of_our_borders_dgf
				duration = 9125
			}
		}
	}

	#es_colonize_yokuda_dgf = {
	#	position = 5
	#	icon = yokudan_city
	#	required_missions = {
	#		es_fund_expansion_dgf
	#	}
	#	
	#	provinces_to_highlight = {
	#	    superregion = yokuda_superregion
	#		NOT = { owned_by = ROOT }
	#	}
	#
	#	trigger = {
	#		num_of_owned_provinces_with = {
	#			value = 5
	#			superregion = yokuda_superregion
	#		}
	#	}
	#
	#	effect =  {
	#		create_conquistador = { tradition = 50 }
	#		add_country_modifier = {
	#			name = es_colonizers_dgf
	#			duration = 18250
	#		}
	#	}
	#}

	es_nordic_smithing_dgf = {
		position = 7
		icon = iron_sword
		required_missions = {
			
		}
		
		provinces_to_highlight = {
		    trade_goods = iron
			NOT = { owned_by = ROOT }
		}

		trigger = {
			num_of_owned_provinces_with = {
				value = 5
				OR = {
					trade_goods = iron	
					trade_goods = orichalcum	
					trade_goods = malachite	
					trade_goods = moonstone	
					trade_goods = corundum	
				}
			}
		}

		effect = {
			define_advisor = {
				type = esu_blacksmith
				skill = 2
				discount = yes
			}
			add_country_modifier = {
				name = es_nordic_smithing_mod_dgf
				duration = 9125
			}
		}
	}
	
	es_breton_steel_production_dgf = {
		position = 8
		icon = steel
		required_missions = {
			es_nordic_smithing_dgf
		}
		
		provinces_to_highlight = {
			OR = {
				trade_goods = iron
				trade_goods = corundum
			}
			owned_by = ROOT 
		}

		trigger = {
			any_owned_province = {
				trade_goods = iron
				base_production = 7
			}
			any_owned_province = {
				trade_goods = corundum
				base_production = 7
			}
			any_owned_province = {
				base_production = 10
				base_manpower = 10
			}
		}

		effect = {
			add_country_modifier = {
				name = "es_breton_steel_dgf"
				duration = 27375
			}
		}
	}

	es_conquest_of_pyandonea_lr_dgf = {
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
	
	es_conquest_of_summerset_lr_dgf = {
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
	
	es_conquest_of_continental_atmora_lr_dgf = {
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
	
	es_conquest_of_islandic_atmora_lr_dgf = {
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
	
	es_conquest_of_far_atmora_lr_dgf = {
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

flavour_missions_2_dgf = {
	slot = 7
	generic = no
	ai = yes
	potential = { tag = BA1 }
	has_country_shield = no
	
	es_secure_independence_dgf = {
		position = 1
		icon = breton_king
		required_missions = {
			
		}

		trigger = {
			army_size_percentage = 1
			is_free_or_tributary_trigger = yes
		}

		effect = {
			add_prestige = 15
			add_country_modifier = {
				name = es_independance_secured_dgf
				duration = 9125
			}
		}
	}

	es_nothern_ambitions_dgf = {
		position = 3
		icon = glenumbra
		required_missions = {
			es_secure_independence_dgf
		}

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			area = high_16_la
		}

		trigger = {
			high_16_la = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			create_general = { tradition = 50 }
			high_4_la = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_conquer_camlorn_dgf = {
		position = 4
		icon = camlorn
		required_missions = {
			es_nothern_ambitions_dgf
		}

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			area = high_4_la
		}

		trigger = {
			NOT = { exists = BA4 }
			high_4_la = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_prestige = 10
			high_6_la = {
				add_permanent_claim = ROOT
			}
		}
	}
	
	es_reconnect_with_nords_dgf = {
		position = 6
		icon = nord_noble
		required_missions = {
			es_conquer_camlorn_dgf
		}

		trigger = {
			any_ally = {
				primary_culture = nord
				religion = nordic_pantheon
				has_opinion = {
					who = ROOT
					value = 150
				}
			}
		}

		effect = {
			add_stability = 1
			add_country_modifier = {
				name = es_reconnected_with_our_brothers_dgf
				duration = -1
			}
		}
	}

	es_acquire_subjects_dgf = {
		position = 7
		icon = human_vassal
		required_missions = {
			es_reconnect_with_nords_dgf
		}

		trigger = {
			num_of_subjects = 3
			all_subject_country = {
				NOT = { liberty_desire = 50 }
			}
		}

		effect = {
			add_prestige = 15
			add_country_modifier = {
				name = es_subjects_acquired_dgf
				duration = 36500
			}
		}
	}

	es_skyforge_steel_dgf = {
		position = 8
		icon = skyforge
		required_missions = {
			es_nordic_smithing_dgf
			es_conquer_western_holds_dgf
		}
		
		provinces_to_highlight = {
		    province_id = 1319
			NOT = { owned_by = ROOT }
		}

		trigger = {
			owns_core_province = 1319
			OR = {
				AND = {
					has_dlc = "Leviathan"
					1319 = { has_great_project = { type = skyforge tier = 3 } }
				}
				AND = {
					NOT = { has_dlc = "Leviathan" }
					treasury = 5000
					NOT = { inflation = 0.1 }
					NOT = { num_of_loans = 1 }
				}
			}
		}

		effect = {
			1369 = {
				change_trade_goods = weapons_and_armor
				add_base_production = 3
			}
			add_country_modifier = {
				name = es_skyforge_steel_mod_dgf
				duration = -1
			}
		}
	}

	es_conquest_of_yokuda_lr_dgf = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_dgf = {
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
	
	es_conquest_of_kamal_lr_dgf = {
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
	
	es_conquest_of_thousand_lr_dgf = {
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
	
	es_conquest_of_po_tun_lr_dgf = {
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

flavour_missions_3_dgf = {
	slot = 8
	generic = no
	ai = yes
	potential = { tag = BA1 }
	has_country_shield = no

	es_develop_daggerfall_dgf = {
		position = 2
		icon = daggerfall_market
		required_missions = {
			es_secure_independence_dgf
			es_found_our_city_dgf
		}
		
		provinces_to_highlight = {
		    province_id = 1369
			NOT = { owned_by = ROOT }
		}

		trigger = {
			1369 = {
				development = 21
			}
		}

		effect = {
			define_advisor = {
				type = esu_steward
				skill = 2
				discount = yes
			}
			add_country_modifier = {
				name = es_strong_capital_dgf
				duration = 36500
			}
		}
	}
	
	es_our_founders_ways_dgf = {
		position = 3
		icon = nord_farmers
		required_missions = {
			es_develop_daggerfall_dgf
		}
		
		provinces_to_highlight = {
		    province_id = 1369
			NOT = { owned_by = ROOT }
		}

		trigger = {
			OR = {
				AND = {
					religion = nordic_pantheon
					primary_culture = nord
				}
				1369 = {
					religion = nordic_pantheon
					culture = nord
				}
			}
		}

		effect = {
			change_adm = 1
			add_country_modifier = {
				name = es_founders_ways_dgf
				duration = -1
			}
		}
	}

	es_converting_the_locals_dgf = {
		position = 4
		icon = kyne
		required_missions = {
			es_our_founders_ways_dgf
			es_nothern_ambitions_dgf
			es_look_south_dgf
		}
		
		provinces_to_highlight = {
		    culture = nord
			religion = nordic_pantheon
			NOT = { owned_by = ROOT }
		}

		trigger = {
			accepted_culture = nord
			num_of_owned_provinces_with = {
				value = 25
				culture = nord
				religion = nordic_pantheon
			}
		}

		effect = {
			add_prestige = 10
			random_owned_province = {
				limit = {
					NOT = { culture = ROOT }
					NOT = { culture = nord }
				}
				change_culture = nord
			}
			random_owned_province = {
				limit = {
					NOT = { culture = ROOT }
					NOT = { culture = nord }
				}
				change_culture = nord
			}
			random_owned_province = {
				limit = {
					NOT = { culture = ROOT }
					NOT = { culture = nord }
				}
				change_culture = nord
			}
			add_country_modifier = {
				name = es_pacify_locals_dgf
				duration = 18250
			}
		}
	}

	es_rulers_high_rock_dgf = {
		position = 5
		icon = high_rock_flag
		required_missions = {
			es_conquer_camlorn_dgf
			es_rule_peninsula_dgf
		}
		
		provinces_to_highlight = {
		    region = high_rock_lr
			NOT = { owned_by = ROOT }
		}

		trigger = {
			high_rock_lr = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			convert_ruler_to_general = yes
			add_legitimacy = 100
			add_republican_tradition = 100
			add_devotion = 100
			add_horde_unity = 100
			add_meritocracy = 100
			wrothgar_lr = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_truly_rule_peninsula_dgf = {
		position = 6
		icon = wrothgar_flag
		required_missions = {
			es_rulers_high_rock_dgf
		}
		
		provinces_to_highlight = {
		    region = wrothgar_lr
			NOT = { owned_by = ROOT }
		}

		trigger = {
			wrothgar_lr = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_prestige = 25
			add_yearly_manpower = 5
			1342 = { add_permanent_claim = ROOT }
			1291 = { add_permanent_claim = ROOT }
			1319 = { add_permanent_claim = ROOT }
			1336 = { add_permanent_claim = ROOT }
			1355 = { add_permanent_claim = ROOT }
		}
	}

	es_conquer_western_holds_dgf = {
		position = 7
		icon = reach
		required_missions = {
			es_truly_rule_peninsula_dgf
		}

		provinces_to_highlight = {
			OR = {
				province_id = 1342
				province_id = 1291
				province_id = 1319
				province_id = 1336
				province_id = 1355
			}
			NOT = { owned_by = ROOT }
		}

		trigger = {
			1342 = { owned_by = ROOT }
			1291 = { owned_by = ROOT }
			1319 = { owned_by = ROOT }
			1336 = { owned_by = ROOT }
			1355 = { owned_by = ROOT }
		}

		effect = {
			add_dip_power = 250
			define_advisor = {
				type = esu_governor
				skill = 3
				discount = yes
			}
			skyrim_superregion = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_home_as_conquerors_dgf = {
		position = 9
		icon = skyrim
		required_missions = {
			es_conquer_western_holds_dgf
		}

		provinces_to_highlight = {
			superregion = skyrim_superregion
			NOT = { owned_by = ROOT }
		}

		trigger = {
			skyrim_superregion = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_prestige = 25
			add_years_of_income = 5.0
			add_country_modifier = {
				name = es_rulers_of_skyrim_dgf
				duration = -1
			}
		}
	}

	es_conquest_of_upper_tsakara_lr_dgf = {
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
	
	es_conquest_of_islandic_tsakara_lr_dgf = {
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
	
	es_conquest_of_valenwood_lr_dgf = {
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
	
	es_conquest_of_elsweyr_lr_dgf = {
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
	
	es_conquest_of_vvardenfell_lr_dgf = {
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

flavour_missions_4_dgf = {
	slot = 9
	generic = no
	ai = yes
	potential = {
		tag = BA1
	}
	has_country_shield = no
	
	es_found_our_city_dgf = {
		position = 1
		icon = daggerfall
		required_missions = {

		}
		
		provinces_to_highlight = {
		    province_id = 1369
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 1369
			is_year = 308
		}

		effect = {
			country_event = { id = es_0_scenario.5 }
			add_country_modifier = {
				name = es_daggerfall_founded_dgf
				duration = 9125
			}
			set_global_flag = es_0_scenario.5_flag
		}
	}

	es_look_south_dgf = {
		position = 3
		icon = high_rock
		required_missions = {
			es_develop_daggerfall_dgf
		}

		provinces_to_highlight = {
			area = high_15_la
			NOT = { owned_by = ROOT }
		}

		trigger = {
			high_15_la = {
				type = all
				owned_by = ROOT
			}
		}
		
		effect = {
			add_prestige = 5
			add_years_of_income = 1.5
			high_14_la = {
				add_permanent_claim =  ROOT
			}
		}
		
	}

	es_rule_peninsula_dgf = {
		position = 4
		icon = stonetooth
		required_missions = {
			es_look_south_dgf
		}

		provinces_to_highlight = {
			area = high_14_la
			NOT = { owned_by = ROOT }
		}

		trigger = {
			high_14_la = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_prestige = 10
			add_years_of_income = 2.5
			high_2_la = {
				add_permanent_claim = ROOT
			}
		}
	}
	
	es_attempt_on_sentinel_ruler_dgf = {
		position = 6
		icon = assasin_dagger
		required_missions = {
			es_spies_of_daggerfall_dgf
			es_rule_peninsula_dgf
		}

		trigger = {
			1510 = {
				owner = {
					has_spy_network_from = {
						who = ROOT
						value = 100
					}
				}
			}
		}

		effect = {
			country_event = {
				id = es_assasination_sentinel_dgf.1
				days = 10
			}
		}
	}

	es_crush_sentinel_dgf = {
		position = 7
		icon = sentinel
		required_missions = {
			es_attempt_on_sentinel_ruler_dgf
		}

		provinces_to_highlight = {
			OR = {
				AND = {
					area = hammerfell_13_la
					NOT = { owned_by = ROOT }
				}
				owned_by = HB3
			}

			
		}

		trigger = {
			NOT = {
				exists = HB3
			}
			hammerfell_13_la = {
				type = all
				owned_by = ROOT
			}

		}

		effect = {
			add_yearly_manpower = 3.5
			add_country_modifier = {
				name = es_victory_over_rival_dgf
				duration = 18250
			}
		}
	}

	es_domination_iliac_bay = {
		position = 8
		icon = iliac_bay
		required_missions = {
			es_crush_sentinel_dgf
			es_domination_glenumbra_dgf
		}

		trigger = {
			3756 = {
				has_most_province_trade_power = ROOT
			}
		}

		effect = {
			define_advisor = {
				type = esu_merchant
				skill = 3
				discount = yes
			}
			add_country_modifier = {
				name = es_dominating_iliac_bay_dgf
				duration = -1
			}
		}
	}

	es_conquest_of_morrowind_lr_dgf = {
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
	
	es_conquest_of_black_marsh_lr_dgf = {
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
	
	es_conquest_of_western_cyrodiil_lr_dgf = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_dgf = {
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
	
	es_conquest_of_central_cyrodiil_lr_dgf = {
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

flavour_missions_5_dgf = {
	slot = 10
	generic = no
	ai = yes
	potential = {
		tag = BA1
	}
	has_country_shield = no


	es_found_bank_of_dgf = {
		position = 2
		icon = building_plan
		required_missions = {
			es_found_our_city_dgf
		}
		
		provinces_to_highlight = {
		    province_id = 1369
			NOT = { owned_by = ROOT }
		}

		trigger = {
			owns_core_province = 1369
			OR = {
				AND = {
					has_dlc = "Leviathan"
					OR = {
						1369 = { has_great_project = { type = bank_of_daggerfall tier = 1 } }
						1369 = { has_great_project = { type = bank_of_daggerfall tier = 2 } }
						1369 = { has_great_project = { type = bank_of_daggerfall tier = 3 } }
					}
				}
				AND = {
					NOT = { has_dlc = "Leviathan" }
					treasury = 1000
					NOT = { inflation = 0.5 }
					NOT = { num_of_loans = 1 }
				}
			}
		}

		effect = {
			1369 = {
				add_building_construction = {
					building = tax_assessor
					speed = 0.1
					cost = 1.5
				}
			}
			add_country_modifier = {
				name = es_bank_constructed_dgf
				duration = 9125
			}
		}
	}

	es_build_up_bank_dgf = {
		position = 3
		icon = daggerfall_bank
		required_missions = {
			es_found_bank_of_dgf
		}
		
		provinces_to_highlight = {
		    province_id = 1369
			NOT = { owned_by = ROOT }
		}

		trigger = {
			owns_core_province = 1369
			OR = {
				AND = {
					has_dlc = "Leviathan"
					1369 = { has_great_project = { type = bank_of_daggerfall tier = 3 } }
				}
				AND = {
					NOT = { has_dlc = "Leviathan" }
					treasury = 10000
					NOT = { inflation = 0.1 }
					NOT = { num_of_loans = 1 }
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_bank_finished_dgf
				duration = 18250
			}
		}
	}

	es_swim_in_money_dgf = {
		position = 4
		icon = treasure_room
		required_missions = {
			es_build_up_bank_dgf
		}

		trigger = {
			employed_advisor = {
				type = esu_inspector
			}
			treasury = 50000
			NOT = { inflation = 0.1 }
			NOT = { num_of_loans = 1 }
		}

		effect = {
			add_inflation = 15
			add_years_of_income = 10.0
			add_country_modifier = {
				name = es_swimming_in_money_mod_dgf
				duration = -1
			}
		}
	}

	es_spies_of_daggerfall_dgf = {
		position = 5
		icon = spy_master
		required_missions = {

		}

		trigger = {
			employed_advisor = {
				type = esu_spy
			}
			any_rival_country = {
				has_spy_network_from = {
					who = ROOT
					value = 100
				}
			}
		}

		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = es_spies_of_daggerfall_mod_dgf
				duration = 36500
			}
		}
	}

	es_domination_glenumbra_dgf = {
		position = 7
		icon = merchant
		required_missions = {
			
		}

		trigger = {
			44 = {
				has_most_province_trade_power = ROOT
			}
		}

		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = es_dominating_glenumbra_dgf
				duration = 9125
			}
		}
	}

	es_protecting_trade_dgf = {
		position = 8
		icon = trade_ship
		required_missions = {
			es_domination_glenumbra_dgf
		}

		trigger = {
			num_of_light_ship = 50
		}

		effect = {
			add_country_modifier = {
				name = es_protecting_trade_dgf
				duration = -1
			}
		}
	}

	
	es_conquest_of_western_skyrim_lr_dgf = {
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
	
	es_conquest_of_eastern_skyrim_lr_dgf = {
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
	
	es_conquest_of_hgh_rock_lr_dgf = {
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
	
	es_conquest_of_hammerfell_lr_dgf = {
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
	
	es_conquest_of_coldharbour_lr_dgf = {
		icon = coldharbour_mission
		position = 15
		required_missions = { }
		trigger = {
			owns_core_province = 2668
			owns_core_province = 3514
			owns_core_province = 3497
			owns_core_province = 3507
			owns_core_province = 3487
		}
		provinces_to_highlight = {
		    OR = {
			province_id = 2668		
			province_id = 3514
			province_id = 3497
			province_id = 3507
			province_id = 3487
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