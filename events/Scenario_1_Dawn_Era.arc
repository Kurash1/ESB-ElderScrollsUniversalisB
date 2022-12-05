# Audax Validator "!" Ignore_1006
namespace = es_1_scenario

country_event = {
	id = es_1_scenario.1
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	is_triggered_only = yes

	option = {
		name = "es_1_scenario.1.a"
		ai_chance = { factor = 33 }
		add_country_modifier = {
			name = "01_focus_on_war"
			duration = 9125
		}
		
		#hidden_effect = {
		#
		#	if = { limit = { can_declare_scenario_war = yes ai = yes owns = 271 1206 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = ROOT } NOT = { is_subject_of = ROOT } } } } }
		#	1206 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1206 } } } } }
		#	
		#	if = { limit = { can_declare_scenario_war = yes ai = yes owns = 1206 271 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = ROOT } NOT = { is_subject_of = ROOT } } } } }
		#	271 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 271 } } } } }
		#	
		#	if = { limit = { can_declare_scenario_war = yes ai = yes owns = 1510 1379 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = ROOT } NOT = { is_subject_of = ROOT } } } } }
		#	1379 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1379 } } } } }
		#	
		#	if = { limit = { can_declare_scenario_war = yes ai = yes owns = 1379 1510 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = ROOT } NOT = { is_subject_of = ROOT } } } } }
		#	1510 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1510 } } } } }
		#	
		#	if = { limit = { can_declare_scenario_war = yes ai = yes owns = 3191 1275 = { owner = { ROOT = { NOT = { truce_with = PREV } NOT = { alliance_with = ROOT } NOT = { is_subject_of = ROOT } } } } }
		#	1275 = { owner = { ROOT = { declare_war_with_cb = { who = PREV casus_belli = cb_es_scenario war_goal_province = 1275 } } } } }
		#
		#every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.5 days = 31 tooltip = es_collapse.2.a.tt } }
		#
		#}
	}
	option = {
		name = "es_1_scenario.1.b"	
		ai_chance = { factor = 33 }
		add_country_modifier = {
		name = "01_focus_on_trade"
		duration = 9125
		}
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.6 days = 31 tooltip = es_collapse.2.a.tt } }
	}	
	option = {
		name = "es_1_scenario.1.c"
		ai_chance = { factor = 33 }
		add_country_modifier = {
		name = "01_focus_on_internal_sphere"
		duration = 9125
		}
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.7 days = 31 tooltip = es_collapse.2.a.tt } }
	}
	option = {
		name = "es_1_scenario.1.e"
		ai_chance = { factor = 0 }
		add_prestige = 5
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.8 days = 31 tooltip = es_collapse.2.a.tt } }
	}
	
}


