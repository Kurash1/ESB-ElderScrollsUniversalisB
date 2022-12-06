flavour_missions_1_orc = {
	slot = 6
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = orsimer }

	es_establish_yourself_orc = {
		icon = orcish_camp
		position = 3
		required_missions = { }
		
		provinces_to_highlight = {
			OR = {
				area = morrowind_32_la	#Omaynia
				area = morrowind_33_la	#Iliath
			}
			NOT = { owned_by = ROOT }
			is_city = yes			
		}	
		trigger = {
			morrowind_32_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
			morrowind_33_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
		}
		effect = {
			morrowind_31_la = {
				limit = {
					NOT = { owned_by = ROOT }
					is_city = yes
				}
				add_permanent_claim = ROOT
			}
			morrowind_30_la = {
				limit = {
					NOT = { owned_by = ROOT }
					is_city = yes
				}
				add_permanent_claim = ROOT
			}
			morrowind_29_la = {
				limit = {
					NOT = { owned_by = ROOT }
					is_city = yes
				}
				add_permanent_claim = ROOT
			}
			morrowind_4_la = {
				limit = {
					NOT = { owned_by = ROOT }
					is_city = yes
				}
				add_permanent_claim = ROOT
			}
		}	
	}

	es_push_north_orc = {
		position = 4
		required_missions = { es_establish_yourself_orc }
		icon = push_north_mission

		provinces_to_highlight = {
			OR = {
				area = morrowind_31_la	#Hendor-Sturdumz
				area = morrowind_30_la	#Leftunch
				area = morrowind_29_la	#Kartur
				area = morrowind_4_la	#Knocker's Neck
			}
			NOT = { owned_by = ROOT }
			is_city = yes
		}

		trigger = {
			morrowind_31_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
			morrowind_30_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
			morrowind_29_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
			morrowind_4_la = {
				type = all
				OR = {
					AND = {
						owned_by = ROOT
						is_city = yes
					}
					is_city = no
				}
			}
		}

		effect = {
			3412 = { 
				add_permanent_claim = ROOT 
			}
			967 = { 
				add_permanent_claim = ROOT 
			}
			3325 = { 
				add_permanent_claim = ROOT 
			}
			3209 = { 
				add_permanent_claim = ROOT 
			}
		}

	}

	es_claim_velothi_strongholds_orc = {
		icon = velothi_mountains_mission
		position = 5
		required_missions = { es_push_north_orc }

		provinces_to_highlight = {
			OR = {
				province_id = 3412
				province_id = 967
				province_id = 3325
				province_id = 3209
			}
			NOT = { owned_by = ROOT }
		}
		trigger = {
			owns_core_province = 3412
			owns_core_province = 967
			owns_core_province = 3325
			owns_core_province = 3209
		}
		effect = {
			every_owned_province = {
				limit = {
					has_terrain = orcish_stronghold
					region = velothi_mountains_lr
				}
				add_base_tax = 3
				add_base_production = 3
				add_base_manpower = 3
			}

		}
	}

	es_defend_your_kin_orc = {
		icon = orc_warrior
		position = 6
		required_missions = { es_claim_velothi_strongholds_orc }

		provinces_to_highlight = { 
			superregion = morrowind_superregion
			culture_group = orsimer_cg
			NOT = { owned_by = ROOT }
		}

		trigger = {
			morrowind_superregion = {
				type = all
				OR = {
					AND = {
					culture_group = orsimer_cg
					owned_by = ROOT
					}
					NOT = { culture_group = orsimer_cg }
				}
				
			}
		}

		effect = {
			add_country_modifier = {
				duration = 18250
				name = es_spread_our_culture_orc
			}

		}
		
	}

	es_orcish_forgery_orc = {
		icon = orcish_forge
		position = 8
		required_missions = { }
		
		provinces_to_highlight = { 
			OR = {
				trade_goods = orichalcum
				trade_goods = iron
			}
			owned_by = ROOT
		}
		
		trigger = {
			calc_true_if = {
				all_owned_province = {
					base_production = 5
					OR = {
						trade_goods = orichalcum
						trade_goods = iron
					}
				}
				amount = 5
			}
		}
		effect = {
			add_country_modifier = {
				duration = 36500
				name = es_orcish_forgery_mod_orc
			}
		}
	}

	es_summon_host_orc = {
		icon = orc_warrior_1
		position = 9
		required_missions = { es_orcish_forgery_orc }

		trigger = {
			any_owned_province = {
				base_manpower = 12
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_host_summoned_orc
			}
		}
	}

	es_raise_host_orc = {
		icon = orc_warrior_2
		position = 10
		required_missions = { es_summon_host_orc }

		trigger = {
			num_of_infantry = 100
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_host_raised_orc
			}
		}
	}



	es_conquest_of_pyandonea_lr_orc = {
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
	
	es_conquest_of_summerset_lr_orc = {
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
	
	es_conquest_of_continental_atmora_lr_orc = {
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
	
	es_conquest_of_islandic_atmora_lr_orc = {
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
	
	es_conquest_of_far_atmora_lr_orc = {
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

flavour_missions_2_orc = {
	slot = 7
	generic = no
	ai = yes
	potential = { primary_culture = orsimer }

	es_for_malacath_orc = {
		icon = malacath
		position = 1
		required_missions = { }

		trigger = {
			OR = {
				has_personal_deity = Malacath
				religion = malacath_cult
			}
			num_of_owned_provinces_with = {
				value = 5
				has_building = temple
			}
		}

		effect = {
			add_country_modifier = {
				name =  es_for_malacath_orc
				duration = 3650
			}
		}
	}


	es_embrace_malacath_orc = {
		icon = malacath_head
		position = 2
		required_missions = { es_for_malacath_orc }

		trigger = {
			num_of_owned_provinces_with = {
				OR = {
					religion = malacath_cult
					religion = orcish_pantheon
				}
				value = 50
			}
		}
		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_malacath_embraced_orc
			}
		}
	}

	es_repell_breton_invaders_orc = {
		icon = breton_soldier
		position = 3
		required_missions = { es_scare_off_invaders_orc }

		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				culture = breton
			}
		}

		effect = {
			add_prestige = 25
			add_years_of_income = 3.5
			add_yearly_manpower = 5
		}
	}

	es_explore_our_past_orc = {
		icon = reach
		position = 5
		required_missions = { }

		provinces_to_highlight = {
			region = reach_lr
			NOT = { owned_by = ROOT }
		}

		trigger = {
			num_of_owned_provinces_with = {
				value = 35
				region = reach_lr
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_exploring_our_past_orc
			}
		}
	}

	es_explore_our_roots_orc = {
		icon = windhelm_eso
		position = 6
		required_missions = { es_explore_our_past_orc }
		
		provinces_to_highlight = {
			OR = {
				region = great_planes_lr
				region = nordic_coast_lr
				region = rift_lr
				area = skyrim_3_la
			}
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 5
				area = skyrim_3_la
			}

			num_of_owned_provinces_with = {
				value = 50
				OR = {
					region = great_planes_lr
					region = nordic_coast_lr
					region = rift_lr
				}
			}
		}

		effect = {
			add_country_modifier = {
				duration = -1
				name = es_exploring_our_roots_orc
			}
		}
	}

	
	es_establish_strongholds_sky_orc = {
		icon = orc_stronghold_2
		position = 7
		required_missions = { es_explore_our_roots_orc }

		provinces_to_highlight = {
			province_id = 3126
			NOT = { owned_by = ROOT }
		}

		trigger = {
			owns_core_province = 3126
			num_of_owned_provinces_with = {
				value = 25
				OR = {
			   	 	has_building = fort_15th
					has_building = fort_16th
					has_building = fort_17th
					has_building = fort_18th
				}
				superregion = skyrim_superregion
			}

		}
		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_strongholds_established_orc
			}
		}
	}

	es_forge_wives_orc = {
		icon = orcish_forge_wife
		position = 9
		required_missions = { es_orcish_forgery_orc }

		provinces_to_highlight = {
			trade_goods = iron
			owned_by = ROOT
		}
			
		trigger = {
			calc_true_if = {
				all_owned_province = {
					base_production = 5
					trade_goods = iron
				}
				amount = 10
			}
		}

		effect = {
			define_advisor = {
				type = esu_blacksmith
				skill = 3
				discount = yes
				female = yes
			}
		}
	}

	es_conquest_of_yokuda_lr_orc = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_orc = {
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
	
	es_conquest_of_kamal_lr_orc = {
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
	
	es_conquest_of_thousand_lr_orc = {
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
	
	es_conquest_of_po_tun_lr_orc = {
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

flavour_missions_3_orc = {
	slot = 8
	generic = no
	ai = yes
	potential = { primary_culture = orsimer }

	es_scare_off_invaders_orc = {
		icon = fort
		position = 2
		required_missions = { es_for_malacath_orc es_secure_alliances_orc}

		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				OR = {
				    has_building = fort_15th
					has_building = fort_16th
					has_building = fort_17th
					has_building = fort_18th
				}
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_scare_them_off_orc 
			}
		}
		
	}

	es_strike_at_altmers_orc = {
		icon = altmer_army
		position = 3
		required_missions = { es_scare_off_invaders_orc }
			
		provinces_to_highlight = {
		    province_id = 6982		
			NOT = { owned_by = ROOT }
		}
		
		trigger = {
			owns_core_province = 6982
			NOT = { exists = BC1 }
		}
 
		effect = { 
			high_7_la = { add_permanent_claim = ROOT }
			high_25_la = { add_permanent_claim = ROOT }
			high_20_la = { add_permanent_claim = ROOT }
		}

	}

	es_wrothgar_home_of_orc = {
		icon = wrothgar_flag
		position = 4
		required_missions = { es_repell_breton_invaders_orc es_strike_at_altmers_orc es_unite_the_clans_orc }
		
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
			add_stability = 3
			add_prestige = 15
			if = {
				limit = {
					NOT = { government_rank = 5 }
				}
				set_government_rank = 5
			}
		}
	}

	es_secure_border_hr_orc = {
		icon = high_rock
		position = 5
		required_missions = { es_wrothgar_home_of_orc }

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			OR = {
				area = high_7_la
				area = high_25_la
				area = high_20_la
			}
		}

		trigger = {
			high_7_la = { owned_by = ROOT }
			high_25_la = { owned_by = ROOT }
			high_20_la = { owned_by = ROOT }
		}

		effect = {
			high_rock_superregion = {
				limit = {
					NOT = { owned_by = ROOT }
				}
				add_permanent_claim = ROOT
			}
		}
	}

	es_seize_high_rock_orc = {
		icon = high_rock_flag
		position = 7
		required_missions = { es_secure_border_hr_orc }

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			region = high_rock_lr
		}

		trigger = {
			high_rock_lr = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_high_rock_secured_orc
			}
		}
	}

	es_new_shores_orc = {
		icon = yokudan_city
		position = 8
		required_missions = { es_seize_high_rock_orc }

		provinces_to_highlight = {
			superregion = yokuda_superregion
			NOT = { owned_by = ROOT }
		}

		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				superregion = yokuda_superregion
			}
		}

		effect = {
			add_country_modifier = {
				duration = 36500
				name = es_resettle_orcish_refugees_orc
			}
		}
	}

	es_home_to_all_orcs = {
		icon = orsinium_4
		position = 10
		required_missions = { }

		trigger = {
			has_unified_culture_group = yes
		}

		effect = {
			add_country_modifier = {
				name = es_orsimer_united_at_last_orc
				duration = -1
			}
		}
	}


	
	es_conquest_of_upper_tsakara_lr_orc = {
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
	
	es_conquest_of_islandic_tsakara_lr_orc = {
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
	
	es_conquest_of_valenwood_lr_orc = {
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
	
	es_conquest_of_elsweyr_lr_orc = {
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
	
	es_conquest_of_vvardenfell_lr_orc = {
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

flavour_missions_4_orc = {
	slot = 9
	generic = no
	ai = yes
	potential = {
		primary_culture = orsimer
	}

	es_secure_alliances_orc = {
		icon = allies
		position = 1
		required_missions = { }

		trigger = {
			num_of_allies = 3
			calc_true_if = {
				all_ally = {
					has_opinion = {
						who = ROOT
						value = 150
					
					}
				}
				amount = 3
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_alliances_secured_orc
			}
		}
	}

	es_conquer_wrothgar_strongholds = {
		icon = orsinium_2
		position = 2
		required_missions = { }

		trigger = {
			owns_core_province = 1425
			owns_core_province = 1408
			owns_core_province = 6892
			owns_core_province = 1431
			owns_core_province = 1406
		}
		
		provinces_to_highlight = {
		    OR = {
			province_id = 1425		
			province_id = 1408
			province_id = 6892
			province_id = 1431
			province_id = 1406
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			every_owned_province = {
				limit = {
					has_terrain = orcish_stronghold
					region = wrothgar_lr
				}
				add_base_tax = 3
				add_base_production = 3
				add_base_manpower = 3
			}
		}
	}

	es_unite_the_clans_orc = {
		icon = orc_warlord
		position = 3
		required_missions = { es_scare_off_invaders_orc es_conquer_wrothgar_strongholds }

		trigger = {
			owns_core_province = 1400
			owns_core_province = 1422
			owns_core_province = 7012
			owns_core_province = 1413
			owns_core_province = 1391
		}
		
		provinces_to_highlight = {
		    OR = {
			province_id = 1400		
			province_id = 1422
			province_id = 7012
			province_id = 1413
			province_id = 1391
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				duration = 36500
				name = es_clans_united_orc
			}
		 }

	}

	es_settle_in_hammerfell_orc = {
		icon = hammerfell
		position = 5
		required_missions = { }

		trigger = {
			any_owned_province = {
				has_colonist = yes
				superregion = hammerfell_superregion
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_settlers_in_hammerfell_orc
			}
		}
	}

	es_secure_all_of_hammerfell_orc = {
		icon = hammerfell_city_2
		position = 6
		required_missions = { es_settle_in_hammerfell_orc }

		provinces_to_highlight = {
			superregion = hammerfell_superregion
			is_city = yes
			NOT = { owned_by = ROOT }
		}

		trigger = {
			hammerfell_superregion = {
				type = all
				OR = {
					owned_by = ROOT
					is_city = no
				}
			}
		}

		effect = {
			cyrodiil_11_la = {
				limit = { NOT = { owned_by = ROOT }}
				add_permanent_claim = ROOT
			}
			cyrodiil_53_la = {
				limit = { NOT = { owned_by = ROOT }}
				add_permanent_claim = ROOT
			}
			cyrodiil_9_la = {
				limit = { NOT = { owned_by = ROOT }}
				add_permanent_claim = ROOT
			}
			cyrodiil_8_la = {
				limit = { NOT = { owned_by = ROOT }}
				add_permanent_claim = ROOT
			}
		}
	}

	es_down_the_coast_orc = {
		icon = golden_coast
		position = 7
		required_missions = { es_secure_all_of_hammerfell_orc }

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			OR = {
				area = cyrodiil_11_la
				area = cyrodiil_53_la
				area = cyrodiil_9_la
				area = cyrodiil_8_la
			}
		}

		trigger = {
			cyrodiil_11_la = {
				type = all
				owned_by = ROOT
			}
			cyrodiil_53_la = {
				type = all
				owned_by = ROOT
			}
			cyrodiil_9_la = {
				type = all
				owned_by = ROOT
			}
			cyrodiil_8_la = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			every_province = {
				limit = {
					culture = wood_orsimer
				}
				add_permanent_claim = ROOT
			}
		}
	}

	es_unite_with_wood_orsimer = {
		icon = wood_orc
		position = 8
		required_missions = { es_down_the_coast_orc es_reconnect_with_lost_kin_orc }

		provinces_to_highlight = {
			NOT = { owned_by = ROOT }
			culture = wood_orsimer
		}

		trigger = {
			valenwood_superregion = {
				type = all
				OR = {
					AND = {
						culture = wood_orsimer
						owned_by = ROOT
					}
					NOT = { culture = wood_orsimer }
				}
			}		
		}

		effect = {
			add_accepted_culture = wood_orsimer
			add_country_modifier = {
				duration = -1
				name = es_integrate_wood_orsimers_orc
			}
		}
	}


	
	es_conquest_of_morrowind_lr_orc = {
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
	
	es_conquest_of_black_marsh_lr_orc = {
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
	
	es_conquest_of_western_cyrodiil_lr_orc = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_orc = {
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
	
	es_conquest_of_central_cyrodiil_lr_orc = {
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

flavour_missions_5_orc = {
	slot = 10
	generic = no
	ai = yes
	potential = {
		primary_culture = orsimer
	}

	es_found_orsinium_orc = {
		icon = orsinium
		position = 1
		required_missions = { }

		trigger = {
			any_owned_province = {
				has_province_modifier = 16_n_orsinium
			}
		}

		effect = {
			add_country_modifier = {
				duration = -1
				name = es_orcish_civilization_orc
			}
		}
	}

	es_constuct_morkul_stronghold_orc = {
		icon = morkul_stronghold
		position = 2
		required_missions = {}

		provinces_to_highlight = {
			province_id = 6892
		}

		trigger = {
			owns_core_province = 6892
			OR = {
				AND = {
					has_dlc = "Leviathan"
					OR = {
						6892 = { has_great_project = { type = morkul_stronghold tier = 1 } }
						6892 = { has_great_project = { type = morkul_stronghold tier = 2 } }
						6892 = { has_great_project = { type = morkul_stronghold tier = 3 } }
					}
				}
				AND = {
					NOT = { has_dlc = "Leviathan" }
					treasury = 1000
				}
			}
		}

		effect = {
			if = {
				limit = {
					NOT = { has_dlc = "Leviathan" }
				}
				add_treasury = -1000
			}
			add_country_modifier = {
				duration = 9125
				name = es_construction_knowledge_orc
			}
		}

	}

	es_reclaim_nearby_strongholds_orc = {
		icon = orsinium_3
		position = 3
		required_missions = { es_conquer_wrothgar_strongholds es_constuct_morkul_stronghold_orc }

		provinces_to_highlight = {
			OR = {
				province_id = 7203
				province_id = 7246
				province_id = 6074
				province_id = 6963
			}
			NOT = { owned_by = ROOT }
		}

		trigger = {
			owns_core_province = 7203
			owns_core_province = 7246
			owns_core_province = 6074
			owns_core_province = 6963
		}

		effect = {
			7203 = {
				add_base_manpower = 3
				add_base_production = 3
				add_base_tax = 3
			}
			7246 = {
				add_base_manpower = 3
				add_base_production = 3
				add_base_tax = 3
			}
			6074 = {
				add_base_manpower = 3
				add_base_production = 3
				add_base_tax = 3
			}
			6963 = {
				add_base_manpower = 3
				add_base_production = 3
				add_base_tax = 3
			}
		}

	}

	es_reconnect_with_lost_kin_orc = {
		icon = allies_2
		position = 7
		required_missions = { }

		trigger = {
			any_country = {
				alliance_with = ROOT
				culture_group = orsimer_cg
				capital_scope = { NOT = { superregion = high_rock_superregion } }
			}
		}

		effect = {
			add_country_modifier = {
				duration = 9125
				name = es_connect_with_kin_orc
			}
		}
	}

	es_bring_in_defilers_orc = {
		icon = iron_orc
		position = 8
		required_missions = { es_reconnect_with_lost_kin_orc }
		
		provinces_to_highlight = {
			superregion = hammerfell_superregion
			culture = iron_orc
			NOT = { owned_by = ROOT }
		}

		trigger = {
			hammerfell_superregion = {
				type = all
				OR = {
					AND = {
						culture = iron_orc
						owned_by = ROOT
					}
					NOT = { culture = iron_orc }
				}
			}		
		}

		effect = {
			add_accepted_culture = iron_orc
			add_country_modifier = {
				duration = -1
				name = es_integrate_iron_orcs_orc
			}
		}
	}

	es_natural_warriors_orc = {
		icon = orc
		position = 10
		required_missions = { }

		trigger = {
			prestige = 50
			army_tradition = 75
		}

		effect = {
			add_country_modifier = {
				duration = -1
				name = es_natural_warriors_mod_orc
			}
		}

	}

	es_conquest_of_western_skyrim_lr_orc = {
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
	
	es_conquest_of_eastern_skyrim_lr_orc = {
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
	
	es_conquest_of_hgh_rock_lr_orc = {
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
	
	es_conquest_of_hammerfell_lr_orc = {
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
	
	es_conquest_of_coldharbour_lr_orc = {
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