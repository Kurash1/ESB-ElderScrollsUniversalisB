# Audax Validator "!" Ignore_1006
namespace = es_help

# Main Menu
country_event = {
	id = es_help.1
	title = es_help.1.t
	desc = es_help.1.d
	picture = ES_START_eventPicture
	
	is_triggered_only = yes

	immediate = {
		set_country_flag = esu_menu_open
	}

	# Help Menu
	option = {
		name = es_help.1.o.a
		custom_tooltip = es_help.1.o.a.tt
		hidden_effect = {
			country_event = {
				id = es_help.2
			}
		}
	}
	# Mod Configuration
	option = {
		name = es_help.1.o.b
		custom_tooltip = es_help.1.o.b.tt
		hidden_effect = {
			country_event = {
				id = es_help.500
			}
		}
	}

	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}

}

# Help Menu
country_event = {
	id = es_help.2
	title = es_help.2.t
	desc = es_help.2.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	# FAQ
	option = {
		name = es_help.2.o.a
		custom_tooltip = es_help.2.o.a.tt
		hidden_effect = {
			country_event = {
				id = es_help.3
				days = 0
			}
		}
	}

	# Date Reference
	option = {
		name = es_help.2.o.d
		custom_tooltip = es_help.2.o.d.tt
		hidden_effect = {
			country_event = {
				id = es_help.6
			}
		}
	}

	# # Idea Group Trees
	# option = {
	# 	name = es_help.2.o.b
	# 	custom_tooltip = es_help.2.o.b.tt
	# 	hidden_effect = {
	# 		country_event = {
	# 			id = es_help.5
	# 		}
	# 	}
	# }

	# Vassals and Subjects
	option = {
		name = es_help.2.o.c
		custom_tooltip = es_help.2.o.c.tt
		hidden_effect = {
			country_event = {
				id = es_help.4
			}
		}
	}

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# FAQ
country_event = {
	id = es_help.3
	title = es_help.3.t
	desc = es_help.3.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	# Why can't I remove Idea Groups?
	#option = {
	#	name = es_help.3.o.a
	#	custom_tooltip = es_help.3.o.a.tt
	#	hidden_effect = {
	#		country_event = {
	#			id = es_help.2
	#		}
	#	}
	#}
	# How do I form Cyrodiil/The Empire
	#option = {
	#	name = es_help.3.o.b
	#	custom_tooltip = es_help.3.o.b.tt
	#	hidden_effect = {
	#		country_event = {
	#			id = es_help.2
	#		}
	#	}
	#}
	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.2
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Idea Trees
country_event = {
	id = es_help.5
	title = es_help.5.t
	desc = es_help.5.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.2
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Vassals
country_event = {
	id = es_help.4
	title = es_help.4.t
	desc = es_help.4.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.2
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Date Reference
country_event = {
	id = es_help.6
	title = es_help.6.t
	desc = es_help.6.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.2
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

defineLoc es_help.7.t = "Ai Cheats"
defineLoc es_help.7.d = "You can choose to enable/disable ai cheats here"
#Ai Cheats
country_event = {
	id = es_help.7
	title = es_help.7.t
	desc = es_help.7.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	defineLoc aimod = "Enable Cheat"
	using "common\event_modifiers\ai_cheats.class" as aimod 
	foreach aimod = {
		defineLoc aimod.id = aimod.name
		option = {
			name = aimod.id
			trigger = {
				NOT = {
					BLA = {
						has_country_modifier = aimod.id
					}
				}
			}
			hidden_effect = {
				every_country = {
					limit = {
						ai = yes
					}
					add_country_modifier = {
						name = aimod.id
						duration = -1
					}
				}
			}
			tooltip = {
				BLA = {
					add_country_modifier = {
						name = aimod.id
						duration = -1
					}
				}
			}
			country_event = {
				id = es_help.500
				days = 0
			}
		}
		option = {
			name = aimod.id
			trigger = {
				BLA = {
					has_country_modifier = aimod.id
				}
			}
			hidden_effect = {
				every_country = {
					limit = {
						ai = yes
					}
					remove_country_modifier = aimod.id
				}
			}
			tooltip = {
				BLA = {
					remove_country_modifier = aimod.id
				}
			}
			country_event = {
				id = es_help.500
				days = 0
			}
		}
	}
	
	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Mod Configuration Menu
country_event = {
	id = es_help.500
	title = es_help.500.t
	desc = es_help.500.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	defineLoc es_help.ai = "Ai Cheats"
	option = {
		name = es_help.ai
		custom_tooltip = es_help.ai
		country_event = {
			id = es_help.7
		}
	}

	# Enable News
	option = {
		name = es_help.500.o.a
		custom_tooltip = es_help.500.o.a.tt
		trigger = {
			NOT = { has_country_flag = esu_news_flag }
		}
		set_country_flag = esu_news_flag
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}

	# Disable News
	option = {
		name = es_help.500.o.b
		custom_tooltip = es_help.500.o.b.tt
		trigger = {
			has_country_flag = esu_news_flag
		}
		clr_country_flag = esu_news_flag
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}

	# Enable Conquest Events
	option = {
		name = es_help.500.o.c
		custom_tooltip = es_help.500.o.c.tt
		trigger = {
			NOT = { has_country_flag = es_conquest_notifications_enabled }
		}
		set_country_flag = es_conquest_notifications_enabled
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}
	
	# Disable Conquest Events
	option = {
		name = es_help.500.o.d
		custom_tooltip = es_help.500.o.d.tt
		trigger = {
			has_country_flag = es_conquest_notifications_enabled
		}
		clr_country_flag = es_conquest_notifications_enabled
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}
	
	# Enable Visibility of the Sacking Event 
	option = {
		name = es_help.500.o.d1
		trigger = {
			has_country_flag = es_set_province_sacking_flag
		}
		clr_country_flag = es_set_province_sacking_flag
		hidden_effect = {
			country_event = {
				id = es_help.1
			}
		}
	}

	# Region Removal
	option = {
		name = es_help.500.o.e
		custom_tooltip = es_help.500.o.e.tt
		hidden_effect = {
			country_event = {
				id = es_help.501
			}
		}
	}

	# Other Mod Options
	option = {
		name = es_help.500.o.f
		custom_tooltip = es_help.500.o.f.tt
		hidden_effect = {
			country_event = {
				id = es_help.504
			}
		}
	}

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.1
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Mod Configuration Menu - Remove Regions Warning
country_event = {
	id = es_help.501
	title = es_help.501.t
	desc = es_help.501.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	# I Understand, Continue.
	option = {
		name = es_help.501.o.a
		hidden_effect = {
			country_event = {
				id = es_help.502
				days = 0
			}
		}
	}

	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Mod Configuration Menu - Remove Regions
country_event = {
	id = es_help.502
	title = es_help.502.t
	desc = es_help.502.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	# Remove High Rock
	option = {
		name = es_help.502.o.a
		trigger = {
			capital_scope = {
				NOT = { superregion = high_rock_superregion }
			}
		}
		hidden_effect = {
			high_rock_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Skyrim
	option = {
		name = es_help.502.o.b
		trigger = {
			capital_scope = {
				NOT = { superregion = skyrim_superregion }
			}
		}
		hidden_effect = {
			skyrim_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Morrowind
	option = {
		name = es_help.502.o.c
		trigger = {
			capital_scope = {
				NOT = { superregion = morrowind_superregion }
			}
		}
		hidden_effect = {
			morrowind_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Hammerfell
	option = {
		name = es_help.502.o.d
		trigger = {
			capital_scope = {
				NOT = { superregion = hammerfell_superregion }
			}
		}
		hidden_effect = {
			hammerfell_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Cyrodiil
	option = {
		trigger = {
			capital_scope = {
				NOT = { superregion = cyrodiil_superregion }
			}
		}
		name = es_help.502.o.e
		hidden_effect = {
			cyrodiil_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Valenwood
	option = {
		name = es_help.502.o.f
		trigger = {
			capital_scope = {
				NOT = { superregion = valenwood_superregion }
			}
		}
		hidden_effect = {
			valenwood_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Elsweyr
	option = {
		name = es_help.502.o.g
		trigger = {
			capital_scope = {
				NOT = { superregion = elsweyr_superregion }
			}
		}
		hidden_effect = {
			elsweyr_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Black Marsh
	option = {
		name = es_help.502.o.h
		trigger = {
			capital_scope = {
				NOT = { superregion = black_marsh_superregion }
			}
		}
		hidden_effect = {
			black_marsh_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Yokuda
	option = {
		name = es_help.502.o.i
		trigger = {
			capital_scope = {
				NOT = { superregion = yokuda_superregion }
			}
		}
		hidden_effect = {
			yokuda_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Summerset
	option = {
		name = es_help.502.o.j
		trigger = {
			capital_scope = {
				NOT = { superregion = yokuda_superregion }
			}
		}
		hidden_effect = {
			summerset_islands_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Pyandonea
	option = {
		name = es_help.502.o.k
		trigger = {
			capital_scope = {
				NOT = { superregion = pyandonea_superregion }
			}
		}
		hidden_effect = {
			pyandonea_superregion = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Atmora
	option = {
		name = es_help.502.o.l
		trigger = {
			capital_scope = {
				NOT = { continent = Atmora }
			}
		}
		hidden_effect = {
			Atmora = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Akavir
	option = {
		name = es_help.502.o.m
		trigger = {
			capital_scope = {
				NOT = { continent = Akavir }
			}
		}
		hidden_effect = {
			Akavir = {
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}

	# Remove Deadlands
	option = {
		name = es_help.502.o.n
		trigger = {
			capital_scope = {
				NOT = {
					AND = {
						continent = Oblivion
						OR = {
							region = eastern_deadlands_lr
							region = western_deadlands_lr
							region = southern_deadlands_lr
							region = northern_deadlands_lr
						}
					}
				}
			}
		}
		hidden_effect = {
			Oblivion = {
				limit = {
					OR = {
						region = eastern_deadlands_lr
						region = western_deadlands_lr
						region = southern_deadlands_lr
						region = northern_deadlands_lr
					}
				}
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}
	
	# Remove Deadlands
	option = {
		name = es_help.502.o.o
		trigger = {
			capital_scope = {
				NOT = {
					AND = {
						continent = Oblivion
						OR = {
							region = eastern_coldharbour_lr
							region = western_coldharbour_lr
							region = northern_coldharbour_lr
							region = central_coldharbour_lr
							region = southern_coldharbour_lr
						}
					}
				}
			}
		}
		hidden_effect = {
			Oblivion = {
				limit = {
					OR = {
						region = eastern_coldharbour_lr
						region = western_coldharbour_lr
						region = northern_coldharbour_lr
						region = central_coldharbour_lr
						region = southern_coldharbour_lr
					}
				}
				cede_province = ---
			}
			country_event = {
				id = es_help.503
			}
		}
	}
	
	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}

# Go back to remove menu
country_event = {
	id = es_help.503
	title = es_help.503.t
	desc = es_help.503.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

	option = {
		name = es_help.503.o.a
		country_event = {
			id = es_help.502
		}
	}
}

# Other Mod Options
country_event = {
	id = es_help.504
	title = es_help.504.t
	desc = es_help.504.d
	picture = ES_START_eventPicture

	is_triggered_only = yes

# Disables/Enables Modular Kingdom Ranks
	option = {
		name = es_help.504.o.a
		trigger = {
			NOT = { has_global_flag = disabled_modular_ranks }
		}
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
			set_global_flag = disabled_modular_ranks
		}	
	}
	option = {
		name = es_help.504.o.b
		trigger = {
			has_global_flag = disabled_modular_ranks
		}
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
			clr_global_flag = disabled_modular_ranks
		}
	}
	option = {
		name = es_help.504.o.c
		trigger = {
			has_country_flag = moons_hidden
		}
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
			show_ambient_object = masser_orbit
			clr_country_flag = moons_hidden
		}
	}
	option = {
		name = es_help.504.o.d
		trigger = {
			NOT = {
				has_country_flag = moons_hidden
			}
		}
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
			hide_ambient_object = masser_orbit
			set_country_flag = moons_hidden
		}
	}
	option = {
		name = es_help.goback
		custom_tooltip = es_help.goback.tt
		hidden_effect = {
			country_event = {
				id = es_help.500
				days = 0
			}
		}
	}
	option = {
		name = es_help.exit
		custom_tooltip = es_help.exit.tt
		clr_country_flag = esu_menu_open
	}
}
