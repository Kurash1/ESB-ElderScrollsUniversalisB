administrative_missions = {
	slot = 1
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	improve_stability_mission = {
		icon = improve_stability_mission
		required_missions = {  }
		trigger = {
			stability = 3
		}
		effect = {
			add_country_modifier = {
				name = "es_high_stability"
				duration = -1
			}
		}
	}
	
	increase_income_mission = {
		icon = increase_income_mission
		required_missions = { improve_stability_mission }
		trigger = { share_of_starting_income = 1.25 }
		effect = {
			add_country_modifier = {
				name = "es_1_increased_income"
				duration = -1
			}
		}
	}
	
	fill_treasury_mission = {
		icon = fill_treasury_mission
		required_missions = { increase_income_mission }
		trigger = { years_of_income = 5 NOT = { inflation = 0.1 } }
		effect = {
			add_country_modifier = {
				name = "es_1_full_treasury"
				duration = -1
			}
		}
	}
	
	build_more_roads_mission = {
		icon = build_more_roads_mission
		required_missions = { fill_treasury_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				has_building = road_network
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_roads"
				duration = -1
			}
		}
	}
	
	increase_prestige_mission = {
		icon = increase_prestige_mission
		required_missions = { build_more_roads_mission }
		trigger = { prestige = 25 }
		effect = {
			add_country_modifier = {
				name = "es_1_increased_prestige"
				duration = -1
			}
		}
	}
	
	develop_capital_mission = {
		icon = develop_capital_mission
		required_missions = { increase_prestige_mission }
		trigger = {
			capital_scope = {
				development = 21
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_capital_developed"
				duration = -1
			}
		}
	}
	
	fill_1_treasury_mission = {
		icon = fill_1_treasury_mission
		required_missions = { develop_capital_mission }
		trigger = { years_of_income = 7.5 NOT = { inflation = 0.1 } }
		effect = {
			add_country_modifier = {
				name = "es_2_full_treasury"
				duration = -1
			}
		}
	}
	
	increase_innocatives_mission = {
		icon = increase_innocatives_mission
		required_missions = { fill_1_treasury_mission }
		trigger = { if = { limit = { has_dlc = "Rule Britannia" } innovativeness = 10 } else = { num_of_owned_and_controlled_institutions = 1 } }
		effect = {
			add_country_modifier = {
				name = "es_1_innovatives_increased"
				duration = -1
			}
		}
	}
	
	increase_1_income_mission = {
		icon = increase_1_income_mission
		required_missions = { increase_innocatives_mission }
		trigger = { share_of_starting_income = 1.5 }
		effect = {
			add_country_modifier = {
				name = "es_2_increased_income"
				duration = -1
			}
		}
	}
	
	increase_1_prestige_mission = {
		icon = increase_1_prestige_mission
		required_missions = { increase_1_income_mission }
		trigger = { prestige = 50 }
		effect = {
			add_country_modifier = {
				name = "es_2_increased_prestige"
				duration = -1
			}
		}
	}
	
	build_more_mints_mission = {
		icon = build_more_mints_mission
		required_missions = { increase_1_prestige_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				has_building = mint
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_mints"
				duration = -1
			}
		}
	}
	
	build_multicultural_nation_mission = {
		icon = build_multicultural_nation_mission
		required_missions = { build_more_mints_mission }
		trigger = { num_accepted_cultures = 3 }
		effect = {
			add_country_modifier = {
				name = "es_multinational_country"
				duration = -1
			}
		}
	}
	
	fill_2_treasury_mission = {
		icon = fill_2_treasury_mission
		required_missions = { build_multicultural_nation_mission }
		trigger = { years_of_income = 10 NOT = { inflation = 0.1 } }
		effect = {
			add_country_modifier = {
				name = "es_3_full_treasury"
				duration = -1
			}
		}
	}
	
	build_palaces_mission = {
		icon = build_palaces_mission
		required_missions = { fill_2_treasury_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				has_building = constable
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_royal_palaces"
				duration = -1
			}
		}
	}
	
	increase_2_government_rank_mission = {
		icon = increase_2_government_rank_mission
		required_missions = { build_palaces_mission }
		trigger = {
			government_rank = 10
		}
		effect = {
			add_country_modifier = {
				name = "es_3_government_rank_increased"
				duration = -1
			}
		}
	}
	
}

