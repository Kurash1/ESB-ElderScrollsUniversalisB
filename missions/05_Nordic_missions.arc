flavour_missions_1_sky = {
	slot = 6
    generic = no
    ai = yes
    has_country_shield = no
    potential = { NOT = { tag = NA3 } OR = { primary_culture = nord tag = FOR } }
	
	find_new_allies_mission = {
        icon = human_alliance
        position = 1
        required_missions = { } 
    
        trigger = {
            any_ally = {
				primary_culture = nord
				has_opinion = { who = ROOT value = 190 }
				reverse_has_opinion = { who = ROOT value = 190 }
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_new_allies"
				duration = 9125
			}
        }
	}
	
	king_must_have_subjects_mission = {
        icon = human_vassal
        position = 2
        required_missions = { find_new_allies_mission form_old_holds_mission } 
    
        trigger = {
            vassal = 5
        }
        
        effect = {
            add_country_modifier = {
				name = "es_subjects_of_the_king"
				duration = 9125
			}
        }
	}
	
	ties_with_skaals_mission = {
        icon = skaals
        position = 4
        required_missions = { king_must_have_subjects_mission } 
    
        trigger = {
			OR = {
				any_ally = {
					primary_culture = skaal
				}
				any_subject_country = {
					primary_culture = skaal
				}
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_trade_with_skalls"
				duration = 18250
			}
        }
	}
	
	protector_of_cyrosiil_mission = {
        icon = white_gold_tower
        position = 5
        required_missions = { colonisation_of_high_rock_mission } 
		
		provinces_to_highlight = {
			province_id = 1206
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            OR = {
				owns = 1206
				1206 = {
					owner = {
						alliance_with = ROOT
					}
				}
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_protector_of_cyrodiil"
				duration = 9125
			}
        }
	}
	
	control_bruma_mission = {
        icon = bruma
        position = 7
        required_missions = { protector_of_cyrosiil_mission } 
    
        trigger = {
            NOT = { exists = CB6 }
			cyrodiil_16_la = {
				owned_by = ROOT
				is_city = yes
			}
			cyrodiil_69_la = {
				owned_by = ROOT
				is_city = yes
			}
			cyrodiil_71_la = {
				owned_by = ROOT
				is_city = yes
			}
        }
		
		provinces_to_highlight = {
		    OR = {
				area = cyrodiil_16_la
				area = cyrodiil_69_la
				area = cyrodiil_71_la
			}
			is_city = yes
			NOT = { owned_by = ROOT }
		}
        
        effect = {
            add_prestige = 10
			every_owned_province = {
				limit = {
					OR = {
						area = cyrodiil_16_la
						area = cyrodiil_69_la
						area = cyrodiil_71_la
					}
				}
				add_core = CB6
			}
			create_march = CB6
			CB6 = { change_government = republic change_religion = ROOT }
			CB6 = { change_government_reform_progress = -99999 change_religion = ROOT country_event = { id = temporarytitle.1 } }
        }
	}
	
	es_conquest_of_pyandonea_lr_sky = {
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
	
	es_conquest_of_summerset_lr_sky = {
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
	
	es_conquest_of_continental_atmora_lr_sky = {
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
	
	es_conquest_of_islandic_atmora_lr_sky = {
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
	
	es_conquest_of_far_atmora_lr_sky = {
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

flavour_missions_2_sky = {
	slot = 7
    generic = no
    ai = yes
    has_country_shield = no
    potential = { NOT = { tag = NA3 } OR = { primary_culture = nord tag = FOR } }
	
	form_old_holds_mission = {
        icon = dawnstar
        position = 1
        required_missions = { } 
		
		provinces_to_highlight = {
		    OR = {
				province_id = 1275		
				province_id = 1299		
				province_id = 1306		
				province_id = 1342		
			}
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
            OR = {
				owns = 1275
				owns = 1299
				owns = 1306
				owns = 1342
			}
			num_of_cities = 50
        }
        
        effect = {
            add_stability = 1
			if = { limit = { NOT = { has_global_flag = old_holds_names_flag } }
				NB6 = { override_country_name = HAAFINGAR }
				NB5 = { override_country_name = HJAALMARCH }
				NA9 = { override_country_name = PALE }
				NA3 = { override_country_name = EASTMARCH }
				set_global_flag = old_holds_names_flag
			}
        }
	}
	
	unify_the_old_holds_mission = {
        icon = windhelm_throne
        position = 2
        required_missions = { form_old_holds_mission } 
		
		provinces_to_highlight = {
		    OR = {
				province_id = 1275		
				province_id = 1299		
				province_id = 1306		
				province_id = 1342		
			}
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
            owns = 1275
			owns = 1299
			owns = 1306
			owns = 1342
        }
        
        effect = {
            add_country_modifier = {
				name = "es_ruler_of_the_old_holds"
				duration = 9125
			}
        }
	}
	
	form_skyrim_mission = {
        icon = skyrim
        position = 3
        required_missions = { unify_the_old_holds_mission end_of_revenge_mission } 
    
        trigger = {
            OR = {
				tag = SKY
				tag = OLD
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_skyrim_united"
				duration = 9125
			}
        }
	}
	
	colonisation_of_high_rock_mission = {
        icon = high_rock
        position = 4
        required_missions = { form_skyrim_mission } 
    
        trigger = {
            any_active_trade_node = {
				province_id = 44
				has_merchant = prev
			}
        }
        
        effect = {
			if = {
				limit = { NOT = { has_global_flag = es_0_scenario.5_flag } }
				every_country = {
					limit = { owns = 1369 } country_event = { id = es_0_scenario.5 days = 9125 }
				}
				set_global_flag = es_0_scenario.5_flag
			}
        }
	}
	
	destruction_of_direnni_mission = {
        icon = direnni_tower
        position = 5
        required_missions = { colonisation_of_high_rock_mission } 
		
		provinces_to_highlight = {
		    region = high_rock_lr
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
			NOT = {
				any_province = {
					region = high_rock_lr
					owner = { culture_group = high_elves_cg }
				}
			}
        }
        
        effect = {
			add_prestige = 10
			every_owned_province = {
				limit = {
					region = high_rock_lr
				}
				add_permanent_claim = ROOT
			}
        }
	}
	
	subjugation_of_bretons_mission = {
        icon = bretons_subjugation
        position = 6
        required_missions = { destruction_of_direnni_mission } 
    
        trigger = {
			NOT = {
				any_country = {
					primary_culture = breton
					NOT = { is_subject_of = ROOT }
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_crown_of_high_rock"
				duration = -1
			}
        }
	}
	
	join_the_empire_mission = {
        icon = join_empire
        position = 8
        required_missions = { control_bruma_mission form_old_kingdom_mission } 
    
        trigger = {
			NOT = { government = native }
			OR = {
				is_part_of_hre = yes
				emperor = { has_opinion = { who = ROOT value = 175 } }
			}
        }
        
        effect = {
			capital_scope = {
				set_in_empire = yes
			}
        }
	}
	
	es_conquest_of_yokuda_lr_sky = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_sky = {
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
	
	es_conquest_of_kamal_lr_sky = {
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
	
	es_conquest_of_thousand_lr_sky = {
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
	
	es_conquest_of_po_tun_lr_sky = {
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

flavour_missions_3_sky = {
	slot = 8
    generic = no
    ai = yes
    has_country_shield = no
    potential = { NOT = { tag = NA3 } OR = { primary_culture = nord tag = FOR } }
	
	fleet_of_the_new_home_mission = {
        icon = nordic_ship
        position = 1
        required_missions = { } 
    
        trigger = {
			num_of_light_ship = 25
			num_of_heavy_ship = 10
        }
        
        effect = {
			add_country_modifier = {
				name = "es_fleet_of_the_new_home"
				duration = 9125
			}
        }
	}
	
	end_of_revenge_mission = {
        icon = snow_elves_building
        position = 2
        required_missions = { fleet_of_the_new_home_mission } 
    
        trigger = {
			NOT = {
				any_known_country = {
					primary_culture = snow_elven
				}
			}
        }
		
		provinces_to_highlight = {
		    owner = { primary_culture = snow_elven }
			NOT = { owned_by = ROOT }
		}
        
        effect = {
			add_prestige = 15
			every_owned_province = {
				limit = {
					culture = snow_elven
				}
				add_permanent_province_modifier = {
					name = "es_conquest_of_snow_elves"
					duration = 3650
				}
			}
        }
	}
	
	take_reachmen_holds_mission = {
		icon = reach
		position = 3
		required_missions = { end_of_revenge_mission } 
		
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
	
	influence_in_morrowind_mission = {
        icon = blacklight
        position = 4
        required_missions = { form_skyrim_mission trade_capital_of_skyrim_mission } 
    
        trigger = {
			any_active_trade_node = {
				province_id = 3365
				has_merchant = prev
			}
			any_subject_country = {
				capital_scope = {
					region = velothi_mountains_lr
				}
			}
        }
        
        effect = {
			
			every_province = {
				limit = {
					region = velothi_mountains_lr
				}
				add_permanent_claim = ROOT
			}
        }
	}
	
	besiege_ebonheart_mission = {
        icon = old_ebonheart
        position = 6
        required_missions = { influence_in_morrowind_mission } 
		
		provinces_to_highlight = {
		    province_id = 3779		
			NOT = { owned_by = ROOT }
		}
    
        trigger = {
			owns = 3779
        }
        
        effect = {
			every_province = {
				limit = {
					region = deshaan_lr
				}
				add_permanent_claim = ROOT
			}
        }
	}
	
	form_old_kingdom_mission = {
        icon = old_kingdom
        position = 7
        required_missions = { besiege_ebonheart_mission } 
    
        trigger = {
			tag = OLD
        }
        
        effect = {
			add_country_modifier = {
				name = "es_old_kingdom_of_nords"
				duration = -1
			}
        }
	}
	
	the_true_emperor_mission = {
        icon = the_emperor
        position = 9
        required_missions = { join_the_empire_mission colonisation_of_kamal_mission } 
    
        trigger = {
			OR = {
				is_emperor = yes
				AND = {
					owns_core_province = 1206
					num_of_subjects = 10
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_the_true_emperor"
				duration = -1
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_sky = {
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
	
	es_conquest_of_islandic_tsakara_lr_sky = {
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
	
	es_conquest_of_valenwood_lr_sky = {
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
	
	es_conquest_of_elsweyr_lr_sky = {
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
	
	es_conquest_of_vvardenfell_lr_sky = {
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

flavour_missions_4_sky = {
	slot = 9
    generic = no
    ai = yes
    has_country_shield = no
    potential = { NOT = { tag = NA3 } OR = { primary_culture = nord tag = FOR } }
	
	mead_production_mission = {
        icon = mead_brewing
        position = 1
        required_missions = { } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					OR = {
						trade_goods = beer
						trade_goods = mead
						trade_goods = black_briar_mead
						trade_goods = honningbrew_mead
						trade_goods = numbskin_mead
					}
				}
				amount = 5
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_mead_production"
				duration = 9125
			}
        }
	}
	
	centers_of_production_mission = {
        icon = nordic_village
        position = 2
        required_missions = { mead_production_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					base_production = 7
				}
				amount = 3
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_production_boost"
				duration = 9125
			}
        }
	}
	
	trade_capital_of_skyrim_mission = {
        icon = nordic_trade_squar
        position = 3
        required_missions = { centers_of_production_mission end_of_revenge_mission } 
    
        trigger = {
			dip_power = 1000
			home_trade_node = {
				trade_share = {
					country = ROOT
					share = 50
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_nordic_merchants"
				duration = -1
			}
			add_dip_power = -1000
        }
	}
	
	expedition_to_roscrea_mission = {
        icon = ice_expedition
        position = 4
        required_missions = { trade_capital_of_skyrim_mission } 
    
        trigger = {
			num_of_explorers = 1
			any_active_trade_node = {
				province_id = 1951
				has_merchant = prev
			}
        }
        
        effect = {
			add_yearly_sailors = 1.0
			add_years_of_income = 1.0
			add_prestige = 10
        }
	}
	
	expedition_to_atmora_mission = {
        icon = atmora_expedition
        position = 5
        required_missions = { expedition_to_roscrea_mission } 
    
        trigger = {
			any_owned_province = {
				region = central_atmora_lr
				owned_by = ROOT
			}
			any_active_trade_node = {
				province_id = 1938
				has_merchant = prev
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_nordic_colonists"
				duration = -1
			}
        }
	}
	
	colonisation_of_atmora_mission = {
        icon = atmora_colonisation
        position = 6
        required_missions = { expedition_to_atmora_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					region = central_atmora_lr
				}
				amount = 35
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_atmoran_trade_company"
				duration = -1
			}
        }
	}
	
	colonisation_of_kamal_mission = {
        icon = kamal_colonisation
        position = 8
        required_missions = { form_old_kingdom_mission flag_over_black_harbour_mission } 
    
        trigger = {
			calc_true_if = {
				all_owned_province = {
					region = kamal_lr
				}
				amount = 50
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "es_new_tamriel_trade_company"
				duration = -1
			}
        }
	}
	
	es_conquest_of_morrowind_lr_sky = {
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
	
	es_conquest_of_black_marsh_lr_sky = {
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
	
	es_conquest_of_western_cyrodiil_lr_sky = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_sky = {
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
	
	es_conquest_of_central_cyrodiil_lr_sky = {
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

flavour_missions_5_sky = {
	slot = 10
    generic = no
    ai = yes
    has_country_shield = no
    potential = { NOT = { tag = NA3 } OR = { primary_culture = nord tag = FOR } }
	
	preserve_legends_mission = {
        icon = bard
        position = 1
        required_missions = { } 
    
        trigger = {
			advisor = esu_bard
        }
        
        effect = {
			add_prestige = 5
			add_country_modifier = {
				name = "es_legends_of_the_past"
				duration = 9125
			}
        }
	}
	
	fiest_of_dibella_mission = {
        icon = dibella
        position = 2
        required_missions = { preserve_legends_mission } 
    
        trigger = {
			years_of_income = 2.5
			NOT = { inflation = 0.1 }
        }
        
        effect = {
			add_years_of_income = -2.5
			add_country_modifier = {
				name = "es_fiest_of_dibella"
				duration = 9125
			}
        }
	}
	
	the_national_epic_mission = {
        icon = national_epic
        position = 4
        required_missions = { fiest_of_dibella_mission } 
    
        trigger = {
			is_at_war = yes
			war_exhaustion = 10
        }
        
        effect = {
			add_country_modifier = {
				name = "es_national_epic"
				duration = 9125
			}
        }
	}
	
	expedition_to_northern_islands_mission = {
        icon = northern_expedition
        position = 5
        required_missions = { expedition_to_roscrea_mission } 
    
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
	
	flag_over_black_harbour_mission = {
        icon = nodic_conquest
        position = 7
        required_missions = { expedition_to_northern_islands_mission } 
		
		provinces_to_highlight = { 
			province_id = 800
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
			owns_or_subject_of = 800
        }
        
        effect = {
			add_country_modifier = {
				name = "es_gates_of_akavir"
				duration = 18250
			}
        }
	}
	
	es_conquest_of_western_skyrim_lr_sky = {
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
	
	es_conquest_of_eastern_skyrim_lr_sky = {
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
	
	es_conquest_of_hgh_rock_lr_sky = {
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
	
	es_conquest_of_hammerfell_lr_sky = {
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
	
	es_conquest_of_coldharbour_lr_sky = {
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