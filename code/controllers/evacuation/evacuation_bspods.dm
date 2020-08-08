//modified evacuation_pods code, for the perseverance, some of the stuff might not be completely necessary

#define EVAC_OPT_ABANDON_BSSHIP "abandon_ship"
#define EVAC_OPT_BS_JUMP "bluespace_jump"
#define EVAC_OPT_CANCEL_ABANDON_SHIP "cancel_abandon_ship"
#define EVAC_OPT_CANCEL_BS_JUMP "cancel_bluespace_jump"

var/evac_type

// Apparently, emergency_evacuation --> "abandon ship" and !emergency_evacuation --> "bluespace jump"
// That stuff should be moved to the evacuation option datums but someone can do that later
/datum/evacuation_controller/bsship
	name = "escape pod controller"

	evac_prep_delay    = 5 MINUTES
	evac_launch_delay  = 3 MINUTES
	evac_transit_delay = 2 MINUTES

	autotransfer_prep_additional_delay = 5 MINUTES
	emergency_prep_additional_delay    = 0 MINUTES

	evacuation_options = list(
		EVAC_OPT_ABANDON_BSSHIP = new /datum/evacuation_option/abandon_bsship,
		EVAC_OPT_BS_JUMP = new /datum/evacuation_option/blue_jump(),
		EVAC_OPT_CANCEL_ABANDON_SHIP = new /datum/evacuation_option/cancel_abandon_ship(),
		EVAC_OPT_CANCEL_BS_JUMP = new /datum/evacuation_option/cancel_blue_jump()
	)

/datum/evacuation_controller/bsship/call_evacuation(var/mob/user, var/_emergency_evac, var/forced, var/skip_announce, var/autotransfer)

	if(state != EVAC_IDLE)
		return 0

	if(!can_evacuate(user, forced))
		return 0

	emergency_evacuation = _emergency_evac

	var/evac_prep_delay_multiplier = 1
	if(SSticker.mode)
		evac_prep_delay_multiplier = SSticker.mode.shuttle_delay

	var/additional_delay
	if(_emergency_evac)
		additional_delay = emergency_prep_additional_delay
	else if(autotransfer)
		additional_delay = autotransfer_prep_additional_delay
	else
		additional_delay = 0 MINUTES
		evac_prep_delay = bsdelay

	evac_called_at =    world.time
	evac_no_return =    evac_called_at +    round(evac_prep_delay/2) + additional_delay
	evac_ready_time =   evac_called_at +    (evac_prep_delay*evac_prep_delay_multiplier) + additional_delay
	evac_launch_time =  evac_ready_time +   evac_launch_delay
	evac_arrival_time = evac_launch_time +  evac_transit_delay

	var/evac_range = round((evac_launch_time - evac_called_at)/3)
	auto_recall_time =  rand(evac_called_at + evac_range, evac_launch_time - evac_range)

	state = EVAC_PREPPING

	if(emergency_evacuation)
		for(var/area/A in world)
			if(istype(A, /area/hallway))
				A.readyalert()
		if(!skip_announce)
			GLOB.using_map.emergency_shuttle_called_announcement()
	else
		if(!skip_announce)
			priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_called_message, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60)] minute\s"))

	return 1

/datum/evacuation_controller/bsship/proc/deny_evac()
	evac_cooldown_time = world.time + (world.time - evac_called_at)
	state = EVAC_COOLDOWN
	evac_ready_time =   null
	evac_arrival_time = null
	evac_no_return =    null
	evac_called_at =    null
	evac_launch_time =  null
	auto_recall_time =  null
	priority_announcement.Announce("Attention all hands: Jump sequence failed, return to normal operating conditions.")

/datum/evacuation_controller/bsship/finish_preparing_evac()

	if (evac_type == 2)
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_docked_message, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))

	if (bsdrivestatus == 7 && evac_type == 2)
		deny_evac()
		return
	state = EVAC_LAUNCHING

/datum/evacuation_controller/bsship/launch_evacuation()

	if (bsdrivestatus == 7 && evac_type == 2)
		deny_evac()
		return

	if (bsdrivestatus == 3)
		bsdrivestatus = 5
	if (bsdrivestatus == 4)
		bsdrivestatus = 6

	state = EVAC_IN_TRANSIT

	if (evac_type == 1)
		// Abandon Ship
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.emergency_shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
	else
		// Bluespace Jump
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
		SetUniversalState(/datum/universal_state/bluespace_jump, arguments=list(GLOB.using_map.station_levels))

/datum/evacuation_controller/bsship/finish_evacuation()
	..()
	if(!emergency_evacuation) //bluespace jump
		SetUniversalState(/datum/universal_state) //clear jump state

/datum/evacuation_controller/bsship/available_evac_options()
	if (is_on_cooldown())
		return list()
	if (is_idle())
		if (bsdrivestatus == 1 || bsdrivestatus == 2)
			return list(evacuation_options[EVAC_OPT_BS_JUMP], evacuation_options[EVAC_OPT_ABANDON_BSSHIP])
		return list(evacuation_options[EVAC_OPT_ABANDON_BSSHIP])
	if (is_evacuating())
		if (emergency_evacuation)
			return list(evacuation_options[EVAC_OPT_CANCEL_ABANDON_SHIP])
		else
			return list(evacuation_options[EVAC_OPT_CANCEL_BS_JUMP])

//bs jump datums

/datum/evacuation_option/blue_jump
	option_text = "Initiate bluespace jump"
	option_desc = "initiate a bluespace jump"
	option_target = EVAC_OPT_BS_JUMP
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/blue_jump/execute(mob/user)
	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate jump preparation.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Jump preparation already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 0))
		evac_type = 2
		if (bsdrivestatus == 1)
			bsdrivestatus = 3
		else if (bsdrivestatus == 2)
			bsdrivestatus = 4
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated bluespace jump preparation.")

/datum/evacuation_option/cancel_blue_jump
	option_text = "Cancel bluespace jump"
	option_desc = "cancel the jump preparation"
	option_target = EVAC_OPT_CANCEL_BS_JUMP
	needs_syscontrol = TRUE
	silicon_allowed = FALSE

/datum/evacuation_option/cancel_blue_jump/execute(mob/user)

	if (evacuation_controller && evacuation_controller.cancel_evacuation())
		if (bsdrivestatus == 3)
			bsdrivestatus = 5
		else if (bsdrivestatus == 4)
			bsdrivestatus = 6
		log_and_message_admins("[key_name(user)] has cancelled the bluespace jump.")

//different evac start, controllable via the command program

/datum/evacuation_option/abandon_bsship
	option_text = "Abandon spacecraft"
	option_desc = "abandon the spacecraft"
	option_target = EVAC_OPT_ABANDON_BSSHIP
	needs_syscontrol = TRUE
	silicon_allowed = TRUE
//	abandon_ship = TRUE

/datum/evacuation_option/abandon_bsship/execute(mob/user)

	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate escape procedures.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Escape procedures already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 1))
		evac_type = 1
		priority_announcement.Announce("Evacuation procedures have been initiated, lifepods will be activated shortly.")
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated abandonment of the spacecraft.")

#undef EVAC_OPT_ABANDON_BSSHIP
#undef EVAC_OPT_BLUESPACE_JUMP
#undef EVAC_OPT_CANCEL_ABANDON_SHIP
#undef EVAC_OPT_CANCEL_BLUESPACE_JUMP