adm_missions = {
	slot = 2
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	increase_religious_unity_mission = {
		icon = increase_religious_unity_mission
		required_missions = { improve_stability_mission }
		position = 2
		trigger = {
			religious_unity = 1.0
			check_variable = { which = religions_converted value = 50 }
		}
		effect = {
			add_country_modifier = {
				name = "es_high_religious_unity"
				duration = -1
			}
		}
	}
	
	build_more_churches_mission = {
		icon = build_more_churches_mission
		required_missions = { increase_religious_unity_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 50
				OR = {
					has_building = temple
					has_building = cathedral
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_churches"
				duration = -1
			}
		}
	}
	
	become_defender_of_faith_mission = {
		icon = become_defender_of_faith_mission
		required_missions = { build_more_churches_mission }
		trigger = {
			is_defender_of_faith = yes
			check_variable = { which = religions_converted value = 100 }
		}
		effect = {
			add_country_modifier = {
				name = "es_defender_of_faith"
				duration = -1
			}
		}
	}
	
	build_more_canals_mission = {
		icon = build_more_canals_mission
		required_missions = { build_more_roads_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				has_building = canal
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_canals"
				duration = -1
			}
		}
	}
	
	build_more_monuments_mission = {
		icon = build_more_monuments_mission
		required_missions = { increase_prestige_mission }
		position = 6
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				has_building = glorious_monument
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_monuments"
				duration = -1
			}
		}
	}
	
	increase_government_rank_mission = {
		icon = increase_government_rank_mission
		required_missions = { build_more_monuments_mission }
		trigger = {
			government_rank = 5
		}
		effect = {
			add_country_modifier = {
				name = "es_1_government_rank_increased"
				duration = -1
			}
		}
	}
	
	increase_1_government_rank_mission = {
		icon = increase_1_government_rank_mission
		required_missions = { increase_government_rank_mission }
		trigger = {
			government_rank = 7
		}
		effect = {
			add_country_modifier = {
				name = "es_2_government_rank_increased"
				duration = -1
			}
		}
	}
	
	build_more_universities_mission = {
		icon = build_more_universities_mission
		required_missions = { increase_innocatives_mission }
		position = 9
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = college
					has_building = university
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_universities"
				duration = -1
			}
		}
	}
	
	increase_1_innocatives_mission = {
		icon = increase_1_innocatives_mission
		required_missions = { build_more_universities_mission }
		trigger = { if = { limit = { has_dlc = "Rule Britannia" } innovativeness = 25 } else = { num_of_owned_and_controlled_institutions = 2 } }
		effect = {
			add_country_modifier = {
				name = "es_2_innovatives_increased"
				duration = -1
			}
		}
	}
	
	increase_2_innocatives_mission = {
		icon = increase_2_innocatives_mission
		required_missions = { increase_1_innocatives_mission }
		trigger = { if = { limit = { has_dlc = "Rule Britannia" } innovativeness = 50 } else = { num_of_owned_and_controlled_institutions = 3 } }
		effect = {
			add_country_modifier = {
				name = "es_3_innovatives_increased"
				duration = -1
			}
		}
	}
	
	increase_3_innocatives_mission = {
		icon = increase_3_innocatives_mission
		required_missions = { increase_2_innocatives_mission }
		trigger = { if = { limit = { has_dlc = "Rule Britannia" } innovativeness = 75 } else = { num_of_owned_and_controlled_institutions = 4 } }
		effect = {
			add_country_modifier = {
				name = "es_4_innovatives_increased"
				duration = -1
			}
		}
	}
	
	build_more_courthouses_mission = {
		icon = build_more_courthouses_mission
		required_missions = { build_multicultural_nation_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
					has_building = courthouse
					has_building = town_hall
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_courthouses"
				duration = -1
			}
		}
	}
	
	build_treasuries_offices = {
		icon = build_treasuries_offices
		required_missions = { fill_2_treasury_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				has_building = treasury_office
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_trasury_officies"
				duration = -1
			}
		}
	}
	
	increase_2_prestige_mission = {
		icon = increase_2_prestige_mission
		required_missions = { build_treasuries_offices }
		trigger = { prestige = 75 }
		effect = {
			add_country_modifier = {
				name = "es_3_increased_prestige"
				duration = -1
			}
		}
	}

}


