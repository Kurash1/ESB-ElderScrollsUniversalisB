piracy_missions = {
    slot = 6                 
    generic = no
    ai = yes
    has_country_shield = no 
    potential = { primary_culture = maormer }
    
    fortifying_fenna_mission = {
        icon = fort
        position = 3
        required_missions = { sequestering_sealanes_mission }
        
        provinces_to_highlight = {
			OR = {
				area = pyandonea_12_la		#Trynphina
				area = pyandonea_13_la		#Marleigh
				area = pyandonea_14_la		#Fenna
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            2089 = { owned_by = ROOT }
			num_of_owned_provinces_with = {
				value = 5
				OR = {
				    has_building = fort_15th
					has_building = fort_16th
					has_building = fort_17th
					has_building = fort_18th
				}
			}
			NOT = {
				all_known_country = {
					army_size = ROOT
				}
			}
        }
        
        effect = {
            pyandonea_12_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_13_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_14_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_fortifying_fenna"
				duration = 9125
			}
        }
    }
	
	allies_anvil_mission = {
        icon = anvil
        position = 6
        required_missions = { voyaging_valenwood_mission }
        
        provinces_to_highlight = { 
			OR = {
				province_id = 1161			#Anvil
				province_id = 1168			#Crowhaven
				province_id = 5327			#Amane
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            any_ally = {
				primary_culture = ayleid
				num_of_owned_provinces_with = {
					value = 20
					region = golden_coast_lr
				}
				has_opinion = {
					who = ROOT
					value = 150
				}
			}
			has_discovered = 1161
			has_discovered = 1168
			has_discovered = 5327
        }
        
        effect = {
			add_country_modifier = {
				name = "py_mi_ally_anvil"
				duration = 9125
			}
        }
    }
	
	parlaying_pirates_mission = {
        icon = pirate
        position = 7
        required_missions = { allies_anvil_mission }

        trigger = {
           OR = {
				alliance_with = ABE
				alliance_with = RES
			}
			num_of_heavy_ship = 30
			1161 = {
				privateer_power = {
					country = ROOT
					share = 15
				}
			}
			has_discovered = 5441
			has_discovered = 5442
			has_discovered = 5443
			has_discovered = 5444
			has_discovered = 5445
		}
        
        effect = {
			hammerfell_45_la = {			#Anwein
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			5441 = { add_core = ROOT }
			5442 = { add_core = ROOT }
			5443 = { add_core = ROOT }
			5444 = { add_core = ROOT }
			5445 = { add_core = ROOT }
			add_country_modifier = {
				name = "py_mi_pirating"
				duration = 9125
			}			
        }
    }
	
	harassing_hews_bane_mission = {
        icon = abahs_landing
        position = 8
        required_missions = { parlaying_pirates_mission }
        
        provinces_to_highlight = {
			area = hammerfell_45_la
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
            hammerfell_45_la = {
				type = all
				owned_by = ROOT
			}
			6436 = {
				privateer_power = {
					country = ROOT
					share = 25
				}
			}
			has_leader_with = {
				admiral = yes
				manuever = 4
			}
        }
        
        effect = {
            hammerfell_7_la = {				#Thedell
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			hammerfell_44_la = {			#Marn
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_hews_bane"
				duration = 9125
			}
        }
    }
	
	tensions_taneth_mission = {
        icon = taneth
        position = 9
        required_missions = { harassing_hews_bane_mission }
        
        provinces_to_highlight = {
            OR = {
				area = hammerfell_7_la
				area = hammerfell_44_la
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
            hammerfell_7_la = {
				type = all
				owned_by = ROOT
			}
            hammerfell_44_la = {
				type = all
				owned_by = ROOT
			}
			navy_tradition = 35
			sailors_percentage = 1
        }
        
        effect = {
			every_province = {
				limit = {
					region = corten_heights_lr
					is_city = yes
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_slaving_hammerfell"
				duration = -1
			}
        }
    }
	
	es_conquest_of_pyandonea_lr_pya = {
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
	
	es_conquest_of_summerset_lr_pya = {
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
	
	es_conquest_of_continental_atmora_lr_pya = {
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
	
	es_conquest_of_islandic_atmora_lr_pya = {
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
	
	es_conquest_of_far_atmora_lr_pya = {
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

tamriel_missions = {
    slot = 7             
    generic = no
    ai = yes
    has_country_shield = no  
    potential = { primary_culture = maormer }
	
    abolishing_abbarbas_mission = {
        icon = abbarbas
        position = 3
        required_missions = { sequestering_sealanes_mission }
        
        provinces_to_highlight = {
			OR = {
				area = pyandonea_4_la		#Abbarbas
				area = pyandonea_7_la		#Velu
				area = pyandonea_8_la		#Diarana
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            224 = { owned_by = ROOT }
			NOT = { average_autonomy = 5 }
			NOT = { num_of_powerful_estates = 1 }
        }
        
        effect = {
            pyandonea_4_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_7_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_8_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_abolish_abbarbas"
				duration = 9125
			}
        }
    }
	
	voyaging_valenwood_mission = {
        icon = camoran_throne
        position = 5
        required_missions = { sublimation_deity_mission }
        
        provinces_to_highlight = {
			OR = {
				province_id = 857			#Tarlain Heights
				province_id = 863			#Greenheart
				province_id = 4941			#Southpoint
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            any_ally = {
				primary_culture = bosmer
				num_of_owned_provinces_with = {
					value = 20
					OR = {
						region = southern_valenwood_lr
						region = northern_valenwood_lr
					}
				}
				has_opinion = {
					who = ROOT
					value = 150
				}
			}
			has_discovered = 857
			has_discovered = 863
			has_discovered = 4941
		}
        
        effect = {
			add_country_modifier = {
				name = "py_mi_voyaging_valenwood"
				duration = 9125
			}
        }
    }
	
	khenarthis_roost_mission = {
        icon = mistral
        position = 6
        required_missions = { voyaging_valenwood_mission }
        
        provinces_to_highlight = {
			area = elsweyr_16_la		#Mistral
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            num_of_light_ship = 100
			OR = {
				5155 = { 
					owner = {
						has_opinion = {
							who = ROOT
							value = 150
						}
					}
				}
				5155 = {
					privateer_power = {
						country = ROOT
						share = 20
					}
				}
			}
        }
        
        effect = {
			country_event = { id = py_mission_events.2 }
            define_advisor = {
				type = esu_occultist
				name = "Uldor"
				skill = 3
				cost_multiplier = 0.5
			}
        }
    }
	
	search_for_topal_mission = {
        icon = topal_island
        position = 8
        required_missions = { 
			khenarthis_roost_mission
			parlaying_pirates_mission
		}
        
        provinces_to_highlight = {
            OR = {							#Topalia cores
				province_id = 5441			#Avinka
				province_id = 5442			#Miculeius
				province_id = 5443			#Silalona
				province_id = 5444			#Gloraso
				province_id = 5445			#Gruilaine
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
			num_of_light_ship = 150
            any_ally = {
				culture_group = cyrodiil_cg
				num_of_owned_provinces_with = {
					value = 20
					region = eastern_cyrodiil_lr
				}
				has_opinion = {
					who = ROOT
					value = 150
				}
			}
			owns_core_province = 5441
			owns_core_province = 5442		
			owns_core_province = 5443
			owns_core_province = 5444
			owns_core_province = 5445
        }
        
        effect = {
            cyrodiil_34_la = {			#Water's Edge
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			cyrodiil_36_la = {			#Conarnia
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_orgnum_coffer"
				duration = 36500
			}
        }
    }
	
	nedes_nibeney_mission = {
        icon = leyawiin_1
        position = 9
        required_missions = { search_for_topal_mission }
        
        provinces_to_highlight = {
            OR = {
				province_id = 5498			#Water's Edge
				province_id = 5516			#Conaria
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
            owns_core_province = 5498
			owns_core_province = 5516
			1206 = {
				privateer_power = {
					country = ROOT
					share = 35
				}
			}
			any_ally = {
				num_of_owned_provinces_with = {
					value = 20
					region = central_cyrodiil_lr
				}
				has_opinion = {
					who = ROOT
					value = 150
				}
			}
        }
        
        effect = {
            add_historical_friend = ALE
			add_historical_friend = ORD
			ALE = { add_historical_friend = ROOT }
			ORD = { add_historical_friend = ROOT }
			add_country_modifier = {
				name = "py_mi_global_trade"
				duration = -1
			}
        }
	}
	
	es_conquest_of_yokuda_lr_pya = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_pya = {
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
	
	es_conquest_of_kamal_lr_pya = {
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
	
	es_conquest_of_thousand_lr_pya = {
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
	
	es_conquest_of_po_tun_lr_pya = {
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

aldmeris_missions = {
    slot = 8
    generic = no
    ai = yes
    has_country_shield = no  
    potential = { primary_culture = maormer }
    
    banished_from_aldmeris_mission = {
        icon = maormer_warrior
        position = 1
        required_missions = {  }

        trigger = {
            manpower_percentage = 1
			all_owned_province = { NOT = { pure_unrest = 1 } }
			NOT = { doom = 50 }
        }
        
        effect = {
			if = {
				limit = { has_dlc = "El Dorado" }
				add_doom = -10
			}
			add_country_modifier = {
				name = "py_mi_veil_of_mist"   
				duration = -1
			}
        }
    }
	
	sequestering_sealanes_mission = {
        icon = jungle_village
        position = 2
        required_missions = { 
			banished_from_aldmeris_mission
			defending_new_home_mission
		}
        
        provinces_to_highlight = {
			OR = {
				province_id = 209			#Tiguna
				province_id = 224			#Abbarbas
				province_id = 240			#Vallas Bor
				province_id = 2050			#Eilyse
				province_id = 2089			#Fenna
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            num_of_subjects = 5
			num_of_provinces_in_states = 20
			adm = 1
			dip = 1
			mil = 1
			NOT = { doom = 50 }
        }
        
        effect = {
			if = {
				limit = { has_dlc = "El Dorado" }
				add_doom = -20
			}
			209 = { add_permanent_claim = ROOT }
			224 = { add_permanent_claim = ROOT }
			240 = { add_permanent_claim = ROOT }
			2050 = { add_permanent_claim = ROOT }
			2089 = { add_permanent_claim = ROOT }
			add_country_modifier = {
				name = "py_mi_sequester_sealanes"
				duration = 9125
			}
        }
    }
	
	trading_in_tiguna_mission = {
        icon = tiguna
        position = 3
        required_missions = { sequestering_sealanes_mission }
        
        provinces_to_highlight = {
			OR = {
				area = pyandonea_1_la		#Atea Atoll
				area = pyandonea_2_la		#Secula
				area = pyandonea_15_la		#Fenyola
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            209 = {
				owned_by = ROOT
				has_most_province_trade_power = ROOT
			}
			if = {
            limit = { has_dlc = "Dharma" }
                num_of_owned_provinces_with = {
					value = 2
					province_has_center_of_trade_of_level = 3
				}
			}
			else = {
				num_of_merchants = 4  
			}
        }
        
        effect = {
            pyandonea_1_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_2_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_15_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			add_treasury = 200
			add_country_modifier = {
				name = "py_mi_trading_tiguna"
				duration = 9125
			}
        }
    }
	
	sublimation_deity_mission = {
        icon = orgnum
        position = 4
        required_missions = { 
			fortifying_fenna_mission
			abolishing_abbarbas_mission
			trading_in_tiguna_mission
			innovating_eilyse_mission
			venerating_vallas_bor_mission
		}
        
        provinces_to_highlight = {
			OR = {
				province_id = 209			#Tiguna
				province_id = 224			#Abbarbas
				province_id = 240			#Vallas Bor
				province_id = 2050			#Eilyse
				province_id = 2089			#Fenna
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
			owns_core_province = 209
			owns_core_province = 224		
			owns_core_province = 240
			owns_core_province = 2050
			owns_core_province = 2089
        }
        
        effect = {
			define_ruler = {
				name = "Sakatel"
				dynasty = "Orgnum"
				age = 100
				claim = 100
				adm = 7
				dip = 3
				mil = 7
				#fixed = yes
				male = yes
			}
			country_event = { id = py_mission_events.1 }
			4668 = { add_permanent_claim = ROOT }
			4807 = { add_permanent_claim = ROOT }
			add_country_modifier = {
				name = "py_mi_serpent_king"
				duration = -1
			}
        }
    }
	
	preparing_pyandonea_mission = {
        icon = maormer_warrior_1
        position = 5
        required_missions = { sublimation_deity_mission }
        
        provinces_to_highlight = {
            region = pyandonea_lr
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            army_size_percentage = 1
			navy_size_percentage = 1
			pyandonea_lr = {
				type = all
				owned_by = ROOT
			}
			224 = {
				trade_share = {
					country = ROOT
					share = 75
				}
			}
        }
        
        effect = {
			add_country_modifier = {
				name = "py_mi_preparing_pyandonea"
				duration = 18250
			}
        }
    }
	
	summerset_invasion_mission = {
        icon = summerset_city
        position = 6
        required_missions = { 
			preparing_pyandonea_mission
			search_new_aldmeris_mission
			}
        
        provinces_to_highlight = { 
			OR = {
				province_id = 4661		#Edala
				province_id = 4741		#Cirane
				province_id = 4818		#Koraire
				province_id = 4837		#Valinalda
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            prestige = 50
			num_of_owned_provinces_with = {
				value = 15
					OR = {
						region = summerset_lr
						region = auridon_lr
					}
			}
			owns_core_province = 4661
			owns_core_province = 4741		
			owns_core_province = 4818
			owns_core_province = 4837
			NOT = {
				all_neighbor_country = {
					tech_difference = 1
				}
			}
        }
        
        effect = {
            add_prestige = 15
			add_casus_belli = {
				target = SA6		#Alinor
				type = cb_restore_personal_union
				months = 300
			}
			add_casus_belli = {
				target = SB2		#Firsthold
				type = cb_restore_personal_union
				months = 300
			}
			add_country_modifier = {
				name = "py_mi_summerset_invasion"
				duration = 9125
			}
        }
    }
	
	aldmeris_union_mission = {
        icon = summerset_city_crystal_tower
        position = 7
        required_missions = { summerset_invasion_mission }
        
        provinces_to_highlight = { #al	ela	 fir 	grc
            OR = {
				area = summerset_5_la		#Elanesse
				area = summerset_6_la		#Alinor
				area = summerset_12_la		#Firsthold	
				area = summerset_14_la		#Greenwater Cove	
			}
			NOT = {owned_by = ROOT }
        }
		
        trigger = {
            all_subject_country = {
				NOT = { liberty_desire = 50 }
			}
			summerset_5_la = {
				type = all
				owned_by = ROOT
			}
			summerset_6_la = {
				type = all
				owned_by = ROOT
			}
			summerset_12_la = {
				type = all
				owned_by = ROOT
			}
			summerset_14_la = {
				type = all
				owned_by = ROOT
			}
        }
        
        effect = {
            summerset_3_la = {			#Nirae
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_7_la = {			#Kingdom Fields
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_11_la = {			#Phaer
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_17_la = {			#Ebon Stadmont
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_26_la = {			#Riverfeld
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_29_la = {			#Skywatch
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_aldmeris_hegenomy"
				duration = 9125
			}
        }
    }
	
	gathering_great_alinor_mission = {
        icon = summerset_city_1
        position = 8
        required_missions = { aldmeris_union_mission }
        
        provinces_to_highlight = {
            OR = {
				area = summerset_7_la		#Kingdom Fields
				area = summerset_17_la		#Ebon Standmont
				area = summerset_26_la		#Riverfeld
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
			summerset_7_la = {
				type = all
				owned_by = ROOT
			}
			summerset_17_la = {
				type = all
				owned_by = ROOT
			}
			summerset_26_la = {
				type = all
				owned_by = ROOT
			}
			NOT = { all_neighbor_country = { army_size = ROOT } }
        }
        
        effect = {
            summerset_1_la = {			#Lillandril
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_4_la = {			#Cloudrest
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_19_la = {			#Elsinaerith
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_25_la = {			#Sondline
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_great_alinor"
				duration = 9125
			}
        }
    }
	
	safe_summerset_mission = {
        icon = alinor_palace
        position = 9
        required_missions = { 
			gathering_great_alinor_mission
			allocating_auridon_mission
		}
        
        provinces_to_highlight = {
            OR = {
				area = summerset_1_la
				area = summerset_2_la
				area = summerset_4_la
				area = summerset_8_la
				area = summerset_15_la
				area = summerset_19_la
				area = summerset_20_la
				area = summerset_25_la
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
            all_owned_province = { NOT = { pure_unrest = 1 } }
			summerset_1_la = {
				type = all
				owned_by = ROOT
			}
			summerset_2_la = {
				type = all
				owned_by = ROOT
			}
			summerset_4_la = {
				type = all
				owned_by = ROOT
			}
			summerset_8_la = {
				type = all
				owned_by = ROOT
			}
			summerset_15_la = {
				type = all
				owned_by = ROOT
			}
			summerset_19_la = {
				type = all
				owned_by = ROOT
			}
			summerset_20_la = {
				type = all
				owned_by = ROOT
			}
			summerset_25_la = {
				type = all
				owned_by = ROOT
			}
        }
        
        effect = {
            summerset_9_la = {			#Croddlehurst
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_10_la = {			#Shimmerene
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_16_la = {			#Miriith
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_23_la = {			#Gaeaine
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_summerset_secured"
				duration = -1
			}
        }
    }
	
	restoring_aldmeris_mission = {
        icon = altmeri_dominion
        position = 10
        required_missions = { safe_summerset_mission }
        
        provinces_to_highlight = {
            OR = { 
				province_id = 249			#Lillandril
				province_id = 263			#Cloudrest
				province_id = 271			#Alinor
				province_id = 299			#Firsthold
				province_id = 4740			#Dusk
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
			owns_core_province = 249
			owns_core_province = 263		
			owns_core_province = 271
			owns_core_province = 299
			owns_core_province = 4740
			NOT = { average_home_autonomy = 5 }
        }
        
        effect = {
			249 = {
				add_base_manpower = 2
				add_base_production = 2
				add_base_tax = 2
			}
			263 = {
				add_base_manpower = 2
				add_base_production = 2
				add_base_tax = 2
			}
			271 = {
				add_base_manpower = 2
				add_base_production = 2
				add_base_tax = 2
			}
			299 = {
				add_base_manpower = 2
				add_base_production = 2
				add_base_tax = 2
			}
			4740 = {
				add_base_manpower = 2
				add_base_production = 2
				add_base_tax = 2
			}
			224 = { change_province_name = "Maormeris" }
			271 = { change_province_name = "New Aldmeris" }
			add_country_modifier = {
				name = "py_mi_new_aldmeris"
				duration = -1
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_pya = {
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
	
	es_conquest_of_islandic_tsakara_lr_pya = {
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
	
	es_conquest_of_valenwood_lr_pya = {
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
	
	es_conquest_of_elsweyr_lr_pya = {
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
	
	es_conquest_of_vvardenfell_lr_pya = {
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

summerset_missions = {
    slot = 9
    generic = no
    ai = yes
    has_country_shield = no  
    potential = { primary_culture = maormer }
    
    defending_new_home_mission = {
        icon = maormer_throne_room
        position = 1
        required_missions = {  }
		
        trigger = {
            num_of_subjects = 5
			num_of_allies = 2
			stability = 2
			NOT = { doom = 50 }
        }
        
        effect = {
			if = {
				limit = { has_dlc = "El Dorado" }
				add_doom = -10
			}
			add_country_modifier = {
				name = "py_mi_defending_py"
				duration = 9125
			}
        }
    }
	
	innovating_eilyse_mission = {
        icon = maormer_city
        position = 3
        required_missions = { sequestering_sealanes_mission }
        
        provinces_to_highlight = {
			OR = {
				area = pyandonea_9_la		#Ritina
				area = pyandonea_10_la		#Eilyse
				area = pyandonea_11_la		#Quivira
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            2050 = { owned_by = ROOT }
			NOT = { is_lacking_institutions = yes }
			if = { 
				limit = { 
					has_dlc = "Rule Britannia" 
				} 
				innovativeness = 5 
			} 
			else = { 
				adm_power = 1500
				dip_power = 1500
				mil_power = 1500
			}
        }
        
        effect = {
			if = {
				limit = {
					NOT = { has_dlc = "Rule Britannia" }
				}
				add_adm_power = -1500
				add_dip_power = -1500
				add_mil_power = -1500
			}
            pyandonea_9_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_10_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_11_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_innovating_eilyse"
				duration = 9125
			}
        }
    }
	
	search_new_aldmeris_mission = {
        icon = discover_summerset_islands
        position = 5
        required_missions = { sublimation_deity_mission  }
        
        provinces_to_highlight = {
			OR = {
				province_id = 4668
				province_id = 4807
			}
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            OR = {
				full_idea_group = exploration_ideas
				full_idea_group = maritime_ideas
				full_idea_group = trade_ideas
			}
			4668 = { owned_by = ROOT }
			4807 = { owned_by = ROOT }
        }
        
        effect = {
			summerset_13_la = {			#Spellorin
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_18_la = {			#Anaedthar
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_21_la = {			#Dawnbreak
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_24_la = {			#Curie
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_27_la = {			#Elanara
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_28_la = {			#Astlinwae
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_30_la = {			#Caemaine
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_colonizing_summerset"
				duration = 9125
			}
        }
    }
	
	sun_mer_set_mission = {
        icon = trade_ship
        position = 6
        required_missions = { search_new_aldmeris_mission }

        trigger = {
            OR = { 
				full_idea_group = naval_ideas
				full_idea_group = flottenbasis0
				full_idea_group = expansion_ideas
				full_idea_group = innovativeness_ideas
				full_idea_group = galle0
				full_idea_group = handel0
				full_idea_group = gross0
			}
			if = {
				limit = { has_dlc = "Dharma" }
				num_of_owned_provinces_with = {
					value = 5
					province_has_center_of_trade_of_level = 3
				}
			}
			271 = {
				highest_value_trade_node = yes
				trade_share = {
					country = ROOT
					share = 75
				}
			}
			num_of_light_ship = 250
			num_of_heavy_ship = 50
        }
        
        effect = {
			add_country_modifier = {
				name = "py_mi_sun_never_sets"
				duration = -1
			}
        }
    }
	
	#righting_sinistrals_mission = {
    #    icon = sinistral_stature
    #    position = 7
    #    required_missions = { maormernifest_mission }
    #    
    #    provinces_to_highlight = {
	#		area = yokuda_9_la
	#		NOT = { owned_by = ROOT }
    #    }
    #
    #    trigger = {
    #        NOT = { exists = SIN }
	#		yokuda_9_la = {
	#			type = all
	#			owned_by = ROOT
	#		}
	#		2184 = { has_owner_religion = yes }
    #    }
    #    
    #    effect = {
	#		yokuda_2_la = {			#Ravan
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		yokuda_13_la = {		#Haearon
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		add_country_modifier = {
	#			name = "py_mi_colonizing_lower_yokuda"
	#			duration = 9125
	#		}
    #    }
    #}
	
	allocating_auridon_mission = {
        icon = auridon
        position = 8
        required_missions = { aldmeris_union_mission }
        
        provinces_to_highlight = {
            OR = {
				area = summerset_3_la		#Nirae
				area = summerset_11_la		#Phaer
				area = summerset_29_la		#Skywatch
			}
			NOT = {owned_by = ROOT }
        }
    
        trigger = {
			summerset_3_la = {
				type = all
				owned_by = ROOT
			}
			summerset_11_la = {
				type = all
				owned_by = ROOT
			}
			summerset_29_la = {
				type = all
				owned_by = ROOT
			}
			NOT = { all_neighbor_country = { navy_size = ROOT } }
        }
        
        effect = {
            summerset_2_la = {			#Kingshaven
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			summerset_8_la = {			#Sunhold
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_15_la = {			#Old Hall
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
            summerset_20_la = {			#Dusk
				limit = {
					NOT = { is_permanent_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_permanent_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_auridon"
				duration = 9125
			}
        }
	}
	
	es_conquest_of_morrowind_lr_pya = {
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
	
	es_conquest_of_black_marsh_lr_pya = {
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
	
	es_conquest_of_western_cyrodiil_lr_pya = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_pya = {
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
	
	es_conquest_of_central_cyrodiil_lr_pya = {
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

colonization_missions = {
    slot = 10
    generic = no
    ai = yes
    has_country_shield = no  
    potential = { primary_culture = maormer }
    
    venerating_vallas_bor_mission = {
        icon = vallas_bor_temple
        position = 3
        required_missions = { sequestering_sealanes_mission }
        
        provinces_to_highlight = {
			province_id = 240
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            240 = { owned_by = ROOT }
			num_of_owned_provinces_with = {
				value = 25
					OR = {
						has_building = temple
						has_building = cathedral
					}
			}	
			is_defender_of_faith = yes
        }
        
        effect = {
            pyandonea_3_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_5_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			pyandonea_6_la = {
				limit = {
					NOT = { is_claim = ROOT }
					NOT = { is_core = ROOT }
				}
				add_claim = ROOT
			}
			add_country_modifier = {
				name = "py_mi_venerating_vallas_bor"
				duration = 9125
			}
        }
    }
	
	#maormernifest_mission = {
    #    icon = dawnbreak_ruined
    #    position = 6
    #    required_missions = { search_new_aldmeris_mission }
    #    
    #    provinces_to_highlight = { 
	#		OR = {
	#			province_id = 4716			#Anaedthar
	#			province_id = 4746			#Dawnbreak
	#			province_id = 4779			#Curie
	#			province_id = 4815			#Astlinwae
	#			province_id = 4834			#Caemaine
	#		}
	#		NOT = { owned_by = ROOT }
    #    }
    #
    #    trigger = {
	#		OR = {
	#			full_idea_group = zentra0
	#			full_idea_group = dezentra0
	#			full_idea_group = aristocracy_ideas
	#			full_idea_group = plutocracy_ideas
	#		}
    #        4716 = { owned_by = ROOT }
	#		4746 = { owned_by = ROOT }
	#		4779 = { owned_by = ROOT }
	#		4815 = { owned_by = ROOT }
	#		4834 = { owned_by = ROOT } 
    #    }
    #    
    #    effect = {
	#		yokuda_7_la = {			#Yath
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		yokuda_9_la = {			#A'raei
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		add_country_modifier = {
	#			name = "py_mi_colonizing_yokuda"
	#			duration = 9125
	#		}
    #    }
    #}
	
	#yearning_yath_mission = {
    #    icon = yath_market
    #    position = 7
    #    required_missions = { maormernifest_mission }
    #    
    #    provinces_to_highlight = {
	#		area = yokuda_7_la
	#		NOT = {owned_by = ROOT }
    #    }
    #
    #    trigger = {
    #        NOT = { exists = YA7 }
	#		yokuda_7_la = {
	#			type = all
	#			owned_by = ROOT
	#		}
	#		335 = { has_owner_religion = yes }
    #    }
    #    
    #    effect = {
	#		yokuda_3_la = {			#Jalfaye
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		yokuda_8_la = {			#Samara
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		yokuda_15_la = {			#Toramon
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		add_country_modifier = {
	#			name = "py_mi_colonizing_upper_yokuda"
	#			duration = 9125
	#		}
    #    }
    #}
	#
	#yonder_yokuda_mission = {
    #    icon = yokudan_city
    #    position = 8
    #    required_missions = { 
	#		righting_sinistrals_mission
	#		yearning_yath_mission
	#	}
    #    
    #    provinces_to_highlight = {
    #        OR = { 
	#			province_id = 333			#Jalfaye
	#			province_id = 335			#Yath
	#			province_id = 355			#Samara
	#			province_id = 3443			#Haearon
	#			province_id = 3467			#Toramon
	#		}
	#		NOT = { owned_by = ROOT }
    #    }
    #
    #    trigger = {
    #        OR = {
	#			full_idea_group = kolonialimperium0
	#			full_idea_group = imperialismus0
	#		}
	#		owns_core_province = 333
	#		owns_core_province = 335	
	#		owns_core_province = 355
	#		owns_core_province = 3443
	#		owns_core_province = 3467
    #    }
    #    
    #    effect = {
    #        hammerfell_14_la = {		#Limai
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		high_14_la = {				#Adrena
	#			limit = {
	#				NOT = { is_permanent_claim = ROOT }
	#				NOT = { is_core = ROOT }
	#			}
	#			add_permanent_claim = ROOT
	#		}
	#		add_country_modifier = {
	#			name = "py_mi_colonizing_empire"
	#			duration = 9125
	#		}
    #    }
	#}
	
	es_conquest_of_western_skyrim_lr_pya = {
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
	
	es_conquest_of_eastern_skyrim_lr_pya = {
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
	
	es_conquest_of_hgh_rock_lr_pya = {
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
	
	es_conquest_of_hammerfell_lr_pya = {
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
	
	es_conquest_of_coldharbour_lr_pya = {
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