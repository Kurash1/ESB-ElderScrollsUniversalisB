flavour_missions_1_slo = {
	slot = 6
	generic = no
	ai = yes
	has_country_shield = no
	potential = { primary_culture = sload }
	
	es_maormer_trade_slo = {
		icon = maormer_sl
		position = 3
		required_missions = { }

		trigger = {
			OR = {
				any_known_country = {
					primary_culture = maormer
					has_opinion = { who = ROOT value = 100 }
					reverse_has_opinion = {
						who = ROOT
						value = 100
					}
				}
				any_owned_province = { culture = maormer }
			}
		}

		effect = {
			home_trade_node_effect_scope = {
				add_trade_modifier = {
					who = ROOT
					duration = -1
					power = 15
					key = maormer_trade
				}
			}
		}
	}

	es_tear_slave_slo = {
		icon = slaves_sl
		position = 4
		required_missions = {
			es_maormer_trade_slo
		}

		trigger = {
			OR = {
				any_known_country = {
					owns = 3904
					has_opinion = { who = ROOT value = 100 }
					reverse_has_opinion = {
						who = ROOT
						value = 100
					}
				}
				owns_core_province = 3904
			}
		}
		
		provinces_to_highlight = {
		    province_id = 3904	
			NOT = { owned_by = ROOT }
		}

		effect = {
			every_owned_province = {
				limit = { trade_goods = slaves }
				add_province_modifier = {
					name = tear_slave_trade
					duration = -1
				}
			}
		}
	}
	
	es_sload_soap_slo = {
		icon = sload_soap_sl
		position = 5
		required_missions = { 
		}
	
		trigger = {
			calc_true_if = {
				all_owned_province = {
					base_production = 10
				}
				amount = 5
			}
		}
	
		effect = {
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
			random_owned_province = { limit = { has_port = yes } change_culture = sload change_trade_goods = sload_soap }
		}
	}

	es_contemplation_slo = {
		icon = contemplation_sl
		position = 7
		required_missions = { }

		trigger = {
			is_year = 200
		}

		effect = {
			add_country_modifier = {
				name = "contemplation_sl"
				duration = -1
			}
		}
	}
	
	es_conquest_of_pyandonea_lr_slo = {
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
	
	es_conquest_of_summerset_lr_slo = {
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
	
	es_conquest_of_continental_atmora_lr_slo = {
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
	
	es_conquest_of_islandic_atmora_lr_slo = {
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
	
	es_conquest_of_far_atmora_lr_slo = {
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

flavour_missions_2_slo = {
	slot = 7
	generic = no
	ai = yes
	has_country_shield = no
	potential = { primary_culture = sload }

	es_retake_lands_slo = {
		icon = retake_lands_sl
		position = 1
		required_missions = { }

		trigger = {
			army_size_percentage = 1
		}

		effect = {
			custom_tooltip = retake_lands_tooltip
			hidden_effect = {
				country_event = {
					id = sload_missions.2
					days = 7440
					random = 7440
				}
				every_province = {
					limit = { 
						OR = {
							region = summerset_lr
							region = auridon_lr
						}
						culture = ROOT
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_western_summerset_slo = {
		icon = west_summerset_sl
		position = 2
		required_missions = {
			es_retake_lands_slo
			es_gather_navy_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_2_la
				value = 5
		   }
		   num_of_owned_provinces_with = {
			   area = summerset_25_la
			   value = 3
		   }
		}

		provinces_to_highlight = {
			OR = {
				area = summerset_2_la
				area = summerset_25_la
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_western_summerset_tooltip
			hidden_effect = {
				every_province = {
					limit = { 
						OR = {
							area = summerset_19_la
							area = summerset_1_la
							area = summerset_16_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_south_west_summerset_slo = {
		icon = sw_summerset_sl
		position = 3
		required_missions = {
			es_conquest_western_summerset_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_19_la
				value = 5
		   	}
		   num_of_owned_provinces_with = {
			area = summerset_1_la
			value = 5
	  		}
		}

		provinces_to_highlight = {
			OR = {
				area = summerset_19_la
				area = summerset_1_la
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_south_west_summerset_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						OR = {
							area = summerset_17_la
							area = summerset_5_la
							area = summerset_6_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_eastern_summerset_slo = {
		icon = east_summerset_sl
		position = 4
		required_missions = {
			es_conquest_south_west_summerset_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_17_la
				value = 4
		    }
			num_of_owned_provinces_with = {
				area = summerset_5_la
				value = 5
		    }
		}

		provinces_to_highlight = {
			OR = {
				area = summerset_17_la
				area = summerset_5_la
			}
			NOT = { owned_by = ROOT }
		}
		
		effect = {
			custom_tooltip = conquest_eastern_summerset_tooltip
			hidden_effect = {
					every_province = {
					limit = {
						OR = {
							area = summerset_3_la
							area = summerset_15_la
							area = summerset_10_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_take_alinor_slo = {
		icon = alinor_sl
		position = 6
		required_missions = {
			es_conquest_eastern_summerset_slo
		}

		trigger = {
			controls = 271
		}

		provinces_to_highlight = {
			province_id = 271
			NOT = { owned_by = ROOT }
		}

		effect = {
			271 = {
				change_culture = sload
				add_core = ROOT
			}
		}
	}
	
	es_perfect_memory_slo = {
		icon = perfect_memory_sl
		position = 8
		required_missions = { es_contemplation_slo }

		trigger = {
			is_year = 400
		}

		effect = {
			add_country_modifier = {
				name = "perfect_memory_sl"
				duration = -1
			}
		}
	}

	es_ngasta_slo = {
		icon = ngasta
		position = 9
		required_missions = { es_perfect_memory_slo }

		trigger = {
			is_year = 600
		}

		effect = {
			add_country_modifier = {
				name = "ngasta_sl"
				duration = -1
			}
			define_advisor = {
				type = esu_mage
				name = "N'Gasta"
				skill = 3
				discount = yes
				culture = ROOT
				religion = ROOT
				female = no
			}
			hidden_effect = {
				country_event = {
					id = sload_missions.3
					days = 222650
				}
			}
		}
	}

	es_king_worms_slo = {
		icon = king_of_worms_sl
		position = 10
		required_missions = { 
			es_ngasta_slo
		}

		trigger = {
			OR = {
				1017 = {
					has_province_modifier = 33_capital_of_order_of_black_worm
				}
				owns_core_province = 1017
			}
		}
		
		provinces_to_highlight = {
			province_id = 1017
			NOT = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				name = "private_island_sl"
				duration = -1
			}
		}
	}
	
	es_conquest_of_yokuda_lr_slo = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr_slo = {
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
	
	es_conquest_of_kamal_lr_slo = {
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
	
	es_conquest_of_thousand_lr_slo = {
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
	
	es_conquest_of_po_tun_lr_slo = {
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

flavour_missions_3_slo = {
	slot = 8
	generic = no
	ai = yes
	has_country_shield = no
	potential = { primary_culture = sload }

	es_gather_navy_slo = {
		icon = gather_navy_sl
		position = 1
		required_missions = { }

		trigger = {
			navy_size = 12
		}

		effect = {
			custom_tooltip = gather_navy_tooltip
			capital_scope = {
				add_base_tax = 2
				add_base_manpower = 2
				add_base_production = 2
			}
			hidden_effect = {
				every_province = {
					limit = { 
						OR = {
							area = summerset_25_la
							area = summerset_2_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_north_auridon_slo = {
		icon = north_auridon_sl
		position = 2
		required_missions = {
			es_retake_lands_slo
			es_gather_navy_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_12_la
				value = 3
		    }
		}

		provinces_to_highlight = {
			area = summerset_12_la
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_north_auridon_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						OR = {
							area = summerset_14_la
							area = summerset_12_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_eastern_auridon_slo = {
		icon = east_auridon_sl
		position = 3
		required_missions = {
			es_conquest_north_auridon_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_12_la
				value = 7
		    }
		}

		provinces_to_highlight = {
			area = summerset_12_la
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_eastern_auridon_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						area = summerset_29_la
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_siege_skywatch_slo = {
		icon = skywatch_sl
		position = 4
		required_missions = {
			es_conquest_eastern_auridon_slo
		}

		trigger = {
			controls = 4823
		}

		provinces_to_highlight = {
			province_id = 4823
		}

		effect = {
			add_core = 4823
			hidden_effect = {
				country_event = {
					id = sload_missions.0
				}
			}
		}
	}

	es_take_skywatch_slo = {
		icon = skywatch_sl
		position = 6
		required_missions = {
			es_siege_skywatch_slo
		}

		trigger = {
			owns_core_province = 4823
		}

		provinces_to_highlight = {
			province_id = 4823
		}

		effect = {
			4823 = {
				change_culture = sload
			}
		}
	}

	es_form_cor_slo = {
		icon = coral_kingdom_sl
		position = 7
		required_missions = {
			es_take_alinor_slo
			es_take_skywatch_slo
		}

		trigger = {
			is_at_war = no
			is_free_or_tributary_trigger = yes
			owns_core_province = 4823
			owns_core_province = 271
			num_of_owned_provinces_with = {
				superregion = summerset_islands_superregion
				value = 50
		    }
		}

		provinces_to_highlight = {
			OR = {
				province_id = 4823
				province_id = 271
				superregion = summerset_islands_superregion
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = form_cor_tooltip
			country_event = {
				id = sload_missions.1
			}
			hidden_effect = {
				every_province = {
					limit = {
						OR = {
							area = hammerfell_11_la
							area = hammerfell_41_la
							area = hammerfell_42_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}
	
	es_conquest_of_upper_tsakara_lr_slo = {
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
	
	es_conquest_of_islandic_tsakara_lr_slo = {
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
	
	es_conquest_of_valenwood_lr_slo = {
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
	
	es_conquest_of_elsweyr_lr_slo = {
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
	
	es_conquest_of_vvardenfell_lr_slo = {
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

flavour_missions_4_slo = {
	slot = 9
	generic = no
	ai = yes
	has_country_shield = no
	potential = { primary_culture = sload }

	es_senchal_corpse_slo = {
		icon = airship_sl
		position = 1
		required_missions = { }

		trigger = {
			OR = {
				any_known_country = {
					owns = 5117
					reverse_has_opinion = {
						who = ROOT
						value = 100
					}
				}
				owns_core_province = 5117
			}
		}
		
		provinces_to_highlight = {
		    province_id = 5117	
			NOT = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				name = "airshipped_corpses_sl"
				duration = -1
			}
		}
	}

	es_necromancy_slo = {
		icon = skeleton_sl
		position = 2
		required_missions = {
			es_senchal_corpse_slo
		}

		trigger = {
			custom_trigger_tooltip = {
				tooltip = jkosda_tooltip
				has_country_flag = jkosda_gained
			}
		}

		effect = {
			add_country_modifier = {
				name = "necromancy_sl"
				duration = -1
			}
		}
	}

	es_revived_pets_slo = {
		icon = crab_sl
		position = 3
		required_missions = {
			es_necromancy_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				trade_goods = crabs
				value = 5
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "revived_pets_sl"
				duration = -1
			}
		}
	}

	es_conquest_southern_auridon_slo = {
		icon = south_auridon_sl
		position = 4
		required_missions = {
			es_conquest_eastern_auridon_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_12_la
				value = 5
			}
		}

		provinces_to_highlight = {
			area = summerset_12_la
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_southern_auridon_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						OR = {
							area = summerset_30_la
							area = summerset_11_la
						}
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_conquest_south_east_auridon_slo = {
		icon = se_summerset_sl
		position = 6
		required_missions = {
			es_conquest_southern_auridon_slo
		}

		trigger = {
			num_of_owned_provinces_with = {
				area = summerset_11_la
				value = 7
			}
		}

		provinces_to_highlight = {
			area = summerset_11_la
			NOT = { owned_by = ROOT }
		}

		effect = {
			custom_tooltip = conquest_south_east_auridon_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						OR = {
							area = summerset_10_la
							area = summerset_20_la
							area = summerset_9_la
							area = summerset_23_la
						}
						
					}
					add_permanent_claim = ROOT
				}
			}
		}
	}

	es_thrassian_plague_slo = {
		icon = thrassian_plague_sl
		position = 8
		required_missions = {
			es_divayth_slo
		}

		trigger = { 
			owns = 320
			is_year = 1214
			culture_group = sload_cg
		}
		
		provinces_to_highlight = {
			province_id = 320
			NOT = { owned_by = ROOT }
		}

		effect = { 
			country_event = { id = es_26_scenario.1 }
			add_country_modifier = {
				name = "thrassian_plague_sl"
				duration = -1
			}
		}
	}
	
	es_sink_thras_slo = {
		icon = coral_tower
		position = 9
		required_missions = { 
			es_thrassian_plague_slo
		}

		trigger = {
			owns = 320
			any_owned_province = {
				NOT = { controlled_by = ROOT } 
			}
			culture_group = sload_cg
		}
		
		provinces_to_highlight = {
			province_id = 320
			NOT = { owned_by = ROOT }
		}

		effect = {
			every_owned_province = {
				limit = {
					area = thras_area
				}
				add_permanent_province_modifier = {
					name = "flooded_thras"
					duration = 12045
				}
			}
		}
	}

	es_empire_of_seas_slo = {
		icon = thras
		position = 10
		required_missions = { }

		trigger = {
			navy_tradition = 50
			navy_size = 100
		}

		effect = {
			add_country_modifier = {
				name = "empire_of_seas_sl"
				duration = -1
			}
		}
	}
	
	es_conquest_of_morrowind_lr_slo = {
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
	
	es_conquest_of_black_marsh_lr_slo = {
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
	
	es_conquest_of_western_cyrodiil_lr_slo = {
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
	
	es_conquest_of_eastern_cyrodiil_lr_slo = {
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
	
	es_conquest_of_central_cyrodiil_lr_slo = {
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

flavour_missions_5_slo = {
	slot = 10
	generic = no
	ai = yes
	has_country_shield = no
	potential = { primary_culture = sload }

	es_ritualist_sacrifice_slo = {
		icon = sacrifice_sl
		position = 3
		required_missions = {
			es_necromancy_slo
		}

		trigger = {
			OR = {
				AND = {
					271 = {
						owner = {
							ROOT = {
								has_won_war_against = {
									who = PREV
								}
							}
						}
					}
					4823 = {
						owner = {
							ROOT = {
								has_won_war_against = {
									who = PREV
								}
							}
						}
					}
				}
				AND = {
					owns = 271
					owns = 4823
				}
			}
		}
		
		provinces_to_highlight = {
			OR = {
				province_id = 271
				province_id = 4823
			}
			NOT = { owned_by = ROOT }
		}

		effect = {
			add_country_modifier = {
				name = "ritualist_sacrifice_sl"
				duration = -1
			}
		}
	}

	es_elder_distended_one_slo = {
		icon = elder_do_sl
		position = 4
		required_missions = {
			es_ritualist_sacrifice_slo
		}

		trigger = {
			religious_unity = 1
		}

		effect = {
			add_country_modifier = {
				name = "elder_distended_one_sl"
				duration = -1
			}
		}
	}

	es_isolationism_slo = {
		icon = isolationism_sl
		position = 5
		required_missions = {}

		trigger = {
			NOT = { num_of_allies = 1 }
			is_at_war = no
			NOT = { had_recent_war = 25 }
			is_year = 150
		}

		effect = {
			custom_tooltip = isolationism_tooltip
			hidden_effect = {
				every_province = {
					limit = {
						owned_by = ROOT
					}
					add_base_tax = 1
					add_base_manpower = 1
					add_base_production = 1
				}
			}
		}
	}
	
	es_divayth_slo = {
		icon = divayth_fyr_sl
		position = 7
		required_missions = { }

		trigger = {
			custom_trigger_tooltip = {
				tooltip = jkosda_tooltip
				has_country_flag = jkosda_gained
			}
		}

		effect = {
			hidden_effect = {
				country_event = {
					id = sload_missions.4
					days = 7440
					random = 7440
				}
			}
		}
	}
	
	es_conquest_of_western_skyrim_lr_slo = {
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
	
	es_conquest_of_eastern_skyrim_lr_slo = {
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
	
	es_conquest_of_hgh_rock_lr_slo = {
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
	
	es_conquest_of_hammerfell_lr_slo = {
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
	
	es_conquest_of_coldharbour_lr_slo = {
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