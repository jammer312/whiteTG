/datum/design/cyberimp_surgical_alien
	name = "Alien Surgical Implant"
	desc = "A set of alien surgical tools hidden behind a concealed panel on the user's arm."
	id = "ci-aliensurgery"
	build_type = PROTOLATHE | MECHFAB
	materials = list (MAT_METAL = 2500, MAT_GLASS = 1500, MAT_SILVER = 1500, MAT_PLASMA = 500, MAT_TITANIUM = 1500)
	construction_time = 200
	build_path = /obj/item/organ/cyberimp/arm/surgery/alien
	category = list("Misc", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/circular_saw_folding
	name = "Folding Bone Saw"
	id = "circular_saw_folding"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/circular_saw/folding
	category = list("initial", "Medical")

/datum/design/optable_folding
	name = "Folding Table"
	id = "optable_folding"
	build_type = AUTOLATHE
	materials = list(MAT_METAL = 3000)
	build_path = /obj/item/optable
	category = list("initial", "Medical")