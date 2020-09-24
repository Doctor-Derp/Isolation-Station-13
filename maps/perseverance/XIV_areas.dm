//XIV Perseverance

//lift stuff

/area/ship/perseverance/lift
	name = "\improper Perseverance Central Elevator"
	icon_state = "shuttlered"

/area/ship/perseverance/lifttop
	name = "\improper Perseverance Central Elevator Shaft"
	icon_state = "shuttlered"

/area/ship/perseverance/whouselift
	name = "\improper Perseverance Cargo Elevator"
	icon_state = "shuttlered"

/area/ship/perseverance/whouselifttop
	name = "\improper Perseverance Cargo Elevator Shaft"
	icon_state = "shuttlered"

/area/ship/perseverance/englift
	name = "\improper Perseverance Engineering Elevator"
	icon_state = "shuttlered"

/area/ship/perseverance/englifttop
	name = "\improper Perseverance Engineering Elevator Shaft"
	icon_state = "shuttlered"

//midship

/area/ship/perseverance/midship/cryos
	name = "\improper Perseverance Starboard Cryogenics"
	icon_state = "crew_quarters"

/area/ship/perseverance/midship/cryop
	name = "\improper Perseverance Port Cryogenics"
	icon_state = "Sleep"

/area/ship/perseverance/midship/canteen
	name = "\improper Perseverance canteen"
	icon_state = "cafeteria"

/area/ship/perseverance/midship/infirmary
	name = "\improper Perseverance Infirmary"
	icon_state = "medbay"
	req_access = list(access_XIV)

/area/ship/perseverance/midship/chemistry
	name = "\improper Perseverance Chemistry"
	icon_state = "chem"
	req_access = list(access_XIV, access_medical)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/midship/robotics
	name = "\improper Perseverance Robotics Workshop"
	icon_state = "robotics"
	req_access = list(access_XIV, access_robotics)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/midship/bathroom
	name = "\improper Perseverance Bathroom"
	icon_state = "toilet"

/area/ship/perseverance/midship/storage
	name = "\improper Perseverance General Storage"
	icon_state = "storage"

/area/ship/perseverance/midship/hydroponics
	name = "\improper Perseverance Hydroponics"
	icon_state = "hydro"

/area/ship/perseverance/midship/xenoflora
	name = "\improper Perseverance Xenoflora Lab"
	icon_state = "xeno_lab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_XIV, access_research)

//cargo bay

/area/ship/perseverance/cargobay/fore
	name = "\improper Perseverance Fore Cargo Bay"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/cargobay/centre
	name = "\improper Perseverance Cargo Bay"
	icon_state = "crew_quarters"
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/cargobay/aft
	name = "\improper Perseverance Aft Cargo Bay"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/cargobay/office
	name = "\improper Perseverance Cargo Bay Administration"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_XIV)

//engineering

/area/ship/perseverance/eng/reactor
	name = "\improper Perseverance Engineering"
	icon_state = "engine"
	req_access = list(access_XIV, access_engine)
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/eng/atmos_out
	name = "\improper Perseverance Atmospherics Distribution"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/eng/atmos_injection
	name = "\improper Perseverance Atmospherics Air Injection"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/atmos_in
	name = "\improper Perseverance Atmospherics Filtering"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/eng/atmos_mixing
	name = "\improper Perseverance Atmospherics Mixing"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/workshop
	name = "\improper Perseverance Engineering Workshop"
	icon_state = "engineering"
	req_access = list(access_XIV, access_engine)

/area/ship/perseverance/eng/workshopstore
	name = "\improper Perseverance Engineering Workshop Storage"
	icon_state = "engine"
	req_access = list(access_XIV, access_engine)

/area/ship/perseverance/eng/atmos_workshop
	name = "\improper Perseverance Atmospherics Workshop"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/atmosstore
	name = "\improper Perseverance Engineering Workshop Storage"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/defunct
	name = "\improper Perseverance Defunct Aux Reactor"
	icon_state = "engine"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/fuelbay
	name = "\improper Perseverance Central Fuel Bay"
	icon_state = "engine"
	req_access = list(access_XIV, access_atmospherics, access_engine)
	has_gravity = FALSE

/area/ship/perseverance/eng/fuelbay/port
	name = "\improper Perseverance Port Fuel Bay"
	icon_state = "engineering"

/area/ship/perseverance/eng/fuelbay/starboard
	name = "\improper Perseverance Starboard Fuel Bay"
	icon_state = "engineering"

