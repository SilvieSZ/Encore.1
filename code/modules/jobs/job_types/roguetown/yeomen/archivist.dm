/datum/job/roguetown/archivist
	title = "Archivist"
	tutorial = "The Archivist meticulously preserves and organizes ancient scrolls and tomes, safeguarding the interior of the Librarum within Etgard Keep. They handle all matter of fictional, non-fictional, and heretical knowledge stored in its annals for time immemorial."
	flag = ARCHIVIST
	department_flag = YEOMEN
	faction = "Station"
	total_positions = 99//Uncapped basically
	spawn_positions = 99
	spells = list(/obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
	allowed_races = RACES_ALL_KINDS
	allowed_ages = ALL_AGES_LIST

	outfit = /datum/outfit/job/roguetown/archivist
	display_order = JDO_ARCHIVIST
	give_bank_account = 15
	min_pq = null
	max_pq = null
	round_contrib_points = 3

	cmode_music = 'sound/music/combat_fancy.ogg'

/datum/outfit/job/roguetown/archivist/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.pronouns == SHE_HER || H.pronouns == THEY_THEM_F)
		shirt = /obj/item/clothing/suit/roguetown/shirt/dress/gen/black
		pants = /obj/item/clothing/under/roguetown/tights/stockings/black
		head  = /obj/item/clothing/head/roguetown/roguehood/black
	else
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/puritan
		armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/nightman
		pants = /obj/item/clothing/under/roguetown/tights/black
		head = /obj/item/clothing/head/roguetown/nightman
	backr = /obj/item/storage/backpack/rogue/satchel
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/storage/keyring/archivist
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	mask = /obj/item/clothing/mask/rogue/spectacles
	id = /obj/item/scomstone/bad

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 2, TRUE)
		H.mind.adjust_spellpoints(1)
		H.grant_language(/datum/language/elvish)
		H.grant_language(/datum/language/dwarvish)
		H.grant_language(/datum/language/celestial)
		H.grant_language(/datum/language/hellspeak)
		H.grant_language(/datum/language/orcish)
		H.grant_language(/datum/language/draconic) // All but beast, which is associated with werewolves.
		ADD_TRAIT(H, TRAIT_SEEPRICES_SHITTY, "[type]")
		H.change_stat("strength", -1)
		H.change_stat("constitution", -1)
		H.change_stat("intelligence", 4)
		if(H.age == AGE_OLD)
			H.change_stat("speed", -1)
			H.change_stat("intelligence", 1)


