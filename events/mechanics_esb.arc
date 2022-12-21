using "classes\tradegoods.class" as tradegoods
using "classes\artifacts\*" as artifacts
using "common\great_projects\01_monuments.txt" as citymonument

namespace = es_esb

defineLoc es_esb.0.t = "Custom Province Interactions"
defineLoc es_esb.0.d = "This menu allows you to perform custom province interactions"
province_event = {
	id = es_esb.0
	title = es_esb.0.t
	desc = es_esb.0.d
	picture = TRADEGOODS_eventPicture
	
	is_triggered_only = yes
	
	immediate = {
		hidden_effect = {
			remove_building = custom_interaction_building
		}
	}
	
	defineLoc es_esb.0.a = "Nothing"
	option = {
		name = es_esb.0.a
	}
	
	defineLoc es_esb.0.b = "Change Trade Goods"
	option = {
		name = es_esb.0.b
		province_event = {
			id = es_esb.1
			days = 0
		}
	}
	
	defineLoc es_esb.0.c = "Genocide Province"
	option = {
		name = es_esb.0.c
		trigger = {
			OR = {
				has_owner_accepted_culture = no
				has_owner_religion = no
			}
		}
		save_event_target_as = esb_to_genocide
		owner = { 
			country_event = {
				id = es_esb.2
			} 
		}
	}
	
	option = { #this is for the validator
		name = none
		trigger = {
			always = no
		}
		owner = {
			country_event = {
				id = es_esb.0
			}
			country_event = {
				id = es_esb.6
			}
		}
	}
	
	#defineLoc es_esb.0.tt.a = "You sponsor for a search for an artifact. The Search may take between 10 and 20 years."
	#defineLoc es_esb.0.tt.b = "You do not have enough money to sponsor a search"
	#defineLoc es_esb.0.e = "Search for artifact"
	#option = {
	#	name = es_esb.0.e
	#	if = {
	#		limit = {
	#			owner = {
	#				treasury = 100
	#				NOT = { has_country_flag = es_esb }
	#			}
	#		}
	#		province_event = {
	#			id = es_esb.6
	#			days = 3650
	#			random = 3650
	#		}
	#		custom_tooltip = es_esb.0.tt.a
	#		owner = { add_treasury = -100 }
	#	}
	#	else = {
	#		custom_tooltip = es_esb.0.tt.b
	#	}
	#}
}

defineLoc es_esb.1.t = "Change Trade Good"
defineLoc es_esb.1.d = "To what trade good do you wish to change the province to"
defineLoc es_esb.tt0 = "This province doesn't fulfill the conditions for the chosen tradegood"
defineLoc es_esb.tt1 = "You do not have the required mana availiable to choose this option"

var costmult = 50

