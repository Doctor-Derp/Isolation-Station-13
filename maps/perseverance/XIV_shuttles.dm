//Chimera

/datum/shuttle/autodock/overmap/mining
	name = "Chimera"
	move_time = 60
	shuttle_area = list(/area/shuttle/perseverance/mining)
	dock_target = "chimera_docking_controller"
	current_location = "nav_dock_mining"
	landmark_transition = "nav_transit_mining"
	range = 1
	warmup_time = 10
	fuel_consumption = 3
	logging_home_tag = "nav_dock_mining"
	logging_access = access_XIV
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/machinery/computer/shuttle_control/explore/chimera
	name = "shuttle control console"
	shuttle_tag = "Chimera"
	req_access = list(access_XIV)

/obj/effect/shuttle_landmark/perseverance/dock/mining
	name = "Chimera Dock"
	landmark_tag = "nav_dock_mining"
	docking_controller = "chimera_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/perseverance/transit/mining
	name = "In Transit"
	landmark_tag = "nav_transit_mining"

//Marshal

/datum/shuttle/autodock/overmap/cargo
	name = "Marshal"
	move_time = 65
	shuttle_area = list(/area/shuttle/perseverance/cargo)
	dock_target = "marshal_docking_controller"
	current_location = "nav_dock_cargo"
	landmark_transition = "nav_transit_cargo"
	range = 0
	warmup_time = 10
	fuel_consumption =2
	logging_home_tag = "nav_dock_cargo"
	logging_access = access_XIV
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/machinery/computer/shuttle_control/explore/cargo
	name = "shuttle control console"
	shuttle_tag = "Marshal"
	req_access = list(access_XIV)

/obj/effect/shuttle_landmark/perseverance/dock/cargo
	name = "Marshal Dock"
	landmark_tag = "nav_dock_cargo"
	docking_controller = "marshal_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/perseverance/transit/cargo
	name = "In Transit"
	landmark_tag = "nav_transit_cargo"

//Dagger

/datum/shuttle/autodock/overmap/scout
	name = "Dagger"
	move_time = 30
	shuttle_area = list(/area/shuttle/perseverance/scouting)
	dock_target = "dagger_docking_controller"
	current_location = "nav_dock_scout"
	landmark_transition = "nav_transit_scout"
	range = 0
	warmup_time = 10
	logging_home_tag = "nav_dock_scout"
	logging_access = access_XIV
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/dark

/obj/machinery/computer/shuttle_control/explore/scout
	name = "shuttle control console"
	shuttle_tag = "Dagger"
	req_access = list(access_bridge)

/obj/effect/shuttle_landmark/perseverance/dock/scout
	name = "Dagger Dock"
	landmark_tag = "nav_dock_scout"
	docking_controller = "dagger_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/perseverance/transit/scout
	name = "In Transit"
	landmark_tag = "nav_transit_scout"

//generic landmarks

/obj/effect/shuttle_landmark/perseverance/bottom/fore
	name = "Space north of the bottom deck"
	landmark_tag = "nav_bottom_fore"