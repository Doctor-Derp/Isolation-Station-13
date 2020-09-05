// A lot of this is a test to see if stuff is easier this way, results were okay, but using strongdmm makes it much easier so this is not really necessary
//I dont think I'm removing it anytime soon, though

//--------------------------AIRLOCKS----------------------------------

obj/machinery/door/airlock/external/bolted/XIV
	name = "Perseverance Exterior Access"
	frequency = 1379

/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV
	frequency = 1379
	req_access = list ("ACCESS_XION")

obj/machinery/airlock_sensor/XIV
	frequency = 1379

obj/machinery/access_button/airlock_exterior/XIV
	frequency = 1379
	req_access = list ("ACCESS_XION")

obj/machinery/access_button/airlock_interior/XIV
	frequency = 1379
	req_access = list ("ACCESS_XION")

//------------------------COPY-PASTE ZONE----------------------------

//Port Fore Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/pfore
	id_tag = "Perseverance_PFore_Airlock"
	tag_airpump = "Perseverance_PFore_Pump"
	tag_chamber_sensor = "Perseverance_PFore_Sensor"
	tag_exterior_door = "Perseverance_PFore_Out"
	tag_interior_door = "Perseverance_PFore_In"

obj/machinery/door/airlock/external/bolted/XIV/pfore/external
	id_tag = "Perseverance_PFore_Out"

obj/machinery/door/airlock/external/bolted/XIV/pfore/internal
	id_tag = "Perseverance_PFore_In"

obj/machinery/airlock_sensor/XIV/pfore
	id_tag = "Perseverance_PFore_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/pfore
	master_tag = "Perseverance_PFore_Airlock"

obj/machinery/access_button/airlock_interior/XIV/pfore
	master_tag = "Perseverance_PFore_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/pfore
	id_tag = "Perseverance_PFore_Pump"

//Starboard Fore Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/sfore
	id_tag = "Perseverance_SFore_Airlock"
	tag_airpump = "Perseverance_SFore_Pump"
	tag_chamber_sensor = "Perseverance_SFore_Sensor"
	tag_exterior_door = "Perseverance_SFore_Out"
	tag_interior_door = "Perseverance_SFore_In"

obj/machinery/door/airlock/external/bolted/XIV/sfore/external
	id_tag = "Perseverance_SFore_Out"

obj/machinery/door/airlock/external/bolted/XIV/sfore/internal
	id_tag = "Perseverance_SFore_In"

obj/machinery/airlock_sensor/XIV/sfore
	id_tag = "Perseverance_SFore_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/sfore
	master_tag = "Perseverance_SFore_Airlock"

obj/machinery/access_button/airlock_interior/XIV/sfore
	master_tag = "Perseverance_SFore_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/sfore
	id_tag = "Perseverance_SFore_Pump"

//Port Mid Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/pmid
	id_tag = "Perseverance_PMid_Airlock"
	tag_airpump = "Perseverance_PMid_Pump"
	tag_chamber_sensor = "Perseverance_PMid_Sensor"
	tag_exterior_door = "Perseverance_PMid_Out"
	tag_interior_door = "Perseverance_PMid_In"

obj/machinery/door/airlock/external/bolted/XIV/pmid/external
	id_tag = "Perseverance_PMid_Out"

obj/machinery/door/airlock/external/bolted/XIV/pmid/internal
	id_tag = "Perseverance_PMid_In"

obj/machinery/airlock_sensor/XIV/pmid
	id_tag = "Perseverance_PMid_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/pmid
	master_tag = "Perseverance_PMid_Airlock"

obj/machinery/access_button/airlock_interior/XIV/pmid
	master_tag = "Perseverance_PMid_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/pmid
	id_tag = "Perseverance_PMid_Pump"

//Starboard Mid Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/smid
	id_tag = "Perseverance_SMid_Airlock"
	tag_airpump = "Perseverance_SMid_Pump"
	tag_chamber_sensor = "Perseverance_SMid_Sensor"
	tag_exterior_door = "Perseverance_SMid_Out"
	tag_interior_door = "Perseverance_SMid_In"

obj/machinery/door/airlock/external/bolted/XIV/smid/external
	id_tag = "Perseverance_SMid_Out"

obj/machinery/door/airlock/external/bolted/XIV/smid/internal
	id_tag = "Perseverance_SMid_In"

obj/machinery/airlock_sensor/XIV/smid
	id_tag = "Perseverance_SMid_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/smid
	master_tag = "Perseverance_SMid_Airlock"

obj/machinery/access_button/airlock_interior/XIV/smid
	master_tag = "Perseverance_SMid_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/smid
	id_tag = "Perseverance_SMid_Pump"

//Port Aft Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/paft
	id_tag = "Perseverance_PAft_Airlock"
	tag_airpump = "Perseverance_PAft_Pump"
	tag_chamber_sensor = "Perseverance_PAft_Sensor"
	tag_exterior_door = "Perseverance_PAft_Out"
	tag_interior_door = "Perseverance_PAft_In"