province_event = {
	id = es_esb.1
	title = es_esb.1.t 
	desc = es_esb.1.d
	
	picture = TRADEGOODS_eventPicture
	
	is_triggered_only = yes
	
	foreach tradegoods = {
		var cost = (tradegoods.baseprice*costmult)
		#option = {
		#	name = tradegoods.id
		#	trigger = {
		#		NOT = {
		#			tradegoods.triggers
		#			NOT = { trade_goods = tradegoods.id }
		#		}
		#	}
		#	custom_tooltip = es_esb.tt0
		#}
		#option = {
		#	name = tradegoods.id
		#	trigger = {
		#		tradegoods.triggers
		#		NOT = { trade_goods = tradegoods.id }
		#		NOT = {
		#			OR = {
		#				owner = {
		#					full_idea_group = transmutation_ideas
		#					adm_power = (cost*0.9)
		#					dip_power = (cost*0.9)
		#					mil_power = (cost*0.9)
		#				}
		#				owner = {
		#					adm_power = cost
		#					dip_power = cost
		#					mil_power = cost
		#				}
		#			}
		#		}
		#	}
		#	custom_tooltip = es_esb.tt1
		#}
		#option = {
		#	name = tradegoods.id
		#	trigger = {
		#		tradegoods.triggers
		#		NOT = { trade_goods = tradegoods.id }
		#		OR = {
		#			owner = {
		#				full_idea_group = transmutation_ideas
		#				adm_power = (cost*0.9)
		#				dip_power = (cost*0.9)
		#				mil_power = (cost*0.9)
		#			}
		#			owner = {
		#				adm_power = cost
		#				dip_power = cost
		#				mil_power = cost
		#			}
		#		}
		#	}
		#	highlight = yes
		#	if = {
		#		limit = {
		#			owner = {
		#				full_idea_group = transmutation_ideas
		#			}
		#		}
		#		owner = {
		#			adm_power_cost = (cost*0.9)
		#			dip_power_cost = (cost*0.9)
		#			mil_power_cost = (cost*0.9)
		#		}
		#		change_trade_goods = tradegoods.id
		#	}
		#	else = {
		#		owner = {
		#			adm_power_cost = cost
		#			dip_power_cost = cost
		#			mil_power_cost = cost
		#		}
		#		change_trade_goods = tradegoods.id
		#	}
		#}
		
		option = {
			name = tradegoods.id
			trigger = {
				tradegoods.triggers
				NOT = { trade_goods = tradegoods.id }
			}
			if = {
				limit = {
					tradegoods.triggers
					NOT = { trade_goods = tradegoods.id }
				}
				if = {
					limit = {
						owner = {
							full_idea_group = transmutation_ideas
							#adm_power = (cost*0.9)
							dip_power = (cost*0.9)
							#mil_power = (cost*0.9)
						}
					}
					owner = {
						#adm_power_cost = (cost*0.9)
						dip_power_cost = (cost*0.9)
						#mil_power_cost = (cost*0.9)
					}
					change_trade_goods = tradegoods.id
				}
				else_if = {
					limit = {
						owner = {
							#adm_power = cost
							dip_power = cost
							#mil_power = cost
						}
					}
					owner = {
						#adm_power_cost = cost
						dip_power_cost = cost
						#mil_power_cost = cost
					}
					change_trade_goods = tradegoods.id
				}
				else = {
					custom_tooltip = es_esb.tt1
				}
			}
			else = {
				custom_tooltip = es_esb.tt0
			}
		}
	}
}

defineLoc es_esb.0.c = "Genocide Province"
defineLoc es_esb.2.t = "Genocide Province?"
defineLoc es_esb.2.d = "My Liege Shall we Genocide the Province"
defineLoc es_esb.2.tt = "You must control the province for the next 100 days to perform the genocide (Genociding a province means uncolonizing it)"

country_event = {
	id = es_esb.2
	title = es_esb.2.t
	desc = es_esb.2.d
	picture = es_isolationism_2
	
	is_triggered_only = yes
	
	defineLoc es_esb.2.a = "Yes We Shall"
	option = {
		name = es_esb.2.a
		event_target:esb_to_genocide = {
			change_controller = REB
			create_revolt = 1
			custom_tooltip = es_esb.2.tt
		}
		country_event = {
			id = es_esb.3
			days = 100
		}
	}
	
	defineLoc es_esb.2.b = "Nevermind"
	option = {
		name = es_esb.2.b
	}
}

defineLoc es_esb.3.t = "Genocide"
country_event = {
	id = es_esb.3
	title = es_esb.3.t
	desc = es_esb.3.d
	picture = es_isolationism_2
	
	is_triggered_only = yes
	
	trigger = {
		event_target:esb_to_genocide = { controlled_by = ROOT }
	}
	
	hidden = yes
	
	option = {
		name = es_esb.0.a
		ai_chance = {
			factor = 100
		}
		
		if = {
			limit = {
				has_idea = esb_massacre_ideas7
			}
			add_adm_power = 25
			add_dip_power = 25
			add_mil_power = 25
		}
		
		event_target:esb_to_genocide = { decolonize = this }
	}
}

country_event = {
	id = es_esb.4
	title = es_esb.4.t
	desc = es_esb.4.d
	picture = es_isolationism_2
	
	is_triggered_only = yes
	
	immediate = {
		foreach artifacts = {
			random_province = {
				limit = {
					artifacts.trigger
				}
				set_province_flag = artifacts.id
			}
		}
		foreach citymonument = {
			citymonument.start = {
				set_province_flag = esb_city_monument
			}
		}
	}
	
	option = {
		name = es_esb.4
	}
}

