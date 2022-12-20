using "common/great_projects/arc_monuments.class" as monument

foreach monument = {
	monument.id = {
		start = monument.start
		date = 54.01.01
		time = {
			months = 0
		}
		build_cost = monument.build_cost 
		can_be_moved = no
		move_days_per_unit_distance = 10
		starting_tier = 0
		type = monument
		build_trigger = {
			monument.trigger
			monument.build_trigger
		}
		on_built = {
			monument.on_built
		}
		on_destroyed = {
			monument.on_destroyed
		}
		can_use_modifiers_trigger = {
			monument.trigger
			monument.can_use_modifiers_trigger
		}
		can_upgrade_trigger = {
			monument.trigger
			monument.can_upgrade_trigger
		}
		keep_trigger = {
			monument.keep_trigger
		}
		tier_0 = { 
			upgrade_time = { months = 0 } 
			cost_to_upgrade = { factor = 0 } 
			province_modifiers = { } 
			area_modifier = { } 
			country_modifiers = { monument.tier_0_mod } 
			on_upgraded = { } 
		} 
		tier_1 = { 
			upgrade_time = { months = 120 } 
			cost_to_upgrade = { factor = 3000 } 
			province_modifiers = { monument.tier_1_provmod } 
			area_modifier = { } 
			country_modifiers = { monument.tier_1_mod } 
			on_upgraded = { } 
		} 
		tier_2 = { 
			upgrade_time = { months = 240 } 
			cost_to_upgrade = { factor = 7500 } 
			province_modifiers = { monument.tier_2_provmod } 
			area_modifier = { } 
			country_modifiers = { monument.tier_2_mod } 
			on_upgraded = { } 
		} 
		tier_3 = { 
			upgrade_time = { months = 360 } 
			cost_to_upgrade = { factor = 15000 } 
			province_modifiers = { monument.tier_3_provmod } 
			area_modifier = { } 
			country_modifiers = { monument.tier_3_mod } 
			on_upgraded = { } 
		} 
	}
}