diplomatic_missions = {
	slot = 3
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	building_alliances_mission = {
		icon = building_alliances_mission
		required_missions = {  }
		trigger = {
			num_of_allies = 3
		}
		effect = {
			add_country_modifier = {
				name = "es_more_alliences"
				duration = -1
			}
		}
	}
	
	build_more_marketplaces = {
		icon = build_more_marketplaces
		required_missions = { building_alliances_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 50
				OR = {
				    has_building = marketplace
					has_building = trade_depot
					has_building = stock_exchange
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_marketplaces"
				duration = -1
			}
		}
	}
	
	build_more_workshops = {
		icon = build_more_workshops
		required_missions = { build_more_marketplaces }
		trigger = {
			num_of_owned_provinces_with = {
				value = 50
				OR = {
				    has_building = workshop
					has_building = counting_house
					has_building = customs_house
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_workshops"
				duration = -1
			}
		}
	}
	
	increase_number_of_trade_centers = {
		icon = increase_number_of_trade_centers
		required_missions = { build_more_workshops }
		trigger = { 
			if = { 
				limit = { has_dlc = "Dharma" }
				check_variable = { which = cot_upgraded value = 10 } 
			}
			else = {
				num_of_centers_of_trade = 10
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_tradeceners"
				duration = -1
			}
		}
	}
	
	build_more_naval_arsenals = {
		icon = build_more_naval_arsenals
		required_missions = { increase_number_of_trade_centers }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
                OR = {
					has_building = coastal_defence
					has_building = naval_battery
                }
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_morenaval_arsenals"
				duration = -1
			}
		}
	}
	
	build_farm_estates = {
		icon = build_farm_estates
		required_missions = { build_more_naval_arsenals }
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				has_building = farm_estate
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_farm_estate"
				duration = -1
			}
		}
	}
	
	increase_1_number_of_trade_centers = {
		icon = increase_1_number_of_trade_centers
		required_missions = { build_farm_estates }
		trigger = { 
			if = { 
				limit = { has_dlc = "Dharma" }
				check_variable = { which = cot_upgraded value = 25 } 
			}
			else = {
				num_of_centers_of_trade = 25
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_1_tradeceners"
				duration = -1
			}
		}
	}
	
	dominate_home_trade_node = {
		icon = dominate_home_trade_node
		required_missions = { increase_1_number_of_trade_centers }
		trigger = {
			home_trade_node = {
				trade_share = {
					country = ROOT
					share = 75
				}
			}
		}
		effect = {
	        add_country_modifier = {
				name = "es_dominate_trade_node"
				duration = -1
			}
		}
	}
	
	high_mercantelism_mission = {
		icon = high_mercantelism_mission
		required_missions = { dominate_home_trade_node }
		trigger = { mercantilism = 25 }
		effect = {
	        add_country_modifier = {
				name = "es_high_mercantelism"
				duration = -1
			}
	    }
	}
	
	increase_2_number_of_trade_centers = {
		icon = increase_2_number_of_trade_centers
		required_missions = { high_mercantelism_mission }
		trigger = { 
			if = { 
				limit = { has_dlc = "Dharma" }
				check_variable = { which = cot_upgraded value = 50 } 
			}
			else = {
				num_of_centers_of_trade = 50
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_2_tradeceners"
				duration = -1
			}
		}
	}
	
	settle_new_continents = {
		icon = settle_new_continents
		required_missions = { increase_2_number_of_trade_centers }
		trigger = { num_of_continents = 2 }
		effect = {
			add_country_modifier = {
				name = "es_more_continents"
				duration = -1
			}
		}
	}
	
	find_more_merchants_continents = {
		icon = find_more_merchants_continents
		required_missions = { settle_new_continents }
		trigger = { num_of_merchants = 7 }
		effect = {
			add_country_modifier = {
				name = "es_more_merchants"
				duration = -1
			}
		}
	}

	build_more_docks = {
		icon = build_more_docks
		required_missions = { find_more_merchants_continents }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = dock
					has_building = drydock
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_docks"
				duration = -1
			}
		}
	}
	
	es_build_textile = {
		icon = es_build_textile
		required_missions = { build_more_docks }
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				has_building = textile
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_textile"
				duration = -1
			}
		}
	}
	
	build_plantations = {
		icon = build_plantations
		required_missions = { es_build_textile }
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				has_building = plantations
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_plantations"
				duration = -1
			}
		}
	}
	
}