#country_event = {
#	id = es_esb.5
#	title = es_esb.5.t
#	desc = es_esb.5.d
#	picture = es_isolationism_2
#	
#	is_triggered_only = yes
#	
#	immediate = {
#		foreach artifacts = {
#			if = {
#				limit = {
#					has_country_flag = artifacts.id
#				}
#				clr_country_flag = artifacts.id
#				random_province = {
#					limit = {
#						artifacts.trigger
#					}
#					set_province_flag = artifacts.id
#				}
#			}
#		}
#	}
#	
#	option = {
#		name = es_esb.5
#	}
#}
#
#defineLoc es_esb.6.t = "Artifact Search"
#defineLoc es_esb.6.d = "You should not see this"
#defineLoc es_esb.6.a = "Too bad"
#province_event = {
#	id = es_esb.6
#	title = es_esb.6.t
#	desc = es_esb.6.d
#	picture = ES_BLESSED_BLADE_eventPicture
#	is_triggered_only = yes
#	hidden = yes
#	
#	option = {
#		name = es_esb.6.a
#		log = "es_esb.6"
#		if = { #Checks for artifacts
#			limit = {
#				OR = {
#					foreach artifacts = {
#						AND = {
#							has_province_flag = artifacts.id
#							owner = { NOT = { has_country_modifier = artifacts.id } }
#						}
#					}
#				}
#			}
#			log = "found artifact"
#			province_event = { #Gives artifacts
#				id = es_esb.8 
#				days = 1
#			}
#		}
#		else = {
#			province_event = {
#				id = es_esb.7
#				days = 1
#			}
#		}
#		ai_chance = {
#			factor = 100
#		}
#	}
#}
#
#defineLoc es_esb.7.t = "No artifacts found"
#defineLoc es_esb.7.d = "Bad news [Root.Owner.Monarch.GetTitle] while searching in [Root.GetName] we didn't find any artifacts"
#defineLoc es_esb.7.a = "Too bad"
#defineLoc es_esb.7.tt = "Though we might find an artifact in [Prev.GetName]"
#province_event = {
#	id = es_esb.7
#	title = es_esb.7.t
#	desc = es_esb.7.d
#	picture = ES_BLESSED_BLADE_eventPicture
#	is_triggered_only = yes
#
#	option = {
#		name = es_esb.7.a
#		#owner = {
#		#	random_owned_province = {
#		#		limit = {
#		#			OR = { 
#		#				foreach artifacts = {
#		#					has_province_flag = artifacts.id
#		#				} 
#		#			}
#		#		}
#		#		owner = {
#		#			custom_tooltip = es_esb.7.tt
#		#		}
#		#	}
#		#}
#	}
#}
#
#defineLoc es_esb.8.t = "Aritfacts?"
#defineLoc es_esb.8.d = "Great news [Root.Owner.Monarch.GetTitle] while searching in [Root.GetName] we found an Artifact"
#province_event = {
#	id = es_esb.8
#	title = es_esb.8.t
#	desc = es_esb.8.d
#	foreach artifacts = {
#		picture = {
#			trigger = {
#				has_province_flag = artifacts.id
#			}
#			picture = artifacts.picture
#		}
#	}
#	is_triggered_only = yes
#	
#	trigger = {
#		OR = {
#			foreach artifacts = {
#				AND = {
#					has_province_flag = artifacts.id
#				    owner = { NOT = { has_country_modifier = artifacts.id } }
#				}
#			}
#		}
#	}
#	
#	foreach artifacts = {
#		option = {
#			name = artifacts.id
#			trigger = {
#				has_province_flag = artifacts.id
#				owner = { NOT = { has_country_modifier = artifacts.id } }
#			}
#			owner = {
#				arc_modifier = {
#					id = artifacts.id
#					type = artifacts.type
#					name = artifacts.name
#					desc = artifacts.desc
#					modifiers = { artifacts.modifiers }
#				}
#			}
#			artifacts.effects
#			clr_province_flag = artifacts.id
#			BLA = {
#				set_country_flag = artifacts.id
#			}
#		}
#		
#	}
#	
#	after = {
#		log = "final: found artifact"
#	}
#}