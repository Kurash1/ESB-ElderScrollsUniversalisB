namespace = scenario_yokuda


country_event = { #1E0 - 57 - Setup
	id = scenario_yokuda.0
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		c@Taleskan = {
			country_event = {
				id = scenario_yokuda.1
				days = 0
			}
		}
	}
	
	option = {
		name = es_1_scenario.1.a
	}
}
country_event = { # Taleskan Assassination
	id = scenario_yokuda.1
	defineloc scenario_yokuda.1.title = "Assassination of Ahmur At-Taleskan"
	title = scenario_yokuda.1.title
	defineloc scenario_yokuda.1.desc = "Today Ahmur At-Taleskan was killed by a group of unidentified assassins. His death will plung the kingdom into chaos and usher in a period of turmoil. There are four factions vying for control of Taleskan after Ahmur's death.\n\nKhud At-Taleskan. Khud's supporters say that he is the rightful king because of his skill as a leader and warrior. While Critics of Khud's, claim that his legitimacy is in question because of Ahmur's refusal to acknowledge him as heir. They argue that Khud is not the rightful king because he does not have the backing of the previous king.\nDerik Af-Taleskan, a powerful warrior and leader who will stop at nothing to conquer Taleskan. His supporters argue that he is what Taleskan needs; a mighty warlord, who can protect the civilians from attack by any enemy. However, critics argue that although Derik has brought peace and stability to his own region, he has done so through tyranny and oppression.\nSia Al-Hodana is a well-known merchant in Taleskan. He is known for his ingenuity in dealing with economic problems and military problems with his large mercenary armies. His supporters claim that he is a great leader who knows how to handle any situation that comes up. However, his critics say that he is corrupt and only interested in power. They also claim that he is allied with the enemy nation of Seawind.\nFarsh Aj-Kayam, a charismatic leader and mystic, who has rallied the lower class citizens of the city to his cause, promising them a better future. He has built himself a cult of followers who believe in his vision for a new Taleskan. With their support, he is planning to overthrow the current regime and bring about a religious revolution."
	desc = scenario_yokuda.1.desc
	picture = ES_DEATH_OF_MONARCH_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		hidden_effect = {
			kill_ruler = yes
			#set_country_flag = mutual_auto_siege
			#country_event = {
			#	id = scenario_yokuda.2
			#	days = 30
			#}
			#add_country_modifier = {
			#	name = tal_preceding_civilwar
			#	duration = 30
			#	hidden = yes
			#}
			#kill_ruler = yes
			#every_owned_province = {
			#	add_core = RB0
			#	add_core = RB2
			#}
			#2157, 3461, 2165, 329 = {
			#	cede_province = RB0 #Derik Rebel tag
			#	infantry = RB0
			#	infantry = RB0
			#	cavalry = RB0
			#}
			#RB0 = {
			#	set_capital = 2165
			#	define_ruler = {
			#		name = "Derik"
			#		dynasty = "Af-Taleskan"
			#		adm = 3
			#		dip = 2
			#		mil = 6
			#		age = 39
			#		claim = 100
			#	}
			#	set_country_flag = mutual_auto_siege
			#	add_country_modifier = {
			#		name = tal_preceding_civilwar
			#		duration = 30
			#		hidden = yes
			#	}
			#}
			#2119, 2118, 343 = {
			#	cede_province = RB2 #Sia Rebel tag
			#	infantry = RB2
			#	infantry = RB2
			#	infantry = RB2
			#}
			#RB2 = {
			#	set_capital = 2118
			#	define_ruler = {
			#		name = "Sia"
			#		dynasty = "Al-Hodana"
			#		adm = 5
			#		dip = 5
			#		mil = 2
			#		age = 39
			#		claim = 100
			#	}
			#	set_country_flag = mutual_auto_siege
			#	add_country_modifier = {
			#		name = tal_preceding_civilwar
			#		duration = 30
			#		hidden = yes
			#	}
			#}
			#TOT = {
			#	create_subject = {
			#		subject_type = yokuda_war_vassal
			#		subject = RB0
			#	}
			#	create_subject = {
			#		subject_type = yokuda_war_vassal
			#		subject = RB2
			#	}
			#}
		}
	}
	
	option = {
		defineloc scenario_yokuda.1.a = "Support Khud At-Taleskan"
		name = scenario_yokuda.1.a
		hidden_effect = {
			random_list = {
				1 = { 
					country_event = { id = scenario_yokuda.3 days = 1years }
					country_event = { id = scenario_yokuda.4 days = 2years }
					country_event = { id = scenario_yokuda.5 days = 3years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.3 days = 1years }
					country_event = { id = scenario_yokuda.5 days = 2years }
					country_event = { id = scenario_yokuda.4 days = 3years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.4 days = 1years }
					country_event = { id = scenario_yokuda.5 days = 2years }
					country_event = { id = scenario_yokuda.3 days = 3years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.4 days = 1years }
					country_event = { id = scenario_yokuda.3 days = 2years }
					country_event = { id = scenario_yokuda.5 days = 3years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.5 days = 1years }
					country_event = { id = scenario_yokuda.4 days = 2years }
					country_event = { id = scenario_yokuda.3 days = 3years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.5 days = 1years }
					country_event = { id = scenario_yokuda.3 days = 2years }
					country_event = { id = scenario_yokuda.4 days = 3years }
				}
			}
		}
	}
	option = {
		defineloc scenario_yokuda.1.b = "Support Derik Af-Taleskan"
		name = scenario_yokuda.1.b
	}
	option = {
		defineloc scenario_yokuda.1.c = "Support Sia Al-Hodana"
		name = scenario_yokuda.1.c
	}
	option = {
		defineloc scenario_yokuda.1.d = "Support Farsh Aj-Kayam"
		name = scenario_yokuda.1.d
		hidden_effect = {
			set_country_flag = farsh_aj_kayam
		}
	}
	
	after = {
		hidden_effect = {
			set_country_flag = esb_yok_taleskan_disaster_mission.flag
		}
	}
}
#country_event = {
#	id = scenario_yokuda.2
#	title = none
#	desc = none
#	picture = ES_DEATH_OF_MONARCH_eventPicture
#	is_triggered_only = yes
#	fire_only_once = yes
#	hidden = yes
#	
#	immediate = {
#		RB0 = {
#				declare_war_with_cb = {
#					who = RB2
#					casus_belli = cb_annex
#				}
#				declare_war_with_cb = {
#					who = TAL
#					casus_belli = cb_annex
#				}
#			}
#			RB2 = {
#				declare_war_with_cb = {
#					who = TAL
#					casus_belli = cb_annex
#				}
#			}
#	}
#	option = {
#		name = none
#		ai_chance = {
#			factor = 100
#		}
#	}
#}
#country_event = { #Rebellion Controller
#	id = scenario_yokuda.2
#	title = none
#	desc = none
#	picture = ES_DEATH_OF_MONARCH_eventPicture
#	is_triggered_only = yes
#	fire_only_once = yes
#	
#	immediate = {
#		if = {
#			limit = {
#				has_country_flag = khud_at_taleskan
#			}
#			random_list = {
#				1 = { 
#					country_event = { id = scenario_yokuda.3 days = 0years random = 1years }
#				    country_event = { id = scenario_yokuda.4 days = 3years random = 1years }
#				    country_event = { id = scenario_yokuda.5 days = 6years random = 1years }
#				}
#				1 = { 
#					country_event = { id = scenario_yokuda.3 days = 0years random = 1years }
#					country_event = { id = scenario_yokuda.5 days = 3years random = 1years }
#					country_event = { id = scenario_yokuda.4 days = 6years random = 1years }
#				}
#				1 = { 
#					country_event = { id = scenario_yokuda.4 days = 0years random = 1years }
#				    country_event = { id = scenario_yokuda.5 days = 3years random = 1years }
#				    country_event = { id = scenario_yokuda.3 days = 6years random = 1years }
#				}
#				1 = { 
#					country_event = { id = scenario_yokuda.4 days = 0years random = 1years }
#					country_event = { id = scenario_yokuda.3 days = 3years random = 1years }
#					country_event = { id = scenario_yokuda.5 days = 6years random = 1years }
#				}
#				1 = { 
#					country_event = { id = scenario_yokuda.5 days = 0years random = 1years }
#				    country_event = { id = scenario_yokuda.4 days = 3years random = 1years }
#				    country_event = { id = scenario_yokuda.3 days = 6years random = 1years }
#				}
#				1 = { 
#					country_event = { id = scenario_yokuda.5 days = 0years random = 1years }
#					country_event = { id = scenario_yokuda.3 days = 3years random = 1years }
#					country_event = { id = scenario_yokuda.4 days = 6years random = 1years }
#				}
#			}
#		}
#	}
#	
#	option = {
#		name = none
#	}
#}
#
country_event = { #Derik Af-Taleskan
	id = scenario_yokuda.3
	defineloc scenario_yokuda.3.title = "Army in the East"
	title = scenario_yokuda.3.title
	defineloc scenario_yokuda.3.desc = "My liege, The Ruthless Derik Af-Taleskan is currently assembling an army in the east in preperation for a rebellion. We beseech you to fight him before he has the chance to siege the capital."
	desc = scenario_yokuda.3.desc
	picture = ES_MILITARY_CAMP_eventPicture
	is_triggered_only = yes
	fire_only_once = yes
	
	option = {
		defineloc scenario_yokuda.3.a = "To War!"
		name = scenario_yokuda.3.a 
		hidden_effect = {
			set_country_flag = fight_derik_af_taleskan
		}
		p@ohm = {
			spawn_rebels = {
				type = pretender_rebels
				size = 10
				win = yes
				leader = "Derik"
				leader_dynasty = "Af-Taleskan"
			}
		}
	}
}

