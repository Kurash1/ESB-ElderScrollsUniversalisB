custom_interaction_building = {
	cost = 0
	time = 0
	
	modifier = {
		allowed_num_of_buildings = 1
	}
	
	ai_will_do = {
		factor = 0
	}
	
	on_built = {
		province_event = {
			id = es_esb.0
		}
	}
}

using "classes\artifacts\*" as artifacts

defineloc building_artifact_search = "Send out an Artifact Search"
defineloc building_artifact_search_desc = ""
artifact_search = {
	cost = 100
	time = 1
	
	modifier = {
		allowed_num_of_buildings = 1
	}
	
	ai_will_do = {
		factor = 0
	}
	var i = 0
	on_built = { 
		foreach artifacts = {
			if = {
				limit = {
					has_province_flag = artifacts.id
				}
				province_event = {
					id = artifact_event. >< i
					days = 0
				}
			} 
			var i = (i+1)
		} 
		remove_building = artifact_search
	}
}