dip_missions = {
	slot = 4
	generic = yes
	ai = yes
	potential = {
	   always = yes
	}
	
	exit_to_sea_mission = {
		icon = exit_to_sea_mission
		required_missions = { building_alliances_mission }
		position = 2
		trigger = { num_of_total_ports = 1 }
		effect = {
			add_country_modifier = {
				name = "es_exit_to_sea"
				duration = -1
			}
		}
	}
	
	build_small_fleet_mission = {
		icon = build_small_fleet_mission
		required_missions = { exit_to_sea_mission }
		trigger = { navy_size_percentage = 0.5 num_of_total_ports = 25 }
		effect = {
			add_country_modifier = {
				name = "es_small_fleet"
				duration = -1
			}
		}
	}
	
	build_more_shipyards_mission = {
		icon = build_more_shipyards_mission
		required_missions = { build_small_fleet_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = shipyard
					has_building = grand_shipyard
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_shipyards"
				duration = -1
			}
		}
	}
	
	set_up_colony_mission = {
		icon = set_up_colony_mission
		required_missions = { build_more_shipyards_mission }
		trigger = { num_of_colonies = 1 }
		effect = {
			add_country_modifier = {
				name = "es_colony"
				duration = -1
			}
		}
	}
	
	build_medium_fleet_mission = {
		icon = build_medium_fleet_mission
		required_missions = { set_up_colony_mission }
		trigger = { navy_size_percentage = 0.75 num_of_total_ports = 50 }
		effect = {
			add_country_modifier = {
				name = "es_medium_fleet"
				duration = -1
			}
		}
	}
	
	increase_tariffs_mission = {
		icon = increase_tariffs_mission
		required_missions = { build_medium_fleet_mission }
		trigger = { any_subject_country = { is_colonial_nation_of = ROOT tariff_value = 0.5 } }
		effect = {
			add_country_modifier = {
				name = "es_tariffs_increased"
				duration = -1
			}
		}
	}
	
	build_large_fleet_mission = {
		icon = build_large_fleet_mission
		required_missions = { increase_tariffs_mission }
		trigger = { navy_size_percentage = 1.0 num_of_total_ports = 75 }
		effect = {
			add_country_modifier = {
				name = "es_large_fleet"
				duration = -1
			}
		}
	}
	
	build_trusted_alliences_mission = {
		icon = build_trusted_alliences_mission
		required_missions = { dominate_home_trade_node }
		trigger = { num_of_trusted_allies = 3 }
		effect = {
			add_country_modifier = {
				name = "es_trusted_alliences"
				duration = -1
			}
		}
	}
	
	build_vassals_mission = {
		icon = build_vassals_mission
		required_missions = { build_trusted_alliences_mission }
		trigger = { vassal = 3 }
		effect = {
			add_country_modifier = {
				name = "es_vassals"
				duration = -1
			}
		}
	}
	
	build_more_embassies_mission = {
		icon = build_more_embassies_mission
		required_missions = { build_vassals_mission }
		trigger = {
		    any_subject_country = {
			num_of_owned_provinces_with = {
				value = 10
				OR = {
				    has_building = march_building
					has_building = embassy
					has_building = spy_agency
				}
			}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_embassies"
				duration = -1
			}
		}
	}
	
	build_more_personal_unions_mission = {
		icon = build_more_personal_unions_mission
		required_missions = { build_more_embassies_mission }
		trigger = { personal_union = 2 }
		effect = {
			add_country_modifier = {
				name = "es_more_personal_unions"
				duration = -1
			}
		}
	}
	
	rare_metals_production_leader = {
		icon = rare_metals_production_leader
		required_missions = { find_more_merchants_continents }
		
		trigger = {
			OR = {
				production_leader = { trade_goods = ebony }
				production_leader = { trade_goods = stalhrim }
				production_leader = { trade_goods = aetherium }
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "es_rare_metals"
				duration = -1
			}
		}
	}
	
	gold_leader = {
		icon = gold_leader
		required_missions = { build_more_docks }
		
		trigger = {
			OR = {
				production_leader = { trade_goods = gold }
				production_leader = { trade_goods = silver }
				production_leader = { trade_goods = gems }
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "es_gold"
				duration = -1
			}
		}
	}
	
	slaves_leader = {
		icon = slaves_leader
		required_missions = { es_build_textile }
		
		trigger = {
			OR = {
				production_leader = { trade_goods = slaves }
				production_leader = { trade_goods = soul_gems }
				production_leader = { trade_goods = dwemer_metal }
			}
		}
		
		effect = {
			add_country_modifier = {
				name = "es_slaves"
				duration = -1
			}
		}
	}
	
}

