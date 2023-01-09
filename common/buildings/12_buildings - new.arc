defineloc building_keep = "Fort"
defineloc building_keep_desc = "§OCan be built by anyone§!"
keep = {
	cost = 200
	time = 12
	modifier = {
		fort_level = 2
	}
	build_trigger = {
		NOT = { 
			AND = {
				has_building = castle 
				has_building = fortress
			}
		}
	}
	influencing_fort = yes
	
	ai_will_do = {
		factor = 1
	}
}
defineloc building_castle = "Castle"
defineloc building_castle_desc = "§OCan be built by anyone§!"
castle = {
	make_obsolete = keep
	cost = 400
	time = 12
	modifier = {
		fort_level = 4
		local_fort_maintenance_modifier = 1.0
	}
	
	influencing_fort = yes
	
	ai_will_do = {
		factor = 1
		modifier = {
			factor = 5
			is_capital = yes		
		}
	}
}
defineloc building_fortress = "Fortress"
defineloc building_fortress_desc = "§ORequires Defensive Ideas§!"
fortress = {
	make_obsolete = castle
	cost = 600
	time = 12
	modifier = {
		fort_level = 4
		local_defensiveness = 1.0
		local_fort_maintenance_modifier = 2.0
	}
	influencing_fort = yes
	
	ai_will_do = {
		factor = 1
		modifier = {
			factor = 5
			is_capital = yes		
		}
	}
}

shrine = {
	cost = 100
	time = 12
	modifier = {
		local_tax_modifier = 0.2
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1			
	}
}	

esb_temple = {
	make_obsolete = shrine
	cost = 100
	time = 12
	modifier = {
		local_tax_modifier = 0.5
	}
	build_trigger = {
		FROM = {
			OR = {
				full_idea_group = religious_ideas
				full_idea_group = aristo0
			}
		}
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1			
	}
}	
esb_cathedral = {
	make_obsolete = esb_temple
	cost = 100
	time = 12
	build_trigger = {
		FROM = {
			full_idea_group = religious_ideas
			full_idea_group = aristo0
		}
	}
	modifier = {
		local_tax_modifier = 1.0
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1			
	}
}	

market = {
	cost = 100
	time = 12
	modifier = {
		province_trade_power_modifier = 0.25	
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}
market_street = {
	make_obsolete = market
	cost = 100
	time = 12
	modifier = {
		province_trade_power_modifier = 0.5	
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}
trade_district = {
	make_obsolete = market_street
	cost = 100
	time = 12
	modifier = {
		province_trade_power_modifier = 1.0
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}

esbgarrison = {
	cost = 100
	time = 12
	modifier = {
		local_manpower_modifier = 0.25
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}

newbarracks = {
	make_obsolete = esbgarrison
	cost = 100
	time = 12
	modifier = {
		local_manpower_modifier = 0.50
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}

militarycamps = {
	cost = 100
	time = 12
	modifier = {
		local_manpower_modifier = 0.25
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}

pier = {
	cost = 100
	time = 12
	modifier = {
		local_sailors_modifier = 0.25
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}
docks = {
	make_obsolete = pier
	cost = 100
	time = 12
	modifier = {
		local_sailors_modifier = 0.50
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}
esbshipyard = {
	cost = 100
	time = 12
	modifier = {
		local_sailors_modifier = 0.25
	}
	
	on_built = { }
	on_destroyed = { }
	on_obsolete = { }
	
	ai_will_do = {
		factor = 1
	}
}