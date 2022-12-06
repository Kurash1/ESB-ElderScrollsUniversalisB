flavour_missions_1_hig = {
	slot = 6
    generic = no
    ai = yes
    has_country_shield = no
    potential = {
		primary_culture = breton 
		NOT = { tag = BA1 }
	}
	
	breton_expand_the_capital = {
        icon = daggerfall
        position = 2
        required_missions = { } 
    
        trigger = {
            capital_scope = {
				base_tax = 7
				base_production = 7
				base_manpower = 7
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_expanded_capital"
				duration = 9125
			}
			define_advisor = {
				type = esu_curator
				skill = 2
				discount = yes
			}
        }
	}
	
	forge_the_arms = {
        icon = smithing_warrior
        position = 4
        required_missions = { breton_expand_the_capital } 
    
        trigger = {
            calc_true_if = {
				all_owned_province = {
					OR = {
						trade_goods = iron
						trade_goods = moonstone
						trade_goods = ironstone
					}
					base_production = 10
				}
				amount = 5
			}
        }
		
		provinces_to_highlight = {
		    OR = {
				trade_goods = iron
				trade_goods = moonstone
				trade_goods = ironstone
			}
			owned_by = ROOT
		}
        
        effect = {
            add_country_modifier = {
				name = "es_new_arms"
				duration = 9125
			}
        }
	}
	
	hire_advisors = {
        icon = advisor_icon
        position = 5
        required_missions = { forge_the_arms } 
    
        trigger = {
            esu_steward = 2
			esu_governor = 2
			esu_thane = 2
        }
        
        effect = {
            add_country_modifier = {
				name = "es_new_advisors"
				duration = 9125
			}
			change_adm = 1
			change_dip = 1
			change_mil = 1
        }
	}
	
	boost_trade = {
        icon = trade_ship
        position = 6
        required_missions = { hire_advisors } 
    
        trigger = {
            num_of_owned_provinces_with = {
				value = 5
				province_has_center_of_trade_of_level = 2
			}
        }
		
		provinces_to_highlight = {
		    province_has_center_of_trade_of_level = 2
		}
        
        effect = {
            add_country_modifier = {
				name = "es_trade_boost"
				duration = -1
			}
        }
	}
	
	take_stonetooth = {
        icon = fort
        position = 7
        required_missions = { boost_trade } 
    
        trigger = {
			6914 = {
				owned_by = ROOT
			}
        }
		provinces_to_highlight = {
		    province_id = 6914	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_yearly_sailors = 10.0
			add_country_modifier = {
				name = "es_stonetooth_fortress"
				duration = 36500
			}
        }
	}
	
	protect_the_coast = {
        icon = sentinel
        position = 8
        required_missions = { take_stonetooth crush_the_hegemony } 
    
        trigger = {
			1510 = { owned_by = ROOT }
			1493 = { owned_by = ROOT }
			6401 = { owned_by = ROOT }
			6392 = { owned_by = ROOT }
			1418 = { owned_by = ROOT }
        }
		provinces_to_highlight = {
			OR = {
				province_id = 1510	
				province_id = 1493	
				province_id = 6401	
				province_id = 6392	
				province_id = 1418	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_country_modifier = {
				name = "es_coast_of_hammerfell"
				duration = 9125
			}
			hidden_effect = {
				every_province = {
					limit = {
						has_port = yes
						superregion = hammerfell_superregion
					}
					add_core = ROOT
				}
			}
        }
	}
	
	the_dual_kingdom = {
        icon = hammerfell_city
        position = 10
        required_missions = { protect_the_coast sieze_high_rock } 
    
        trigger = {
			6436 = { owned_by = ROOT }
			1482 = { owned_by = ROOT }
			1446 = { owned_by = ROOT }
			6196 = { owned_by = ROOT }
			1452 = { owned_by = ROOT }
        }
		provinces_to_highlight = {
		    OR = {
				province_id = 6436	
				province_id = 1482	
				province_id = 1446	
				province_id = 6196	
				province_id = 1452	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			custom_tooltip = two_nation_one_king_tooltip
			change_government = monarchy
			add_government_reform = austrian_dual_monarchy
			add_country_modifier = {
				name = "es_dual_monarchy"
				duration = -1
			}
        }
	}
	
	es_conquest_of_pyandonea_lr_hig = {
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
	
	es_conquest_of_summerset_lr_hig = {
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
	
	es_conquest_of_continental_atmora_lr_hig = {
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
	
	es_conquest_of_islandic_atmora_lr_hig = {
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
	
	es_conquest_of_far_atmora_lr_hig = {
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

flavour_missions_2_hig = {
	slot = 7
    generic = no
    ai = yes
    has_country_shield = no
     potential = {
		primary_culture = breton 
		NOT = { tag = BA1 }
	}
	
	ally_our_kin = {
        icon = allies
        position = 1
        required_missions = { } 
    
        trigger = {
            any_neighbor_country = {
				alliance_with = ROOT
				OR = {
					primary_culture = breton
					accepted_culture = breton
				}
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_allied_with_our_kin"
				duration = 9125
			}
        }
	}
	
	ensure_internal_stability = {
        icon = stability_icon_es
        position = 3
        required_missions = { breton_expand_the_capital ally_our_kin } 
    
        trigger = {
            religious_unity = 1.0
			stability = 3
			all_owned_province = {
				NOT = {
					unrest = 1.0
				}
			}
        }
        
        effect = {
			change_government_reform_progress = 250
            add_country_modifier = {
				name = "es_internal_stability"
				duration = 9125
			}
        }
	}
	
	bretons_hire_mercenaries = {
        icon = gold_purse
        position = 4
        required_missions = { ensure_internal_stability } 
    
        trigger = {
            num_of_hired_mercenary_companies = 3
        }
        
        effect = {
            add_country_modifier = {
				name = "es_hired_mercenaries"
				duration = 9125
			}
        }
	}
	
	challenge_the_elves = {
        icon = high_elf
        position = 5
        required_missions = { bretons_hire_mercenaries } 
    
        trigger = {
            OR = {
				owns = 1379
				1379 = { owner = { war_with = ROOT } }
			}
        }
		provinces_to_highlight = {
		    province_id = 1379	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			hidden_effect = {
				every_known_country = {
					limit = {
						is_elven_nation_trigger = yes
					}
					add_opinion = { who = FROM modifier = challenged_elves }
					reverse_add_opinion = { who = FROM modifier = challenged_elves }
				}
			}
            add_country_modifier = {
				name = "es_challenging_the_elves"
				duration = 9125
			}
        }
	}
	
	crush_the_hegemony = {
        icon = direnni_tower
        position = 7
        required_missions = { challenge_the_elves } 
    
        trigger = {
            owns_core_province = 1382
        }
		provinces_to_highlight = {
		    province_id = 1382	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			1382 = {
				change_culture = ROOT
			}
			add_country_modifier = {
				name = "es_hegemony_no_more"
				duration = -1
			}
        }
	}
	
	sieze_high_rock = {
        icon = bretons_subjugation
        position = 9
        required_missions = { our_homeland } 
		
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
			add_adm_power = 1000
			add_dip_power = 1000
			add_mil_power = 1000
        }
	}
	
	es_conquest_of_yokuda_lr_hig = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_hig = {
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
	
	es_conquest_of_kamal_lr_hig = {
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
	
	es_conquest_of_thousand_lr_hig = {
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
	
	es_conquest_of_po_tun_lr_hig = {
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

flavour_missions_3_hig = {
	slot = 8
    generic = no
    ai = yes
    has_country_shield = no
    potential = {
		primary_culture = breton 
		NOT = { tag = BA1 }
	}
	
	honour_the_gods = {
        icon = temple_divines
        position = 1
        required_missions = { } 
    
        trigger = {
			prestige = 25
            num_of_owned_provinces_with = {
				value = 10
				OR = {
					has_building = temple
					has_building = cathedral
				}
			} 
        }
        
        effect = {
            add_country_modifier = {
				name = "es_honoured_gods"
				duration = 9125
			}
			define_advisor = {
				type = esu_monk
				skill = 2
				discount = yes
			}
        }
	}
	
	organise_the_hierarchy = {
        icon = priest_divines
        position = 2
        required_missions = { honour_the_gods } 
    
        trigger = {
			esu_priest = 3
			calc_true_if = {
				all_owned_province = {
					religion = ROOT
					base_tax = 3
					base_production = 3
					base_manpower = 3
				}
				amount = 25
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_organised_hierarchy"
				duration = 9125
			}
			hidden_effect = {
				country_event = {
					id = es_mission_events.6 days = 365 random = 3650
				}
			}
        }
	}
	
	protector_of_half_blood = {
        icon = breton_king
        position = 3
        required_missions = { organise_the_hierarchy } 
    
        trigger = {
			is_defender_of_faith = yes
			army_size = 100
			NOT = { had_recent_war = 25 }
        }
        
        effect = {
            add_country_modifier = {
				name = "es_protector_of_half_blood"
				duration = -1
			}
        }
	}
	
	the_last_stand = {
        icon = human_warrior
        position = 6
        required_missions = { challenge_the_elves annihilate_the_successor } 
    
        trigger = {
			1408 = {
				owned_by = ROOT
			}
        }
		provinces_to_highlight = {
		    province_id = 1408	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			add_mil_power = 500
            1391 = {
				change_culture = ROOT
			}
        }
	}
	
	our_homeland = {
        icon = high_rock
        position = 8
        required_missions = { crush_the_hegemony the_last_stand drive_them_out } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					culture = breton
				}
				amount = 150
			}
        }
        
        effect = {
			add_prestige = 25
            hidden_effect = {
				every_province = {
					limit = {
						superregion = high_rock_superregion
						NOT = { owned_by = ROOT }
					}
					add_permanent_claim = ROOT
				}
			}
        }
	}
	
	true_breton_kingdom = {
        icon = high_rock_flag
        position = 9
        required_missions = { our_homeland } 
    
        trigger = {
			government_rank = 8
			num_of_subjects = 3
			religious_unity = 1.0
			hidden_trigger = { NOT = { has_country_flag = es_true_breton_kingdom_flag } }
        }
        
        effect = {
			change_tag = HIG
			add_stability = 1
			add_country_modifier = {
				name = "centralization_modifier"
				duration = 7300
			}
			if = { limit = { has_custom_ideas = no } country_event = { id = ideagroups.1 } restore_country_name = yes }
			hidden_effect = { country_event = { id = es_14_scenario.2 days = 365 random = 3650 } set_country_flag = es_true_breton_kingdom_flag complete_mission = true_breton_kingdom }
        }
	}
	
	form_daggerfall_covenant = {
        icon = daggerfall_covenant
        position = 9
        required_missions = { sieze_high_rock secure_wrothgar } 
		
		provinces_to_highlight = {
		    province_id = 1369	
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
			owns_core_province = 1369
			OR = {
				exists = DOM
				government_rank = 10
				has_global_flag = the_planemeld_flag
			}
			hidden_trigger = { NOT = { has_country_flag = form_daggerfall_covenant_flag } }
        }
        
        effect = {
			change_tag = COV
			set_country_flag = formed_cov_flag
			set_country_flag = allience_leader_flag
			add_country_modifier = {
				name = "centralization_modifier"
				duration = 7300
			}
			if = { limit = { has_custom_ideas = no } country_event = { id = ideagroups.1 } restore_country_name = yes }
			hidden_effect = { country_event = { id = es_mission_events.7 days = 31 } }
			hidden_effect = {
				set_country_flag = form_daggerfall_covenant_flag
				complete_mission = form_daggerfall_covenant
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_hig = {
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
	
	es_conquest_of_islandic_tsakara_lr_hig = {
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
	
	es_conquest_of_valenwood_lr_hig = {
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
	
	es_conquest_of_elsweyr_lr_hig = {
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
	
	es_conquest_of_vvardenfell_lr_hig = {
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

flavour_missions_4_hig = {
	slot = 9
    generic = no
    ai = yes
    has_country_shield = no
    potential = {
		primary_culture = breton 
		NOT = { tag = BA1 }
	}
	
	prepare_for_war = {
        icon = breton_soldier
        position = 1
        required_missions = { } 
    
        trigger = {
			years_of_income = 2.5
			manpower_percentage = 0.95
			army_size_percentage = 0.95
			NOT = { inflation = 0.1 }
        }
        
        effect = {
			add_army_tradition = 10
            add_country_modifier = {
				name = "es_prepare_for_war"
				duration = 9125
			}
        }
	}
	
	push_the_orcs = {
        icon = orcish_camp
        position = 3
        required_missions = { prepare_for_war geather_our_strength } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					culture_group = orsimer_cg
				}
				amount = 10
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_pushed_the_orcs"
				duration = 9125
			}
        }
	}
	
	first_siege_of_orsinium = {
        icon = orsinium
        position = 4
        required_missions = { push_the_orcs } 
    
        trigger = {
			1425 = {
				controlled_by = ROOT
			}
        }
		provinces_to_highlight = {
		    province_id = 1425	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
            if = {
				limit = {
					1425 = { NOT = { owned_by = ROOT } }
				}
				1425 = {
					add_devastation = 100
					add_base_tax = -3
					add_base_production = -3
					add_base_manpower = -3
				}
			}
			else = {
				1425 = {
					change_culture = ROOT
				}
			}
        }
	}
	
	annihilate_the_successor = {
        icon = orsinium_2
        position = 5
        required_missions = { first_siege_of_orsinium } 
    
        trigger = {
			1391 = {
				owned_by = ROOT
			}
        }
		provinces_to_highlight = {
		    province_id = 1391	
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 10
			add_years_of_income = 1.5
            1391 = {
				change_culture = ROOT
			}
        }
	}
	
	drive_them_out = {
        icon = orc
        position = 7
        required_missions = { annihilate_the_successor } 
    
        trigger = {
			NOT = {
				any_country = {
					culture_group = orsimer_cg
					capital_scope = { superregion = high_rock_superregion }
				}
			}
        }
        
        effect = {
			add_stability = 1
			add_country_modifier = {
				name = "es_purification_of_the_land"
				duration = 18250
			}
        }
	}
	
	secure_wrothgar = {
        icon = orsinium_3
        position = 9
        required_missions = { our_homeland } 
		
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
			add_country_modifier = {
				name = "es_secured_wrothgar"
				duration = -1
			}
        }
	}
	
	es_conquest_of_morrowind_lr_hig = {
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
	
	es_conquest_of_black_marsh_lr_hig = {
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
	
	es_conquest_of_western_cyrodiil_lr_hig = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_hig = {
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
	
	es_conquest_of_central_cyrodiil_lr_hig = {
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

flavour_missions_5_hig = {
	slot = 10
    generic = no
    ai = yes
    has_country_shield = no
    potential = {
		primary_culture = breton 
		NOT = { tag = BA1 }
	}
	
	geather_our_strength = {
        icon = iron_sword
        position = 2
        required_missions = { } 
    
        trigger = {
			army_tradition = 25
			num_of_infantry = 15
			num_of_cavalry = 5
        }
        
        effect = {
			random_owned_province = {
				limit = {
					any_neighbor_province = {
						NOT = { owned_by = ROOT }
					}
				}
				add_building_construction = {
					building = fort_15th
					speed = 0.5
					cost = 0
				}
			}
            add_country_modifier = {
				name = "es_secured_borders"
				duration = 9125
			}
        }
	}
	
	old_allies = {
		icon = breton_allies
        position = 4
        required_missions = { geather_our_strength } 
    
        trigger = {
			any_ally = {
				has_opinion = {
					who = ROOT
					value = 190
				}
				reverse_has_opinion = {
					who = ROOT
					value = 190
				}
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_old_allies"
				duration = 9125
			}
        }
	}
	
	blood_for_freedom = {
		icon = human_alliance
        position = 5
        required_missions = { old_allies } 
    
        trigger = {
			is_free_or_tributary_trigger = yes
        }
        
        effect = {
			create_general = {
				tradition = 50
			}
            add_country_modifier = {
				name = "es_spirit_of_freedom"
				duration = 9125
			}
        }
	}
	
	rebuild_our_homeland = {
		icon = high_rock_city
        position = 6
        required_missions = { blood_for_freedom } 
    
        trigger = {
			total_development = 350
        }
        
        effect = {
            add_stability = 1
			add_years_of_income = 2.5
			add_yearly_manpower = 5.0
        }
	}
	
	subjugate_winterborn_clan = {
		icon = winterborn_clan
        position = 7
        required_missions = { rebuild_our_homeland } 
    
       trigger = {
			7070 = { controlled_by = ROOT }
			7012 = { controlled_by = ROOT }
        }
		provinces_to_highlight = {
			OR = {
				province_id = 7070	
				province_id = 7012	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
            if = {
				limit = {
					OR = {
						exists = BD0
						exists = WTB
					}
				}
				create_subject = {
					subject_type = vassal
					subject = BD0
				}
				create_subject = {
					subject_type = vassal
					subject = WTB
				}
			}
			else = {
				every_province = {
					limit = {
						is_city = yes
						OR = {
							area = high_30_la
							area = high_24_la
						}
					}
					cede_province = WTB
					add_core = WTB
				}
				create_subject = {
					subject_type = march
					subject = WTB
				}
			}
        }
	}
	
	obtain_bangkorai = {
		icon = bangkorai
        position = 8
        required_missions = { subjugate_winterborn_clan } 
    
       trigger = {
			owns_or_subject_of = 6257
			owns_or_subject_of = 1470
			owns_or_subject_of = 6268
        }
		provinces_to_highlight = {
			OR = {
				province_id = 6257	
				province_id = 1470	
				province_id = 6268	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
            add_country_modifier = {
				name = "es_bangkorai_pass"
				duration = 9125
			}
        }
	}
	
	colonise_craglorn = {
		icon = craglorn_countryside
        position = 10
        required_missions = { obtain_bangkorai secure_wrothgar } 
    
       trigger = {
			owns_or_subject_of = 6245
			owns_or_subject_of = 1459
			owns_or_subject_of = 6241
			NOT = { exists = HA3 }
        }
		provinces_to_highlight = {
			OR = {
				province_id = 6245	
				province_id = 1459	
				province_id = 6241	
			}
			NOT = { owned_by = ROOT }
		}
        
        effect = {
            if = {
				limit = {
					government = monarchy 
				}
				6245 = { add_base_tax = 3 add_base_production = 3 add_base_manpower = 3 }
				1459 = { add_base_tax = 3 add_base_production = 3 add_base_manpower = 3 }
				6241 = { add_base_tax = 3 add_base_production = 3 add_base_manpower = 3 }
				every_province = {
					limit = {
						OR = {
							area = hammerfell_3_la
							area = hammerfell_26_la
						}
					}
					cede_province = HA3
					add_core = HA3
				}
				create_subject = {
					subject_type = personal_union
					subject = HA3
				}
				HA3 = {
					override_country_name = CRAGLORN
				}
			}
			else = {
				1459 = { add_base_tax = 1 add_base_production = 1 add_base_manpower = 1 }
				6245 = { add_base_tax = 1 add_base_production = 1 add_base_manpower = 1 }
				6241 = { add_base_tax = 1 add_base_production = 1 add_base_manpower = 1 }
			}
        }
	}
	
	es_conquest_of_western_skyrim_lr_hig = {
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
	
	es_conquest_of_eastern_skyrim_lr_hig = {
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
	
	es_conquest_of_hgh_rock_lr_hig = {
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
	
	es_conquest_of_hammerfell_lr_hig = {
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
	
	es_conquest_of_coldharbour_lr_hig = {
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