/area/ship/perseverance/eng/fuelbay_monitoring
	name = "\improper Perseverance Fuel Bay Monitoring"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/fuelbay_monitoring_upper
	name = "\improper Perseverance Upper fuel Bay Monitoring"
	icon_state = "atmos"
	req_access = list(access_XIV, access_atmospherics)

/area/ship/perseverance/eng/fuelbay/upper
	name = "\improper Perseverance Upper Central Fuel Bay"
	icon_state = "engine"

/area/ship/perseverance/eng/fuelbay/port_upper
	name = "\improper Perseverance Upper Port Fuel Bay"
	icon_state = "engineering"

/area/ship/perseverance/eng/fuelbay/starboard_upper
	name = "\improper Perseverance Upper Starboard Fuel Bay"
	icon_state = "engineering"

//hallways

/area/ship/perseverance/hall/chall
	name = "\improper Perseverance Central Hallway"
	icon_state = "hallC3"
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/hall/phall
	name = "\improper Perseverance Port Hallway"
	icon_state = "hallF"
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/hall/shall
	name = "\improper Perseverance Starboard Hallway"
	icon_state = "hallA"
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/hall/ehall
	name = "\improper Perseverance Aft Hallway"
	icon_state = "hallC3"
	sound_env = LARGE_ENCLOSED

/area/ship/perseverance/hall/ehall/port
	name = "\improper Perseverance Port Aft Hallway"
	icon_state = "hallF"

/area/ship/perseverance/hall/ehall/starboard
	name = "\improper Perseverance Starboard Aft Hallway"
	icon_state = "hallA"

/area/ship/perseverance/hall/shuthall/fport
	name = "\improper Perseverance Port Fore Shuttle Access"
	icon_state = "hallF"

/area/ship/perseverance/hall/shuthall/aport
	name = "\improper Perseverance Port Aft Shuttle Access"
	icon_state = "hallA"

/area/ship/perseverance/hall/shuthall/fstarboard
	name = "\improper Perseverance Starboard Fore Shuttle Access"
	icon_state = "hallF"

/area/ship/perseverance/hall/shuthall/astarboard
	name = "\improper Perseverance Starboard Aft Shuttle Access"
	icon_state = "hallA"

//bridge

/area/ship/perseverance/bridge/navigation
	name = "\improper Perseverance Navigation Center"
	icon_state = "shuttle"
	req_access = list(access_XIV, access_bridge)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/fhallway
	name = "\improper Perseverance Bridge Fore Hallway"
	icon_state = "hallF"
	req_access = list(access_XIV, access_bridge)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/ahallway
	name = "\improper Perseverance Bridge Aft Hallway"
	icon_state = "hallA"
	req_access = list(access_XIV)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/storage
	name = "\improper Perseverance Bridge Storage"
	icon_state = "quartstorage"
	req_access = list(access_XIV, access_bridge)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/comms
	name = "\improper Perseverance Communications"
	icon_state = "tcomsatcham"
	req_access = list(access_XIV, access_network)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/study
	name = "\improper Perseverance Expedition Leader's Study"
	icon_state = "head_quarters"
	req_access = list(access_XIV, access_captain)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/aisat
	name = "\improper Perseverance AI Chamber"
	icon_state = "ai_foyer"
	req_access = list(access_XIV, access_engine, access_bridge)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/aicore
	name = "\improper Perseverance AI Core"
	icon_state = "ai_chamber"
	req_access = list(access_XIV, access_engine, access_bridge)
	sound_env = SMALL_ENCLOSED

/area/ship/perseverance/bridge/selfdestruct
	name = "\improper Perseverance Self Destruct System"
	icon_state = "nuke_storage"
	req_access = list(access_XIV, access_bridge)
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT

area/ship/perseverance/bridge/bluespacedrive
	name = "\improper Perseverance Bluespace Drive"
	icon_state = "engineering"
	color = COLOR_BLUE_LIGHT
	req_access = list(access_XIV, access_engine, access_bridge)

/area/ship/perseverance/hall/bsport
	name = "\improper Perseverance Port Bluespace Drive Access"
	icon_state = "hallF"

/area/ship/perseverance/hall/bsstarboard
	name = "\improper Perseverance Starboard Bluespace Dive Access"
	icon_state = "hallA"

//S.E.C.

area/ship/perseverance/sec
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	sound_env = SMALL_ENCLOSED
	color = COLOR_YELLOW

//bottom
area/ship/perseverance/sec/bot/paft
	name = "Perseverance Port Aft Sub-Exterior Causeway"
	icon_state = "apmaint"