military_missions = {

	slot = 5
	generic = yes
	ai = yes
	
	potential = {
		always = yes
	}
	has_country_shield = no
	
	es_build_army_mission = {
		icon = es_build_army_mission
		required_missions = {  }
		trigger = {
			army_size_percentage = 1
		}
		effect = {
			add_country_modifier = {
				name = "es_build_army"
				duration = -1
			}
		}
	}
	
	es_1_new_lands = {
		icon = es_1_new_lands
		required_missions = { es_build_army_mission }
		trigger = {
			check_variable = { which = provinces_gained value = 25 }
		}
		effect = {
			add_country_modifier = {
				name = "es_1_new_lands_modifier"
				duration = -1
			}
		}
	}
	
	es_1_drill_army = {
		icon = es_1_drill_army
		required_missions = { es_1_new_lands }
		trigger = { if = { limit = { has_dlc = "Cradle of Civilization" } army_professionalism = 0.25 } else = { army_size_percentage = 1.25 } }
		effect = {
			add_country_modifier = {
				name = "es_1_proffesional_army"
				duration = -1
			}
		}
	}
	
	build_more_forts_mission = {
		icon = build_more_forts_mission
		required_missions = { es_1_drill_army }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
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
				name = "es_more_forts"
				duration = -1
			}
		}
	}
	
	es_2_new_lands = {
		icon = es_2_new_lands
		required_missions = { build_more_forts_mission }
		trigger = {
			check_variable = { which = provinces_gained value = 75 }
		}
		effect = {
			add_country_modifier = {
				name = "es_2_new_lands"
				duration = -1
			}
		}
	}
	
	es_2_drill_army = {
		icon = es_2_drill_army
		required_missions = { es_2_new_lands }
		trigger = { if = { limit = { has_dlc = "Cradle of Civilization" } army_professionalism = 0.5 } else = { army_size_percentage = 1.5 } }
		effect = {
			add_country_modifier = {
				name = "es_2_proffesional_army"
				duration = -1
			}
		}
	}
	
	build_more_training_fields_mission = {
		icon = build_more_training_fields_mission
		required_missions = { es_2_drill_army }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = barracks
					has_building = training_fields
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_training_fields"
				duration = -1
			}
		}
	}
	
	increase_1_development_mission = {
		icon = increase_1_development_mission
		required_missions = { build_more_training_fields_mission }
		trigger = {
			grown_by_development = 300
		}
		effect = {
			add_country_modifier = {
				name = "es_1_development"
				duration = -1
			}
		}
	}
	
	build_more_conscription_center_mission = {
		icon = build_more_conscription_center_mission
		required_missions = { increase_1_development_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = regimental_camp
					has_building = conscription_center
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_conscription_center"
				duration = -1
			}
		}
	}
	
	es_3_new_lands = {
		icon = es_3_new_lands
		required_missions = { build_more_conscription_center_mission }
		trigger = {
			check_variable = { which = provinces_gained value = 175 }
		}
		effect = {
			add_country_modifier = {
				name = "es_3_new_lands"
				duration = -1
			}
		}
	}
	
	increase_2_development_mission = {
		icon = increase_2_development_mission
		required_missions = { es_3_new_lands }
		trigger = {
			grown_by_development = 500
		}
		effect = {
			add_country_modifier = {
				name = "es_2_development"
				duration = -1
			}
		}
	}
	
	es_3_drill_army = {
		icon = es_3_drill_army
		required_missions = { increase_2_development_mission }
		trigger = { if = { limit = { has_dlc = "Cradle of Civilization" } army_professionalism = 0.75 } else = { army_size_percentage = 1.75 } }
		effect = {
			add_country_modifier = {
				name = "es_3_proffesional_army"
				duration = -1
			}
		}
	}
	
	build_more_arsenal_mission = {
		icon = build_more_arsenal_mission
		required_missions = { es_3_drill_army }
		trigger = {
			num_of_owned_provinces_with = {
				value = 25
				OR = {
				    has_building = armory
					has_building = arsenal
				}
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_arsenal"
				duration = -1
			}
		}
	}
	
	increase_3_development_mission = {
		icon = increase_3_development_mission
		required_missions = { build_more_arsenal_mission }
		trigger = {
			grown_by_development = 750
		}
		effect = {
			add_country_modifier = {
				name = "es_3_development"
				duration = -1
			}
		}
	}
	
	build_more_mills_mission = {
		icon = build_more_mills_mission
		required_missions = { increase_3_development_mission }
		trigger = {
			num_of_owned_provinces_with = {
				value = 10
				has_building = mills
			}
		}
		effect = {
			add_country_modifier = {
				name = "es_more_mills"
				duration = -1
			}
		}
	}
	
}

