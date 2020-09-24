/obj/effect/overmap/visitable/ship/Perseverance
	name = "XIV Perseverance"
	desc = "Superreflective bluespace hull interfering with sensor readings. Heavy spatial disturbance detected. Ship parameters unknown. Exterior writing reads 'XIV Perseverance'."
	fore_dir = NORTH
	vessel_mass = 100000
	burn_delay = 5 SECONDS
	base = TRUE

	initial_restricted_waypoints = list(
		"Chimera" = list("nav_dock_mining"),	//can't have random shuttles popping inside the docking area
		"Marshal" = list ("nav_dock_cargo")
	)

	initial_generic_waypoints = list(
		//everyone can come here
		"nav_bottom_fore",
		"nav_bottom_aft"
	)

/obj/effect/overmap/visitable/ship/landable/mining
	name = "XIV Chimera"
	desc = "An outdated configuration of the VTA-5 short range mining shuttle. Exterior writing reads 'XIV Chimera'. No transponder signal detected."
	shuttle = "Chimera"
	max_speed = 1/(1 SECONDS)
	burn_delay = 3 SECONDS
	vessel_mass = 5000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/cargo
	name = "XIV Marshal"
	desc = "A V-65 Ox long distance cargo shuttle. Exterior writing reads 'XIV Marshal'. No transponder signal detected."
	shuttle = "Marshal"
	max_speed = 1/(1 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 6000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL