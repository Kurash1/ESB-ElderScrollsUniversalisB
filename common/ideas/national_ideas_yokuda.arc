defineloc SEW_ideas = "Seawind Ideas"
defineloc SEW_ideas_start = "Seawind Traditions"
defineloc SEW_ideas_bonus = "Seawind Ambition"
SEW_ideas = {
	start = {
		trade_efficiency = 20%
		improve_relation_modifier = 25%
	}
	bonus = {
		naval_morale = 25%
	}
	trigger = {
		tag = SEW
	}
	free = yes
	
	defineloc SEW_ideas_1 = "Where Gold Flows"
	defineloc SEW_ideas_1_desc = "Seawind has been for long known as the economic hub of all Yokuda, it is said that all gold flows through Seawind at some point."
	SEW_ideas_1 = {
		global_tax_modifier = 10%
		production_efficiency = 10%
		trade_efficiency = 10%
	}
	defineloc SEW_ideas_2 = "The Edge of Powers"
	defineloc SEW_ideas_2_desc = "Seawind has been for long between many great powers, such as Taleskan, High Desert, and Totambu, but through clever diplomacy they have always managed to preserve their independance."
	SEW_ideas_2 = {
		diplomats = 1
		diplomatic_reputation = 1
	}
	defineloc SEW_ideas_3 = "Common-Rule"
	defineloc SEW_ideas_3_desc = "Seawind is one of the only republics of yokuda, ruled by the people who live there."
	SEW_ideas_3 = {
		republican_tradition = 0.5
	}
	defineloc SEW_ideas_4 = "Strict laws"
	defineloc SEW_ideas_4_desc = "The people of Seawind believe that strict laws and harsh punishments for breaking their laws is a must to make sure that a few elite do not hoard all the power."
	SEW_ideas_4 = {
		administrative_efficiency = 5%
		all_estate_influence_modifier = -10%
	}
	defineloc SEW_ideas_5 = "The State-City"
	defineloc SEW_ideas_5_desc = "While many people outside of Seawind might consider the entirety of Seawind a state, those within know that Seawind is nothing but the City."
	SEW_ideas_5 = {
		development_cost = -25%
		center_of_trade_upgrade_cost = -20%
	}
	defineloc SEW_ideas_6 = "Ra Gada"
	defineloc SEW_ideas_6_desc = "It is said that the First of the Ra Gada waves left from the port city of Arch, the Capital of Seawind"
	SEW_ideas_6 = {
		leader_naval_shock = 1
		leader_land_shock = 1
	}
	defineloc SEW_ideas_7 = "Arch"
	defineloc SEW_ideas_7_desc = "Arch the Capital of Seawind, and the port where all merchants flow through."
	SEW_ideas_7 = {
		great_project_upgrade_cost = -25%
	}
}
defineloc TAL_ideas = "Taleskani Ideas"
defineloc TAL_ideas_start = "Taleskani Traditions"
defineloc TAL_ideas_bonus = "Taleskani Ambition"
TAL_ideas = {
	start = {
		force_march_free = yes
		global_manpower_modifier = 10%
	}
	bonus = {
		defensiveness = 10%
	}
	trigger = {
		tag = TAL
	}
	free = yes
	
	defineloc TAL_ideas_1 = "Ally to the Emperor"
	defineloc TAL_ideas_1_desc = "Since the later periods of the War against the sinistral elves the Rulers of Taleskan have been allied to the Emperors in Totambu."
	TAL_ideas_1 = {
		monthly_favor_modifier = 25%
	}
	defineloc TAL_ideas_2 = "Highland Warriors"
	defineloc TAL_ideas_2_desc = "Taleskan is known for its Highland spearmen."
	TAL_ideas_2 = {
		infantry_power = 10%
	}
	defineloc TAL_ideas_3 = "Merchant Influences"
	defineloc TAL_ideas_3_desc = "Though the Taleskani people started out as Highland warriors, through the influence of the Merchants of the Zarthos sea the Taleskani have slowly become more like their neighbors in seawind."
	TAL_ideas_3 = {
		trade_efficiency = 15%
	}
	defineloc TAL_ideas_4 = "Years of Internal Strife"
	defineloc TAL_ideas_4_desc = "Taleskan has for very long been known for its many civil wars, and this has hardened its anti-rebel forces."
	TAL_ideas_4 = {
		global_rebel_suppression_efficiency = 50%
	}
	defineloc TAL_ideas_5 = "Many Ties"
	defineloc TAL_ideas_5_desc = "The Rulers of Taleskan have always placed an importance on diversifying their assets, by allying many other Families, Countries, or Mercenaries."
	TAL_ideas_5 = {
		diplomatic_reputation = 1.5
	}
	defineloc TAL_ideas_6 = "Rulers of Zarthos"
	defineloc TAL_ideas_6_desc = "It is no question in the current age that the Zarthos sea is firmly in the grasp of Taleskan."
	TAL_ideas_6 = {
		navy_morale = 10%
	}
	defineloc TAL_ideas_7 = "A City"
	defineloc TAL_ideas_7_desc = "Taleskan started as a people in the east, but now it is known as a city in the Zarthos."
	TAL_ideas_7 = {
		development_cost = -15%
	}
}
defineloc HDE_ideas = "High Desert Ideas"
defineloc HDE_ideas_start = "High Desert Traditions"
defineloc HDE_ideas_bonus = "High Desert Ambition"
HDE_ideas = {
	start = {
		land_morale = 15%
		global_unrest = -2
	}
	bonus = {
		development_cost = -10%
	}
	trigger = {
		tag = HDE
	}
	free = yes
	
	defineloc HDE_ideas_1 = "The High Desert"
	defineloc HDE_ideas_1_desc = "On the northwestern coast of the great Akos Kasaz, lies the High Desert named such for its hilly nature."
	HDE_ideas_1 = {
		hostile_attrition = 1
		max_hostile_attrition = 1
	}
	defineloc HDE_ideas_2 = "The Greatest Warriors"
	defineloc HDE_ideas_2_desc = "It is a harsh land where the people are trained to be the greatest of warriors of all Yokuda"
	HDE_ideas_2 = {
		discipline = 5%
	}
	defineloc HDE_ideas_3 = "Frandar Hunding"
	defineloc HDE_ideas_3_desc = "in fact one of the most notable figure of Yokudan history Frandar Hunding was born in the interior part of the High Desert an area called Hunding"
	HDE_ideas_3 = {
		prestige = 1
	}
	defineloc HDE_ideas_4 = "Great Sandstone Architecture"
	defineloc HDE_ideas_4_desc = "before the great civil war High Desert was also known for its Great Sandstone Architecture, it’s great pyramids and block-cities were to be looked at with awe"
	HDE_ideas_4 = {
		build_cost = -20%
		build_time = -20%
	}
	defineloc HDE_ideas_5 = "Mystics of High Desert"
	defineloc HDE_ideas_5_desc = "Though of other note is the high esteem of the Mystics of High Desert"
	HDE_ideas_5 = {
		idea_cost = -10%
	}
	defineloc HDE_ideas_6 = "Barrier Magic"
	defineloc HDE_ideas_6_desc = "The Mystics of High Desert are said to have been able to make massive barriers that could cover castles whole"
	HDE_ideas_6 = {
		defensiveness = 25%
	}
	defineloc HDE_ideas_7 = "Teleportation Magic"
	defineloc HDE_ideas_7_desc = "The Mystics of High Desert are said to have been able to teleport across the wide wastes of the High Desert. "
	HDE_ideas_7 = {
		movement_speed = 10%
		envoy_travel_time = -15%
	}
}