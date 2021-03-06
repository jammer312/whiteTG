/mob/living/proc/compoundDamage(var/mob/living/A,var/mod=1)
	adjustBruteLoss(A.bruteloss*mod)
	adjustOxyLoss(A.oxyloss*mod)
	adjustToxLoss(A.toxloss*mod)
	adjustFireLoss(A.fireloss*mod)
	adjustCloneLoss(A.cloneloss*mod)
	adjustStaminaLoss(A.staminaloss*mod)

/mob/living/simple_animal/hostile/alien/drone/death()
	var/mob/living/carbon/alien/humanoid/drone/M = new(loc)
	M.compoundDamage(src,2)
	qdel(src)

/mob/living/simple_animal/hostile/alien/sentinel/death()
	var/mob/living/carbon/alien/humanoid/sentinel/M = new(loc)
	M.compoundDamage(src,2)
	qdel(src)

/mob/living/simple_animal/hostile/alien/queen/death()
	var/mob/living/carbon/alien/humanoid/royal/praetorian/M = new(loc)
	M.compoundDamage(src,2)
	qdel(src)

/mob/living/simple_animal/hostile/alien/queen/large/death()
	var/mob/living/carbon/alien/humanoid/royal/queen/M = new(loc)
	M.compoundDamage(src,2)
	qdel(src)

/mob/living/simple_animal/hostile/alien/death()
	var/mob/living/carbon/alien/humanoid/hunter/M = new(loc)
	M.compoundDamage(src,2)
	qdel(src)


mob/living/carbon/human/species/lizard/Initialize()
	..()
	if(src.dna.features["tail_lizard"] == "Alien")
		src.dna.features["tail_lizard"] = "Smooth"
		update_body()

/obj/item/slapper/Initialize()
	var/mob/living/carbon/human/H = loc
	if(istype(H))
		var/obj/item/slapper_mark_two/S = new /obj/item/slapper_mark_two(get_turf(H))
		H.dropItemToGround(src, TRUE)
		H.put_in_hands(S)
		qdel(src)
		del(src)
	..()


/obj/item/organ/heart/attackby(obj/item/F, mob/user)
	.=..()
	if(istype(F, /obj/item/reagent_containers/food/snacks/grown) && isstrictlytype(src, /obj/item/organ/heart))
		var/obj/item/reagent_containers/food/snacks/grown/FT = F
		var/pow = 0
		/datum/plant_gene/trait/glow
		/datum/plant_gene/trait/glow/berry
		var/obj/item/seeds/berry/S = FT.seed
		if(S.get_gene(/datum/plant_gene/trait/glow))
			pow = S.potency*2/100//if trait any of biolums
			if(S.get_gene(/datum/plant_gene/trait/glow/berry))
				pow += 1//if trait glow-berry
			if(pow > 0)
				var/obj/item/organ/heart/light/N = new(user.loc)
				N.power = pow
				N.brightness_on = 4+pow
				qdel(F)
				qdel(src)