# Audax Validator "!" Ignore_1006
namespace = es_ideas

country_event = {
	id = es_ideas.0
	title = es_ideas.0.t
	desc = es_ideas.0.d
	hidden = yes
	is_triggered_only = yes
	
	immediate = {
		every_country = {
			add_adm_tech = 1
		}
		country_event = {
			id = es_ideas.0
			days = (30*365)
		}
	}
	
	option = {
		name = es_ideas.0.a
		ai_chance = {
			factor = 100
		}
	}
}

#country_event = {
#	id = es_ideas.0
#	title = es_ideas.0.t
#	desc = es_ideas.0.d
#	
#	is_triggered_only = yes
#	
#	option = {
#		name = es_ideas.0.a
#	}
#
#	#ADM
#	option = {
#		name = administrative_ideas
#		trigger = {
#			full_idea_group = administrative_ideas
#			NOT = {
#				OR = {
#					has_idea_group = zentra0
#					has_idea_group = dezentra0
#				}
#			}
#		}
#		remove_idea_group = administrative_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = zentra0
#		trigger = {
#			full_idea_group = zentra0
#		}
#		remove_idea_group = zentra0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = dezentra0
#		trigger = {
#			full_idea_group = dezentra0
#		}
#		remove_idea_group = dezentra0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = economic_ideas
#		trigger = {
#			full_idea_group = economic_ideas
#			NOT = {
#				OR = {
#					has_idea_group = expansion_ideas
#					has_idea_group = innovativeness_ideas
#				}
#			}
#		}
#		remove_idea_group = economic_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = expansion_ideas
#		trigger = {
#			full_idea_group = expansion_ideas
#		}
#		remove_idea_group = expansion_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = innovativeness_ideas
#		trigger = {
#			full_idea_group = innovativeness_ideas
#		}
#		remove_idea_group = innovativeness_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = mysticism_ideas
#		trigger = {
#			full_idea_group = mysticism_ideas
#			NOT = {
#				OR = {
#					has_idea_group = religious_ideas
#					has_idea_group = humanist_ideas
#				}
#			}
#		}
#		remove_idea_group = mysticism_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = religious_ideas
#		trigger = {
#			full_idea_group = religious_ideas
#		}
#		remove_idea_group = religious_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = humanist_ideas
#		trigger = {
#			full_idea_group = humanist_ideas
#		}
#		remove_idea_group = humanist_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = staatsverwaltung0
#		trigger = {
#			full_idea_group = staatsverwaltung0
#			NOT = {
#				OR = {
#					has_idea_group = monarchie0
#					has_idea_group = republik0
#					has_idea_group = aristo0
#					has_idea_group = horde0
#				}
#			}
#		}
#		remove_idea_group = staatsverwaltung0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = monarchie0
#		trigger = {
#			full_idea_group = monarchie0
#		}
#		remove_idea_group = monarchie0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = republik0
#		trigger = {
#			full_idea_group = republik0
#		}
#		remove_idea_group = republik0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = aristo0
#		trigger = {
#			full_idea_group = aristo0
#		}
#		remove_idea_group = aristo0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = horde0
#		trigger = {
#			full_idea_group = horde0
#		}
#		remove_idea_group = horde0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = alteration_ideas
#		trigger = {
#			full_idea_group = alteration_ideas
#			NOT = {
#				OR = {
#					has_idea_group = alchemical_ideas
#					has_idea_group = transmutation_ideas
#				}
#			}
#		}
#		remove_idea_group = alteration_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = alchemical_ideas
#		trigger = {
#			full_idea_group = alchemical_ideas
#		}
#		remove_idea_group = alchemical_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = transmutation_ideas
#		trigger = {
#			full_idea_group = transmutation_ideas
#		}
#		remove_idea_group = transmutation_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = justiz0
#		trigger = {
#			full_idea_group = justiz0
#			NOT = {
#				OR = {
#					has_idea_group = aristocracy_ideas
#					has_idea_group = plutocracy_ideas
#				}
#			}
#		}
#		remove_idea_group = justiz0
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = aristocracy_ideas
#		trigger = {
#			full_idea_group = aristocracy_ideas
#		}
#		remove_idea_group = aristocracy_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	option = {
#		name = plutocracy_ideas
#		trigger = {
#			full_idea_group = plutocracy_ideas
#		}
#		remove_idea_group = plutocracy_ideas
#		country_event = {
#			id = es_ideas.1
#		}
#	}
#	#DIP
#	option = {
#		name = maritime_ideas
#		trigger = {
#			full_idea_group = maritime_ideas
#			NOT = {
#				OR = {
#					has_idea_group = galle0
#					has_idea_group = handel0
#					has_idea_group = gross0
#				}
#			}
#		}
#		remove_idea_group = maritime_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = galle0
#		trigger = {
#			full_idea_group = galle0
#		}
#		remove_idea_group = galle0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = handel0
#		trigger = {
#			full_idea_group = handel0
#		}
#		remove_idea_group = handel0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = gross0
#		trigger = {
#			full_idea_group = gross0
#		}
#		remove_idea_group = gross0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = diplomatic_ideas
#		trigger = {
#			full_idea_group = diplomatic_ideas
#			NOT = {
#				OR = {
#					has_idea_group = spy_ideas
#					has_idea_group = influence_ideas
#				}
#			}
#		}
#		remove_idea_group = diplomatic_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = spy_ideas
#		trigger = {
#			full_idea_group = spy_ideas
#		}
#		remove_idea_group = spy_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = influence_ideas
#		trigger = {
#			full_idea_group = influence_ideas
#		}
#		remove_idea_group = influence_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = trade_ideas
#		trigger = {
#			full_idea_group = trade_ideas
#			NOT = {
#				OR = {
#					has_idea_group = naval_ideas
#					has_idea_group = flottenbasis0
#				}
#			}
#		}
#		remove_idea_group = trade_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = naval_ideas
#		trigger = {
#			full_idea_group = naval_ideas
#		}
#		remove_idea_group = naval_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = flottenbasis0
#		trigger = {
#			full_idea_group = flottenbasis0
#		}
#		remove_idea_group = flottenbasis0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = exploration_ideas
#		trigger = {
#			full_idea_group = exploration_ideas
#			NOT = {
#				OR = {
#					has_idea_group = kolonialimperium0
#					has_idea_group = imperialismus0
#				}
#			}
#		}
#		remove_idea_group = exploration_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = kolonialimperium0
#		trigger = {
#			full_idea_group = kolonialimperium0
#		}
#		remove_idea_group = kolonialimperium0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = imperialismus0
#		trigger = {
#			full_idea_group = imperialismus0
#		}
#		remove_idea_group = imperialismus0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = illusion_ideas
#		trigger = {
#			full_idea_group = illusion_ideas
#			NOT = {
#				OR = {
#					has_idea_group = gesellschaft0
#					has_idea_group = propaganda0
#				}
#			}
#		}
#		remove_idea_group = illusion_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = gesellschaft0
#		trigger = {
#			full_idea_group = gesellschaft0
#		}
#		remove_idea_group = gesellschaft0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = propaganda0
#		trigger = {
#			full_idea_group = propaganda0
#		}
#		remove_idea_group = propaganda0
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = enchanting_ideas
#		trigger = {
#			full_idea_group = enchanting_ideas
#			NOT = {
#				OR = {
#					has_idea_group = arcane_ideas
#					has_idea_group = soul_siphon_ideas
#				}
#			}
#		}
#		remove_idea_group = enchanting_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = arcane_ideas
#		trigger = {
#			full_idea_group = arcane_ideas
#		}
#		remove_idea_group = arcane_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	option = {
#		name = soul_siphon_ideas
#		trigger = {
#			full_idea_group = soul_siphon_ideas
#		}
#		remove_idea_group = soul_siphon_ideas
#		country_event = {
#			id = es_ideas.2
#		}
#	}
#	#MIL
#	option = {
#		name = destruction_ideas
#		trigger = {
#			full_idea_group = destruction_ideas
#			NOT = {
#				OR = {
#					has_idea_group = fire0
#					has_idea_group = shock0
#				}
#			}
#		}
#		remove_idea_group = destruction_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = fire0
#		trigger = {
#			full_idea_group = fire0
#		}
#		remove_idea_group = fire0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = shock0
#		trigger = {
#			full_idea_group = shock0
#		}
#		remove_idea_group = shock0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = restoration_ideas
#		trigger = {
#			full_idea_group = restoration_ideas
#			NOT = {
#				OR = {
#					has_idea_group = quality_ideas
#					has_idea_group = quantity_ideas
#				}
#			}
#		}
#		remove_idea_group = restoration_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = quality_ideas
#		trigger = {
#			full_idea_group = quality_ideas
#		}
#		remove_idea_group = quality_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = quantity_ideas
#		trigger = {
#			full_idea_group = quantity_ideas
#		}
#		remove_idea_group = quantity_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = smithing_ideas
#		trigger = {
#			full_idea_group = smithing_ideas
#			NOT = {
#				OR = {
#					has_idea_group = waffenqualitat0
#					has_idea_group = armour_quality_ideas
#				}
#			}
#		}
#		remove_idea_group = smithing_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = waffenqualitat0
#		trigger = {
#			full_idea_group = waffenqualitat0
#		}
#		remove_idea_group = waffenqualitat0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = armour_quality_ideas
#		trigger = {
#			full_idea_group = armour_quality_ideas
#		}
#		remove_idea_group = armour_quality_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = conjuration_ideas
#		trigger = {
#			full_idea_group = conjuration_ideas
#			NOT = {
#				OR = {
#					has_idea_group = summoning_ideas
#					has_idea_group = necromacy_ideas
#				}
#			}
#		}
#		remove_idea_group = conjuration_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = summoning_ideas
#		trigger = {
#			full_idea_group = summoning_ideas
#		}
#		remove_idea_group = summoning_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = necromacy_ideas
#		trigger = {
#			full_idea_group = necromacy_ideas
#		}
#		remove_idea_group = necromacy_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = mobility_ideas
#		trigger = {
#			full_idea_group = mobility_ideas
#			NOT = {
#				OR = {
#					has_idea_group = stehendesheer0
#					has_idea_group = soldnerheer0
#				}
#			}
#		}
#		remove_idea_group = mobility_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = stehendesheer0
#		trigger = {
#			full_idea_group = stehendesheer0
#		}
#		remove_idea_group = stehendesheer0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = soldnerheer0
#		trigger = {
#			full_idea_group = soldnerheer0
#		}
#		remove_idea_group = soldnerheer0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = generalstab0
#		trigger = {
#			full_idea_group = generalstab0
#			NOT = {
#				OR = {
#					has_idea_group = offensive_ideas
#					has_idea_group = defensive_ideas
#				}
#			}
#		}
#		remove_idea_group = generalstab0
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = offensive_ideas
#		trigger = {
#			full_idea_group = offensive_ideas
#		}
#		remove_idea_group = offensive_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	option = {
#		name = defensive_ideas
#		trigger = {
#			full_idea_group = defensive_ideas
#		}
#		remove_idea_group = defensive_ideas
#		country_event = {
#			id = es_ideas.3
#		}
#	}
#	
#	#ADM
#	#administrative_ideas
#	#zentra0
#	#dezentra0
#	#economic_ideas
#	#expansion_ideas
#	#innovativeness_ideas
#	#mysticism_ideas
#	#religious_ideas
#	#humanist_ideas
#	#staatsverwaltung0
#	#monarchie0
#	#republik0
#	#aristo0
#	#horde0
#	#alteration_ideas
#	#alchemical_ideas
#	#transmutation_ideas
#	#justiz0
#	#aristocracy_ideas
#	#plutocracy_ideas
#	##DIP
#	#maritime_ideas
#	#galle0
#	#handel0
#	#gross0
#	#diplomatic_ideas
#	#spy_ideas
#	#influence_ideas
#	#trade_ideas
#	#naval_ideas
#	#flottenbasis0
#	#exploration_ideas
#	#kolonialimperium0
#	#imperialismus0
#	#illusion_ideas
#	#gesellschaft0
#	#propaganda0
#	#enchanting_ideas
#	#arcane_ideas
#	#soul_siphon_ideas
#	##MIL
#	#destruction_ideas
#	#fire0
#	#shock0
#	#restoration_ideas
#	#quality_ideas
#	#quantity_ideas
#	#smithing_ideas
#	#waffenqualitat0
#	#armour_quality_ideas
#	#conjuration_ideas
#	#summoning_ideas
#	#necromacy_ideas
#	#mobility_ideas
#	#stehendesheer0
#	#soldnerheer0
#	#generalstab0
#	#offensive_ideas
#	#defensive_ideas
#}
#
#country_event = {
#	id = es_ideas.1
#	title = es_ideas.1.t
#	desc = es_ideas.1.d
#	
#	is_triggered_only = yes
#	
#	option = {
#		name = es_ideas.0.a
#	}
#	
#	#ADM
#	option = {
#		name = administrative_ideas
#		trigger = {
#			NOT = {
#				has_idea_group = administrative_ideas
#			}
#		}
#		add_idea_group = administrative_ideas
#		add_idea = organised_mercenary_payment
#		add_idea = adaptability
#		add_idea = benefits_for_mercenaries
#		add_idea = bookkeeping
#		add_idea = organised_mercenary_recruitment
#		add_idea = administrative_efficiency_idea
#		add_idea = civil_servants
#	}
#	option = {
#		name = zentra0
#		trigger = {
#			has_idea_group = administrative_ideas
#			NOT = { has_idea_group = zentra0 }	
#			NOT = { has_idea_group = dezentra0 }	
#		}
#		
#		add_idea_group = zentra0
#		add_idea = zentra1
#		add_idea = zentra2
#		add_idea = zentra3
#		add_idea = zentra4
#		add_idea = zentra5
#		add_idea = zentra6
#		add_idea = zentra7
#	}
#	option = {
#		name = dezentra0
#		trigger = {
#			has_idea_group = administrative_ideas
#			NOT = { has_idea_group = zentra0 }	
#			NOT = { has_idea_group = dezentra0 }	
#		}
#		
#		add_idea_group = dezentra0
#		add_idea = dezentra1
#		add_idea = dezentra2
#		add_idea = dezentra3
#		add_idea = dezentra4
#		add_idea = dezentra5
#		add_idea = dezentra6
#		add_idea = dezentra7
#	}
#	option = {
#		name = economic_ideas
#		trigger = {
#			NOT = { has_idea_group = economic_ideas }
#		}
#		
#		add_idea_group = economic_ideas
#		add_idea = bureaucracy
#		add_idea = organised_construction
#		add_idea = national_bank
#		add_idea = debt_and_loans
#		add_idea = centralization
#		add_idea = nationalistic_enthusiasm
#		add_idea = smithian_economics
#	}
#	option = {
#		name = expansion_ideas
#		trigger = {	
#			has_idea_group = economic_ideas
#			NOT = { has_idea_group = innovativeness_ideas }	
#			NOT = { has_idea_group = expansion_ideas }
#		}
#		
#		add_idea_group = expansion_ideas
#		add_idea = additional_colonists
#		add_idea = additional_merchants
#		add_idea = faster_colonists
#		add_idea = factories
#		add_idea = additional_diplomats
#		add_idea = general_colonization_law
#		add_idea = competetive_merchants
#	}
#	option = {
#		name = innovativeness_ideas
#		trigger = {	
#			has_idea_group = economic_ideas
#			NOT = { has_idea_group = innovativeness_ideas }	
#			NOT = { has_idea_group = expansion_ideas }
#		}
#		
#		add_idea_group = innovativeness_ideas
#		add_idea = patron_of_art
#		add_idea = empiricism
#		add_idea = scientific_revolution
#		add_idea = dynamic_court
#		add_idea = print_culture
#		add_idea = optimism
#		add_idea = formalized_officer_corps
#	}
#	option = {
#		name = mysticism_ideas
#		trigger = {
#			NOT = { has_idea_group = mysticism_ideas }
#		}
#		
#		add_idea_group = mysticism_ideas
#		add_idea = follow_traditions
#		add_idea = the_old_ways
#		add_idea = the_unenlightned
#		add_idea = secure_traditions
#		add_idea = a_tame_society
#		add_idea = educated_preachers
#		add_idea = a_humble_life
#	}
#	option = {
#		name = religious_ideas
#		trigger = {
#			has_idea_group = mysticism_ideas
#			NOT = { has_idea_group = religious_ideas }	
#			NOT = { has_idea_group = humanist_ideas }	
#		}
#		
#		add_idea_group = religious_ideas
#		add_idea = missionary_schools
#		add_idea = church_attendance_duty
#		add_idea = divine_supremacy
#		add_idea = devoutness
#		add_idea = religious_tradition
#		add_idea = inquisition
#		add_idea = deus_vult
#	}
#	option = {
#		name = humanist_ideas
#		trigger = {
#			has_idea_group = mysticism_ideas
#			NOT = { has_idea_group = religious_ideas }	
#			NOT = { has_idea_group = humanist_ideas }
#		}
#		
#		add_idea_group = humanist_ideas
#		add_idea = tolerance_idea
#		add_idea = local_traditions
#		add_idea = ecumenism
#		add_idea = indirect_rule
#		add_idea = cultural_ties 
#		add_idea = benevolence
#		add_idea = humanist_tolerance
#	}
#	option = {
#		name = staatsverwaltung0
#		trigger = {
#			NOT = { has_idea_group = staatsverwaltung0 }
#		}
#		
#		add_idea_group = staatsverwaltung0
#		add_idea = staatsverwaltung1
#		add_idea = staatsverwaltung2
#		add_idea = staatsverwaltung3
#		add_idea = staatsverwaltung4
#		add_idea = staatsverwaltung5
#		add_idea = staatsverwaltung6
#		add_idea = staatsverwaltung7
#	}
#	option = {
#		name = monarchie0
#		trigger = {
#			has_idea_group = staatsverwaltung0
#			government = monarchy
#			NOT = { has_idea_group = monarchie0 }
#		}
#		
#		add_idea_group = monarchie0
#		add_idea = monarchie1
#		add_idea = monarchie2
#		add_idea = monarchie3
#		add_idea = monarchie4
#		add_idea = monarchie5
#		add_idea = monarchie6
#		add_idea = monarchie7
#	}
#	option = {
#		name = republik0
#		trigger = {
#			NOT = { has_idea_group = republik0 }
#			has_idea_group = staatsverwaltung0
#			government = republic
#		}
#		
#		add_idea_group = republik0
#		add_idea = republik1
#		add_idea = republik2
#		add_idea = republik3
#		add_idea = republik4
#		add_idea = republik5
#		add_idea = republik6
#		add_idea = republik7
#	}
#	option = {
#		name = aristo0
#		trigger = {
#			NOT = { has_idea_group = aristo0 }
#			has_idea_group = staatsverwaltung0
#			government = theocracy
#		}
#		
#		add_idea_group = aristo0
#		add_idea = aristo1
#		add_idea = aristo2
#		add_idea = aristo3
#		add_idea = aristo4
#		add_idea = aristo5
#		add_idea = aristo6
#		add_idea = aristo7
#	}
#	option = {
#		name = horde0
#		trigger = {
#			NOT = { has_idea_group = aristo0 }
#			has_idea_group = staatsverwaltung0
#			is_nomad = yes
#		}
#		
#		add_idea_group = horde0
#		add_idea = horde1
#		add_idea = horde2
#		add_idea = horde3
#		add_idea = horde4
#		add_idea = horde5
#		add_idea = horde6
#		add_idea = horde7
#	}
#	option = {
#		name = alteration_ideas
#		trigger = {
#			NOT = { has_idea_group = alteration_ideas }
#		}
#		
#		add_idea_group = alteration_ideas
#		add_idea = mage_armor
#		add_idea = atronach
#		add_idea = detect_entities
#		add_idea = transmutation
#		add_idea = telekinesis
#		add_idea = enhance_adaptability
#		add_idea = magic_powered_lamps
#	}
#	option = {
#		name = alchemical_ideas
#		trigger = {
#			NOT = { has_idea_group = alchemical_ideas }
#			has_idea_group = alteration_ideas
#			NOT = { has_idea_group = transmutation_ideas }	
#		}
#		
#		add_idea_group = alchemical_ideas
#		add_idea = physician
#		add_idea = posioners
#		add_idea = benefactor
#		add_idea = experimenter
#		add_idea = green_thumb
#		add_idea = snakeblood
#		add_idea = purity
#	}
#	option = {
#		name = transmutation_ideas
#		trigger = {
#			NOT = { has_idea_group = transmutation_ideas }
#			has_idea_group = alteration_ideas
#			NOT = { has_idea_group = alchemical_ideas }	
#		}
#		
#		add_idea_group = transmutation_ideas
#		add_idea = midas_touch
#		add_idea = wandering_transmutators
#		add_idea = manipulate_materials
#		add_idea = alterate_infrastructure
#		add_idea = regulate_gold_transmutation
#		add_idea = reshape_environment
#		add_idea = transmutation_factories
#	}
#	option = {
#		name = justiz0
#		trigger = {
#			NOT = { has_idea_group = justiz0 }
#		}
#		
#		add_idea_group = justiz0
#		add_idea = justiz1
#		add_idea = justiz2
#		add_idea = justiz3
#		add_idea = justiz4
#		add_idea = justiz5
#		add_idea = justiz6
#		add_idea = justiz7
#	}
#	option = {
#		name = aristocracy_ideas
#		trigger = {
#			has_idea_group = justiz0
#			NOT = { has_idea_group = plutocracy_ideas }	
#			NOT = { has_idea_group = aristocracy_ideas }
#		}
#		
#		add_idea_group = aristocracy_ideas
#		add_idea = noble_knights
#		add_idea = military_traditions
#		add_idea = local_nobility
#		add_idea = serfdom
#		add_idea = noble_officers
#		add_idea = international_nobility
#		add_idea = noble_resilience
#	}
#	option = {
#		name = plutocracy_ideas
#		trigger = {
#			has_idea_group = plutocracy_ideas
#			NOT = { has_idea_group = plutocracy_ideas }	
#			NOT = { has_idea_group = aristocracy_ideas }	
#		}
#		
#		add_idea_group = plutocracy_ideas
#		add_idea = tradition_of_payment
#		add_idea = abolished_serfdom
#		add_idea = bill_of_rights
#		add_idea = free_merchants
#		add_idea = free_subjects
#		add_idea = free_cities
#		add_idea = emancipation
#	}
#}
#
#country_event = {
#	id = es_ideas.2
#	title = es_ideas.2.t
#	desc = es_ideas.2.d
#	
#	is_triggered_only = yes
#	
#	option = {
#		name = es_ideas.0.a
#	}
#	
#	#DIP
#	option = {
#		name = maritime_ideas
#		trigger = {
#			NOT = { has_idea_group = maritime_ideas }
#		}
#		
#		add_idea_group = maritime_ideas
#		add_idea = sea_hawks
#		add_idea = merchant_marine
#		add_idea = sheltered_ports
#		add_idea = grand_navy
#		add_idea = ships_penny
#		add_idea = excellent_shipwrights
#		add_idea = naval_fighting_instruction
#	}
#	option = {
#		name = galle0
#		trigger = {
#			primitives = no
#			has_idea_group = maritime_ideas
#			NOT = { has_idea_group = handel0 }
#			NOT = { has_idea_group = gross0 }
#			NOT = { has_idea_group = galle0 }
#		}
#		
#		add_idea_group = galle0
#		add_idea = galle1
#		add_idea = galle2
#		add_idea = galle3
#		add_idea = galle4
#		add_idea = galle5
#		add_idea = galle6
#		add_idea = galle7
#	}
#	option = {
#		name = handel0
#		trigger = {
#			primitives = no
#			has_idea_group = maritime_ideas
#			NOT = { has_idea_group = handel0 }
#			NOT = { has_idea_group = gross0 }
#			NOT = { has_idea_group = galle0 }
#		}
#		
#		add_idea_group = handel0
#		add_idea = hande11
#		add_idea = hande12
#		add_idea = hande13
#		add_idea = hande14
#		add_idea = hande15
#		add_idea = hande16
#		add_idea = hande17
#	}
#	option = {
#		name = gross0
#		trigger = {
#			primitives = no
#			has_idea_group = maritime_ideas
#			NOT = { has_idea_group = handel0 }
#			NOT = { has_idea_group = gross0 }
#			NOT = { has_idea_group = galle0 }
#		}
#		
#		add_idea_group = gross0
#		add_idea = gross1
#		add_idea = gross2
#		add_idea = gross3
#		add_idea = gross4
#		add_idea = gross5
#		add_idea = gross6
#		add_idea = gross7
#	}
#	option = {
#		name = diplomatic_ideas
#		trigger = {
#			NOT = { has_idea_group = diplomatic_ideas }
#		}
#		
#		add_idea_group = diplomatic_ideas
#		add_idea = foreign_embassies
#		add_idea = cabinet
#		add_idea = war_cabinet
#		add_idea = benign_diplomats
#		add_idea = experienced_diplomats
#		add_idea = flexible_negotiation
#		add_idea = diplomatic_corps
#	}
#	option = {
#		name = spy_ideas
#		trigger = {
#			has_idea_group = diplomatic_ideas
#			NOT = { has_idea_group = influence_ideas }
#			NOT = { has_idea_group = spy_ideas }
#		}
#		
#		add_idea_group = spy_ideas
#		add_idea = efficient_spies
#		add_idea = agent_training
#		add_idea = vetting
#		add_idea = additional_loyalist_recruitment
#		add_idea = claim_fabrication
#		add_idea = privateers
#		add_idea = audit_checks
#	}
#	option = {
#		name = influence_ideas
#		trigger = {
#			has_idea_group = diplomatic_ideas
#			NOT = { has_idea_group = influence_ideas }
#			NOT = { has_idea_group = spy_ideas }
#		}
#		
#		add_idea_group = influence_ideas
#		add_idea = tribute_system
#		add_idea = establish_cadet_branches
#		add_idea = integrated_elites
#		add_idea = state_propaganda
#		add_idea = diplomatic_influence
#		add_idea = postal_service
#		add_idea = marcher_lords
#	}
#	option = {
#		name = trade_ideas
#		trigger = {
#			NOT = { has_idea_group = trade_ideas }
#		}
#		
#		add_idea_group = trade_ideas
#		add_idea = shrewd_commerce_practise
#		add_idea = free_trade
#		add_idea = merchant_adventures
#		add_idea = national_trade_policy
#		add_idea = overseas_merchants
#		add_idea = trade_manipulation
#		add_idea = fast_negotiations
#	}
#	option = {
#		name = naval_ideas
#		trigger = {
#			has_idea_group = trade_ideas
#			NOT = { has_idea_group = flottenbasis0 }
#			NOT = { has_idea_group = naval_ideas }
#		}
#		
#		add_idea_group = naval_ideas
#		add_idea = boarding_parties
#		add_idea = improved_rams
#		add_idea = naval_cadets
#		add_idea = naval_glory
#		add_idea = press_gangs
#		add_idea = oak_forests_for_ships
#		add_idea = superior_seamanship
#	}
#	option = {
#		name = flottenbasis0
#		trigger = {
#			has_idea_group = trade_ideas
#			NOT = { has_idea_group = flottenbasis0 }
#			NOT = { has_idea_group = naval_ideas }
#		}
#		
#		add_idea_group = flottenbasis0
#		add_idea = flottenbasis1
#		add_idea = flottenbasis2
#		add_idea = flottenbasis3
#		add_idea = flottenbasis4
#		add_idea = flottenbasis5
#		add_idea = flottenbasis6
#		add_idea = flottenbasis7
#	}
#	option = {
#		name = exploration_ideas
#		trigger = {
#			NOT = { has_idea_group = exploration_ideas }
#		}
#		
#		add_idea_group = exploration_ideas
#		add_idea = quest_for_the_new_world
#		add_idea = colonial_ventures
#		add_idea = overseas_exploration
#		add_idea = land_of_opportunity 
#		add_idea = vice_roys
#		add_idea = free_colonies
#		add_idea = global_empire
#	}
#	option = {
#		name = kolonialimperium0
#		trigger = {
#			has_idea_group = exploration_ideas
#			NOT = { has_idea_group = imperialismus0 }
#			NOT = { has_idea_group = kolonialimperium0 }
#		}
#		
#		add_idea_group = kolonialimperium0
#		add_idea = kolonialimperium1
#		add_idea = kolonialimperium2
#		add_idea = kolonialimperium3
#		add_idea = kolonialimperium4
#		add_idea = kolonialimperium5
#		add_idea = kolonialimperium6
#		add_idea = kolonialimperium7
#	}
#	option = {
#		name = imperialismus0
#		trigger = {
#			has_idea_group = exploration_ideas
#			NOT = { has_idea_group = imperialismus0 }
#			NOT = { has_idea_group = kolonialimperium0 }
#		}
#		
#		add_idea_group = imperialismus0
#		add_idea = imperialismus1
#		add_idea = imperialismus2
#		add_idea = imperialismus3
#		add_idea = imperialismus4
#		add_idea = imperialismus5
#		add_idea = imperialismus6
#		add_idea = imperialismus7
#	}
#	option = {
#		name = illusion_ideas
#		trigger = {
#			NOT = { has_idea_group = illusion_ideas }
#		}
#		
#		add_idea_group = illusion_ideas
#		add_idea = invisibily
#		add_idea = instill_courage
#		add_idea = instill_calm
#		add_idea = instill_fear
#		add_idea = instill_frenzy
#		add_idea = pacify
#		add_idea = clairvoyance
#	}
#	option = {
#		name = gesellschaft0
#		trigger = {
#			has_idea_group = illusion_ideas
#			NOT = { has_idea_group = propaganda0 }
#			NOT = { has_idea_group = gesellschaft0 }
#		}
#		
#		add_idea_group = gesellschaft0
#		add_idea = gesellschaft1
#		add_idea = gesellschaft2
#		add_idea = gesellschaft3
#		add_idea = gesellschaft4
#		add_idea = gesellschaft5
#		add_idea = gesellschaft6
#		add_idea = gesellschaft7
#	}
#	option = {
#		name = propaganda0
#		trigger = {
#			has_idea_group = illusion_ideas
#			NOT = { has_idea_group = propaganda0 }
#			NOT = { has_idea_group = gesellschaft0 }
#		}
#		
#		add_idea_group = propaganda0
#		add_idea = propaganda1
#		add_idea = propaganda2
#		add_idea = propaganda3
#		add_idea = propaganda4
#		add_idea = propaganda5
#		add_idea = propaganda6
#		add_idea = propaganda7
#	}
#	option = {
#		name = enchanting_ideas
#		trigger = {
#			NOT = { has_idea_group = enchanting_ideas }
#		}
#		
#		add_idea_group = enchanting_ideas
#		add_idea = royal_artifacts
#		add_idea = enchanted_infrastructure
#		add_idea = animated_services
#		add_idea = enchanted_tools
#		add_idea = enchanted_weaponary
#		add_idea = grand_artifacts
#		add_idea = trading_enchanted_items
#	}
#	option = {
#		name = arcane_ideas
#		trigger = {
#			has_idea_group = enchanting_ideas
#			NOT = { has_idea_group = soul_siphon_ideas }
#			NOT = { has_idea_group = arcane_ideas }
#		}
#		
#		add_idea_group = arcane_ideas
#		add_idea = apprentice_arcanist
#		add_idea = court_mages
#		add_idea = arcane_enchanters
#		add_idea = evoker_mages
#		add_idea = the_mystic_archives
#		add_idea = the_orrery_observatoriums
#		add_idea = the_archmage
#	}
#	option = {
#		name = soul_siphon_ideas
#		trigger = {
#			has_idea_group = enchanting_ideas
#			NOT = { has_idea_group = soul_siphon_ideas }
#			NOT = { has_idea_group = arcane_ideas }
#		}
#		
#		add_idea_group = soul_siphon_ideas
#		add_idea = petty_soulgems
#		add_idea = lesser_soulgems
#		add_idea = common_soulgems
#		add_idea = greater_soul_gems
#		add_idea = grand_soul_gems
#		add_idea = black_soul_gems
#		add_idea = azuras_star
#	}
#}
#
#country_event = {
#	id = es_ideas.3
#	title = es_ideas.3.t
#	desc = es_ideas.3.d
#	
#	is_triggered_only = yes
#	
#	option = {
#		name = es_ideas.0.a
#	}
#	
#	#MIL
#	option = {
#		name = destruction_ideas
#		trigger = {
#			NOT = { has_idea_group = destruction_ideas }
#		}	
#		
#		add_idea_group = destruction_ideas
#		add_idea = elite_battlemages
#		add_idea = incineration
#		add_idea = mage_admirals
#		add_idea = ice_balistas
#		add_idea = storm_conjuration
#		add_idea = unimpeded_mages
#		add_idea = destroy_the_dissidents
#	}
#	option = {
#		name = fire0
#		trigger = {
#			has_idea_group = destruction_ideas
#			NOT = { has_idea_group = shock0 }
#			NOT = { has_idea_group = fire0 }
#		}
#		
#		add_idea_group = fire0
#		add_idea = fire1
#		add_idea = fire2
#		add_idea = fire3
#		add_idea = fire4
#		add_idea = fire5
#		add_idea = fire6
#		add_idea = fire7
#	}
#	option = {
#		name = shock0
#		trigger = {
#			has_idea_group = destruction_ideas
#			NOT = { has_idea_group = shock0 }
#			NOT = { has_idea_group = fire0 }
#		}
#		
#		add_idea_group = shock0
#		add_idea = shock1
#		add_idea = shock2
#		add_idea = shock3
#		add_idea = shock4
#		add_idea = shock5
#		add_idea = shock6
#		add_idea = shock7
#	}
#	option = {
#		name = restoration_ideas
#		trigger = {
#			NOT = { has_idea_group = restoration_ideas }
#		}
#		
#		add_idea_group = restoration_ideas
#		add_idea = dedicated_healers
#		add_idea = grand_healing
#		add_idea = auxiliary_healers 
#		add_idea = benevolent_healers
#		add_idea = heal_the_civilians
#		add_idea = greater_wards
#		add_idea = restorative_court_mages 
#	}
#	option = {
#		name = quality_ideas
#		trigger = {
#			has_idea_group = restoration_ideas
#			NOT = { has_idea_group = quantity_ideas }
#			NOT = { has_idea_group = quality_ideas }
#		}
#		
#		add_idea_group = quality_ideas
#		add_idea = private_to_marshal
#		add_idea = quality_education
#		add_idea = finest_of_horses
#		add_idea = escort_ships
#		add_idea = naval_drill
#		add_idea = copper_bottoms
#		add_idea = massed_battery
#	}
#	option = {
#		name = quantity_ideas
#		trigger = {
#			has_idea_group = restoration_ideas
#			NOT = { has_idea_group = quantity_ideas }
#			NOT = { has_idea_group = quality_ideas }
#		}
#		
#		add_idea_group = quantity_ideas
#		add_idea = mass_army
#		add_idea = the_young_can_serve
#		add_idea = enforced_service
#		add_idea = the_old_and_infirm
#		add_idea = mercenary_contracts
#		add_idea = garrison_conscription
#		add_idea = expanded_supply_trains
#	}
#	option = {
#		name = smithing_ideas
#		trigger = {
#			NOT = { has_idea_group = smithing_ideas }
#		}
#		
#		add_idea_group = smithing_ideas
#		add_idea = dragonbone_armor
#		add_idea = dragonbone_shields
#		add_idea = dragonbone_weapons
#		add_idea = dragonbone_bows
#		add_idea = arms_factories
#		add_idea = battle_smiths
#		add_idea = well_equiped_guards
#	}
#	option = {
#		name = waffenqualitat0
#		trigger = {
#			has_idea_group = smithing_ideas
#			NOT = { has_idea_group = armour_quality_ideas }
#			NOT = { has_idea_group = waffenqualitat0 }
#		}
#		
#		add_idea_group = waffenqualitat0
#		add_idea = waffenqualitat1
#		add_idea = waffenqualitat2
#		add_idea = waffenqualitat3
#		add_idea = waffenqualitat4
#		add_idea = waffenqualitat5
#		add_idea = waffenqualitat6
#		add_idea = waffenqualitat7
#	}
#	option = {
#		name = armour_quality_ideas
#		trigger = {
#			has_idea_group = smithing_ideas
#			NOT = { has_idea_group = armour_quality_ideas }
#			NOT = { has_idea_group = waffenqualitat0 }
#		}
#		
#		add_idea_group = armour_quality_ideas
#		add_idea = shining_armors
#		add_idea = a_pristine_armada
#		add_idea = royal_marines
#		add_idea = standarized_armor_sets
#		add_idea = impenetrable_armors
#		add_idea = quality_materials
#		add_idea = well_equiped_troops
#	}
#	option = {
#		name = conjuration_ideas
#		trigger = {
#			NOT = { has_idea_group = conjuration_ideas }
#		}
#		
#		add_idea_group = conjuration_ideas
#		add_idea = bound_weapons
#		add_idea = soul_traping
#		add_idea = daedric_conjuring
#		add_idea = summon_shaft
#		add_idea = conjurers_army
#		add_idea = master_conjuration
#		add_idea = animated_sentries
#	}
#	option = {
#		name = summoning_ideas
#		trigger = {
#			has_idea_group = conjuration_ideas
#			NOT = { has_idea_group = necromacy_ideas }
#			NOT = { has_idea_group = summoning_ideas }
#		}
#	
#		add_idea_group = summoning_ideas
#		add_idea = summon_dremora_lords
#		add_idea = summon_dremora_generals
#		add_idea = unleash_dregoths
#		add_idea = summon_sentries
#		add_idea = summon_servants
#		add_idea = atronach_shock_troops
#		add_idea = counter_summoning
#	}
#	option = {
#		name = necromacy_ideas
#		trigger = {
#			has_idea_group = conjuration_ideas
#			NOT = { has_idea_group = necromacy_ideas }
#			NOT = { has_idea_group = summoning_ideas }
#		}
#		
#		add_idea_group = necromacy_ideas
#		add_idea = army_of_the_dead
#		add_idea = the_dead_do_not_suffer
#		add_idea = skeletal_body_guards
#		add_idea = state_sanctioned_necromancy
#		add_idea = recycle_our_dead
#		add_idea = the_dead_feel_no_fear
#		add_idea = relentless_undead
#	}
#	option = {
#		name = mobility_ideas
#		trigger = {
#			NOT = { has_idea_group = mobility_ideas }
#		}
#		
#		add_idea_group = mobility_ideas
#		add_idea = athletics
#		add_idea = acrobatics
#		add_idea = sneak
#		add_idea = master_acrobats
#		add_idea = master_athletics
#		add_idea = deft_riders
#		add_idea = deft_hands
#	}
#	option = {
#		name = stehendesheer0
#		trigger = {
#			has_idea_group = mobility_ideas
#			NOT = { has_idea_group = soldnerheer0 }
#			NOT = { has_idea_group = stehendesheer0 }
#		}
#	
#		add_idea_group = stehendesheer0
#		add_idea = stehendesheer1
#		add_idea = stehendesheer2
#		add_idea = stehendesheer3
#		add_idea = stehendesheer4
#		add_idea = stehendesheer5
#		add_idea = stehendesheer6
#		add_idea = stehendesheer7
#	}
#	option = {
#		name = soldnerheer0
#		trigger = {
#			has_idea_group = mobility_ideas
#			NOT = { has_idea_group = soldnerheer0 }
#			NOT = { has_idea_group = stehendesheer0 }
#		}
#		
#		add_idea_group = soldnerheer0
#		add_idea = soldnerheer1
#		add_idea = soldnerheer2
#		add_idea = soldnerheer3
#		add_idea = soldnerheer4
#		add_idea = soldnerheer5
#		add_idea = soldnerheer6
#		add_idea = soldnerheer7
#	}
#	option = {
#		name = generalstab0
#		trigger = {
#			NOT = { has_idea_group = generalstab0 }
#		}
#		
#		add_idea_group = generalstab0
#		add_idea = generalstab1
#		add_idea = generalstab2
#		add_idea = generalstab3
#		add_idea = generalstab4
#		add_idea = generalstab5
#		add_idea = generalstab6
#		add_idea = generalstab7
#	}
#	option = {
#		name = offensive_ideas
#		trigger = {
#			has_idea_group = generalstab0
#			NOT = { has_idea_group = defensive_ideas }
#			NOT = { has_idea_group = offensive_ideas }
#		}
#		
#		add_idea_group = offensive_ideas
#		add_idea = bayonet_leaders
#		add_idea = national_conscripts
#		add_idea = superior_firepower
#		add_idea = glorious_arms
#		add_idea = engineer_corps
#		add_idea = grand_army
#		add_idea = napoleonic_warfare
#	}
#	option = {
#		name = defensive_ideas
#		trigger = {
#			has_idea_group = generalstab0
#			NOT = { has_idea_group = defensive_ideas }
#			NOT = { has_idea_group = offensive_ideas }
#		}
#		
#		add_idea_group = defensive_ideas
#		add_idea = battlefield_commisions
#		add_idea = military_drill
#		add_idea = improved_manuever
#		add_idea = regimental_system
#		add_idea = defensive_mentality
#		add_idea = supply_trains
#		add_idea = improved_foraging
#	}
#}