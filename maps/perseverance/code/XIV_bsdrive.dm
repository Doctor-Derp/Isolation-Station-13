var/bsdrivestatus//I present to you, a global variable! It's a variable, except it's GLOBAL! Used in evacuation_bspods.dm
//-1 = busy/shutting down, 0 = not ready/maybe ready, 1 = slowmode, 2 = quickmode, 3 = activated (slowmode), 4 = activated (quickmode), 5 = shutdown (slowmode), 6 = shutdown (quickmode), 7 = destroyed
var/bsdelay// used in its evac controller, for changing the time needed for spoolup

/obj/machinery/bluespacedrive
	name = "Bluespace drive"
	desc = "This complex device permits a safe entry into bluespace."
	icon = 'maps/perseverance/icons/bsdrive.dmi'
	icon_state = "dmdrive_1"//otherwise invisible when mapping
	density = 1
	anchored = 1
	var/bscontaminated = null//0 = clear, 1 = not clear, beware, Phoron.dm has a global var named 'contaminated'
	var/phcheck = null//0 = no phoron, 1 = enough phoron, 2 = too much phoron
	var/mode = 1 //2 is active, acively takes phoron from the air, takes minor coordination for a big time save. A bit risky.
	// 1 is passive, it requires some phoron to be present only when jumping, but also needs a much longer spoolup time .

/obj/machinery/bluespacedrive/Process()

	var/turf/T = get_turf(src)
	var/datum/gas_mixture/air = T.return_air()
	var/phinair = air.gas[GAS_PHORON]

	if (phinair > 55)
		phcheck = 1
		if (phinair > 55)
			overlays = list("ind1")
		if (phinair > 65)
			overlays = list("ind2")
		if (phinair > 75)
			overlays = list("ind3")
		if (phinair > 85)
			overlays = list("ind4")
		if (phinair > 95)
			overlays = list("uhoh")
			phcheck = 2
	else
		phcheck = 0
		overlays = list("ind0")

	if (air.total_moles - air.gas[GAS_PHORON] > 5)
		contaminated = 1
		overlays = list("uhoh")
	else
		contaminated = 0

	if (bsdrivestatus > 2)
		mode = 0
		if (bsdrivestatus == 3)
			air.remove(air.total_moles)//om nom nom
			if (icon_state != "dmdrive_1_on" && icon_state != "dmdrive_1_injecting")
				icon_state = "dmdrive_1_on"
				flick ("dmdrive_1_injecting", src)

		if (bsdrivestatus == 4)
			if (icon_state != "dmdrive_2_on" && icon_state != "dmdrive_2_injecting")
				icon_state = "dmdrive_2_on"
				flick ("dmdrive_2_injecting", src)

		if (bsdrivestatus == 5)
			mode = 1
			icon_state = "dmdrive_1"
			playsound(src.loc, 'sound/machines/blastdoor_close.ogg', 50, 1)
			flick ("dmdrive_1_done", src)
			bsdrivestatus = 1

		if (bsdrivestatus == 6)
			mode = 1
			icon_state = "dmdrive_1"
			playsound(src.loc, 'sound/machines/blastdoor_close.ogg', 50, 1)
			flick ("dmdrive_2_done", src)
			bsdrivestatus = 1

	if (mode == 1)
		bsdelay = 20 MINUTES
		if (phcheck == 1 && bsdrivestatus != -1)
			bsdrivestatus = 1
		else
			bsdrivestatus = 0

	if (mode == 2 || bsdrivestatus == 4)
		bsdelay = 1 MINUTES
		air.remove(air.total_moles * 0.2)//consumption scales up with the number of moles in the air
		if (phcheck != 1 || contaminated == 1)
			mode = 0
			log_and_message_admins("The bluespace drive encountered a critical error at [x], [y], [z], and will now detonate.")
			GLOB.global_announcer.autosay("WARNING: BLUESPACE TEATHER SEVERED.", "Bluespace monitor")
			bigboom()
		else if (bsdrivestatus != -1 && bsdrivestatus != 4)
			bsdrivestatus = 2

/obj/machinery/bluespacedrive/proc/open()
	GLOB.global_announcer.autosay("WARNING: BLUESPACE DRIVE ENTERING RAPID REACTION MODE.", "Bluespace monitor")
	log_and_message_admins("The bluespace drive entered mode 2 at [x], [y], [z]")

	mode = 2
	playsound(src.loc,'sound/machines/blastdoor_open.ogg', 50, 1)// its good
	icon_state = "dmdrive_2"
	flick("dmdrive_opening", src)
	sleep (10)
	bsdrivestatus = 0

/obj/machinery/bluespacedrive/proc/close()
	log_and_message_admins("The bluespace drive entered mode 1 at [x], [y], [z]")

	playsound(src.loc, 'sound/machines/blastdoor_close.ogg', 50, 1)
	icon_state = "dmdrive_1"
	flick("dmdrive_closing", src)
	mode = 1
	sleep (10)
	bsdrivestatus = 0

/obj/machinery/bluespacedrive/proc/bigboom()

	mode = 0
	bsdrivestatus = 7
	var/turf/T = get_turf(src)
	var/list/affected_z = GetConnectedZlevels(T.z)

//knockdown
	for(var/z in affected_z)
		SSradiation.z_radiate(locate(1, 1, z), DETONATION_RADS, 1)

	for(var/mob/living/mob in GLOB.living_mob_list_)
		var/turf/TM = get_turf(mob)
		if(!TM)
			continue
		if(!(TM.z in affected_z))
			continue

		mob.Weaken(4)
		to_chat(mob, "<span class='danger'>An invisible force slams you against the ground!</span>")

//emp
	empulse(T, ceil(1000), ceil(9000))

//explosion
	spawn(0)
		explosion(T, 1.5, 3, 6, 12, 1)
		qdel(src)

//physical interactions

/obj/machinery/bluespacedrive/attackby(obj/item/P as obj, mob/user as mob)

	if(isWrench(P))
		if(bsdrivestatus > -1 && bsdrivestatus < 2)
			user.visible_message("[user] attempts to unwrench the anchoring bolts on the [src], but the safety system keeps them down.", "You try unwrenching the anchoring bolts, but the safety system keeps them locked in place.")
			return
		if(anchored == 1)
			user.visible_message("[user] begins unwrenching the anchoring bolts on the [src].", "You begin unwrenching the anchoring bolts...")
		else
			user.visible_message("[user] begins wrenching the anchoring bolts on the [src].", "You begin wrenching the anchoring bolts...")
		if(do_after(user, 50, src))
			if(!src || !user) return
			if(anchored == 1)
				user.visible_message("[user] unwrenches the anchoring bolts on the [src].", "You unwrench the anchoring bolts.")
				log_and_message_admins("[user] unwrenched the blespace drive at [x], [y], [z]")
				anchored = 0
			else
				user.visible_message("[user] wrenches the anchoring bolts on the [src].", "You wrench the anchoring bolts.")
				log_and_message_admins("[user] wrenched the blespace drive at [x], [y], [z]")
				anchored = 1

/obj/machinery/bluespacedrive/physical_attack_hand(mob/user)

	if(bsdrivestatus > -1 && bsdrivestatus < 3 && anchored == 1)
		user.visible_message("<span class=\"warning\">[user] flips the control switch on the [src].</span>", "<span class=\"warning\">You flip the control switch.")
		bsdrivestatus = -1
		if (mode == 1)
			open()
			return
		if (mode == 2)
			close()
	else
		user.visible_message("[user] attempts to flip the mode switch on the [src], but it doesn't budge.", "You try flipping the mode switch, but it doesn't budge.")