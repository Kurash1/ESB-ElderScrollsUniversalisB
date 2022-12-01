# Audax Validator "!" Ignore_1006
namespace = es_economy

country_event = {
    id = es_economy.0
	title = es_economy.1.t
	desc = es_economy.1.d
	picture = SCQ_VILLAGES_eventPicture 
	hidden = yes
	is_triggered_only = yes
	
	immediate = {
		set_variable = {
			which = DEV_TOTAL
			value = 0
		}
		set_variable = {
			which = CITY_COUNT
			value = 0
		}
		every_country = {
			BLA = {
				export_to_variable = {
					which = DEV_TOTAL_TMP
					value = total_development
					who = PREV
				}
				export_to_variable = {
					which = CITY_COUNT_TMP
					value = num_of_cities
					who = PREV
				}
				change_variable = {
					which = CITY_COUNT
					which = CITY_COUNT_TMP
				}
				change_variable = {
					which = DEV_TOTAL
					which = DEV_TOTAL_TMP
				}
			}
		}
	
		BLA = {
			log = "CITY_COUNT | DEV_TOTAL = [ROOT.CITY_COUNT.GetValue] | [ROOT.DEV_TOTAL.GetValue]"
			divide_variable = {
				which = DEV_TOTAL
				which = CITY_COUNT
			}
			log = "DEV_AVERAGE: [ROOT.DEV_TOTAL.GetValue]"
		}
	}
	
	option = {
		name = es_economy.1.a
		
		ai_chance = {
			factor = 100
		}
		
		if = {
			limit = {
				check_variable = {
					which = DEV_TOTAL
					value = defines.constants.max_dev_average
				}
			}
			every_country = {
				country_event = {
					id = es_economy.14
					days = 0
				}
			}
		}
		
	}
}

country_event = {
	id = es_economy.14
	title = es_economy.1.t
	desc = es_economy.1.d
	picture = SCQ_VILLAGES_eventPicture
	is_triggered_only = yes
	
	option = {
		name = es_economy.1.a
		ai_chance = {
			factor = 100
		}
		
		for i = 1 to 9 = {
			every_owned_province = {
				limit = {
					base_tax = (i*5)
					NOT = { base_tax = (i*5+5) }
				}
				add_base_tax = (-i*2.5)
			}
		}
		every_owned_province = {
			limit = {
				base_tax = (10*5)
			}
			add_base_tax = (-10*2.5)
		}
		for i = 1 to 9 = {
			every_owned_province = {
				limit = {
					base_production = (i*5)
					NOT = { base_production = (i*5+5) }
				}
				add_base_production = (-i*2.5)
			}
		}
		every_owned_province = {
			limit = {
				base_production = 50
			}
			add_base_production = -25
		}
		for i = 1 to 9 = {
			every_owned_province = {
				limit = {
					base_manpower = (i*5)
					NOT = { base_manpower = (i*5+5) }
				}
				add_base_manpower = (-i*2.5)
			}
		}
		every_owned_province = {
			limit = {
				base_manpower = 50
			}
			add_base_manpower = -25
		}
	}
}