obj/machinery/door/airlock/external/bolted/XIV/paft/external
	id_tag = "Perseverance_PAft_Out"

obj/machinery/door/airlock/external/bolted/XIV/paft/internal
	id_tag = "Perseverance_PAft_In"

obj/machinery/airlock_sensor/XIV/paft
	id_tag = "Perseverance_PAft_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/paft
	master_tag = "Perseverance_PAft_Airlock"

obj/machinery/access_button/airlock_interior/XIV/paft
	master_tag = "Perseverance_PAft_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/paft
	id_tag = "Perseverance_PAft_Pump"

//Starboard Aft Airlock
/obj/machinery/embedded_controller/radio/airlock/airlock_controller/XIV/saft
	id_tag = "Perseverance_SAft_Airlock"
	tag_airpump = "Perseverance_SAft_Pump"
	tag_chamber_sensor = "Perseverance_SAft_Sensor"
	tag_exterior_door = "Perseverance_SAft_Out"
	tag_interior_door = "Perseverance_SAft_In"

obj/machinery/door/airlock/external/bolted/XIV/saft/external
	id_tag = "Perseverance_SAft_Out"

obj/machinery/door/airlock/external/bolted/XIV/saft/internal
	id_tag = "Perseverance_SAft_In"

obj/machinery/airlock_sensor/XIV/saft
	id_tag = "Perseverance_SAft_Sensor"

obj/machinery/access_button/airlock_exterior/XIV/saft
	master_tag = "Perseverance_SAft_Airlock"

obj/machinery/access_button/airlock_interior/XIV/saft
	master_tag = "Perseverance_SAft_Airlock"

/obj/machinery/atmospherics/unary/vent_pump/high_volume/airlock/XIV/saft
	id_tag = "Perseverance_SAft_Pump"

//-------------------------TANK CONTROL-------------------------------

obj/machinery/atmospherics/unary/vent_pump/tank/XIV
	pressure_checks = 2
	pressure_checks_default = 2
	use_power = 1
	internal_pressure_bound = 4000
	internal_pressure_bound_default = 4000

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV
	stock_part_presets = list(
		/decl/stock_part_preset/radio/receiver/vent_pump/tank = 1,
		/decl/stock_part_preset/radio/event_transmitter/vent_pump/tank = 1
	)
	controlled = FALSE
	external_pressure_bound = 0
	external_pressure_bound_default = 0
	icon_state = "map_vent_in"
	initialize_directions = 1
	internal_pressure_bound = 4000
	internal_pressure_bound_default = 4000
	pressure_checks = 2
	pressure_checks_default = 2
	pump_direction = 0
	use_power = 1

obj/machinery/atmospherics/unary/outlet_injector/XIV
	frequency = 1441
	icon_state = "map_injector"
	use_power = 1

//BS drive

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/bluespacedrive
	id_tag = "bluespacedrive_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/bluespacedrive
	id = "bluespacedrive_in"

obj/machinery/air_sensor/XIV/bluespacedrive
	id_tag = "bluespacedrive_sensor"

//xenoflora, containment unit

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/xenoflora
	id_tag = "xenoflora_out"
	use_power = 0

obj/machinery/atmospherics/unary/outlet_injector/XIV/xenoflora
	id = "xenoflora_in"

obj/machinery/air_sensor/XIV/xenoflora
	id_tag = "xenoflora_sensor"

//atmospherics, both air tanks

obj/machinery/atmospherics/unary/vent_pump/tank/XIV/airtank1
	id_tag = "airtank1_out"
	pump_direction = 0

obj/machinery/atmospherics/unary/outlet_injector/XIV/airtank1
	id = "airtank1_in"
	volume_rate = 700

obj/machinery/air_sensor/XIV/airtank1
	id_tag = "airtank1_sensor"

obj/machinery/atmospherics/unary/vent_pump/tank/XIV/airtank2
	id_tag = "airtank2_out"
	pump_direction = 0

obj/machinery/atmospherics/unary/outlet_injector/XIV/airtank2
	id = "airtank2_in"
	volume_rate = 700

obj/machinery/air_sensor/XIV/airtank2
	id_tag = "airtank2_sensor"

//--------------------VENTILATION SYSTEMS-----------------------------

/obj/item/weapon/stock_parts/circuitboard/air_management/ventilation
	build_path = /obj/machinery/computer/air_control/XIV/ventilation

/obj/machinery/computer/air_control/XIV/ventilation
	name = "Vent control console"
	out_pressure_mode = 1

/obj/machinery/computer/air_control/XIV/ventilation/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	data["systemname"] = name
	get_console_data()
	if(!ui)
		ui = new(user, src, ui_key, "ventcontrol.tmpl", data["systemname"], 800, 600)//custom template which is actually just a downgraded normal template, yay!
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/atmospherics/unary/vent_pump/tank/XIV/ventilation
	pressure_checks = 1
	pressure_checks_default = 1
	use_power = 0//due to big power draw, best activated manually (up to approx. 1.5 MW, actually)