flavour_missions_1 = {
	slot = 6
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	es_conquest_of_pyandonea_lr = {
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
	
	es_conquest_of_summerset_lr = {
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
	
	es_conquest_of_continental_atmora_lr = {
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
	
	es_conquest_of_islandic_atmora_lr = {
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
	
	es_conquest_of_far_atmora_lr = {
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

flavour_missions_2 = {
	slot = 7
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	es_conquest_of_yokuda_lr = {
		position = 11
		defines.functions.conquest_yokuda
	}
	
	es_conquest_of_tsakara_lr = {
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
	
	es_conquest_of_kamal_lr = {
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
	
	es_conquest_of_thousand_lr = {
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
	
	es_conquest_of_po_tun_lr = {
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

flavour_missions_3 = {
	slot = 8
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	es_conquest_of_upper_tsakara_lr = {
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
	
	es_conquest_of_islandic_tsakara_lr = {
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
	
	es_conquest_of_valenwood_lr = {
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
	
	es_conquest_of_elsweyr_lr = {
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
	
	es_conquest_of_vvardenfell_lr = {
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

flavour_missions_4 = {
	slot = 9
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	es_conquest_of_morrowind_lr = {
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
	
	es_conquest_of_black_marsh_lr = {
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
	
	es_conquest_of_western_cyrodiil_lr = {
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
	
	es_conquest_of_eastern_cyrodiil_lr = {
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
	
	es_conquest_of_central_cyrodiil_lr = {
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

flavour_missions_5 = {
	slot = 10
	generic = yes
	ai = yes
	potential = {
		always = yes
	}
	
	es_conquest_of_western_skyrim_lr = {
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
	
	es_conquest_of_eastern_skyrim_lr = {
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
	
	es_conquest_of_hgh_rock_lr = {
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
	
	es_conquest_of_hammerfell_lr = {
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
	
	es_conquest_of_coldharbour_lr = {
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