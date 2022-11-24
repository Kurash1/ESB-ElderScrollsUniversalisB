### Knightly Orders ###

defineloc host_of_the_horn = "Host of the Horn"
host_of_the_horn = {
	regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@Lainlyn
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = yokudo_redguard_cg
		owns = p@Lainlyn
		p@Lainlyn = {
			has_province_flag = host_of_the_horn
		}
	}
	modifier = { 
	    shock_damage = 10%
	}
}

defineloc knights_of_the_dragon_company = "Knights of the Dragon"
knights_of_the_dragon_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@Daggerfall
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = half_blood_cg
		owns = p@Daggerfall
		p@Daggerfall = {
			has_province_flag = knights_of_the_dragon_company
		}
	}
	modifier = { 
	    land_morale = 20%
	}
}

defineloc knights_of_the_flame_company = "Knights of the Flame"
knights_of_the_flame_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@anticlere
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = half_blood_cg
		owns = p@anticlere
		p@anticlere = {
			has_province_flag = knights_of_the_flame_company
		}
	}
	modifier = { 
	    fire_damage = 10%
	}
}

defineloc knights_of_the_hawk_company = "Knights of the Hawk"
knights_of_the_hawk_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@santaki
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { redguard_sprite_pack }
    trigger = {
		culture_group = yokudo_redguard_cg
		owns = p@santaki
		p@santaki = {
			has_province_flag = knights_of_the_hawk_company
		}
	}
	modifier = { 
	    movement_speed = 25%
		land_morale = 10%
	}
}

defineloc knights_of_the_owl_company = "Knights of the Owl"
knights_of_the_owl_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@glenpoint
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = half_blood_cg
		owns = p@glenpoint
		p@glenpoint = {
			has_province_flag = knights_of_the_owl_company
		}
	}
	modifier = { 
	    discipline = 5%
		land_morale = 10%
	}
}

defineloc knights_of_the_rose_company = "Knights of the Wayrest"
knights_of_the_rose_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@wayrest
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = half_blood_cg
		owns = p@wayrest
		p@wayrest = {
			has_province_flag = knights_of_the_rose_company
		}
	}
	modifier = { 
	    shock_damage = 5%
		land_morale = 10%
	}
}

defineloc knights_of_the_wheel_company = "Knights of the Wheel"
knights_of_the_wheel_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@abibon-gora
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { redguard_sprite_pack }
    trigger = {
		culture_group = yokudo_redguard_cg
		owns = p@abibon-gora
		p@abibon-gora = {
			has_province_flag = knights_of_the_wheel_company
		}
	}
	modifier = { 
	    shock_damage = 5%
		movement_speed = 10%
	}
}

defineloc knights_of_the_candle_company = "Order of the Candle"
knights_of_the_candle_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@sentinel
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { redguard_sprite_pack }
    trigger = {
		culture_group = yokudo_redguard_cg
		owns = p@sentinel
		p@sentinel = {
			has_province_flag = knights_of_the_candle_company
		}
	}
	modifier = { 
	    land_morale = 15%
		discipline = 5%
	}
}

defineloc knights_of_the_raven_company = "Order of the Raven"
knights_of_the_raven_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@dwynnen
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { breton_sprite_pack }
    trigger = {
		culture_group = half_blood_cg
		owns = p@dwynnen
		p@dwynnen = {
			has_province_flag = knights_of_the_raven_company
		}
	}
	modifier = { 
		movement_speed = 10%
		land_morale = 10%
	}
}

defineloc knights_of_the_scarab_company = "Order of the Scarab"
knights_of_the_scarab_company = {
    regiments_per_development = 7.5%
	cost_modifier = 75%
    home_province = p@totambu
	cavalry_weight = 25%
	artillery_weight = 15%
	sprites = { redguard_sprite_pack }
    trigger = {
		culture_group = yokudo_redguard_cg
		owns = p@totambu
		p@totambu = {
			has_province_flag = knights_of_the_scarab_company
		}
	}
	modifier = { 
	    shock_damage_received = -7.5%
		fire_damage_received = -7.5%
	}
}
