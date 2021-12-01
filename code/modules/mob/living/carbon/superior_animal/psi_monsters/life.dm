/mob/living/carbon/superior_animal/psi_monster/Life()
	. = ..()
	var/turf/L = get_turf(src)
	if(L.get_lumcount() < 0.8)
		heal_overall_damage(healing_factor,healing_factor)
		updatehealth()
	if(health >= (maxHealth * 0.9) && (L.get_lumcount() <= 0.8) && stance == HOSTILE_STANCE_IDLE)
		alpha = chameleon_skill

/mob/living/carbon/superior_animal/psi_monster/mister_dream/Life()
	. = ..()
	if(health <= (health * 0.66) && first_teleport == FALSE)
		var/turf/simulated/floor/target
		var/list/validtargets = list()

		for(var/area/A in world)
			if(istype(A, /area/deepmaint))
				for(var/turf/simulated/floor/T in A)
					validtargets += T
		target = pick(validtargets)

		do_sparks(1, 0, src.loc)
		src.visible_message(SPAN_DANGER("\the [src] looses a terrible scream before journeying to nowhere!"))
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		spawn(2)
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		src.forceMove(target)
		do_sparks(1, 0, src.loc)
		src.visible_message(SPAN_DANGER("\the [src] appears from thin air in a shower of sparks, wounded and screaming in rage!"))
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		spawn(2)
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		first_teleport = TRUE


	if(health <= (health * 0.33) && second_teleport == FALSE)
		var/turf/simulated/floor/target
		var/list/validtargets = list()

		for(var/area/A in world)
			if(istype(A, /area/deepmaint))
				for(var/turf/simulated/floor/T in A)
					validtargets += T
		target = pick(validtargets)

		do_sparks(1, 0, src.loc)
		src.visible_message(SPAN_DANGER("\the [src] looses an agonized howl before journeying to nowhere!"))
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		spawn(2)
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		src.forceMove(target)
		do_sparks(1, 0, src.loc)
		src.visible_message(SPAN_DANGER("\the [src] appears from thin air in a shower of sparks, gravely injured and howling in agony!"))
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		spawn(2)
		playsound(src.loc, 'sound/hallucinations/hell_screech.ogg', 75, 1, 8, 8)
		first_teleport = TRUE
