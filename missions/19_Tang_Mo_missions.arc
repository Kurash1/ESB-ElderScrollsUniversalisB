flavour_missions_1_tan = {
	slot = 6
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = tangmo }

	es_prepare_defences_mission = {
		icon = fort
		position = 1
		required_missions = { }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 5
				base_manpower = 5
				OR = {
					has_building = fort_15th
					has_building = fort_16th
					has_building = fort_17th
					has_building = fort_18th
				}
			}
			num_of_artillery = 5
		}
		
		effect = {
			add_yearly_manpower = 2.5
			add_country_modifier = {
				name = "es_expanded_defences_modifier"
				duration = 9125
			}
		}	
	}
	
	es_build_naval_infrastructure_mission = {
		icon = docks
		position = 3
		required_missions = { es_prepare_defences_mission }
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 3
				base_production = 7
				OR = {
				    has_building = dock
					has_building = drydock
				}
			}
			sailors = 1500
			num_of_light_ship = 10
		}
		
		effect = {
			add_dip_power = 250
			add_country_modifier = {
				name = "es_expanded_navy_modifier"
				duration = 9125
			}
		}	
	}
	
	es_acquire_war_fleet_mission = {
		icon = elven_ship
		position = 4
		required_missions = { es_build_naval_infrastructure_mission }
		
		trigger = {
			navy_tradition = 25
			num_of_heavy_ship = 10
			num_of_galley = 15
		}
		
		effect = {
			create_admiral = { tradition = 50 }
			add_country_modifier = {
				name = "es_naval_traditions_modifier"
				duration = 18250
			}
		}	
	}
	
	es_greatest_akaviri_fleet_mission = {
		icon = akaviri_ship
		position = 5
		required_missions = { es_acquire_war_fleet_mission }
		
		trigger = {
			OR = {
				government_rank = 7
				is_great_power = yes
			}
			navy_size = 50
		}
		
		effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_greatest_akaviri_fleet_modifier"
				duration = 18250
			}
		}	
	}
	
	es_financial_reserves_mission = {
		icon = gold_ingots
		position = 7
		required_missions = { es_the_akaviri_emperor_mission }
		
		trigger = {
			treasury = 15000
			NOT = { num_of_loans = 1 }
			NOT = { inflation = 1 }
			prestige = 50
		}
		
		effect = {
			add_stability = 1
			add_country_modifier = {
				name = "es_gold_reserves_modifier"
				duration = -1
			}
		}	
	}
	
	es_build_infrastructure_mission = {
		icon = road
		position = 8
		required_missions = { }
		
		trigger = {
			all_owned_province = {
				base_tax = 3
				base_manpower = 3
				has_building = road_network
			}
		}
		
		effect = {
			add_years_of_income = 2.5
			add_country_modifier = {
				name = "es_developed_infrastructure_modifier"
				duration = 9125
			}
		}	
	}
	
	es_conquest_of_pyandonea_lr_tan = {
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
	
	es_conquest_of_summerset_lr_tan = {
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
	
	es_conquest_of_continental_atmora_lr_tan = {
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
	
	es_conquest_of_islandic_atmora_lr_tan = {
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
	
	es_conquest_of_far_atmora_lr_tan = {
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

flavour_missions_2_tan = {
	slot = 7
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = tangmo }

	es_po_tun_ally_mission = {
		icon = po_tun
		position = 1
		required_missions = { }
		
		provinces_to_highlight = {
			province_id = 646
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			OR = {
				owns_core_province = 646
				any_ally = {
					culture_group = po_tun_cg
					has_opinion = {
						who = ROOT
						value = 150
					}
				}
			}
		}
		
		effect = {
			random_ally = {
				limit = {
					culture_group = po_tun_cg
				}
				add_trust = {
					who = ROOT
					value = 25
					mutual = yes
				}
				#ROOT = {
				#	add_favors = {
				#		who = PREV
				#		amount = 15
				#	}
				#}
				#add_favors = {
				#	who = ROOT
				#	amount = 15
				#}
			}
			add_country_modifier = {
				name = "es_po_tun_allies_modifier"
				duration = 9125
			}
		}	
	}
	
	es_raise_the_army_mission = {
		icon = tang_mo_warrior_1
		position = 2
		required_missions = { es_prepare_defences_mission es_po_tun_ally_mission }
		
		trigger = {
			num_of_infantry = 10
			num_of_cavalry = 5
			manpower = 25
		}
		
		effect = {
			create_general = { tradition = 50 }
			add_country_modifier = {
				name = "es_expanded_army_modifier"
				duration = 9125
			}
		}	
	}
	
	es_face_kamal_mission = {
		icon = dremora_2
		position = 3
		required_missions = { es_raise_the_army_mission }
		
		provinces_to_highlight = {
			province_id = 2611
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			OR = {
				owns_core_province = 2611
				any_rival_country = {
					culture_group = daedra_cg
					war_with = ROOT
				}
			}
		}
		
		effect = {
			add_prestige = 10
			custom_tooltip = get_claims_on_every_colonised_kamalian_province_owned_by_daedra
			hidden_effect = {
				every_province = {
					limit = {
						region = kamal_lr
						is_city = yes
						culture_group = daedra_cg
					}
					add_claim = ROOT
				}
			}
		}	
	}
	
	es_secure_kamal_mission = {
		icon = kamal_colonisation
		position = 4
		required_missions = { es_face_kamal_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 2611		
				province_id = 2600
				province_id = 519 
				province_id = 508
				province_id = 503
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			owns_core_province = 2611
			owns_core_province = 2600
			owns_core_province = 519
			owns_core_province = 508
			owns_core_province = 503
		}
		
		effect = {
			add_prestige = 15
			2560 = { add_core = ROOT }
			1796 = { add_core = ROOT }
			763 = { add_core = ROOT }
			3534 = { add_core = ROOT }
			2546 = { add_core = ROOT }
		}	
	}
	
	es_deal_with_tsaesci_mission = {
		icon = tsaesci_warrior
		position = 5
		required_missions = { es_secure_kamal_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 724		
				province_id = 709
				province_id = 695 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			724 = { owner = { NOT = { culture_group = tsaesci_cg } } }
			709 = { owner = { NOT = { culture_group = tsaesci_cg } } }
			695 = { owner = { NOT = { culture_group = tsaesci_cg } } }
		}
		
		effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_dealed_with_menace_modifier"
				duration = 18250
			}
		}	
	}
	
	es_the_akaviri_emperor_mission = {
		icon = po_tun_palace
		position = 6
		required_missions = { es_greatest_akaviri_fleet_mission es_deal_with_tsaesci_mission es_old_empire_remnants_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 646		
				province_id = 642
				province_id = 623 
				province_id = 631 
				province_id = 666 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			OR = {
				is_emperor_of_china = yes
				AND = {
					owns_core_province = 646
					owns_core_province = 642
					owns_core_province = 623
					owns_core_province = 631
					owns_core_province = 666
				}
			}
		}
		
		effect = {
			change_adm = 1
			change_dip = 1
			change_mil = 1
			add_country_modifier = {
				name = "es_true_akaviri_emperor_modifier"
				duration = -1
			}
		}	
	}
	
	es_supreme_court_mission = {
		icon = po_tun_palace_indoors
		position = 7
		required_missions = { es_the_akaviri_emperor_mission }
		
		
		trigger = {
			stability = 3
			legitimacy_equivalent = 100
			esu_steward = 3
			esu_governor = 3
			esu_thane = 3
		}
		
		effect = {
			add_country_modifier = {
				name = "es_supreme_akaviri_court_modifier"
				duration = -1
			}
		}	
	}
	
	es_great_monuments_mission = {
		icon = akaviri_monument
		position = 8
		required_missions = { }
		
		
		trigger = {
			OR = {
				568 = { has_great_project = { type = gro_ete_temples tier = 3 } }
				542 = { has_great_project = { type = great_hall_of_vyssasaj tier = 3 } }
				1764 = { has_great_project = { type = wa_te_heads tier = 3 } }
				551 = { has_great_project = { type = edu_ardii_gardens tier = 3 } }
				num_of_owned_provinces_with = {
					value = 5
					development = 30
				}
			}
		}
		
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_monuments_of_tang_mo_modifier"
				duration = 9125
			}
		}	
	}
	
	es_temples_of_knowlege_mission = {
		icon = akaviri_monasteri
		position = 9
		required_missions = { es_build_infrastructure_mission es_great_monuments_mission }
		
		
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				OR = {
					has_building = college
					has_building = university
				}
				OR = {
					has_building = temple
					has_building = cathedral
				}
				development = 15
			}
			OR = {
				571 = { has_great_project = { type = to_re_tower tier = 3 } }
				571 = { development = 30 }
			}
		}
		
		effect = {
			add_adm_tech = 3
			add_country_modifier = {
				name = "es_temples_of_knowlege_modifier"
				duration = 9125
			}
		}	
	}
	
	es_conquest_of_yokuda_lr_tan = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_tan = {
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
	
	es_conquest_of_kamal_lr_tan = {
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
	
	es_conquest_of_thousand_lr_tan = {
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
	
	es_conquest_of_po_tun_lr_tan = {
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

flavour_missions_3_tan = {
	slot = 8
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = tangmo }
	
	es_expand_domain_mission = {
		icon = akaviri_jungle_palace
		position = 2
		required_missions = { }
		
		
		trigger = {
			total_development = 250
			capital_scope = {
				development = 15
			}
			NOT = { average_unrest = 1.0 }
		}
		
		effect = {
			add_legitimacy = 20
			add_republican_tradition = 20
			add_devotion = 20
			add_horde_unity = 20
			add_meritocracy = 20
			if = {
				limit = {
					any_country = {
						is_rival = ROOT
					}
				}
				random_rival_country = {
					hidden_effect = { save_event_target_as = es_es_expand_domain_mission_event_target }
				}
			}
			else = {
				random_neighbor_country = {
					hidden_effect = { save_event_target_as = es_es_expand_domain_mission_event_target }
				}
			}
			if = {
				limit = {
					government = monarchy
				}	
				add_casus_belli = {
					target = event_target:es_es_expand_domain_mission_event_target
					type = cb_restore_personal_union
					months = 120
				}
			}
			else = {
				add_casus_belli = {
					target = event_target:es_es_expand_domain_mission_event_target
					type = cb_vassalize_mission
					months = 120
				}
			}
		}	
	}
	
	es_unite_tang_mo_mission = {
		icon = tang_mo
		position = 3
		required_missions = { es_expand_domain_mission }
		
		
		trigger = {
			OR = {
				tag = TAN
				num_of_subjects = 3
			}
		}
		
		effect = {
			custom_tooltip = get_cores_on_every_not_owned_colonised_province_of_thousand_islands
			add_prestige = 15
			hidden_effect = {
				every_province = {
					limit = {
						NOT = { owned_by = ROOT	}
						is_city = yes
						region = thousand_lr
					}
					add_core = ROOT
				}
			}
		}	
	}
	
	es_one_to_tule_more_mission = {
		icon = tang_mo_crown
		position = 4
		required_missions = { es_unite_tang_mo_mission }
		
		trigger = {
			tag = TAN
		}
		
		effect = {
			add_country_modifier = {
				name = "es_single_ruler_of_the_islands_modifier"
				duration = 36500
			}
			hidden_effect = {
				751 = { owner = { save_event_target_as = es_751_owner } }
				715 = { owner = { save_event_target_as = es_715_owner } }
				700 = { owner = { save_event_target_as = es_700_owner } }
				724 = { owner = { save_event_target_as = es_724_owner } }	
				761 = { owner = { save_event_target_as = es_761_owner } }
			}
			add_casus_belli = { target = event_target:es_751_owner type = cb_vassalize_mission months = 720 }
			add_casus_belli = { target = event_target:es_761_owner type = cb_vassalize_mission months = 720 }
			add_casus_belli = { target = event_target:es_715_owner type = cb_vassalize_mission months = 720 }
			add_casus_belli = { target = event_target:es_700_owner type = cb_vassalize_mission months = 720 }
			add_casus_belli = { target = event_target:es_724_owner type = cb_vassalize_mission months = 720 }
		}
	}
	
	es_old_empire_remnants_mission = {
		icon = akavir
		position = 5
		required_missions = { es_one_to_tule_more_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 751		
				province_id = 761
				province_id = 715 
				province_id = 700 
				province_id = 724 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			owns_or_non_sovereign_subject_of = 751
			owns_or_non_sovereign_subject_of = 761
			owns_or_non_sovereign_subject_of = 715
			owns_or_non_sovereign_subject_of = 700
			owns_or_non_sovereign_subject_of = 724
		}
		
		effect = {
			add_prestige = 25
			add_country_modifier = {
				name = "es_debrises_of_the_old_empire_modifier"
				duration = 9125
			}
		}	
	}
	
	es_recruit_champions_mission = {
		icon = tang_mo_warrior_2
		position = 7
		required_missions = { es_the_akaviri_emperor_mission }
		
		trigger = {
			has_commanding_three_star = yes
			esu_grand_champion = 3
			num_of_war_reparations = 5
		}
		
		effect = {
			add_country_modifier = {
				name = "es_tang_mo_champions_modifier"
				duration = -1
			}
		}	
	}
	
	es_secure_hegemony_mission = {
		icon = tang_mo_palace
		position = 8
		required_missions = { }
		
		trigger = {
			thousand_lr = {
				type = all
				owned_by = ROOT
			}
		}
		
		effect = {
			add_army_tradition = 10
			add_country_modifier = {
				name = "es_the_new_hegemony_modifier"
				duration = 36500
			}
		}	
	}
	
	es_acquire_subjects_mission = {
		icon = human_vassal
		position = 9
		required_missions = { es_secure_hegemony_mission }
		
		trigger = {
			calc_true_if = {
				all_subject_country = {
					NOT = { primary_culture = tangmo }
				}
				amount = 7
			}
		}
		
		effect = {
			define_advisor = {
				type = esu_curator
				skill = 3
				discount = yes
			}
			add_country_modifier = {
				name = "es_subjects_of_the_monkey_king_modifier"
				duration = 36500
			}
		}	
	}
	
	es_ascended_tang_mo_mission = {
		icon = tang_mo_palace_1
		position = 10
		required_missions = { es_temples_of_knowlege_mission es_acquire_subjects_mission es_enlighted_king_mission }
		
		trigger = {
			monthly_income = 150
			naval_forcelimit = 50
			land_forcelimit = 100
		}
		
		effect = {
			add_country_modifier = {
				name = "es_ascended_tang_mo_modifier"
				duration = -1
			}
		}	
	}
	
	es_conquest_of_upper_tsakara_lr_tan = {
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
	
	es_conquest_of_islandic_tsakara_lr_tan = {
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
	
	es_conquest_of_valenwood_lr_tan = {
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
	
	es_conquest_of_elsweyr_lr_tan = {
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
	
	es_conquest_of_vvardenfell_lr_tan = {
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

flavour_missions_4_tan = {
	slot = 9
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = tangmo }
	
	es_crave_for_exploration_mission = {
		icon = akaviri_compass
		position = 1
		required_missions = { }
		
		trigger = {
			full_idea_group = exploration_ideas
		}
		
		effect = {
			create_explorer = { tradition = 50 }
			add_country_modifier = {
				name = "es_brave_adventures_modifier"
				duration = -1
			}
		}	
	}
	
	es_map_akavir_mission = {
		icon = AkavirMap
		position = 2
		required_missions = { es_war_fleet_mission es_crave_for_exploration_mission  }
		
		trigger = {
			kamal_superregion = {
				type = all
				has_discovered = ROOT
			}
			tsakara_superregion = {
				type = all
				has_discovered = ROOT
			}
			upper_akavir_superregion = {
				type = all
				has_discovered = ROOT
			}
		}
		
		effect = {
			add_years_of_income = 3.5
			add_country_modifier = {
				name = "es_brave_adventures_modifier"
				duration = -1
			}
		}	
	}
	
	es_explore_new_lands_mission = {
		icon = yokudan_door
		position = 3
		required_missions = { es_map_akavir_mission }
		
		trigger = {
			num_of_light_ship = 25
			num_of_conquistadors = 1
			yokuda_superregion = {
				type = all
				has_discovered = ROOT
			}
		}
		
		effect = {
			create_conquistador = { tradition = 50 }
			yokuda_superregion = {
				add_claim = ROOT
			}
		}	
	}
	
	es_yokudan_colony_mission = {
		icon = yokudan_city
		position = 4
		required_missions = { es_explore_new_lands_mission }
		
		trigger = {
			OR = {
				calc_true_if = {
					all_owned_province = {
						superregion = yokuda_superregion
					}
					amount = 35
				}
				any_subject_country = {
					capital_scope = {
						superregion = yokuda_superregion
					}
				}
			}
		}
		
		effect = {
			add_yearly_manpower = 5.0
			add_yearly_sailors = 2.5
			add_country_modifier = {
				name = "es_the_eastern_colony_modifier"
				duration = 18250
			}
		}	
	}
	
	es_follow_aldmer_path_mission = {
		icon = summerset
		position = 5
		required_missions = { es_yokudan_colony_mission }
		
		trigger = {
			summerset_islands_superregion = {
				type = all
				has_discovered = ROOT
			}
		}
		
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_new_aldmeris_found_modifier"
				duration = 9125
			}
		}	
	}
	
	es_not_thousand_isalnds_mission = {
		icon = summerset_city_crystal_tower
		position = 6
		required_missions = { es_follow_aldmer_path_mission es_expand_trade_empire_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 271		
				province_id = 249
				province_id = 255 
				province_id = 282 
				province_id = 2740 
				province_id = 299 
				province_id = 4823 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			owns_core_province = 271
			owns_core_province = 249
			owns_core_province = 255
			owns_core_province = 282
			owns_core_province = 2740
			owns_core_province = 299
			owns_core_province = 4823
		}
		
		effect = {
			271 = { change_culture = ROOT }
			249 = { change_culture = ROOT }
			255 = { change_culture = ROOT }
			282 = { change_culture = ROOT }
			2740 = { change_culture = ROOT }
			299 = { change_culture = ROOT }
			4823 = { change_culture = ROOT }
			add_country_modifier = {
				name = "es_protector_of_summerset_islands_modifier"
				duration = 9125
			}
		}	
	}
	
	es_forest_foothold_mission = {
		icon = valenwood_forest
		position = 7
		required_missions = { es_not_thousand_isalnds_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 4891		
				province_id = 862
				province_id = 4919 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			owns_core_province = 4891
			owns_core_province = 862
			owns_core_province = 4919
		}
		
		effect = {
			add_yearly_manpower = 10.0
			add_country_modifier = {
				name = "es_forest_foorhold_modifier"
				duration = 9125
			}
		}	
	}
	
	es_expand_trade_harbours_mission = {
		icon = docks_2
		position = 8
		required_missions = { }
		
		trigger = {
			num_of_owned_provinces_with = {
				province_has_center_of_trade_of_level = 1
				OR = {
				    has_building = marketplace
					has_building = trade_depot
					has_building = stock_exchange
				}
				value = 5
			}
		}
		
		effect = {
			add_years_of_income = 2.75
			add_country_modifier = {
				name = "es_expanded_trade_harbours_modifier"
				duration = 9125
			}
		}	
	}
	
	es_enlighted_king_mission = {
		icon = tang_mo_ruler
		position = 9
		required_missions = { es_expand_trade_harbours_mission es_outshine_the_rivals_mission }
		
		trigger = {
			adm = 5
			dip = 5
			mil = 5
		}
		
		effect = {
			change_heir_adm = 1
			change_heir_dip = 1
			change_heir_mil = 1
			add_country_modifier = {
				name = "es_enlighted_king_modifier"
				duration = 18250
			}
		}	
	}
	
	es_conquest_of_morrowind_lr_tan = {
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
	
	es_conquest_of_black_marsh_lr_tan = {
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
	
	es_conquest_of_western_cyrodiil_lr_tan = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_tan = {
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
	
	es_conquest_of_central_cyrodiil_lr_tan = {
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

flavour_missions_5_tan = {
	slot = 10
	generic = no
	ai = yes
	has_country_shield = no
    potential = { primary_culture = tangmo }
	
	es_war_fleet_mission = {
		icon = akaviri_ship_2
		position = 1
		required_missions = { }
		
		trigger = {
			has_flagship = yes
			num_ships_privateering = 25
			sailors_percentage = 1.0
		}
		
		effect = {
			add_yearly_sailors = 1.5
			add_country_modifier = {
				name = "es_war_fleet_modifier"
				duration = 9125
			}
		}	
	} 
	
	es_control_the_trade_mission = {
		icon = akaviri_port
		position = 3
		required_missions = { es_war_fleet_mission }
		
		trigger = {
			adm_power = 500
			dip_power = 500
			mil_power = 500
			home_trade_node = {
				trade_share = {
					country = ROOT
					share = 75
				}
			}
		}
		
		effect = {
			add_adm_power = -500 
			add_dip_power = -500
			add_mil_power = -500
			add_years_of_income = 4.25
			add_country_modifier = {
				name = "es_home_trade_monopoly_modifier"
				duration = 18250
			}
		}	
	} 
	
	es_merchants_of_safala_mission = {
		icon = thousand_islands
		position = 4
		required_missions = { es_control_the_trade_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 597		
				province_id = 575
				province_id = 583 
				province_id = 602 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			owns_core_province = 597
			owns_core_province = 575
			owns_core_province = 583
			owns_core_province = 602
			any_active_trade_node = {
				province_id = 4584
				has_merchant = prev
			}
		}
		
		effect = {
			add_yearly_sailors = 5.0
			add_country_modifier = {
				name = "es_merchants_of_safala_modifier"
				duration = 9125
			}
		}	
	} 
	
	es_expand_trade_empire_mission = {
		icon = akaviri_ship_3
		position = 5
		required_missions = { es_merchants_of_safala_mission }
		
		trigger = {
			num_of_strong_trade_companies = 5
			any_active_trade_node = {
				province_id = 636
				has_merchant = prev
			}
			any_active_trade_node = {
				province_id = 4572
				has_merchant = prev
			}
		}
		
		effect = {
			add_years_of_income = 7.5
			add_country_modifier = {
				name = "es_the_trade_empire_modifier"
				duration = 18250
			}
		}	
	} 
	
	es_unite_with_brothers_mission = {
		icon = imga
		position = 7
		required_missions = { es_not_thousand_isalnds_mission }
		
		provinces_to_highlight = {
		    OR = {
				province_id = 5013		
				province_id = 5040
				province_id = 5029 
			}
			NOT = { owned_by = ROOT }
		} 
		
		trigger = {
			OR = {
				owns_core_province = 5013
				owns_core_province = 5040
				owns_core_province = 5029
				all_country = {
					primary_culture = imga
					is_subject_of = ROOT
				}
			}
		}
		
		effect = {
			add_prestige = 25
			add_accepted_culture = imga
			valenwood_superregion = {
				add_claim = ROOT
			}
		}	
	} 
	
	es_outshine_the_rivals_mission = {
		icon = tang_mo_warrior_3
		position = 8
		required_missions = { }
		
		trigger = {
			NOT = { is_subject = yes }
			OR = {
				is_great_power = yes
				AND = {
					any_country = { is_rival = ROOT }
					all_rival_country = {
						NOT = { army_size = ROOT }
						NOT = { navy_size = ROOT }
					}
				}
			}
		}
		
		effect = {
			add_prestige = 10
			add_country_modifier = {
				name = "es_outshined_rivals_modifier"
				duration = 9125
			}
		}	
	} 
	
	es_conquest_of_western_skyrim_lr_tan = {
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
	
	es_conquest_of_eastern_skyrim_lr_tan = {
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
	
	es_conquest_of_hgh_rock_lr_tan = {
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
	
	es_conquest_of_hammerfell_lr_tan = {
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
	
	es_conquest_of_coldharbour_lr_tan = {
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