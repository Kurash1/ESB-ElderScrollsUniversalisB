monarch_power = ADM
ahead_of_time = { }
technology = {
	# Tech 0 
	year = 1
}
technology = {
	# Tech 1 
	year = 9999
	governing_capacity = 0
	administrative_efficiency = 0.0
	development_efficiency = 0.00
	production_efficiency = 0.00
	
	custom_interaction_building = yes
	may_support_rebels = yes
	may_force_march = yes
	native_earthwork = yes
	native_palisade = yes
	native_fortified_house = yes
	native_three_sisters_field = yes
	native_irrigation = yes
	native_storehouse = yes
	native_longhouse = yes
	native_sweat_lodge = yes
	native_great_trail = yes
	native_ceremonial_fire_pit = yes
	temple = yes
	road_network = yes
	glorious_monument = yes
	farm_estate = yes
	state_house = yes
	college = yes
	mint = yes
	constable = yes
	courthouse = yes
	cathedral = yes
	wharf = yes
	canal = yes
	textile = yes
	town_hall = yes
	university = yes
	plantations = yes
	treasury_office = yes
	tax_assessor = yes
	
	allowed_idea_groups = 1
}

for i = 2 to defines.constants.max_idea_groups = {
	technology = {
		year = 9999
		allowed_idea_groups = i
	}
}