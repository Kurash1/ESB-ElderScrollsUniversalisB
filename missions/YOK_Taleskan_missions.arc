#Taleskan is a country that historically has been lead by a warrior cast, however with their expansions westward they have started to become influenced by the cultures of Seawind, and in their country ideas of "trade is prosperity" have started to emerge, while their royal family has for ages stayed their normal ways, the curren ruler was a strong warrior-leader like many kings before him, but at the start of the game he is getting assassinated and as he did not name his "son" heir there is a guarantee of civil war, there are 4 main sides for this civil war, 1: the so called "son" of the former king khud at-taleskan he is a young genius, and masterful tactician though of shorter build, 2: Derik af-taleskan the brother of the former king and lord of the east, the original homelands of the taleskani people, he is a warrior at his heart however shows many dictatorial tendencies aswell, 3: Sia Al-Hodana a merchant-noble from the western city of hodana, with many connections to mercenary companies, and a nearly infinite amount of money he is vying for control, 4: Farsh Aj-kayam an elder and mystic in the capital, who has managed to make himself a sizeable cult. 

#Base / Khud
flavour_missions_1_yoktal = {
	slot = 6
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
	defineloc smaller_than_taleskan = "Is Smaller than Taleskan"
	var conquest_x_trigger = "
		OR = {
			NOT = { 
				exists = country_x
			}
			AND = {
				army_size = country_x
				NOT = {
					alliance_with = country_x
				}
			}
			AND = {
				country_x = {
					alliance_with = ROOT
					trust = {
						who = ROOT
						value = 100
					}
					custom_trigger_tooltip = {
						tooltip = smaller_than_taleskan
						NOT = {
							total_development = ROOT
						}
					}
				}
			}
		}
	"
	var conquest_x_effect = "
		if = {
			limit = {
				NOT = { 
					exists = country_x 
				}
			}
			add_prestige = 20
		}
		else_if = {
			limit = {
				country_x = {
					alliance_with = ROOT
				}
			}
			inherit = country_x
			override_country_name = esb_yok_taleskan_ >< country_x
		}
		else = {
			country_x = {
				every_core_province = {
					add_claim = ROOT
				}
			}
		}
	"
	
	defineloc esb_yok_taleskan_totambu_mission_title = "Conquest Totambu"
	defineloc esb_yok_taleskan_totambu_mission_desc = ""
	esb_yok_taleskan_totambu_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 9
		required_missions = { esb_yok_taleskan_emperor_mission }
		
		trigger = {
			var country_x = c@totambu
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
}
flavour_missions_2_yoktal = {
	slot = 7
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
	defineloc esb_yok_taleskan_defeat_derik_mission_title = "Defeat Derik"
	defineloc esb_yok_taleskan_defeat_derik_mission_desc = ""
	esb_yok_taleskan_defeat_derik_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 2
		required_missions = { esb_yok_taleskan_disaster_mission }
		
		trigger = {
			has_country_flag = fight_derik_af_taleskan
			NOT = { num_of_rebel_armies = 1 }
		}
		
		effect = {
			add_ruler_modifier = {
				name = derik_af_taleskan_contendor
				duration = -1
				desc = derik_af_taleskan_contendor_desc
				hidden = no
			}
		}	
	}
	defineloc esb_yok_taleskan_army_reform_mission_title = "Army Reform"
	defineloc esb_yok_taleskan_army_reform_mission_desc = ""
	esb_yok_taleskan_army_reform_mission = {
		icon = sword_singers_1
		position = 4
		required_missions = { esb_yok_taleskan_new_age_mission }
		
		trigger = {
			army_size_percentage = 1.0
			manpower_percentage = 0.8
			all_owned_province = {
				base_manpower = 3
			}
		}
		
		effect = {
			add_war_exhaustion = -2
			add_yearly_manpower = 2.5
			add_army_professionalism = 5%
		}
	}
	defineloc esb_yok_taleskan_zarthos_deal_mission_title = "Deal for the Zarthos"
	defineloc esb_yok_taleskan_zarthos_deal_mission_desc = ""
	esb_yok_taleskan_zarthos_deal_mission = {
		icon = docks_2
		position = 6
		required_missions = { esb_yok_taleskan_army_reform_mission esb_yok_taleskan_seawind_mission }
		
		trigger = {
			4363 = {
				all_neighbor_province = {
					is_city = yes
					OR = {
						owned_by = ROOT
						owned_by = c@totambu
					}
				}
			}
		}
		
		effect = {
			4363 = {
				every_neighbor_province = {
					limit = {
						is_city = yes
						owned_by = c@totambu
					}
					cede_province = ROOT
				}
			}
		}
	}
	defineloc esb_yok_taleskan_yul_mission_title = "Conquest Yul"
	defineloc esb_yok_taleskan_yul_mission_desc = ""
	esb_yok_taleskan_yul_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 9
		required_missions = { esb_yok_taleskan_emperor_mission }
		
		trigger = {
			var country_x = c@yul
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
}
flavour_missions_3_yoktal = {
	slot = 8
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
	
	defineloc esb_yok_taleskan_disaster_mission_title = "Succession Crisis"
	defineloc esb_yok_taleskan_disaster_mission_desc = ""
	esb_yok_taleskan_disaster_mission = {
		icon = mission_fire_of_london
		position = 1
		required_missions = { }
		
		trigger = {
			defineloc esb_yok_taleskan_disaster_mission.flag = "Chosen Successor."
			has_country_flag = esb_yok_taleskan_disaster_mission.flag
		}
		
		effect = {
			defineloc esb_yok_taleskan_disaster_mission.tt2 = "Will give a ruler dependant modifier"
			custom_tooltip = esb_yok_taleskan_disaster_mission.tt2
			add_ruler_modifier = {
				name = khud_at_taleskan_first
				duration = -1
				desc = khud_at_taleskan_first_desc
				hidden = no
			}
		}	
	}
	
	defineloc esb_yok_taleskan_defeat_sia_mission_title = "Defeat Sia"
	defineloc esb_yok_taleskan_defeat_sia_mission_desc = ""
	esb_yok_taleskan_defeat_sia_mission = {
		icon = mission_bedouins
		position = 2
		required_missions = { esb_yok_taleskan_disaster_mission }
		
		trigger = {
			has_country_flag = fight_sia_al_hodana
			NOT = { num_of_rebel_armies = 1 }
		}
		
		effect = {
			add_ruler_modifier = {
				name = sia_al_hodana_contendor
				duration = -1
				desc = sia_al_hodana_contendor_desc
				hidden = no
			}
		}	
	}
	defineloc esb_yok_taleskan_new_age_mission_title = "New Age"
	defineloc esb_yok_taleskan_new_age_mission_desc = ""
	esb_yok_taleskan_new_age_mission = {
		icon = mission_monarch_in_throne_room
		position = 3
		required_missions = {
			esb_yok_taleskan_defeat_derik_mission 
			esb_yok_taleskan_defeat_sia_mission
			esb_yok_taleskan_defeat_farsh_mission
		}
		
		trigger = { }
		
		effect = {
			add_ruler_modifier = {
				name = khud_at_taleskan_second
				duration = -1
				desc = khud_at_taleskan_second_desc
				hidden = no
			}
			add_stability = 1
		}	
	}
	defineloc esb_yok_taleskan_economic_reform_mission_title = "Economic Reform"
	defineloc esb_yok_taleskan_economic_reform_mission_desc = ""
	esb_yok_taleskan_economic_reform_mission = {
		icon = gold_purse
		position = 4
		required_missions = { esb_yok_taleskan_new_age_mission }
		
		trigger = {
			p@taleskan = {
				#has_construction = taleskan
				development = 30
			}
			NOT = { num_of_loans = 1 }
		}
		
		effect = {
			p@kefa-ra, p@taleskan, p@retha-rana, p@yatara = {
				add_base_production = 1
				add_prosperity = 25
				add_construction_progress = 50%
			}
		}
	}
	defineloc esb_yok_taleskan_seawind_mission_title = "Pact of Three"
	defineloc esb_yok_taleskan_seawind_mission_desc = ""
	esb_yok_taleskan_seawind_mission = {
		icon = yath_market
		position = 5
		required_missions = { esb_yok_taleskan_economic_reform_mission }
		
		trigger = {
			treasury = 500
		}
		
		effect = {
			add_treasury = -500
			c@seawind = {
				random_ally = {
					add_treasury = 500
					add_historical_rival = c@seawind
				}
				every_owned_province = {
					add_claim = ROOT
				}
			}
		}
	}
	defineloc esb_yok_taleskan_desert_mission_title = "Break the Pact"
	defineloc esb_yok_taleskan_desert_mission_desc = ""
	esb_yok_taleskan_desert_mission = {
		icon = yokudan_city
		position = 7
		required_missions = { esb_yok_taleskan_seawind_mission esb_yok_taleskan_zarthos_deal_mission esb_yok_taleskan_kanesh_mission }
		
		trigger = {
			OR = {
				AND = {
					army_size = c@high_desert
					NOT = {
						alliance_with = c@high_desert
					}
				}
				AND = {
					c@high_desert = {
						alliance_with = ROOT
						trust = {
							who = ROOT
							value = 100
						}
						NOT = {
							total_development = ROOT
						}
					}
				}
			}
		}
		
		effect = {
			if = {
				limit = {
					alliance_with = c@high_desert
				}
				inherit = c@high_desert
			}
			else = {			
				c@high_desert = {
					every_owned_province = {
						add_claim = ROOT
					}
				}
			}
		}
	}
	defineloc esb_yok_taleskan_emperor_mission_title = "King or Emperor?"
	defineloc esb_yok_taleskan_emperor_mission_desc = ""
	esb_yok_taleskan_emperor_mission = {
		icon = yokudan_city
		position = 7
		required_missions = { esb_yok_taleskan_desert_mission }
		
		trigger = {
			
		}
		
		effect = {
			quick_event = {
				alias = king_or_emperor_event_a
				type = country
				title = none
				desc = none
				picture = none
				is_triggered_only = yes
				fire_only_once = yes
				hidden = yes
				immediate = {
					inherit = c@taleskan
					defineloc taleskan_totambu = "Taleskan-Totambu"
					override_country_name = taleskan_totambu
				}
				option = {
					name = none
					ai_chance = {
						factor = 1
					}
				}
			}
			quick_event = {
				alias = king_or_emperor_event_b
				type = country
				title = esb_yok_taleskan_emperor_mission_title
				desc = esb_yok_taleskan_emperor_mission_desc
				picture = none
				is_triggered_only = yes
				fire_only_once = yes
				
				option = {
					defineloc king_or_emperor_event_b.a = "We shall be the Kingdom of the North"
					name = king_or_emperor_event_b.a
					defineloc yok_northern_kingdom = "Kingdom of the North"
					override_country_name = yok_northern_kingdom
				}
				
				option = {
					defineloc king_or_emperor_event_b.b = "Send a letter to Totambu, There shall be two emperors"
					name = king_or_emperor_event_b.b
					switch_tag = c@totambu
					hidden_effect = {
						c@totambu = {
							country_event = {
								id = king_or_emperor_event_a
								days = 1
							}
						}
					}
				}
			}
			country_event = {
				id = king_or_emperor_event_b
				days = 0
			}
		}
	}
	defineloc esb_yok_taleskan_tagon_mission_title = "Conquest Tagon"
	defineloc esb_yok_taleskan_tagon_mission_desc = ""
	esb_yok_taleskan_tagon_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 9
		required_missions = { esb_yok_taleskan_emperor_mission }
		
		trigger = {
			var country_x = c@tagon
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
	defineloc esb_yok_taleskan_yokuda_united_mission_title = "Yokuda United"
	defineloc esb_yok_taleskan_yokuda_united_mission_desc = ""
	esb_yok_taleskan_yokuda_united_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 10
		required_missions = { 
			esb_yok_taleskan_totambu_mission
			esb_yok_taleskan_yul_mission
			esb_yok_taleskan_tagon_mission
			esb_yok_taleskan_samara_mission
			esb_yok_taleskan_yath_mission
		}
		
		trigger = {
			yokuda_superregion = {
				type = all
				owned_by = ROOT
			}
		}
		
		effect = {
			definemod esb_yok_yokuda_united_war = {
				discipline = 0.05
			}
			add_country_modifier = {
				name = esb_yok_yokuda_united_war
				duration = -1
			}
			definemod ra_gada = {
				movement_speed = 0.2
				siege_ability = 0.2
				land_morale = 0.1
				may_establish_frontier = yes
			}
			add_country_modifier = {
				name = ra_gada
				duration = 25years
			}
			hammerfell_superregion = {
				add_claim = ROOT
			}
		}
	}
}
flavour_missions_4_yoktal = {
	slot = 9
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
	defineloc esb_yok_taleskan_defeat_farsh_mission_title = "Defeat Farsh"
	defineloc esb_yok_taleskan_defeat_farsh_mission_desc = ""
	esb_yok_taleskan_defeat_farsh_mission = {
		icon = sources_of_trade
		position = 2
		required_missions = { esb_yok_taleskan_disaster_mission }
		
		trigger = {
			has_country_flag = fight_farsh_aj_kayam
			NOT = { num_of_rebel_armies = 1 }
		}
		
		effect = {
			add_ruler_modifier = {
				name = farsh_aj_kayam_contendor
				duration = -1
				desc = farsh_aj_kayam_contendor_desc
				hidden = no
			}
		}	
	}
	defineloc esb_yok_taleskan_navy_reform_mission_title = "Navy Reform"
	defineloc esb_yok_taleskan_navy_reform_mission_desc = ""
	esb_yok_taleskan_navy_reform_mission = {
		icon = docks_2
		position = 4
		required_missions = { esb_yok_taleskan_new_age_mission }
		
		trigger = {
			navy_size = 20
			OR = {
				advisor = esu_colonial_overseer
				advisor = esu_conquistador
				advisor = esu_corsair
				advisor = esu_navarch
			}
		}
		
		effect = {
			add_country_modifier = {
				name = esb_yok_taleskan_navy_reform_mission_modifier
				duration = 25years
			}
		}
	}
	defineloc esb_yok_taleskan_kanesh_mission_title = "Lord of Fire"
	defineloc esb_yok_taleskan_kanesh_mission_desc = ""
	esb_yok_taleskan_kanesh_mission = {
		icon = land_of_lorkhan
		position = 6
		required_missions = { esb_yok_taleskan_navy_reform_mission esb_yok_taleskan_seawind_mission }
		
		trigger = {
			OR = {
				AND = {
					all_owned_province = {
						ROOT = {
							is_core = PREV
						}
					}
					naval_strength = {
						who = KAN
						value = 1.5
					}
				}
				AND = {
					c@kanesh = {
						alliance_with = ROOT
						trust = {
							who = ROOT
							value = 100
						}
						NOT = {
							total_development = ROOT
						}
					}
				}
			}
		}
		
		effect = {
			if = {
				limit = {
					alliance_with = c@kanesh
				}
				inherit = c@kanesh
				defineloc taleskan_kanesh = "Taleskan-Kanesh"
				override_country_name = taleskan_kanesh
			}
			else = {			
				c@kanesh = {
					every_owned_province = {
						add_claim = ROOT
					}
				}
			}
		}
	}
	defineloc esb_yok_taleskan_silverhoof_mission_title = "Conquest Silverhoof"
	defineloc esb_yok_taleskan_silverhoof_mission_desc = ""
	esb_yok_taleskan_silverhoof_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 8
		required_missions = { esb_yok_taleskan_desert_mission }
		trigger = {
			var country_x = c@silverhoof
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
	defineloc esb_yok_taleskan_samara_mission_title = "Conquest Samara"
	defineloc esb_yok_taleskan_samara_mission_desc = ""
	esb_yok_taleskan_samara_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 9
		required_missions = { esb_yok_taleskan_emperor_mission }
		
		trigger = {
			var country_x = c@samara
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
}
flavour_missions_5_yoktal = {
	slot = 10
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
	defineloc esb_yok_taleskan_yath_mission_title = "Conquest Yath"
	defineloc esb_yok_taleskan_yath_mission_desc = ""
	esb_yok_taleskan_yath_mission = {
		icon = mission_egyptian_mamluk_soldier
		position = 9
		required_missions = { esb_yok_taleskan_emperor_mission }
		
		trigger = {
			var country_x = c@yath
			eval conquest_x_trigger
		}
		
		effect = {
			eval conquest_x_effect
		}
	}
}
