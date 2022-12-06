flavour_missions_1_smr = {
	slot = 6
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = altmer }
	
	auri_el_followers_mission = {
        icon = auri_el
        position = 2
        required_missions = { pearl_of_summerset_mission } 
    
        trigger = {
			OR = {
				has_personal_deity = Auri-El
				religion = old_way_cult
			}
			num_of_cities = 25
			num_of_owned_provinces_with = {
				value = 10
				has_building = temple
			}
        }
        
        effect = {
            add_years_of_income = 1.0
			add_prestige = 10
			es_please_religious_estates = yes
        }
	}
	
	found_college_of_aldmeri_propriarity_mission = {
        icon = altmeri_propriarity_college
        position = 3
        required_missions = { auri_el_followers_mission } 
    
        trigger = {
            4828 = {
				owned_by = ROOT
				development = 15
			}
        }
		
		provinces_to_highlight = {
		    province_id = 4828
			NOT = { owned_by = ROOT }
		}
        
        effect = {
            add_country_modifier = {
				name = "es_college_of_aldmeri_propriarity"
				duration = -1
			}
        }
	}
	
	expand_the_slave_trade_mission = {
        icon = trade_ship
        position = 4
        required_missions = { found_college_of_aldmeri_propriarity_mission } 
    
        trigger = {
            years_of_income = 1.5
			NOT = { inflation = 0.1 }
			any_active_trade_node = {
				province_id = 44
				has_merchant = prev
			}
        }
        
        effect = {
            add_years_of_income = -1.5
			country_event = { id = es_mission_events.2 days = 9125 }
			add_country_modifier = {
				name = "es_slave_trade_expansion"
				duration = 9125
			}
        }
	}
	
	realm_of_the_serpent_king_mission = {
        icon = maormer_throne_room
        position = 6
        required_missions = { unity_summerset_islands_mission } 
    
        trigger = {
            owns_or_subject_of = 224 
			NOT = { exists = PA4 }
        }
		
		provinces_to_highlight = {
		    province_id = 224	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_colonisation_of_pyandonea"
				duration = 9125
			}
        }
	}
	
	southern_colony_mission = {
        icon = maormer_city
        position = 7
        required_missions = { realm_of_the_serpent_king_mission } 
    
        trigger = {
            OR = {
				any_subject_country = {
					capital_scope = { continent = Pyandonea }
					NOT = { liberty_desire = 10 }
					num_of_cities = 50
				}
				calc_true_if = {
					all_owned_province = {
						continent = Pyandonea
					}
					amount = 100
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_realm_of_maormers"
				duration = -1
			}
        }
	}
	
	discover_aldmeris_mission = {
        icon = elven_ship
        position = 8
        required_missions = { unite_with_sinistral_elves_mission } 
    
        trigger = {
			any_active_trade_node = {
				province_id = 508
				has_merchant = prev
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_expansion_to_the_new_world"
				duration = 9125
			}
			every_province = {
				limit = {
					region = kamal_lr
				}
				add_core = ROOT
			}
        }
	}
	
	return_to_old_ehlnofey_mission = {
        icon = aldmeris
        position = 8
        required_missions = { discover_aldmeris_mission } 
    
        trigger = {
			owns_or_subject_of = 508		
			owns_or_subject_of = 503
			owns_or_subject_of = 493
			owns_or_subject_of = 2560
			owns_or_subject_of = 2611
		}
		
		provinces_to_highlight = {
		    OR = {
			province_id = 508		
			province_id = 503
			province_id = 493
			province_id = 2560
			province_id = 2611
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			override_country_name = ALDMERIS
			add_prestige = 50
			add_country_modifier = {
				name = "es_old_ehlnofey"
				duration = -1
			}
        }
	}
	
	es_conquest_of_pyandonea_lr_smr = {
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
	
	es_conquest_of_summerset_lr_smr = {
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
	
	es_conquest_of_continental_atmora_lr_smr = {
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
	
	es_conquest_of_islandic_atmora_lr_smr = {
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
	
	es_conquest_of_far_atmora_lr_smr = {
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

flavour_missions_2_smr = {
	slot = 7
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = altmer }
	
	pearl_of_summerset_mission = {
        icon = summerset_city
        position = 1
        required_missions = { } 
    
        trigger = {
			total_development = 175
			prestige = 25
			any_owned_province = { superregion = summerset_islands_superregion }
        }
        
        effect = {
			if = {
				limit = { NOT = { government_rank = 3} }
				set_government_rank = 3
			}
			add_country_modifier = {
				name = "es_pearl_of_summerset"
				duration = 9125
			}
        }
	}
	
	the_old_way_cult_mission = {
        icon = old_way_cult_temple
        position = 2
        required_missions = { pearl_of_summerset_mission } 
    
        trigger = {
			OR = {
				religion = old_way_cult
				summerset_islands_superregion = {
					type = all
					NOT = { religion = old_way_cult }
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_remanants_of_old_traditions"
				duration = 9125
			}
        }
	}
	
	support_of_sapiarchs_mission = {
        icon = sapiarch
        position = 3
        required_missions = { the_old_way_cult_mission } 
    
        trigger = {
			owns_core_province = 4605
			army_tradition = 35
        }
		
		provinces_to_highlight = {
		    province_id = 4605	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			define_general = {
				shock = 5
				fire = 5
				manuever = 5
				siege = 5
			}
        }
	}
	
	custodian_of_crystal_tower_mission = {
        icon = crystal_tower
        position = 4
        required_missions = { support_of_sapiarchs_mission } 
    
        trigger = {
			owns_core_province = 263
			num_of_cities = 100
			prestige = 25
        }
		
		provinces_to_highlight = {
		    province_id = 263	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_custodian_of_crystal_tower"
				duration = -1
			}
        }
	}
	
	unity_summerset_islands_mission = {
        icon = summerset
        position = 5
        required_missions = { custodian_of_crystal_tower_mission expand_the_slave_trade_mission } 
    
        trigger = {
			OR = {
				tag = SMR
				owns_core_province = 1379
			}
        }
		
		provinces_to_highlight = {
		    province_id = 1379	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_rise_of_summerset_islands"
				duration = 36500
			}
        }
	}
	
	invade_thras_mission = {
        icon = thras
        position = 6
        required_missions = { unity_summerset_islands_mission } 
    
        trigger = {
			owns_or_subject_of = 320
        }
		
		provinces_to_highlight = {
		    province_id = 320	
			NOT = { controlled_by = ROOT }
		}
        
        effect = {
			add_years_of_income = 2.5
			add_prestige = 15
        }
	}
	
	unite_with_sinistral_elves_mission = {
        icon = sinistral_elves
        position = 7
        required_missions = { invade_thras_mission } 
    
        trigger = {
			owns_or_subject_of = 2184
			OR = {
				overlord_of = SIN
				NOT = { exists = SIN }
			}
        }
		
		provinces_to_highlight = {
		    province_id = 2184	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			if = {
				limit = { NOT = { accepted_culture = sinistral } }
				add_accepted_culture = sinistral
			}
			add_country_modifier = {
				name = "union_with_sinistral_elves"
				duration = -1
			}
        }
	}
	
	pact_with_bosmers_mission = {
        icon = bosmer_ruler
        position = 8
        required_missions = { embassy_to_valenwood_mission } 
    
        trigger = {
			OR = {
				owns_core_province = 820
				all_country = {
					all_country = {
						OR = {
							NOT = { primary_culture = bosmer }
							has_opinion = {
								who = ROOT
								value = 100
							}
						}
					}
				}
			}
        }
		
		provinces_to_highlight = {
		    province_id = 820	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			hidden_effect = {
				country_event = { id = es_mission_events.4 }
			}
        }
	}
	
	pact_with_khajiits_mission = {
        icon = khajiiti_ruler
        position = 9
        required_missions = { pact_with_bosmers_mission embassy_to_elseweyr_mission } 
    
        trigger = {
			OR = {
				owns_core_province = 922
				all_country = {
					OR = {
                        NOT = { culture_group = khajiiti_cg }
						has_opinion = {
							who = ROOT
							value = 100
						}
                    }
				}
			}
        }
		
		provinces_to_highlight = {
		    province_id = 922	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			hidden_effect = {
				country_event = { id = es_mission_events.5 }
			}
        }
	}
	
	es_conquest_of_yokuda_lr_smr = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_smr = {
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
	
	es_conquest_of_kamal_lr_smr = {
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
	
	es_conquest_of_thousand_lr_smr = {
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
	
	es_conquest_of_po_tun_lr_smr = {
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

flavour_missions_3_smr = {
	slot = 8
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = altmer }
	
	elven_forgery_mission = {
        icon = elven_weapons
        position = 2
        required_missions = { } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					base_production = 5
					OR = {
						trade_goods = orichalcum
						trade_goods = malachite
						trade_goods = moonstone
					}
				}
				amount = 5
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_elven_forgery"
				duration = 9125
			}
        }
	}
	
	successors_of_torval_the_pilot_mission = {
        icon = torval_the_pilot
        position = 3
        required_missions = { elven_forgery_mission } 
    
        trigger = {
			num_of_light_ship = 50
			home_trade_node = {
				trade_share = {
					country = ROOT
					share = 75
				}
			}
        }
        
        effect = {
			define_explorer = { shock = 5 fire = 5 manuever = 5}
			add_country_modifier = {
				name = "es_successors_of_torval_the_pilot"
				duration = 9125
			}
        }
	}
	
	egalitarian_society_mission = {
        icon = alinor_palace
        position = 4
        required_missions = { successors_of_torval_the_pilot_mission } 
    
        trigger = {
			OR = {
				esu_mage = 3
				esu_researcher = 3
				esu_monk = 3
			}
			OR = {
				esu_alchemist = 3
				esu_negotiator = 3
				esu_governor = 3
			}
			OR = {
				esu_thane = 3
				esu_officer = 3
				esu_grand_champion = 3
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_egalitarian_scoiety"
				duration = -1
			}
        }
	}
	
	friends_of_altmers_mission = {
        icon = altmer_army
        position = 6
        required_missions = { } 
    
        trigger = {
			num_of_trusted_allies = 2
			num_of_infantry = 35
			num_of_cavalry = 15
        }
        
        effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_friends_of_altmers"
				duration = 9125
			}
        }
	}
	
	embassy_to_valenwood_mission = {
        icon = valenwood
        position = 7
        required_missions = { friends_of_altmers_mission } 
    
        trigger = {
			years_of_income = 1.75
			820 = { owner = { has_opinion = { who = ROOT value = 100 } } }
			NOT = { inflation = 0.1 }
        }
        
        effect = {
			add_years_of_income = -1.75
			add_country_modifier = {
				name = "es_embassy_to_valenwood"
				duration = 9125
			}
        }
	}
	
	embassy_to_elseweyr_mission = {
        icon = elseweyr
        position = 8
        required_missions = { embassy_to_valenwood_mission } 
    
        trigger = {
			years_of_income = 2.5
			NOT = { inflation = 0.1 }
			922 = { owner = { has_opinion = { who = ROOT value = 100 } } }
        }
        
        effect = {
			add_years_of_income = -2.5
			add_country_modifier = {
				name = "es_embassy_to_elseweyr"
				duration = 9125
			}
        }
	}
	
	formation_of_the_aldmeri_dominion_mission = {
		icon = altmeri_dominion
        position = 10
        required_missions = { pact_with_khajiits_mission embassy_to_elseweyr_mission primacy_of_elven_culture_mission } 
    
        trigger = {
			OR = {
				is_emperor = yes
				owns = 1206
			}
			hidden_trigger = { NOT = { has_country_flag = formation_of_the_aldmeri_dominion_mission_flag } }
        }
		
		provinces_to_highlight = {
		    province_id = 1206	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			change_tag = DOM
			set_country_flag = formed_dom_flag
			set_country_flag = allience_leader_flag
			#
			if = {
				limit = {
					NOT = { government_rank = 10 }
				}
				set_government_rank = 10
			}
			add_country_modifier = {
				name = "centralization_modifier"
				duration = 7300
			}
			add_prestige = 25
			if = { limit = { has_custom_ideas = no } country_event = { id = ideagroups.1 } restore_country_name = yes }
			hidden_effect = {
				set_country_flag = formation_of_the_aldmeri_dominion_mission_flag
				complete_mission = formation_of_the_aldmeri_dominion_mission
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_smr = {
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
	
	es_conquest_of_islandic_tsakara_lr_smr = {
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
	
	es_conquest_of_valenwood_lr_smr = {
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
	
	es_conquest_of_elsweyr_lr_smr = {
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
	
	es_conquest_of_vvardenfell_lr_smr = {
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

flavour_missions_4_smr = {
	slot = 9
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = altmer }
	
	pearl_of_high_rock_mission = {
        icon = high_rock
        position = 1
        required_missions = { } 
    
        trigger = {
			total_development = 175
			prestige = 25
			any_owned_province = { superregion = high_rock_superregion }
        }
        
        effect = {
			if = {
				limit = { NOT = { government_rank = 3 } }
				set_government_rank = 3
			}
			add_country_modifier = {
				name = "es_pearl_of_high_rock"
				duration = 9125
			}
        }
	}
	
	end_the_orsimer_meanence_mission = {
        icon = orcish_camp
        position = 2
        required_missions = { pearl_of_high_rock_mission } 
    
        trigger = {
			owns_core_province = 6963
        }
		
		provinces_to_highlight = {
		    province_id = 6963	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 5
			add_country_modifier = {
				name = "es_end_of_orsimer_threat"
				duration = 9125
			}
        }
	}
	
	defeat_orcs_mission = {
        icon = dead_orc
        position = 3
        required_missions = { end_the_orsimer_meanence_mission } 
    
        trigger = {
			owns_core_province = 1391
			owns_core_province = 1400
			owns_core_province = 1422
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1391	
				province_id = 1400	
				province_id = 1422	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_victory_in_orsimer_war"
				duration = 9125
			}
			every_province = {
				limit = {
					culture_group = orsimer_cg
					superregion = high_rock_superregion
				}
				add_claim = ROOT
			}
        }
	}
	
	secure_orsinium_mission = {
        icon = orsinium
        position = 4
        required_missions = { defeat_orcs_mission } 
    
        trigger = {
			controls = 1425
        }
		
		provinces_to_highlight = {
			province_id = 1425	
			NOT = { controlled_by = ROOT }
		}
        
        effect = {
			1425 = { add_core = ROOT change_religion = ROOT change_culture = ROOT }
			1391 = { add_core = ROOT change_religion = ROOT change_culture = ROOT }
			1400 = { add_core = ROOT change_religion = ROOT change_culture = ROOT }
			1422 = { add_core = ROOT change_religion = ROOT change_culture = ROOT }
			6963 = { add_core = ROOT change_religion = ROOT change_culture = ROOT }
			add_prestige = 15
			every_province = {
				limit = {
					culture_group = orsimer_cg
					superregion = high_rock_superregion
					is_city = yes
				}
				add_permanent_province_modifier = {
					name = "es_orcish_migration"
					duration = 36500
				}
			}
        }
	}
	
	proclaim_direnni_hegemoni_mission = {
        icon = direnni_hegemony
        position = 5
        required_missions = { secure_orsinium_mission delve_into_hammerfell_mission } 
    
        trigger = {
			OR = {
				owns_core_province = 271
				tag = DIR
			}
        }
		
		provinces_to_highlight = {
			province_id = 271	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_rise_of_direnni_hegemony"
				duration = 36500
			}
        }
	}
	
	cities_of_the_golden_coast_mission = {
        icon = anvil
        position = 6
        required_missions = { proclaim_direnni_hegemoni_mission } 
    
        trigger = {
			owns_core_province = 1161
			owns_core_province = 1144
			owns_core_province = 1150
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1161	
				province_id = 1144	
				province_id = 1150	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_cities_of_the_golden_coast"
				duration = -1
			}
        }
	}
	
	ties_with_ayleids_mission = {
        icon = ayleid_ruler
        position = 7
        required_missions = { cities_of_the_golden_coast_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					culture_group = high_elves_cg
					superregion = cyrodiil_superregion
				}
				amount = 150
			}
        }
        
        effect = {
			every_province = {
				limit = {
					culture_group = high_elves_cg
					superregion = cyrodiil_superregion
					NOT = { owned_by = ROOT }
				}
				add_core = ROOT
				change_culture = ayleid
			}
			if = {
				limit = { NOT = { accepted_culture = ayleid } }
				add_accepted_culture = ayleid
			}
			add_prestige = 10
        }
	}
	
	retake_white_gold_tower_mission = {
        icon = white_gold_tower
        position = 8
        required_missions = { embassy_to_valenwood_mission } 
    
        trigger = {
			owns_core_province = 1206
        }
		
		provinces_to_highlight = {
			province_id = 1206	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			every_province = {
				limit = {
					region = central_cyrodiil_lr
					NOT = { owned_by = ROOT }
				}
				add_core = ROOT
			}
			add_prestige = 25
			add_country_modifier = {
				name = "es_custodian_of_white_gold_tower"
				duration = 9125
			}
        }
	}
	
	primacy_of_elven_culture_mission = {
        icon = summerset_city_1
        position = 9
        required_missions = { retake_white_gold_tower_mission embassy_to_elseweyr_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					culture = altmer
				}
				amount = 750
			}
        }
        
        effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_primacy_of_elven_culture"
				duration = 36500
			}
        }
	}
	
	es_conquest_of_morrowind_lr_smr = {
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
	
	es_conquest_of_black_marsh_lr_smr = {
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
	
	es_conquest_of_western_cyrodiil_lr_smr = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_smr = {
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
	
	es_conquest_of_central_cyrodiil_lr_smr = {
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

flavour_missions_5_smr = {
	slot = 10
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = altmer }
	
	elven_subjugation_of_bretons_mission = {
        icon = bretons_subjugation
        position = 2
        required_missions = { pearl_of_high_rock_mission } 
    
        trigger = {
			NOT = {
				any_country = {
					capital_scope = { superregion = high_rock_superregion }
					is_free_or_tributary_trigger = yes
					primary_culture = breton
				}
			}
        }
        
        effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_breton_subjects"
				duration = 9125
			}
        }
	}
	
	cities_of_iliac_bay_mission = {
        icon = sentinel
        position = 3
        required_missions = { elven_subjugation_of_bretons_mission } 
    
        trigger = {
			owns_core_province = 1510
			owns_core_province = 1493
			owns_core_province = 6964
			owns_core_province = 6982
			owns_core_province = 1379
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1510	
				province_id = 1493	
				province_id = 6964	
				province_id = 6982	
				province_id = 1379	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_years_of_income = 1.0
			add_country_modifier = {
				name = "es_trade_cities_of_iliac_bay"
				duration = 9125
			}
        }
	}
	
	delve_into_hammerfell_mission = {
        icon = hammerfell_city
        position = 4
        required_missions = { cities_of_iliac_bay_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					superregion = hammerfell_superregion
				}
				amount = 150
			}
        }
        
        effect = {
			add_years_of_income = 1.0
			add_country_modifier = {
				name = "es_eastern_holds"
				duration = 9125
			}
        }
	}
	
	nordic_threat_mission = {
        icon = solitude
        position = 6
        required_missions = { proclaim_direnni_hegemoni_mission } 
    
        trigger = {
			owns_core_province = 1342
			owns_core_province = 1336
			owns_core_province = 7182
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1342	
				province_id = 1336	
				province_id = 7182	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			every_province = {
				limit = {
					NOT = { owned_by = ROOT }
					OR = {
						region = nordic_coast_lr
						region = reach_lr
					}
				}
				add_claim = ROOT
			}
        }
	}
	
	silver_of_the_reach_mission = {
        icon = reach
        position = 7
        required_missions = { nordic_threat_mission } 
    
        trigger = {
			owns_core_province = 1355
			owns_core_province = 7220
			owns_core_province = 1296
			owns_core_province = 7270
			owns_core_province = 1331
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1355	
				province_id = 7220	
				province_id = 1296	
				province_id = 7270	
				province_id = 1331	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_years_of_income = 2.5
			add_inflation = 10
			random_owned_province = { limit = { region = reach_lr } change_trade_goods = silver }
			random_owned_province = { limit = { region = reach_lr } change_trade_goods = silver }
			random_owned_province = { limit = { region = reach_lr } change_trade_goods = silver }
			random_owned_province = { limit = { region = reach_lr } change_trade_goods = silver }
			random_owned_province = { limit = { region = reach_lr } change_trade_goods = silver }
        }
	}
	
	preserve_ayleid_heritage_mission = {
        icon = ayleid_ruins
        position = 8
        required_missions = { ties_with_ayleids_mission } 
    
        trigger = {
			stability = 3
			prestige = 50
			owns_core_province = 1130
			owns_core_province = 1120
			owns_core_province = 1233
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1130	
				province_id = 1120	
				province_id = 1233	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_ayleid_heritage"
				duration = 36500
			}
        }
	}
	
	retake_argonian_colonies_mission = {
        icon = ayleid_city
        position = 9
        required_missions = { preserve_ayleid_heritage_mission } 
    
        trigger = {
			owns_core_province = 1069
			owns_core_province = 1081
			owns_core_province = 6534
			calc_true_if = {
				all_owned_province = {
					superregion = black_marsh_superregion
				}
				amount = 100
			}
        }
		
		provinces_to_highlight = {
			OR = {
				province_id = 1069	
				province_id = 1081	
				province_id = 6534	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 15
			add_country_modifier = {
				name = "es_argonian_colonies"
				duration = 36500
			}
			every_province = {
				limit = {
					NOT = { owned_by = ROOT }
					superregion = black_marsh_superregion
				}
				add_claim = ROOT
			}
        }
	}
	
	es_conquest_of_western_skyrim_lr_smr = {
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
	
	es_conquest_of_eastern_skyrim_lr_smr = {
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
	
	es_conquest_of_hgh_rock_lr_smr = {
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
	
	es_conquest_of_hammerfell_lr_smr = {
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
	
	es_conquest_of_coldharbour_lr_smr = {
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