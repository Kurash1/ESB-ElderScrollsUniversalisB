using "common\great_projects\citymonuments.class" as monument

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
			upgrade_time = { months = monument.tier_0_upgrade_time }
			cost_to_upgrade = { factor = monument.tier_0_cost_to_upgrade }
			province_modifiers = { monument.tier_0_province_modifiers }
			area_modifier = { monument.tier_0_area_modifier }
			country_modifiers = { monument.tier_0_country_modifiers } 
			on_upgraded = { monument.tier_0_on_upgraded }
		}
		tier_1 = {
			upgrade_time = { months = monument.tier_1_upgrade_time }
			cost_to_upgrade = { factor = monument.tier_1_cost_to_upgrade }
			province_modifiers = { monument.tier_1_province_modifiers }
			area_modifier = { monument.tier_1_area_modifier }
			country_modifiers = { monument.tier_1_country_modifiers } 
			on_upgraded = { monument.tier_1_on_upgraded }
		}
		tier_2 = {
			upgrade_time = { months = monument.tier_2_upgrade_time }
			cost_to_upgrade = { factor = monument.tier_2_cost_to_upgrade }
			province_modifiers = { monument.tier_2_province_modifiers }
			area_modifier = { monument.tier_2_area_modifier }
			country_modifiers = { monument.tier_2_country_modifiers } 
			on_upgraded = { monument.tier_2_on_upgraded }
		}
		tier_3 = {
			upgrade_time = { months = monument.tier_3_upgrade_time }
			cost_to_upgrade = { factor = monument.tier_3_cost_to_upgrade }
			province_modifiers = { monument.tier_3_province_modifiers }
			area_modifier = { monument.tier_3_area_modifier }
			country_modifiers = { monument.tier_3_country_modifiers } 
			on_upgraded = { monument.tier_3_on_upgraded }
		}
	}
}