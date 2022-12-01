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
			monument.tier_0
		}
		tier_1 = {
			monument.tier_1
		}
		tier_2 = {
			monument.tier_2
		}
		tier_3 = {
			monument.tier_3
		}
	}
}