#Base / Khud
flavour_missions_1_yoktal = {
	slot = 6
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
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
			army_strength = {
				who = HOR
				value = 2.0
			}
		}
		
		effect = {
			add_war_exhaustion = -2
			add_yearly_manpower = 0.5
			add_army_professionalism = 5%
		}
	}
	defineloc esb_yok_taleskan_hattu_orcs_mission_title = "Break the old Oath"
	defineloc esb_yok_taleskan_hattu_orcs_mission_desc = ""
	esb_yok_taleskan_hattu_orcs_mission = {
		icon = orcish_camp
		position = 6
		required_missions = { esb_yok_taleskan_army_reform_mission esb_yok_taleskan_seawind_mission }
		
		trigger = {
			
		}
		
		effect = {
			c@hattu_orcs = {
				every_owned_province = {
					add_claim = c@taleskan
				}
			}
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
				has_construction = taleskan
			}
			NOT = { num_of_loans = 1 }
		}
		
		effect = {
			3458, 341, 2159, 3462 = {
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
					add_rival = c@seawind
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
		required_missions = { esb_yok_taleskan_seawind_mission esb_yok_taleskan_hattu_orcs_mission esb_yok_taleskan_kanesh_mission }
		
		trigger = {
			
		}
		
		effect = {
			
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
			
		}
		
		effect = {
			
		}
	}
	defineloc esb_yok_taleskan_kanesh_mission_title = "Lord of Fire"
	defineloc esb_yok_taleskan_kanesh_mission_desc = ""
	esb_yok_taleskan_kanesh_mission = {
		icon = land_of_lorkhan
		position = 6
		required_missions = { esb_yok_taleskan_navy_reform_mission esb_yok_taleskan_seawind_mission }
		
		trigger = {
			
		}
		
		effect = {
			
		}
	}
}
flavour_missions_5_yoktal = {
	slot = 10
	generic = yes
	ai = yes
	has_country_shield = no
    potential = { tag = TAL }
}