country_event = {

	id = es_economy.1
	title = es_economy.1.t
	desc = es_economy.1.d
	picture = SCQ_VILLAGES_eventPicture

	trigger = {
	    any_owned_province = {
			OR = {
				AND = {
					development = 10
					NOT = { development = 20 }	
					NOT = { has_province_modifier = 00_small_plague }
				}
				AND = {
					development = 20
					NOT = { development = 30 }	
					NOT = { has_province_modifier = 00_medium_plague }
				}
				AND = {
					development = 30
					NOT = { has_province_modifier = 00_large_plague }
				}
			}
			NOT = { has_province_modifier = 00_plague }
		}
		treasury = 3500
	}
	mean_time_to_happen = {
		days = 18250

		modifier = {
			factor = 0.85
			treasury = 7000
		}
		modifier = {
			factor = 0.75
			treasury = 15000
		}
		modifier = {
			factor = 0.50
			treasury = 25000
		}
	
	}
	
	option = {
		name = "es_economy.1.a"
		ai_chance = { factor = 33 }
		
		random_owned_province = {
			limit = { development = 10 }
			if = { 
				limit = { base_tax = 4 }
				add_base_tax = -3
			}
			if = { 
				limit = { base_production = 4 }
				add_base_production = -3
			}
			if = { 
				limit = { base_manpower = 4 }
				add_base_manpower = -3
			}
		
			if = {
				limit = {
					development = 10
					NOT = { development = 20 }
				}
				add_province_modifier = {
					name = 00_small_plague
					duration = 3650
				}
			}
			if = {
				limit = {
					development = 20
					NOT = { development = 30 }
				}
				add_province_modifier = {
					name = 00_medium_plague
					duration = 3650
				}
			}
			if = {
				limit = {
					development = 30
				}
				add_province_modifier = {
					name = 00_large_plague
					duration = 3650
				}
			}
			
			hidden_effect = {
				add_province_modifier = {
					name = 00_plague
					duration = 18250
					hidden = yes
				}
			}
		}
	}
	
	option = {
		name = "es_economy.1.b"
		ai_chance = { factor = 33 }
		
		random_owned_province = {
			limit = { development = 10 }
			if = {
				limit = {
					development = 10
					NOT = { development = 20 }
				}
				add_devastation = 15
				owner = {
					add_years_of_income = -0.5
				}
				add_province_modifier = {
					name = 00_small_plague
					duration = 3650
				}
			}
			
			if = {
				limit = {
					development = 20
					NOT = { development = 30 }
				}
				add_devastation = 35
				owner = {
					add_years_of_income = -1.0
				}
				add_province_modifier = {
					name = 00_medium_plague
					duration = 3650
				}
			}
			
			if = {
				limit = {
					development = 30
				}
				add_devastation = 50
				owner = {
					add_years_of_income = -1.5
				}
				add_province_modifier = {
					name = 00_large_plague
					duration = 3650
				}
			}
			
			hidden_effect = {
				add_province_modifier = {
					name = 00_plague
					duration = 18250
					hidden = yes
				}
			}
		}
	}
	
	option = {
		name = "es_economy.1.c"
		ai_chance = { factor = 33 }
		
		random_owned_province = {
			limit = { development = 10 }
			if = {
				limit = {
					development = 10
					NOT = { development = 20 }
				}
				owner = {
					add_years_of_income = -1.0
				}
			}
			
			if = {
				limit = {
					development = 20
					NOT = { development = 30 }
				}
				owner = {
					add_years_of_income = -1.75
				}
			}
			
			if = {
				limit = {
					development = 30
				}
				owner = {
					add_years_of_income = -2.5
				}
			}
			
			hidden_effect = {
				add_province_modifier = {
					name = 00_plague
					duration = 18250
					hidden = yes
				}
			}
		}
	}
}

#######################################################################

# Reduce Development Worldwide

# is_year = 272
# es_economy.10.t: "The Ice Age is Coming"
# es_economy.10.d: "Rumours coming from the northern countries do not lie. More and more snowstorms rise, blocking the sun for whole weeks. Even here we can feel the rapid temperature decrease. Snow now lays on the ground for the whole spring and begins to disappear only at the beginning of summer, turning the once fertile soil into wastelands. Animals also start to move to other areas, leaving hunters and fishermen without prey."
# es_economy.10.a: "Looks like the new Ice Age is on the verge."
# es_economy.10.a.tt: "§REvery our owned province will loose some development!§!"
#
#country_event = {
#	id = es_economy.10
#	title = es_economy.10.t
#	desc = es_economy.10.d
#	picture = ES_ICE_AGE_1_eventPicture
#	
#	is_triggered_only = yes
#	
#	option = {
#		name = "es_economy.1.a"
#		custom_tooltip = es_economy.10.a.tt
#	}
#}
#
# is_year = 512
# es_economy.11.t: "A Year without Sun"
# es_economy.11.d: "A volcanic eruption has sent tons of ash and dust into the sky, covering the surface of Nirn and obscuring the sun’s rays. The whole of the planet is becoming a colder place - snowfalls in the deserts of Elsweyr and Po Tun. Harvests are failing under layers of asphyxiating ash. Our military experts to handle food riots in the coming days, but what will happen when we can no longer feed our troops?"
# es_economy.11.a: "Hard times waiting for us ahead."
#
#country_event = {
#	id = es_economy.11
#	title = es_economy.11.t
#	desc = es_economy.11.d
#	picture = ES_VOLCANIC_SMOKE_eventPicture
#	
#	is_triggered_only = yes
#
#	option = {
#		name = "es_economy.11.a"
#		custom_tooltip = es_economy.10.a.tt
#		add_stability = -1
#	}
#}
#
# + Thrassian Plague is in event file Scenario_26_Thrassian_Plague