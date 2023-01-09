namespace = scenario_yokuda


country_event = { #1E0 - 57 - Setup
	id = scenario_yokuda.0
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		c@Sinistral_Elves = {
			country_event = {
				id = scenario_yokuda.11
				days = 30
			}
		}
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
	defineloc scenario_yokuda.1.desc = "Taleskan is in turmoil after the assassination of King Ahmur At-Taleskan. Four factions are vying for control of the kingdom, each with their own vision for the future of Taleskan.\n\nKhud At-Taleskan is a skilled leader and warrior who claims to be the rightful heir to the throne. His supporters believe that he is the best choice to lead Taleskan into a bright future, but critics argue that his legitimacy is in question due to King Ahmur's refusal to acknowledge him as his successor.\n\nDerik Af-Taleskan is a powerful warrior who will stop at nothing to conquer Taleskan. He has brought peace and stability to his own region, but his methods have been criticized as oppressive and tyrannical. Derik's supporters believe that he is the strong leader that Taleskan needs to protect its citizens from attack.\n\nSia Al-Hodana is a well-known merchant and leader of a large mercenary army. He is known for his economic and military savvy, but his critics claim that he is corrupt and only interested in power. Sia's supporters argue that he is a great leader who can handle any situation that arises.\n\nFarsh Aj-Kayam is a charismatic leader and mystic who has rallied the lower class citizens of the city to his cause. He has promised them a better future and has built a cult of followers who believe in his vision for a new Taleskan. Farsh hopes to overthrow the current regime and bring about a religious revolution.\n\nAs the civil war rages on, it remains to be seen which faction will emerge victorious and shape the future of Taleskan."
	desc = scenario_yokuda.1.desc
	picture = ES_DEATH_OF_MONARCH_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		hidden_effect = {
			country_event = { id = scenario_yokuda.7 days = 8years }
			#kill_ruler = yes
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
		
		add_heir_personality = careful_personality
		define_ruler = {
			name = "Khud"
			dynasty = "At-Taleskan"
			age = 23
			adm = 5
			dip = 4
			mil = 6
			
			#fixed = yes
			claim = 20
		}
		
		hidden_effect = {
			country_event = { id = scenario_yokuda.10 days = 4years }
			random_list = {
				1 = { 
					country_event = { id = scenario_yokuda.3 days = 2years }
					country_event = { id = scenario_yokuda.4 days = 6years }
					country_event = { id = scenario_yokuda.5 days = 10years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.3 days = 2years }
					country_event = { id = scenario_yokuda.5 days = 6years }
					country_event = { id = scenario_yokuda.4 days = 10years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.4 days = 2years }
					country_event = { id = scenario_yokuda.5 days = 6years }
					country_event = { id = scenario_yokuda.3 days = 10years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.4 days = 2years }
					country_event = { id = scenario_yokuda.3 days = 6years }
					country_event = { id = scenario_yokuda.5 days = 10years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.5 days = 2years }
					country_event = { id = scenario_yokuda.4 days = 6years }
					country_event = { id = scenario_yokuda.3 days = 10years }
				}
				1 = { 
					country_event = { id = scenario_yokuda.5 days = 2years }
					country_event = { id = scenario_yokuda.3 days = 6years }
					country_event = { id = scenario_yokuda.4 days = 10years }
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

#.6 Khud

#.7 Ansei-Rakka
country_event = {
	id = scenario_yokuda.7
	defineloc scenario_yokuda.7.title = "The Ansei-Rakka Threat"
	title = scenario_yokuda.7.title
	defineloc scenario_yokuda.7.desc = "As the civil war rages on, the Ansei-Rakka, a group of bandits, have taken advantage of the chaos to plunder and loot the countryside. The Ansei-Rakka are known for their ruthless and cunning tactics, and have become a major problem for all of the factions fighting for control of the kingdom. They strike without warning, taking whatever they can and disappearing back into the shadows. The factions are forced to divert valuable resources away from the war effort to deal with this threat, further complicating the already chaotic situation. The Ansei-Rakka show no sign of slowing down, and it remains to be seen how this will affect the outcome of the civil war."
	desc = scenario_yokuda.7.desc
	picture = ES_DESERT_RIDERS_eventPicture
	is_triggered_only = yes
	
	option = {
		defineloc scenario_yokuda.7.a = "Ignore the Ansei-Rakka"
		name = scenario_yokuda.7.a
		
		add_country_modifier = {
			name = ansei_rakka_ignored
			duration = 5years
			defineloc ansei_rakka_ignored_desc = "We have chosen to ignore the Ansei-Rakka"
			desc = ansei_rakka_ignored_desc
		}
	}
	
	option = {
		defineloc scenario_yokuda.7.b = "Negotiate with the Ansei-Rakka"
		name = scenario_yokuda.7.b
		
		add_treasury = -250
		add_manpower = 5
		
		add_country_modifier = {
			name = ansei_rakka_soldiers
			duration = 1years
			defineloc ansei_rakka_soldiers_desc = "We have decided to hire Ansei-Rakka soldiers"
			desc = ansei_rakka_soldiers_desc
		}
		
		set_country_flag = sword_singers
	}
	
	option = {
		defineloc scenario_yokuda.7.c = "Catch the Ansei-Rakka in a trap"
		name = scenario_yokuda.7.c
		add_treasury = -50
		add_manpower = -1
		for i = 0 to 6 = {
			if = {
				limit = {
					dip = i
					NOT = { dip = (i+1) }
				}
				random_list = {
					i = {
						country_event = { id = scenario_yokuda.9 days = 1months } #Successful Capture of the Ansei-Rakka
					}
					3 = { 
						country_event = { id = scenario_yokuda.8 days = 1months } #Failure to capture the Ansei-Rakka
					}
				}
			}
		}
	}
}

country_event = {
	id = scenario_yokuda.8
	defineloc scenario_yokuda.8.title = "The Ansei-Rakka Slip Through Our Grasp"
	title = scenario_yokuda.8.title
	defineloc scenario_yokuda.8.desc = "Despite our best efforts, the Ansei-Rakka have managed to evade our trap and escape capture. Their cunning and resourcefulness have proven to be a formidable challenge, and we are left empty-handed and frustrated. The Ansei-Rakka continue to be a thorn in our side, and it seems that they will be a persistent threat that we will need to deal with. We must redouble our efforts and come up with a new plan to bring these bandits to justice."
	desc = scenario_yokuda.8.desc
	is_triggered_only = yes
	picture = ES_NOMAD_RIDERS_eventPicture
	
	option = {
		defineloc scenario_yokuda.8.a = "Try again"
		name = scenario_yokuda.8.a
		add_treasury = -50
		add_manpower = -1
		for i = 0 to 6 = {
			if = {
				limit = {
					dip = i
					NOT = { dip = (i+1) }
				}
				random_list = {
					i = {
						country_event = { id = scenario_yokuda.9 days = 1months } #Successful Capture of the Ansei-Rakka
					}
					3 = { 
						country_event = { id = scenario_yokuda.8 days = 1months } #Failure to capture the Ansei-Rakka
					}
				}
			}
		}
	}
	option = {
		defineloc scenario_yokuda.8.b = "We must give up"
		name = scenario_yokuda.8.b
		
		add_country_modifier = {
			name = ansei_rakka_ignored
			duration = 5years
			defineloc ansei_rakka_ignored_desc = "We have chosen to ignore the Ansei-Rakka"
			desc = ansei_rakka_ignored_desc
		}
	}
}

country_event = {
	id = scenario_yokuda.9
	defineloc scenario_yokuda.9.title = "Ansei-Rakka Captured"
	title = scenario_yokuda.9.title
	defineloc scenario_yokuda.9.desc = "Our efforts have finally paid off, as we have successfully captured the Ansei-Rakka. The bandits were caught off guard and were unable to escape our trap. We have taken a significant number of them into custody, and the rest have scattered and fled. This is a major victory for us, as the Ansei-Rakka have been a constant thorn in our side. Their capture will surely demoralize the rest of their group and make it easier for us to track them down. We will interrogate the captured Ansei-Rakka and use the information we gather to hunt down the rest of the group. This marks the end for the Ansei-Rakka."
	desc = scenario_yokuda.9.desc
	picture = ES_CONVOY_ASSAULT_eventPicture
	is_triggered_only = yes
	
	option = {
		defineloc scenario_yokuda.9.a = "Finally"
		name = scenario_yokuda.9.a
		
		add_prestige = 25
	}
}

country_event = {
	id = scenario_yokuda.10
	defineloc scenario_yokuda.10.title = "Totambu's Offer of Assistance"
	title = scenario_yokuda.10.title
	defineloc scenario_yokuda.10.desc = "The empire of Totambu has offered to lend assistance to Khud At-Taleskan in his bid for the throne. Totambu has long had close alliances with the royal family of Taleskan, and sees Khud as the rightful heir to the throne. As such, Totambu has offered to send a force of soldiers to aid in Khud's efforts to secure his claim to the throne. The Totambuan soldiers are highly trained and well-equipped, and could be a valuable asset in the ongoing conflict. This offer comes at a critical time, as Khud faces competition from other factions vying for control of the kingdom. While Khud must carefully consider the potential implications of accepting Totambu's offer, it is clear that their assistance could be a turning point in his campaign for the throne."
	desc = scenario_yokuda.10.desc
	is_triggered_only = yes
	picture = ES_CORONATION_SWORD_eventPicture
	
	option = {
		defineloc scenario_yokuda.10.a = "Take the Assistance"
		name = scenario_yokuda.10.a
		add_treasury = 150
		add_manpower = 10
		#+opinion
		#+integration
	}
	option = {
		defineloc scenario_yokuda.10.b = "Reject Assistance"
		name = scenario_yokuda.10.b
		#-opinion
		#-integration
	}
}
country_event = {
	id = scenario_yokuda.11
	defineloc scenario_yokuda.11.title = "Sinistral Rebellion"
	title = scenario_yokuda.11.title
	defineloc scenario_yokuda.11.desc = "."
	desc = scenario_yokuda.11.desc
	is_triggered_only = yes
	fire_only_once = yes
	picture = none
	
	option = {
		defineloc scenario_yokuda.11.a = "Liberty or Death!"
		name = scenario_yokuda.11.a
		c@Totambu = {
			create_subject = {
				subject_type = yokuda_vassal
				subject = c@Sinistral_Elves
			}
		}
		declare_war_with_cb = {
			who = c@Yath
			casus_belli = cb_annex
		}
	}
}