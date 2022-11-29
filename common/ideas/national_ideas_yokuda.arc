defineloc HDE_ideas = "High Desert Ideas"
defineloc HDE_ideas_start = "High Desert Traditions"
defineloc HDE_ideas_bonus = "High Desert Ambition"
HDE_ideas = {
	start = {
		land_morale = 0.15
		global_unrest = -2
	}
	bonus = {
		development_cost = -0.1
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
		discipline = 0.05
	}
	defineloc HDE_ideas_3 = "Frandar Hunding"
	defineloc HDE_ideas_3_desc = "in fact one of the most notable figure of Yokudan history Frandar Hunding was born in the interior part of the High Desert an area called Hunding"
	HDE_ideas_3 = {
		prestige = 1
	}
	defineloc HDE_ideas_4 = "Great Sandstone Architecture"
	defineloc HDE_ideas_4_desc = "before the great civil war High Desert was also known for its Great Sandstone Architecture, it’s great pyramids and block-cities were to be looked at with awe"
	HDE_ideas_4 = {
		build_cost = -0.2
		build_time = -0.2
	}
	defineloc HDE_ideas_5 = "Mystics of High Desert"
	defineloc HDE_ideas_5_desc = "Though of other note is the high esteem of the Mystics of High Desert"
	HDE_ideas_5 = {
		idea_cost = -0.1
	}
	defineloc HDE_ideas_6 = "Barrier Magic"
	defineloc HDE_ideas_6_desc = "The Mystics of High Desert are said to have been able to make massive barriers that could cover castles whole"
	HDE_ideas_6 = {
		defensiveness = 0.25
	}
	defineloc HDE_ideas_7 = "Teleportation Magic"
	defineloc HDE_ideas_7_desc = "The Mystics of High Desert are said to have been able to teleport across the wide wastes of the High Desert. "
	HDE_ideas_7 = {
		movement_speed = 0.1
		envoy_travel_time = -0.15
	}
}