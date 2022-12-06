flavour_missions_1_atm = {
	slot = 6
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = atmoran NOT = { tag = FOR } }
	
	develop_villages_mission = {
        icon = nordic_village
        position = 1
        required_missions = { } 
    
        trigger = {
            calc_true_if = {
				all_owned_province = {
					base_tax = 3
					base_production = 3
					base_manpower = 3
				}
				amount = 10
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_developed_villages"
				duration = 9125
			}
        }
	}
	
	economical_stability_mission = {
        icon = gold_purse
        position = 2
        required_missions = { develop_villages_mission } 
    
        trigger = {
            stability = 3
			treasury = 1500
        }
        
        effect = {
            add_country_modifier = {
				name = "es_economical_stability"
				duration = 9125
			}
        }
	}
	
	religious_stability_mission = {
        icon = atmoran_sanctuary
        position = 3
        required_missions = { economical_stability_mission } 
		
		provinces_to_highlight = { 
			province_id = 1572
			NOT = { religion = ROOT }
        }
    
        trigger = {
            religious_unity = 1.0
			1572 = { religion = ROOT }
        }
        
        effect = {
            add_country_modifier = {
				name = "es_religious_stability"
				duration = 9125
			}
        }
	}
	
	atmoran_expedition_to_northern_islands_mission = {
        icon = northern_expedition
        position = 5
        required_missions = { survivors_of_the_ice_age_mission } 
    
        trigger = {
			any_active_trade_node = {
				province_id = 4475
				has_merchant = prev
			}
        }
        
        effect = {
			add_years_of_income = 1.5
			add_prestige = 10
        }
	}
	
	atmoran_flag_over_black_harbour_mission = {
        icon = nodic_conquest
        position = 7
        required_missions = { atmoran_expedition_to_northern_islands_mission } 
		
		provinces_to_highlight = {
		    province_id = 800	
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
			owns = 800
        }
        
        effect = {
			add_country_modifier = {
				name = "es_gates_of_akavir"
				duration = 18250
			}
        }
	}
	
	sack_of_al_kamal_mission = {
        icon = kamal_colonisation
        position = 8
        required_missions = { atmoran_flag_over_black_harbour_mission } 
		
		provinces_to_highlight = {
		    province_id = 508	
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
            508 = { controlled_by = ROOT }
        }
        
        effect = {
            add_years_of_income = 5.0
			add_prestige = 25
			add_country_modifier = {
				name = "horror_for_the_ice_demons"
				duration = 36500
			}
			if = {
				limit = {
					NOT = { owns = 508 }
				}
				508 = {
					cede_province = ROOT
					add_core = ROOT
					add_base_tax = -25
					add_base_production = -25
					add_base_manpower = -25
					add_devastation = 100
				}
				every_country = {
					limit = {
						OR = {
							culture_group = kamal_cg
							culture_group = daedra_cg
						}
					}
					add_opinion = { who = FROM modifier = sack_of_al_kamal }
					reverse_add_opinion = { who = FROM modifier = sack_of_al_kamal }
				}
			}
        }
	}
	
	es_conquest_of_pyandonea_lr_atm = {
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
	
	es_conquest_of_summerset_lr_atm = {
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
	
	es_conquest_of_continental_atmora_lr_atm = {
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
	
	es_conquest_of_islandic_atmora_lr_atm = {
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
	
	es_conquest_of_far_atmora_lr_atm = {
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

flavour_missions_2_atm = {
	slot = 7
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = atmoran NOT = { tag = FOR } }
	
	fish_production_mission = {
        icon = fish
        position = 1
        required_missions = { } 
    
        trigger = {
            calc_true_if = {
				all_owned_province = {
					trade_goods = fish
				}
				amount = 5
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_fish_prodction"
				duration = 18250
			}
        }
	}
	
	algae_production_mission = {
        icon = algae
        position = 2
        required_missions = { fish_production_mission develop_villages_mission } 
    
        trigger = {
            calc_true_if = {
				all_owned_province = {
					trade_goods = algae
				}
				amount = 5
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_algae_production"
				duration = 18250
			}
        }
	}
	
	survivors_of_the_ice_age_mission = {
        icon = ice_age
        position = 4
        required_missions = { religious_stability_mission dominate_atmoran_trade_mission } 
    
        trigger = {
            is_year = 535
        }
        
        effect = {
			add_prestige = 10
            add_country_modifier = {
				name = "es_survivors_of_the_ice_age"
				duration = -1
			}
        }
	}
	
	return_to_the_homeland_mission = {
        icon = atmora_expedition
        position = 5
        required_missions = { survivors_of_the_ice_age_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					region = central_atmora_lr
				}
				amount = 35
			}
        }
        
        effect = {
			add_prestige = 5
			every_owned_province = {
				limit = {
					has_port = yes
					region = central_atmora_lr
				}
				add_base_tax = 1
				add_base_production = 1
				add_base_manpower = 1
			}
        }
	}
	
	reestablish_atmoran_holds_mission = {
        icon = atmora_colonisation
        position = 6
        required_missions = { return_to_the_homeland_mission }

		provinces_to_highlight = {
		    OR = {
			province_id = 357		
			province_id = 367
			province_id = 384
			province_id = 382
			province_id = 2306
			}
			NOT = { owned_by = ROOT }
		}		
    
        trigger = {
			owns_or_subject_of = 357		
			owns_or_subject_of = 367
			owns_or_subject_of = 384
			owns_or_subject_of = 382
			owns_or_subject_of = 2306
			hidden_trigger = { NOT = { has_country_flag = reestablish_atmoran_holds_mission_flag } }
        }
        
        effect = {
			change_tag = ATM
			set_country_flag = formed_atm_flag
			hidden_effect = {
				set_country_flag = reestablish_atmoran_holds_mission_flag
				complete_mission = reestablish_atmoran_holds_mission
			}
			#
			if = {
				limit = {
					NOT = { government_rank = 5 }
				}
				set_government_rank = 5
			}
			add_country_modifier = {
				name = "centralization_modifier"
				duration = 7300
			}
			add_prestige = 25
			if = { limit = { has_custom_ideas = no } country_event = { id = ideagroups.1 } restore_country_name = yes }
			hidden_effect = {
				every_province = {
					limit = {
						continent = Atmora
					}
					add_permanent_claim = ROOT
				}
			}
        }
	}
	
	form_the_new_court = {
        icon = nord_noble
        position = 9
        required_missions = { reestablish_atmoran_holds_mission sack_of_al_kamal_mission sack_of_firsthold_mission } 
    
        trigger = {
			esu_steward = 3
			esu_governor = 3
			esu_officer = 3
        }
        
        effect = {
			add_country_modifier = {
				name = "es_the_court_of_atmora"
				duration = -1
			}
        }
	}
	
	es_conquest_of_yokuda_lr_atm = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_atm = {
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
	
	es_conquest_of_kamal_lr_atm = {
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
	
	es_conquest_of_thousand_lr_atm = {
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
	
	es_conquest_of_po_tun_lr_atm = {
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

flavour_missions_3_atm = {
	slot = 8
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = atmoran NOT = { tag = FOR } }
	
	crabs_production_mission = {
        icon = crabs
        position = 2
        required_missions = { fish_production_mission } 
    
        trigger = {
            calc_true_if = {
				all_owned_province = {
					trade_goods = crabs
				}
				amount = 5
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_crabs_production"
				duration = 18250
			}
        }
	}
	
	dominate_atmoran_trade_mission = {
        icon = trade_ship
        position = 3
        required_missions = { algae_production_mission crabs_production_mission atmoran_raiders_mission } 
    
        trigger = {
			esu_merchant = 2
            num_of_owned_provinces_with = {
				value = 3
				province_has_center_of_trade_of_level = 2
			}
        }
        
        effect = {
            capital_scope = {
				center_of_trade = 3
			}
        }
	}
	
	daggerfall_enclave_mission = {
        icon = daggerfall
        position = 5
        required_missions = { dominate_atmoran_trade_mission } 
		
		provinces_to_highlight = {
		    province_id = 1369	
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
			owns = 1369
        }
        
        effect = {
            1369 = {
				change_culture = ROOT
				add_core = ROOT
			}
			add_country_modifier = {
				name = "es_daggerfall_enclave"
				duration = -1
			}
        }
	}
	
	abeceanean_base_mission = {
        icon = stros_mkai
        position = 7
        required_missions = { daggerfall_enclave_mission control_market_of_orecea_mission reestablish_atmoran_holds_mission } 
		
		provinces_to_highlight = {
			area = hammerfell_12_la
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
			hammerfell_12_la = {
				type = all
				owned_by = ROOT
			}
        }
        
        effect = {
            every_province = {
				limit = { area = hammerfell_12_la }
				change_culture = ROOT
				add_core = ROOT
			}
			add_country_modifier = {
				name = "es_abeceanean_base"
				duration = -1
			}
        }
	}
	
	sack_of_firsthold_mission = {
        icon = firsthold
        position = 8
        required_missions = { abeceanean_base_mission } 
		
		provinces_to_highlight = {
			province_id = 299
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            299 = { controlled_by = ROOT }
        }
        
        effect = {
            add_years_of_income = 5.0
			add_prestige = 25
			add_country_modifier = {
				name = "horror_for_the_high_elves"
				duration = 36500
			}
			if = {
				limit = {
					NOT = { owns = 299 }
				}
				299 = {
					cede_province = ROOT
					add_core = ROOT
					add_base_tax = -25
					add_base_production = -25
					add_base_manpower = -25
					add_devastation = 100
				}
				every_country = {
					limit = {
						OR = {
							culture_group = high_elves_cg
							culture_group = snow_elves_cg
							culture_group = bosmer_cg
						}
					}
					add_opinion = { who = FROM modifier = sack_of_firsthold }
					reverse_add_opinion = { who = FROM modifier = sack_of_firsthold }
				}
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_atm = {
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
	
	es_conquest_of_islandic_tsakara_lr_atm = {
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
	
	es_conquest_of_valenwood_lr_atm = {
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
	
	es_conquest_of_elsweyr_lr_atm = {
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
	
	es_conquest_of_vvardenfell_lr_atm = {
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

flavour_missions_4_atm = {
	slot = 9
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = atmoran NOT = { tag = FOR } }
	
	raiding_fleet_mission = {
		icon = nordic_ship_1
		position = 1
		required_missions = { } 
	
		trigger = {
			num_of_light_ship = 25
			sailors_percentage = 1.0
		}
		
		effect = {
			add_country_modifier = {
				name = "es_raiding_fleet"
				duration = 9125
			}
		}
	}
	
	atmoran_raiders_mission = {
		icon = nordic_ship
		position = 2
		required_missions = { raiding_fleet_mission } 
	
		trigger = {
			1938 = {
				has_privateer_share_in_trade_node = {
					who = ROOT
					share = 0.25
				}
			}
		}
		
		effect = {
			add_years_of_income = 0.5
			add_sailors = 5000
			add_country_modifier = {
				name = "es_atmoran_raiders"
				duration = 9125
			}
		}
	}
	
	pirates_of_the_nordic_coast_mission = {
		icon = nordic_ship_2
		position = 4
		required_missions = { secure_kingdom_of_roscrea_mission } 
	
		trigger = {
			num_of_heavy_ship = 25
			1869 = {
				has_privateer_share_in_trade_node = {
					who = ROOT
					share = 0.50
				}
			}
		}
		
		effect = {
			add_years_of_income = 1.0
			add_prestige = 5
			add_country_modifier = {
				name = "es_pirates_of_the_nordic_coast"
				duration = 18250
			}
		}
	}
	
	vvardenfell_enclave_mission = {
        icon = dagon_fel
        position = 5
        required_missions = { pirates_of_the_nordic_coast_mission } 
		
		provinces_to_highlight = {
			province_id = 1049
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
			owns = 1049
        }
        
        effect = {
			1049 = {
				change_culture = ROOT
				add_core = ROOT
			}
			add_country_modifier = {
				name = "es_vvardenfell_enclave"
				duration = -1
			}
        }
	}
	
	control_market_of_orecea_mission = {
        icon = orecea_market
        position = 6
        required_missions = { vvardenfell_enclave_mission } 
		
		provinces_to_highlight = {
			province_id = 995
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
			owns_core_province = 995
			995 = {
				trade_share = {
					country = ROOT
					share = 50
				}
			}
        }
        
        effect = {
			995 = {
				add_permanent_province_modifier = {
					name = "es_orecean_market"
					duration = -1
				}
				add_base_tax = 5
				add_base_production = 5
				add_base_manpower = 5
				center_of_trade = 3
			}
        }
	}
	
	sack_of_archon_mission = {
        icon = archon
        position = 9
        required_missions = { control_market_of_orecea_mission preserve_ysgramors_legacy_mission }
		
		provinces_to_highlight = {
			province_id = 6794
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            6794 = { controlled_by = ROOT }
        }
        
        effect = {
            add_years_of_income = 5.0
			add_prestige = 25
			add_country_modifier = {
				name = "horror_for_the_argonians"
				duration = 36500
			}
			if = {
				limit = {
					NOT = { owns = 6794 }
				}
				6794 = {
					cede_province = ROOT
					add_core = ROOT
					add_base_tax = -25
					add_base_production = -25
					add_base_manpower = -25
					add_devastation = 100
				}
				every_country = {
					limit = {
						OR = {
							culture_group = marsh_cg
							culture_group = lilmothiit_cg
							culture_group = marsh_men_cg
						}
					}
					add_opinion = { who = FROM modifier = sack_of_archon }
					reverse_add_opinion = { who = FROM modifier = sack_of_archon }
				}
			}
        }
	}
	
	es_conquest_of_morrowind_lr_atm = {
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
	
	es_conquest_of_black_marsh_lr_atm = {
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
	
	es_conquest_of_western_cyrodiil_lr_atm = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_atm = {
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
	
	es_conquest_of_central_cyrodiil_lr_atm = {
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

flavour_missions_5_atm = {
	slot = 10
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = atmoran NOT = { tag = FOR } }
	
	organise_raiding_parites_mission = {
		icon = raiding_party
		position = 1
		required_missions = { } 
	
		trigger = {
			num_of_infantry = 25
			num_of_cavalry = 10
			years_of_income = 0.5
			NOT = { inflation = 0.1 }
		}
		
		effect = {
			add_years_of_income = -0.5
			add_country_modifier = {
				name = "es_raiding_parties"
				duration = 18250
			}
		}
	}
	
	secure_kingdom_of_roscrea_mission = {
		icon = roscrea
		position = 3
		required_missions = { organise_raiding_parites_mission } 
		
		provinces_to_highlight = {
			OR = {
				province_id = 479
				province_id = 393
				province_id = 477
				province_id = 2221
			}
			NOT = { owned_by = ROOT }
        }
	
		trigger = {
			owns_core_province = 479
			owns_core_province = 393
			owns_core_province = 477
			owns_core_province = 2221
			OR = {
				tag = ROS
				NOT = { exists = ROS }
			}
		}
		
		effect = {
			if = { limit = { NOT = { tag = ROS } }
				country_event = { id = es_mission_events.1 }
			}
			else = {
				add_prestige = 15
			}
		}
	}
	
	true_kings_of_skyrim_mission = {
		icon = skyrim
		position = 5
		required_missions = { secure_kingdom_of_roscrea_mission } 
		
		provinces_to_highlight = {
			OR = {
				province_id = 1275
				province_id = 1306
				province_id = 1342
			}
			NOT = { owned_by = ROOT }
        }
	
		trigger = {
			owns_core_province = 1275
			owns_core_province = 1306
			owns_core_province = 1342
			OR = {
				legitimacy = 100
				republican_tradition = 100
				devotion = 100
				horde_unity = 100
				meritocracy = 100
			}
			OR = {
				tag = SKY
				NOT = { exists = SKY }
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "es_kingdom_of_skyrim"
				duration = -1
			}
		}
	}
	
	ruinification_with_companions_mission = {
		icon = jorrvaskr
		position = 7
		required_missions = { true_kings_of_skyrim_mission } 
		
		provinces_to_highlight = {
			province_id = 1319
			NOT = { owned_by = ROOT }
        }
	
		trigger = {
			1319 = { controlled_by = ROOT }
		}
		
		effect = {
			add_stability = 1
			custom_tooltip = es_unlock_companions_mercenary_company
			1319 = {
				cede_province = ROOT
				add_core = ROOT
			}
		}
	}
	
	preserve_ysgramors_legacy_mission = {
		icon = wuuthrad
		position = 8
		required_missions = { ruinification_with_companions_mission } 
	
		trigger = {
			NOT = { is_lacking_institutions = yes }
			NOT = {
				any_country = {
					capital_scope = {
						superregion = skyrim_superregion
					}
					culture_group = snow_elves_cg
				}
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "es_legacy_of_ysgramor"
				duration = -1
			}
			define_heir = {
				dynasty = "Ysgramor"
				culture = nord
				ADM = 4
				DIP = 4
				MIL = 4			
				claim = 80
			}
		}
	}
	
	secure_reachmen_holds_mission = {
		icon = reach
		position = 9
		required_missions = { preserve_ysgramors_legacy_mission } 
		
		provinces_to_highlight = {
			OR = {
				province_id = 7220
				province_id = 1355
				province_id = 7250
			}
			NOT = { owned_by = ROOT }
        }
	
		trigger = {
			owns_core_province = 7220
			owns_core_province = 1355
			owns_core_province = 7250
		}
		
		effect = {
			add_prestige = 10
			every_province = {
				limit = {
					region = reach_lr
				}
				add_core = ROOT
			}
		}
	}
	
	es_conquest_of_western_skyrim_lr_atm = {
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
	
	es_conquest_of_eastern_skyrim_lr_atm = {
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
	
	es_conquest_of_hgh_rock_lr_atm = {
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
	
	es_conquest_of_hammerfell_lr_atm = {
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
	
	es_conquest_of_coldharbour_lr_atm = {
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