defineloc es_1_scenario.2.t = "Our Old Republic"
defineloc es_1_scenario.2.d = "For centuries, we have ruled Solstheim, an island of stability amid a sea of chaos. However, every year it becomes obvious that our security is under threat. We must decide with whom to stand in the face of an uncertain future."
defineloc es_1_scenario.2.a = "Stay with Nilheim."
defineloc es_1_scenario.2.b = "Side with Dwemer."
defineloc es_1_scenario.2.c = "Side with Ashlanders."
defineloc es_1_scenario.2.e = "Nothing threatens us."
country_event = {
	id = es_1_scenario.2
	title = es_1_scenario.2.t
	desc = es_1_scenario.2.d
	picture = ES_WAR_IS_NEAR_eventPicture	
	
	is_triggered_only = yes
	
	option = {
		name = es_1_scenario.2.a
		ai_chance = { factor = 33 }
		
		add_trust = {
			who = c@nilheim
			value = 50
			mutual = yes
        }
		
		every_country = { #News? the fuck is a news
			limit = { 
				ai = no 
				has_country_flag = esu_news_flag 
			} 
			country_event = { 
				id = es_news.9 
				days = 31 
				tooltip = es_collapse.2.a.tt 
			} 
		}
	}
	
	option = {
		name = "es_1_scenario.2.b"
		ai_chance = { factor = 33 }
		create_alliance = c@bthulzand
		add_prestige = -25
		c@bthulzand = { 
			add_opinion = { 
				who = ROOT 
				modifier = es_friendly_nation 
			} 
		}
		add_opinion = { 
			who = c@bthulzand
			modifier = es_friendly_nation 
		}
		
		every_country = { 
			limit = { 
				ai = no 
				has_country_flag = esu_news_flag 
			} 
			country_event = { 
				id = es_news.10 
				days = 31 
				tooltip = es_collapse.2.a.tt 
			} 
		}
	}
	
	option = {
		name = "es_1_scenario.2.c"
		ai_chance = { factor = 33 }
		create_alliance = c@red'aruhn
		add_prestige = -25
		c@red'aruhn = { 
			add_opinion = { 
				who = ROOT 
				modifier = es_friendly_nation 
			} 
		}
		add_opinion = { 
			who = c@red'aruhn
			modifier = es_friendly_nation 
		}
		
		every_country = { 
			limit = { 
				ai = no 
				has_country_flag = esu_news_flag 
			} 
			country_event = { 
				id = es_news.11 
				days = 31 
				tooltip = es_collapse.2.a.tt 
			} 
		}
	}
	
	option = {
		name = "es_1_scenario.1.c"
		ai_chance = { factor = 0 }
		add_prestige = 5
		
		every_country = { 
			limit = { 
				ai = no 
				has_country_flag = esu_news_flag 
			} 
			country_event = { 
				id = es_news.12 
				days = 31 
				tooltip = es_collapse.2.a.tt 
			} 
		}
	}
}

country_event = {
	id = es_1_scenario.3
	title = es_1_scenario.3.t
	desc = es_1_scenario.3.d
    picture = ES_ELDENROOT_eventPicture	
	
	is_triggered_only = yes
	
	immediate = {
		hidden_effect = {
			820 = { owner = { save_event_target_as = 820_owner } }
		}
	}

	option = {
		name = "es_1_scenario.3.a"
		ai_chance = { factor = 33 }
		add_stability = 3
		add_years_of_income = 10.0
		add_adm_power = 100
		add_dip_power = 100
		add_mil_power = 100
		
		change_government = monarchy
		event_target:820_owner = { create_subject = { subject_type = personal_union subject = ROOT } }
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.13 days = 31 tooltip = es_collapse.2.a.tt } }
	}
	option = {
		name = "es_1_scenario.3.b"
		ai_chance = { factor = 33 }
		
		add_prestige = -15
		kill_ruler = yes
		if = { limit = { NOT = { government = republic } NOT = { is_emperor_of_china = yes } NOT = { is_emperor = yes } } change_government = republic }
		add_government_reform = noble_elite_reform
		
		event_target:820_owner = { add_casus_belli = { target = ROOT type = cb_restore_personal_union months = 120 } }
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.14 days = 31 tooltip = es_collapse.2.a.tt } }
	}
	option = {
		name = "es_1_scenario.3.c"
		ai_chance = { factor = 33 }
		
		add_country_modifier = {
		name = "01_camoran_unrest"
		duration = 3650
		}
		
		event_target:820_owner = { add_casus_belli = { target = ROOT type = cb_restore_personal_union months = 120 } }
		
		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.1401 days = 31 tooltip = es_collapse.2.a.tt } }
	}
	
}