/obj/machinery/atmospherics/unary/vent_pump/tank/XIV/ventilation/inlet
	icon_state = "map_vent_out"
	id_tag = "ventilation_in"
	external_pressure_bound = 1.1 * ONE_ATMOSPHERE
	external_pressure_bound_default = 1.1 * ONE_ATMOSPHERE//turns out defaults don't matter at all when being operated by the air control computer, "default pressure" is always approx. 4500 kPa

obj/machinery/air_sensor/XIV/ventilation_inlet
	id_tag = "VI_Sensor"

/obj/machinery/atmospherics/unary/vent_pump/tank/XIV/ventilation/outlet
	pump_direction = 0
	icon_state = "map_vent_in"
	id_tag = "ventilation_out"
	external_pressure_bound = 0.9 * ONE_ATMOSPHERE
	external_pressure_bound_default = 0.9 * ONE_ATMOSPHERE

obj/machinery/air_sensor/XIV/ventilation_outlet
	id_tag = "VO_Sensor"

//--------------------------FUEL STUFF------------------------------

//storage tanks

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel
	icon_state = "off"
	use_power = 0

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel
	use_power = 0

//port
obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/CO2_1
	id_tag = "CO2_1_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/CO2_1
	id = "CO2_1_in"

obj/machinery/air_sensor/XIV/fuel/CO2_1
	id_tag = "CO2_1_sensor"

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/H2_1
	id_tag = "H2_1_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/H2_1
	id = "H2_1_in"

obj/machinery/air_sensor/XIV/fuel/H2_1
	id_tag = "H2_1_sensor"

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/O2_1
	id_tag = "O2_1_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/O2_1
	id = "O2_1_in"

obj/machinery/air_sensor/XIV/fuel/O2_1
	id_tag = "O2_1_sensor"

//starboard
obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/CO2_2
	id_tag = "CO2_2_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/CO2_2
	id = "CO2_2_in"

obj/machinery/air_sensor/XIV/fuel/CO2_2
	id_tag = "CO2_2_sensor"

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/H2_2
	id_tag = "H2_2_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/H2_2
	id = "H2_2_in"

obj/machinery/air_sensor/XIV/fuel/H2_2
	id_tag = "H2_2_sensor"

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/O2_2
	id_tag = "O2_2_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/fuel/O2_2
	id = "O2_2_in"

obj/machinery/air_sensor/XIV/fuel/O2_2
	id_tag = "O2_2_sensor"

//fuel combustion chambers

obj/machinery/atmospherics/unary/vent_pump/high_volume/XIV/fuel/combust
	icon_state = "map_vent_out"
	external_pressure_bound = MAX_PUMP_PRESSURE
	external_pressure_bound_default = MAX_PUMP_PRESSURE
	use_power = 1
	pump_direction = 1
	pressure_checks = 1//check exterior only
	pressure_checks_default = 1

//left(port) to right(starboard), C_1 to C_8

obj/machinery/air_sensor/XIV/fuel/combust/c1
	id_tag = "C_1_sensor"

obj/machinery/air_sensor/XIV/fuel/combust/c2
	id_tag = "C_2_sensor"

obj/machinery/air_sensor/XIV/fuel/combust/c3
	id_tag = "C_3_sensor"

obj/machinery/air_sensor/XIV/fuel/combust/c4
	id_tag = "C_4_sensor"
//This goes up to 8, the rest was done in the editor

//experimental gas thruster

/obj/machinery/atmospherics/pipe/simple/visible/fuel//why don't we make these more useful?
	maximum_pressure = 1500*ONE_ATMOSPHERE
	fatigue_pressure = 950*ONE_ATMOSPHERE
	alert_pressure = 950*ONE_ATMOSPHERE

/obj/machinery/atmospherics/unary/engine/experimental
	name = "experimental rocket nozzle"
	desc = "Experimental rocket nozzle, expelling gas at hypersonic velocities to propell the ship. This one has been modified to provide better thrust at high pressures."
	icon = 'icons/obj/ship_engine.dmi'
	icon_state = "nozzle"

/obj/machinery/atmospherics/unary/engine/experimental/calculate_thrust(datum/gas_mixture/propellant, used_part = 1)
	return round(sqrt(propellant.get_mass() * used_part) + (air_contents.return_pressure() / 50000),0.1)

/obj/item/weapon/stock_parts/circuitboard/unary_atmos/engine/experimental
	name = T_BOARD("experimental gas thruster")
	build_path = /obj/machinery/atmospherics/unary/engine/experimental
	origin_tech = list(TECH_POWER = 4, TECH_ENGINEERING = 4)
	additional_spawn_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/capacitor = 2)