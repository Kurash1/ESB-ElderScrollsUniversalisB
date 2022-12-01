# Audax Validator "!" Ignore_1006
namespace = scenario_yokuda


country_event = { #1E0 - 57 - Setup
	id = scenario_yokuda.0
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		c@Taleskan = {
			country_event = {
				id = scenario_yokuda.1
				days = 0
			}
		}
	}
	
	option = {
		name = es_1_scenario.1.a
	}
}
country_event = { # Taleskan Assassination
	id = scenario_yokuda.1
	defineloc scenario_yokuda.1.title = "Assassination of Ahmur At-Taleskan"
	title = scenario_yokuda.1.title
	defineloc scenario_yokuda.1.desc = "Today Ahmur At-Taleskan was killed by a group of unidentified assassins. His death will plung the kingdom into chaos and usher in a period of turmoil. There are four factions vying for control of Taleskan after Ahmur's death.\n\nKhud At-Taleskan. Khud's supporters say that he is the rightful king because of his skill as a leader and warrior. While Critics of Khud's, claim that his legitimacy is in question because of Ahmur's refusal to acknowledge him as heir. They argue that Khud is not the rightful king because he does not have the backing of the previous king.\nDerik Af-Taleskan, a powerful warrior and leader who will stop at nothing to conquer Taleskan. His supporters argue that he is what Taleskan needs; a mighty warlord, who can protect the civilians from attack by any enemy. However, critics argue that although Derik has brought peace and stability to his own region, he has done so through tyranny and oppression.\nSia Al-Hodana is a well-known merchant in Taleskan. He is known for his ingenuity in dealing with economic problems and military problems with his large mercenary armies. His supporters claim that he is a great leader who knows how to handle any situation that comes up. However, his critics say that he is corrupt and only interested in power. They also claim that he is allied with the enemy nation of Seawind.\nFarsh Aj-Kayam, a charismatic leader and mystic, who has rallied the lower class citizens of the city to his cause, promising them a better future. He has built himself a cult of followers who believe in his vision for a new Taleskan. With their support, he is planning to overthrow the current regime and bring about a religious revolution."
	desc = scenario_yokuda.1.desc
	picture = ES_DEATH_OF_MONARCH_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	option = {
		defineloc scenario_yokuda.1.a = "Support Khud At-Taleskan"
		name = scenario_yokuda.1.a
		kill_ruler = yes
		hidden_effect = {
			set_country_flag = khud_at_taleskan
		}
	}
	option = {
		defineloc scenario_yokuda.1.b = "Support Derik Af-Taleskan"
		name = scenario_yokuda.1.b
		kill_ruler = yes
		hidden_effect = {
			set_country_flag = derik_af_taleskan
		}
	}
	option = {
		defineloc scenario_yokuda.1.c = "Support Sia Al-Hodana"
		name = scenario_yokuda.1.c
		kill_ruler = yes
		hidden_effect = {
			set_country_flag = sia_al_hodana
		}
	}
	option = {
		defineloc scenario_yokuda.1.d = "Support Farsh Aj-Kayam"
		name = scenario_yokuda.1.d
		kill_ruler = yes
		hidden_effect = {
			set_country_flag = farsh_aj_kayam
		}
	}
	
	after = {
		hidden_effect = {
			swap_non_generic_missions = yes
			set_country_flag = esb_yok_taleskan_disaster_mission.flag
		}
	}
}
country_event = { #Derik Af-Taleskan
	id = scenario_yokuda.3
	defineloc scenario_yokuda.3.title = "Army in the East"
	title = scenario_yokuda.3.title
	defineloc scenario_yokuda.3.desc = "My liege, The Ruthless Derik Af-Taleskan is currently assembling an army in the east in preperation for a rebellion. We beseech you to fight him before he has the chance to siege the capital."
	desc = scenario_yokuda.3.desc
	picture = ES_MILITARY_CAMP_eventPicture
	is_triggered_only = yes'
	fire_only_once = yes
	
	option = {
		defineloc scenario_yokuda.3.a = "To War!"
		name = scenario_yokuda.3.a 
		hidden_effect = {
			set_country_flag = battle_listener
			set_country_flag = battle_listener_scenario_yokuda_3
		}
	}
}