area/ship/perseverance/sec/bot/saft
	name = "Perseverance Starboard Aft Sub-Exterior Causeway"
	icon_state = "asmaint"

area/ship/perseverance/sec/bot/pstore
	name = "Perseverance Port Engineering Storage Room"
	icon_state = "pmaint"

area/ship/perseverance/sec/bot/sstore
	name = "Perseverance Starboard Engineering Storage Room"
	icon_state = "smaint"

area/ship/perseverance/sec/bot/pmid
	name = "Perseverance Port Mid Sub-Exterior Causeway"
	icon_state = "pmaint"

area/ship/perseverance/sec/bot/smid
	name = "Perseverance Starboard Mid Sub-Exterior Causeway"
	icon_state = "smaint"

area/ship/perseverance/sec/bot/pfore
	name = "Perseverance Port Fore Sub-Exterior Causeway"
	icon_state = "fpmaint"

area/ship/perseverance/sec/bot/sfore
	name = "Perseverance Starboard Fore Sub-Exterior Causeway"
	icon_state = "fsmaint"

//top
area/ship/perseverance/sec/top/paft
	name = "Perseverance Port Upper Aft Sub-Exterior Causeway"
	icon_state = "apmaint"

area/ship/perseverance/sec/top/saft
	name = "Perseverance Starboard Upper Aft Sub-Exterior Causeway"
	icon_state = "asmaint"

area/ship/perseverance/sec/top/pmid
	name = "Perseverance Port Upper Mid Sub-Exterior Causeway"
	icon_state = "pmaint"

area/ship/perseverance/sec/top/smid
	name = "Perseverance Starboard Upper Mid Sub-Exterior Causeway"
	icon_state = "smaint"

area/ship/perseverance/sec/top/pfore
	name = "Perseverance Port Upper Fore Sub-Exterior Causeway"
	icon_state = "fpmaint"

area/ship/perseverance/sec/top/sfore
	name = "Perseverance Starboard Upper Fore Sub-Exterior Causeway"
	icon_state = "fsmaint"

//Ventilation

area/ship/perseverance/ventilation
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	sound_env = SMALL_ENCLOSED

area/ship/perseverance/ventilation/blue
	color = COLOR_SKY_BLUE

area/ship/perseverance/ventilation/blue/aft
	name = "Perseverance Aft Supply Ventilation Duct"
	icon_state = "amaint"

area/ship/perseverance/ventilation/blue/mid
	name = "Perseverance Mid Supply Ventilation Duct"
	icon_state = "maintcentral"

area/ship/perseverance/ventilation/blue/fore
	name = "Perseverance Fore Supply Ventilation Duct"
	icon_state = "fmaint"

area/ship/perseverance/ventilation/red
	color = COLOR_RED

area/ship/perseverance/ventilation/red/aft
	name = "Perseverance Aft Filtering Ventilation Duct"
	icon_state = "amaint"

area/ship/perseverance/ventilation/red/mid
	name = "Perseverance Mid Filtering Ventilation Duct"
	icon_state = "maintcentral"

area/ship/perseverance/ventilation/red/fore
	name = "Perseverance Fore Filtering Ventilation Duct"
	icon_state = "fmaint"

//fore areas

/area/ship/perseverance/fore/gantry
	name = "\improper Perseverance Mining Gantry"
	icon_state = "crew_quarters"

/area/ship/perseverance/fore/miningprep
	name = "\improper Perseverance Port Preperation Room"
	icon_state = "exploration"

/area/ship/perseverance/fore/sciprep
	name = "\improper Perseverance Starboard Preperation Room"
	icon_state = "exploration"

//shuttles

area/shuttle/perseverance
	requires_power = 1//oops

area/shuttle/perseverance/cpod
	name = "\improper Perseverance Cargo Pod"
	icon_state = "shuttle"
	sound_env = SMALL_ENCLOSED

area/shuttle/perseverance/mining
	name = "\improper Chimera"
	icon_state = "shuttle"
	sound_env = SMALL_ENCLOSED

area/shuttle/perseverance/cargo
	name = "\improper Marshal"
	icon_state = "shuttle"
	sound_env = SMALL_ENCLOSED

area/shuttle/perseverance/scouting
	name = "\improper Dagger"
	icon_state = "shuttle"
	sound_env = SMALL_ENCLOSED

area/shuttle/perseverance/exploration
	name = "\improper Phobos"
	icon_state = "shuttle"
	sound_env = SMALL_ENCLOSED