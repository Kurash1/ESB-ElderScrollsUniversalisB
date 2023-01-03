#using "classes\artifacts\*" as artifacts
#
#namespace = artifact_event
#
#var i = 0
#
#defineLoc foundartifact = "Claim it."
#defineLoc refuseartifact = "It can stay."
#foreach artifacts = {
#	province_event = {
#		id = artifact_event. >< i
#		title = artifacts.id
#		desc = artifacts.id >< _desc
#		picture = artifacts.picture
#		is_triggered_only = yes
#		
#		trigger = {
#			owner = { NOT = { has_country_modifier = artifacts.id } }
#		}
#		
#		option = {
#			name = foundartifact
#			owner = {
#				arc_modifier = {
#					id = artifacts.id
#					type = artifacts.type
#					name = artifacts.name
#					desc = artifacts.desc
#					modifiers = { artifacts.modifiers }
#				}
#			}
#			artifacts.effects
#			clr_province_flag = artifacts.id
#			BLA = {
#				set_country_flag = artifacts.id
#			}
#		}
#		option = {
#			name = refuseartifact
#		}
#	}
#	var i = (i+1)
#}