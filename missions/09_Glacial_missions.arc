flavour_missions_2_gla = {
	slot = 7
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = glacial }
	
	defenders_of_the_dragon_sanctuary_mission = {
        icon = dragon_sanctuary_mission
        position = 2
        required_missions = { } 
		
		provinces_to_highlight = {
			province_id = 1572
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            owns = 1572
			1572 = { religion = ROOT }
        }
        
        effect = {
            add_country_modifier = {
				name = "es_protectors_of_the_dragon_sanctuary"
				duration = -1
			}
        }
	}
	
	restore_the_dragon_cult_mission = {
        icon = dragon_cult_tag
        position = 3
        required_missions = { defenders_of_the_dragon_sanctuary_mission } 
		
		provinces_to_highlight = {
			province_id = 1572
			NOT = { owned_by = ROOT }
        }
    
        trigger = {
            OR = {
				tag = DRA
				AND = {
					NOT = { religion = dragon_cult }
					owns = 1572
				}
			}
        }
        
        effect = {
            if = {
				limit = {
					religion = dragon_cult
				}
				add_adm_power = 500
				add_dip_power = 500
				add_mil_power = 500
				every_owned_province = {
					limit = { NOT = { religion = dragon_cult } }
					change_religion = dragon_cult
				}
			}
			else = {
				1572 = { change_religion = dragon_cult spawn_rebels = { type = dragon_cult_rebels size = 3 win = yes unrest = 15 } }
				capital_scope = {
					spawn_rebels = { type = dragon_cult_rebels size = 3 }
				}
				random_owned_province = { spawn_rebels = { type = dragon_cult_rebels size = 3 win = yes unrest = 10 } }
				random_owned_province = { spawn_rebels = { type = dragon_cult_rebels size = 3 win = yes unrest = 10 } }
				random_owned_province = { spawn_rebels = { type = dragon_cult_rebels size = 3 win = yes unrest = 10 } }
			}
		}
	}
	
	nordic_subjugation_mission = {
        icon = windhelm_throne
        position = 6
        required_missions = { reclame_tamriel_mission } 
    
        trigger = {
			all_country = {
				primary_culture = nord
				NOT = { is_free_or_tributary_trigger = yes }
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_nordic_subjugation"
				duration = -1
			}
        }
	}
	
	es_conquest_of_yokuda_lr_gla = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_gla = {
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
	
	es_conquest_of_kamal_lr_gla = {
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
	
	es_conquest_of_thousand_lr_gla = {
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
	
	es_conquest_of_po_tun_lr_gla = {
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

flavour_missions_3_gla = {
	slot = 8
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = glacial }
	
	gold_of_the_north_mission = {
        icon = fur_mission
        position = 1
        required_missions = { } 
    
        trigger = {
            any_owned_province = {
				trade_goods = fur
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_fur_trade"
				duration = 9125
			}
        }
	}
	
	island_of_civilization_mission = {
        icon = nordic_village
        position = 2
        required_missions = { gold_of_the_north_mission } 
    
        trigger = {
			esu_steward = 1
			stability = 3
            any_owned_province = {
				base_tax = 10
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_island_of_civilization"
				duration = -1
			}
        }
	}
	
	reform_the_glacial_tribe_mission = {
        icon = native_tribe_reform
        position = 3
        required_missions = { island_of_civilization_mission } 
    
        trigger = {
            NOT = { government = native }
        }
        
        effect = {
			add_prestige = 10
            add_country_modifier = {
				name = "es_tribal_reform"
				duration = 9125
			}
        }
	}
	
	the_new_era_mission = {
        icon = dragon_priest
        position = 4
        required_missions = { reform_the_glacial_tribe_mission restore_the_dragon_cult_mission protector_of_atmora_mission } 
		
		provinces_to_highlight = {
		    OR = {
			province_id = 479		
			province_id = 1342
			province_id = 1299
			province_id = 407
			province_id = 800
			}
			NOT = { owned_by = ROOT }
		}
		
        trigger = {
            owns_core_province = 479
            owns_core_province = 1342
            owns_core_province = 1299
			OR = {
				patriarch_authority = 1.0
				AND = {
					owns_core_province = 407
					owns_core_province = 800
				}
			}
        }
        
        effect = {
            add_country_modifier = {
				name = "es_the_dragon_era"
				duration = -1
			}
        }
	}
	
	reclame_tamriel_mission = {
        icon = bromjunaar
        position = 5
        required_missions = { the_new_era_mission } 
		
		provinces_to_highlight = {
		    province_id = 1325		
			NOT = { owned_by = ROOT }
		}
		
        trigger = {
            owns_core_province = 1325
        }
        
        effect = {
			add_prestige = 10
			set_capital = 1325
			every_province = {
				limit = {
					superregion = skyrim_superregion
					NOT = { owned_by = ROOT }
				}
				add_core = ROOT
			}
        }
	}
	
	es_conquest_of_upper_tsakara_lr_gla = {
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
	
	es_conquest_of_islandic_tsakara_lr_gla = {
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
	
	es_conquest_of_valenwood_lr_gla = {
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
	
	es_conquest_of_elsweyr_lr_gla = {
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
	
	es_conquest_of_vvardenfell_lr_gla = {
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

flavour_missions_4_gla = {
	slot = 9
    generic = no
    ai = yes
    has_country_shield = no
    potential = { primary_culture = glacial }
	
	glacial_raiders_mission = {
        icon = nodic_conquest
        position = 1
        required_missions = { } 
		
        trigger = {
            num_of_cavalry = 10
			esu_hunter = 2
			army_tradition = 25
        }
        
        effect = {
			add_country_modifier = {
				name = "es_glacial_raiders"
				duration = 9125
			}
        }
	}
	
	protector_of_atmora_mission = {
        icon = atmoran_sanctuary
        position = 3
        required_missions = { glacial_raiders_mission island_of_civilization_mission } 
		
        trigger = {
            land_forcelimit = 35
			is_defender_of_faith = yes
        }
        
        effect = {
			add_country_modifier = {
				name = "es_protector_of_atmora"
				duration = 9125
			}
        }
	}
	
	legends_of_the_past_mission = {
        icon = national_epic
        position = 4
        required_missions = { protector_of_atmora_mission } 
		
        trigger = {
            prestige = 100
			esu_bard = 3
        }
        
        effect = {
			add_country_modifier = {
				name = "es_glacial_legends_of_the_past"
				duration = -1
			}
        }
	}
	
	restore_forelhost_mission = {
        icon = forelhost
        position = 6
        required_missions = { reclame_tamriel_mission }

		provinces_to_highlight = {
			area = skyrim_58_la
			NOT = { owned_by = ROOT }
        }		
		
        trigger = {
            skyrim_58_la = {
				type = all
				owned_by = ROOT
			}
        }
        
        effect = {
			add_prestige = 10
			every_owned_province = {
				limit = {
					area = skyrim_58_la
				}
				cede_province = FOR
				add_core = FOR
			}
			create_subject = { subject_type = march subject = FOR }
			3119 = {
				add_permanent_province_modifier = {
					name = "03_walls_of_forelhost"
					duration = -1
				}
				if = {
					limit = {
						NOT = { has_building = fort_15th }
						NOT = { has_building = fort_16th }
						NOT = { has_building = fort_17th }
						NOT = { has_building = fort_18th }
					}
					add_building = fort_15th
				}
			}
        }
	}
	
	es_conquest_of_morrowind_lr_gla = {
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
	
	es_conquest_of_black_marsh_lr_gla = {
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
	
	es_conquest_of_western_cyrodiil_lr_gla = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_gla = {
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
	
	es_conquest_of_central_cyrodiil_lr_gla = {
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