/obj/effect/overmap/visitable/ship/Perseverance
	name = "XIV Perseverance"
	desc = "Superreflective bluespace hull interfering with sensor readings. Heavy spatial disturbance detected. Ship parameters unknown. Exterior writing reads 'XIV Perseverance'."
	fore_dir = NORTH
	vessel_mass = 100000
	burn_delay = 5 SECONDS
	base = TRUE

	initial_restricted_waypoints = list(
		"Chimera" = list("nav_dock_mining"),	//can't have random shuttles popping inside the docking area
		"Marshal" = list("nav_dock_cargo"),
		"Dagger"  = list("nav_dock_scout")
	)

	initial_generic_waypoints = list(
		//everyone can come here
		"nav_bottom_fore"
	)

/obj/effect/overmap/visitable/ship/landable/mining
	name = "XIV Chimera"
	desc = "An outdated configuration of the VTA-5 short range mining shuttle. Exterior writing reads 'XIV Chimera'. No transponder signal detected."
	shuttle = "Chimera"
	max_speed = 1/(1 SECONDS)
	burn_delay = 6 SECONDS
	vessel_mass = 5000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/cargo
	name = "XIV Marshal"
	desc = "A V-65 Ox long distance cargo shuttle. Exterior writing reads 'XIV Marshal'. No transponder signal detected."
	shuttle = "Marshal"
	max_speed = 1/(1 SECONDS)
	burn_delay = 4 SECONDS
	vessel_mass = 6000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/scout
	name = "SFV Dagger"
	desc = "An unclassified shuttle belonging to the Sol Central Government Fleet. Exterior writing reads 'SFV Dagger'. No transponder signal detected."
	shuttle = "Dagger"
	max_speed = 2/(1 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 10000
	fore_dir = EAST
	skill_needed = SKILL_ADEPT
	vessel_size = SHIP_SIZE_SMALL