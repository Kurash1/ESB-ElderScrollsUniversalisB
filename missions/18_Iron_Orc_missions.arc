flavour_missions_1_iro = {
	slot = 6
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = iron_orc }



	es_conquest_of_pyandonea_lr_iro = {
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
	
	es_conquest_of_summerset_lr_iro = {
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
	
	es_conquest_of_continental_atmora_lr_iro = {
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
	
	es_conquest_of_islandic_atmora_lr_iro = {
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
	
	es_conquest_of_far_atmora_lr_iro = {
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

flavour_missions_2_iro = {
	slot = 7
	generic = no
	ai = yes
	potential = { primary_culture = iron_orc }

	es_ask_trinimac_for_strength_iro = {
		position = 1
		icon = trinimac
		required_missions = {
			
		}

		trigger = {
			has_personal_deity = Trinimac
			stability = 3
			prestige = 15
		}

		effect = {
			add_country_modifier = {
				name = es_trinimacs_strength_iro
				duration = 9125
			}
		}
	}

	es_few_but_made_of_iro = {
		position = 2
		icon = steel
		required_missions = {
			
		}

		trigger = {
			calc_true_if = {
				amount = 5
				all_owned_province = {
					base_production = 5
					OR = {
						trade_goods = ironstone
						trade_goods = iron
					}
				}
				
			}
		}

		effect = {
			add_country_modifier = {
				name = es_made_of_iro
				duration = -1
			}
		}
	}

	es_fueled_by_hatred_iro = {
		position = 3
		icon = orc_warlord
		required_missions = {
			es_few_but_made_of_iro
		}

		trigger = {
			land_forcelimit = 15.0
			manpower = 25
			is_in_war = {
				attacker_leader = ROOT
				duration = 1875
			}
		}

		effect = {
			add_country_modifier = {
				name = es_fueled_by_hatred_mod_iro
				duration = -1
			}
		}
	}

	es_push_northwest_iro = {
		position = 4
		icon = bangkorai
		required_missions = {
			es_for_one_decisive_push_iro
		}

		provinces_to_highlight = {
			OR = {
				area = hammerfell_26_la
				area = hammerfell_27_la
			}
			NOT = {
				owned_by = ROOT
			}
		}

		trigger = {
			hammerfell_26_la = {
				type = all
				owned_by = ROOT
			}
			hammerfell_27_la = {
				type = all
				owned_by = ROOT
			}
		}
		
		effect = {
			hammerfell_5_la = {
				add_permanent_claim = ROOT
			}
			hammerfell_29_la = {
				add_permanent_claim = ROOT
			}
			hammerfell_28_la = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_raid_keptu_iro = {
		position = 5
		icon = keptu
		required_missions = {
			
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture = keptu
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_raiding_orcs_iro
				duration = -1
			}
		}
	}

	es_raid_reach_iro = {
		position = 6
		icon = reach
		required_missions = {
			es_raid_keptu_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture = reachmen
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_years_of_income = 2.5
		}
	}

	es_raid_dwemers_iro = {
		position = 7
		icon = dwemer
		required_missions = {
			es_raid_reach_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture_group = dwemer_cg
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_dwemer_tech_raided_iro
				duration = 9125
			}
		}
	}

	es_raid_nords_iro = {
		position = 8
		icon = nordic_trade_squar
		required_missions = {
			es_raid_dwemers_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture = nord
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_nords_raided_iro
				duration = -1
			}
		}
	}

	es_conquest_of_yokuda_lr_iro = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_iro = {
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
	
	es_conquest_of_kamal_lr_iro = {
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
	
	es_conquest_of_thousand_lr_iro = {
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
	
	es_conquest_of_po_tun_lr_iro = {
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

flavour_missions_3_iro = {
	slot = 8
	generic = no
	ai = yes
	potential = { primary_culture = iron_orc }


	es_gather_forces_iro = {
		position = 1
		icon = orc_warrior_1
		required_missions = {
			 
		}

		trigger = {
			army_size = 10
		}

		effect = {
			add_country_modifier = {
				name = es_forces_gathered_iro
				duration = 9125
			}
		}
	}

	es_and_prepare_iro = {
		position = 2
		icon = orc_warrior
		required_missions = {
			es_gather_forces_iro es_ask_trinimac_for_strength_iro
		}

		trigger = {
			army_professionalism = 0.15
		}

		effect = {
			6075 = { add_core = ROOT }
			6074 = { add_core = ROOT }
			custom_tooltip = every_province_gets_1_manpower_tooltip
			hidden_effect = {
				every_owned_province = {
					add_base_manpower = 1
				}
			}
		}
	}

	es_for_one_decisive_push_iro = {
		position = 3
		icon = orc_stronghold
		required_missions = {
			es_and_prepare_iro
		}

		provinces_to_highlight = {
			province_id = 6074
			NOT = { owned_by = ROOT }
		}

		trigger = {
			6074 = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				name = es_fortress_retaken_iro
				duration = 9125
			}
		}
	}

	es_crush_belkarth_iro = {
		position = 4
		icon = belkarth
		required_missions = {
			es_for_one_decisive_push_iro
		}

		provinces_to_highlight = {
			OR = {
				AND = {
					region = dragontail_mountains_lr
					owned_by = HA3
				}
				AND = {
					province_id = 1459
					NOT = { owned_by = ROOT }
				}
			}
			
		}

		trigger = {
			1459 = { owned_by = ROOT }
			NOT = { exists = HA3 }
		}

		effect = {
			add_years_of_income = 5.0
			add_yearly_manpower = 10.0
			hammerfell_19_la = {
				add_permanent_claim = ROOT
			}
			hammerfell_18_la = {
				add_permanent_claim = ROOT
			}
			hammerfell_20_la = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_men_are_weak_iro = {
		position = 5
		icon = nord_noble
		required_missions = {
			es_crush_belkarth_iro es_push_northwest_iro
		}

		trigger = {
			total_development = 250
		}

		effect = {
			add_prestige = 15
			add_stability = 1
			dragontail_mountains_lr = {
				add_permanent_claim = ROOT
			}
		}
	}

	es_we_are_not_iro = {
		position = 6
		icon = orsinium_2
		required_missions = {
			es_men_are_weak_iro
		}

		provinces_to_highlight = {
			region = dragontail_mountains_lr
			NOT = { owned_by = ROOT }
		}

		trigger = {
			dragontail_mountains_lr = {
				type = all
				owned_by = ROOT
			}
		}

		effect = {
			add_country_modifier = {
				name = es_not_weak_iro
				duration = -1
			}
		}
	}

	es_raid_bretons_iro = {
		position = 7
		icon = breton_allies
		required_missions = {
			es_raid_reach_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture = breton
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_years_of_income = 3.5
			add_prestige = 25
			random_province = {
				limit = {
					culture = breton
					controlled_by = ROOT
				}
				add_devastation = -100
				change_culture = ROOT
				change_religion = ROOT
			}
		}
	}

	es_raid_defiling_brethren_iro = {
		position = 8
		icon = orsinium
		required_missions = {
			es_raid_bretons_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				any_province = {
					culture = orsimer
					controlled_by = ROOT
					devastation = 50
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_orsimer_raided_iro
				duration = -1
			}
		}
	}

	

	
	es_conquest_of_upper_tsakara_lr_iro = {
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
	
	es_conquest_of_islandic_tsakara_lr_iro = {
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
	
	es_conquest_of_valenwood_lr_iro = {
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
	
	es_conquest_of_elsweyr_lr_iro = {
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
	
	es_conquest_of_vvardenfell_lr_iro = {
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

flavour_missions_4_iro = {
	slot = 9
	generic = no
	ai = yes
	potential = {
		primary_culture = iron_orc
	}

	es_gather_nirncrux_iro = {
		position = 1
		icon = nirncrux
		required_missions = {
			
		}

		trigger = {
			any_owned_province = {
				trade_goods = nirncrux
				base_production = 5
			}
		}

		effect = {
			every_province = {
				limit = {
					trade_goods = nirncrux
					base_production = 5
					owned_by = ROOT
				}
				add_base_manpower = 3
				add_base_production = 3
				add_base_tax = 3
			}
		}
	}

	es_tame_welwas_iro = {
		position = 2
		icon = welwa
		required_missions = {
			es_gather_nirncrux_iro
		}

		trigger = {
			calc_true_if = {
				amount = 5
				all_owned_province = {
					base_production = 7
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_tame_welwas_iro
				duration = -1
			}
		}
	}

	es_infused_with_nirncrux_iro = {
		position = 3
		# Picture of a troll!!!
		icon = troll_forest
		required_missions = {
			es_tame_welwas_iro
		}
		
		trigger = {
			calc_true_if = {
				amount = 5
				all_owned_province = {
					base_manpower = 7
				}
			}
		}

		effect = {
			add_country_modifier = {
				name = es_infused_trolls_iro
				duration = -1
			}
		}
	}

	es_protect_the_stones_iro = {
		position = 4
		icon = nirncrux_stone
		required_missions = {
			es_infused_with_nirncrux_iro
		}

		provinces_to_highlight = {
			region = dragontail_mountains_lr
			trade_goods = nirncrux
			NOT = { owned_by = ROOT }
		}

		trigger = {
			dragontail_mountains_lr = {
				type = all
				OR = {
					AND = {
						trade_goods = nirncrux
						owned_by = ROOT
					}
					NOT = { trade_goods = nirncrux }
				}
				
			}
		}

		effect = {
			add_country_modifier = {
				name = es_protectors_of_the_stones_iro
				duration = -1
			}
		}
	}

	es_get_revenge_iro = {
		position = 5
		icon = orc_warrior_2
		required_missions = {

		}

		trigger = {
			num_of_owned_provinces_with = {
				value = 15
				culture = keptu
			}
		}

		effect = {
			add_country_modifier = {
				name = es_beginning_purges_iro
				duration = 9125
			}
		}
	}

	es_purge_them_iro = {
		position = 6
		icon = orcish_camp
		required_missions = {
			es_get_revenge_iro
		}

		trigger = {
			num_of_owned_provinces_with = {
				value = 50
				culture = iron_orc
			}
		}

		effect = {
			add_adm_power = 1000
			add_dip_power = 1000
			add_mil_power = 1000
		}
	}

	es_establish_new_clans_iro = {
		position = 7
		icon = orc_stronghold_2
		required_missions = {
			es_purge_them_iro
		}

		trigger = {
			num_of_subjects = 5
		}

		effect = {
			add_country_modifier = {
				name = es_spreading_our_ways_iro
				duration = -1
			}
		}
	}

	es_mountain_warfare_iro = {
		position = 8
		icon = mountains
		required_missions = {
			
		}

		trigger = {
			custom_trigger_tooltip = {
				tooltip = mountain_warfare_tt
			}
			num_of_owned_provinces_with = {
				value = 25
				has_terrain = mountain
			}

		}

		effect = {
			add_country_modifier = {
				name = es_mountain_warfare_mod_iro
				duration = -1
			}
		}
	}

	
	es_conquest_of_morrowind_lr_iro = {
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
	
	es_conquest_of_black_marsh_lr_iro = {
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
	
	es_conquest_of_western_cyrodiil_lr_iro = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_iro = {
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
	
	es_conquest_of_central_cyrodiil_lr_iro = {
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

flavour_missions_5_iro = {
	slot = 10
	generic = no
	ai = yes
	potential = {
		primary_culture = iron_orc
	}


	
	es_conquest_of_western_skyrim_lr_iro = {
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
	
	es_conquest_of_eastern_skyrim_lr_iro = {
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
	
	es_conquest_of_hgh_rock_lr_iro = {
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
	
	es_conquest_of_hammerfell_lr_iro = {
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
	
	es_conquest_of_coldharbour_lr_iro = {
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