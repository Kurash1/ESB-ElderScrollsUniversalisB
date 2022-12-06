#flavour_missions_1_yoktal = {
#	slot = 6
#	generic = yes
#	ai = yes
#	has_country_shield = no
#    potential = { tag = TAL }
#}
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
			defineloc esb_yok_taleskan_defeat_derik_mission_flag = "Defeated Derik Af-Taleskan."
			has_country_flag = esb_yok_taleskan_defeat_derik_mission_flag
		}
		
		effect = {
			
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
			defineloc esb_yok_taleskan_defeat_sia_mission_flag = "Defeated Sia Al-Hodana."
			has_country_flag = esb_yok_taleskan_defeat_sia_mission_flag
		}
		
		effect = {
			
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
		
		trigger = {
			has_country_flag = esb_yok_taleskan_defeat_sia_mission_flag
			has_country_flag = esb_yok_taleskan_defeat_derik_mission_flag
			has_country_flag = esb_yok_taleskan_defeat_farsh_mission_flag
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
			defineloc esb_yok_taleskan_defeat_farsh_mission_flag = "Defeated Farsh Aj-Kayam."
			has_country_flag = esb_yok_taleskan_defeat_farsh_mission_flag
		}
		
		effect = {
			
		}	
	}
}
#flavour_missions_5_yoktal = {
#	slot = 10
#	generic = yes
#	ai = yes
#	has_country_shield = no
#    potential = { tag = TAL }
#}
