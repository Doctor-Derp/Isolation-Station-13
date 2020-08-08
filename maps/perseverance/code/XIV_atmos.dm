// Lets see if copypaste makes it any easier (or at least less soul-sucking)

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

obj/machinery/computer/air_control/XIV/bluespacedrive
	input_tag = "bluespacedrive_in"
	output_tag = "bluespacedrive_out"
	name = "Bluespace drive air control"
	sensor_name = "Bluespace drive air sensor"
	sensor_tag = "bluespacedrive_sensor"

/obj/item/weapon/stock_parts/circuitboard/air_management/bluespacedrive
	build_path = /obj/machinery/computer/air_control/XIV/bluespacedrive

obj/machinery/atmospherics/unary/vent_pump/tank/XIV/bluespacedrive
	id_tag = "bluespacedrive_out"

obj/machinery/atmospherics/unary/outlet_injector/XIV/bluespacedrive
	id = "bluespacedrive_in"

obj/machinery/air_sensor/XIV/bluespacedrive
	id_tag = "bluespacedrive_sensor"

//--------------------VENTILATION SYSTEMS-----------------------------

/obj/machinery/atmospherics/unary/vent_pump/XIV/ventilation/output
	use_power = 1
	icon_state = "map_vent_out"
	external_pressure_bound = 1.2 * ONE_ATMOSPHERE

/obj/machinery/atmospherics/unary/vent_pump/XIV/ventilation/siphon
	pump_direction = 0
	use_power = 1
	icon_state = "map_vent_in"
	external_pressure_bound = 0.8 * ONE_ATMOSPHERE

//--------------------------FUEL MIXERS------------------------------

/obj/machinery/atmospherics/omni/mixer/XIV/fuelbay
	tag_south = 2