country_event = { #Sia Al-Hodana
	id = scenario_yokuda.4
	defineloc scenario_yokuda.4.title = "Army in the South"
	title = scenario_yokuda.4.title
	defineloc scenario_yokuda.4.desc = "My liege, The Merchant-Noble Sia Al-Hodana is currently assembling a mercenary army in the south in preperation for a rebellion. We beseech you to fight him before he has the chance to siege the capital."
	desc = scenario_yokuda.4.desc
	picture = ES_MILITARY_CAMP_eventPicture
	is_triggered_only = yes
	fire_only_once = yes
	
	option = {
		defineloc scenario_yokuda.4.a = "To War!"
		name = scenario_yokuda.4.a
		hidden_effect = {
			set_country_flag = fight_sia_al_hodana
		}
		p@hodana = {
			spawn_rebels = {
				type = pretender_rebels
				size = 10
				win = yes
				leader = "Sia"
				leader_dynasty = "Al-Hodana"
			}
		}
	}
}

country_event = { #Farsh Aj-Kayam
	id = scenario_yokuda.5
	defineloc scenario_yokuda.5.title = "Army in the Capital"
	title = scenario_yokuda.5.title
	defineloc scenario_yokuda.5.desc = "My liege, The Revolutionary Farsh Aj-Kayam is currently assembling a peasant army in the capital in preperation for a rebellion. We beseech you to fight him before he has the chance to take control of the Capital."
	desc = scenario_yokuda.5.desc
	picture = ES_MILITARY_CAMP_eventPicture
	is_triggered_only = yes
	fire_only_once = yes
	
	option = {
		defineloc scenario_yokuda.5.a = "To War!"
		name = scenario_yokuda.5.a
		hidden_effect = {
			set_country_flag = fight_farsh_aj_kayam
		}
		p@taleskan = {
			spawn_rebels = {
				type = pretender_rebels
				size = 5
				win = yes
				leader = "Farsh"
				leader_dynasty = "Aj-Kayam"
			}
		}
	}
}