#country_event = {
#	id = es_1_scenario.4
#	title = es_1_scenario.4.t
#	desc = es_1_scenario.4.d
#    picture = ES_WEYE_eventPicture	
#	
#	is_triggered_only = yes
#	
#	immediate = {
#		hidden_effect = {
#			1191 = { owner = { save_event_target_as = 1191_owner } }
#		}
#	}
#
#	option = {
#		name = "es_1_scenario.4.a"
#		ai_chance = { factor = 50 }
#		
#		if = { limit = { can_declare_scenario_war = yes NOT = { truce_with = event_target:1191_owner } NOT = { alliance_with = event_target:1191_owner } NOT = { is_subject_of = event_target:1191_owner } NOT = { overlord_of = event_target:1191_owner } }
#		declare_war_with_cb = { who = event_target:1191_owner casus_belli = cb_restore_personal_union }
#		}
#		
#		add_manpower = 50
#		define_general = { shock = 2 fire = 2 manuever = 5 siege = 1 }
#		
#		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.1402 days = 31 tooltip = es_collapse.2.a.tt } }
#	}
#	option = {
#		name = "es_1_scenario.4.b"
#		ai_chance = { factor = 50 }
#		
#		add_prestige = -15
#		
#		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.1403 days = 31 tooltip = es_collapse.2.a.tt } }
#	}
#	
#}

#country_event = {
#	id = es_1_scenario.5
#	title = es_1_scenario.5.t
#	desc = es_1_scenario.5.d
#    picture = ES_COLOVIAN_HOUSE_eventPicture	
#	
#	is_triggered_only = yes
#	
#	immediate = {
#		hidden_effect = {
#			5627 = { owner = { save_event_target_as = 5627_owner } }
#		}
#	}
#
#	option = {
#		name = "es_1_scenario.4.a"
#		ai_chance = { factor = 50 }
#		
#		if = { limit = { can_declare_scenario_war = yes NOT = { truce_with = event_target:5627_owner } NOT = { alliance_with = event_target:5627_owner } NOT = { is_subject_of = event_target:5627_owner } NOT = { overlord_of = event_target:5627_owner } }
#		declare_war_with_cb = { who = event_target:5627_owner casus_belli = cb_restore_personal_union } 
#		}
#		
#		add_years_of_income = 10.0
#		define_general = { shock = 5 fire = 2 manuever = 2 siege = 1 }
#		
#		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.1404 days = 31 tooltip = es_collapse.2.a.tt } }
#	}
#	option = {
#		name = "es_1_scenario.4.b"
#		ai_chance = { factor = 50 }
#		
#		add_prestige = -15
#		
#		every_country = { limit = { ai = no has_country_flag = esu_news_flag } country_event = { id = es_news.1405 days = 31 tooltip = es_collapse.2.a.tt } }
#	}
#	
#}

### Winterborn Clan

country_event = {
	id = es_1_scenario.6
	title = es_1_scenario.6.t
	desc = es_1_scenario.6.d
    picture = ES_WINTERBORN_CLAN_eventPicture	
	
	is_triggered_only = yes
	
	immediate = {
		hidden_effect = {
			7012 = { owner = { save_event_target_as = 7012_owner } }
		}
	}

	option = {
		name = "es_1_scenario.6.a"
		ai_chance = { factor = 50 }
		add_prestige = -15
		
		every_province = {
			limit = {
				OR = {
					area = high_30_la
					area = high_24_la
				}
				NOT = { owned_by = ROOT }
			}
			add_core = ROOT
		}
		
		change_tag = WTB
		if = { limit = { has_custom_ideas = no } country_event = { id = ideagroups.1 } restore_country_name = yes }
		if = { limit = { NOT = { government_rank = 5 } } set_government_rank = 5 }
		
		if = { limit = { can_declare_scenario_war = yes NOT = { truce_with = event_target:7012_owner } NOT = { alliance_with = event_target:7012_owner } NOT = { is_subject_of = event_target:7012_owner } NOT = { overlord_of = event_target:7012_owner } }
		declare_war_with_cb = { who = event_target:7012_owner casus_belli = cb_es_scenario } 
		}
	}
	option = {
		name = "es_1_scenario.6.b"
		ai_chance = { factor = 50 }
		add_stability = 1
		
		add_country_modifier = {
			name = "es_winterborn_clan"
			duration = -1
		}
	}
	
}