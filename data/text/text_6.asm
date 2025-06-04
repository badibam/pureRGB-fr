_ItemUseBallText00::
text "Il évite la BALL!"
para "Capture"
line "impossible!"
prompt

_ItemUseBallText01::
text "Vous manquez le"
line "#MON!"
prompt

_ItemUseBallText02::
text "Zut de flûte! Il"
line "s'est libéré!"
prompt

_ItemUseBallText03::
text "Méga-mince..."
line "Presque!"
prompt

_ItemUseBallText04::
text "Pas d'bol, hein?"
prompt

_ItemUseBallText05::
text "Top cool!"
line "@"
text_ram wEnemyMonNick
text " est"
cont "capturé!@"
text_end

_ItemUseBallText07::
text_ram wBoxMonNicks
text " est"
line "transféré au PC"
cont "de LEO!"
prompt

_ItemUseBallText08::
text_ram wBoxMonNicks
text " est"
line "transféré au PC"
cont "inconnu!"
prompt

_NoBoxSlotsLeftText::
	text "BOX @"
	text_ram wBoxNumString
	text" is now"
	line "full."
	para "Time to change"
	line "boxes!@"
	text_end

_BoxSlotsLeftText::
	text_ram w2CharStringBuffer
	text " slots left in"
	line "BOX @"
	text_ram wBoxNumString
	text ".@"
	text_end

_ItemUseBallText06::
text "Le profil de"
line "@"
text_ram wEnemyMonNick
text " est"
cont "transféré sur le"
cont "#DEX!@"
text_end

_SurfingGotOnText::
text "<PLAYER> monte sur"
line "@"
text_ram wNameBuffer
text "!"
prompt

_AlreadySurfingText::
	text "You're already"
	line "surfing."
	prompt

_LavaSurfingText::
	text "Surfing on lava?!"
	line "Not happening."
	prompt

_ApexChipPutOnPokeballText::
	text "You installed the"
	line "APEX CHIP on"
	para "@"
	text_ram wNameBuffer
	text "'s"
	line "Poké Ball.@"
	text_asm
	ld a, SFX_SWITCH
	rst _PlaySound
	call WaitForSoundToFinish
	ld c, 50
	rst _DelayFrames
	ld a, SFX_TRADE_MACHINE
	rst _PlaySound
	call WaitForSoundToFinish
	ld c, 50
	rst _DelayFrames
	rst TextScriptEnd

_ApexChipDVsMaxedText::
	text_ram wNameBuffer
	text "'s"
	line "potential is"
	cont "maximized!"
	para "DVs are at max!"
	prompt

_ApexChipAlreadyUsedText::
	text "There's already"
	line "an APEX CHIP"
	para "installed on"
	line "@"
	text_ram wNameBuffer
	text "'s"
	cont "Poké Ball."
	prompt

_BoosterChipInstalledText::
	text "You plugged the"
	line "BOOSTER CHIP into"
	cont "your POKéBALL"
	cont "belt."

	para "All #MON will"
	line "gain boosted EXP!@"
	text_end

_VitaminStatRoseText::
text_ram wStringBuffer
text " de"
line "@"
text_ram wNameBuffer
text_start
cont "augmente."
prompt

_VitaminNoEffectText::
text "Ca ne marche pas."
prompt

_ItemUseNoEffectText::
_RareCandyNoEffectText::
text "Sans effet."
prompt

_ThrewBaitText::
text "<PLAYER> lance"
line "un APPAT."
done

_ThrewRockText::
text "<PLAYER> lance"
line "un CAILLOU."
done

_PlayedFluteNoEffectText::
text "Vous jouez de la"
line "#FLUTE."
para "Super!!! Ca c'est"
line "d'la zique!"
prompt

_FluteWokeUpText::
text "Tous les #MON"
line "endormis se"
cont "réveillent."
prompt

_PlayedFluteHadEffectText::
text "<PLAYER> joue de"
line "la #FLUTE.@"
text_end

_CoinCaseNumCoinsText::
text "Jetons"
line "@"
text_bcd wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
text " "
prompt

_ItemfinderFoundItemText::
text "Ouais!!!!"
line "Le CHERCH'OBJET"
cont "signale un objet"
cont "dans l'coin!"
prompt

_ItemfinderFoundNothingText::
text "Non..."
line "Le CHERCH'OBJET"
cont "ne signale rien."
prompt

_RaisePPWhichTechniqueText::
text "Monter les PP de"
line "quelle attaque?"
done

_RestorePPWhichTechniqueText::
text "Remplir les PP de"
line "quelle attaque?"
done

_PPMaxedOutText::
text "PP de @"
text_ram wStringBuffer
text_start
line "sont au max."
prompt

_PPIncreasedText::
text "PP de @"
text_ram wStringBuffer
text_start
line "augmentés."
prompt

_PPRestoredText::
text "PP restaurés."
prompt

_BootedUpTMText::
text "CT enclenchée!"
prompt

_BootedUpHMText::
text "CS enclenchée!"
prompt

_TeachMachineMoveText::
text "Elle contient:"
line "@"
text_ram wStringBuffer
text "!"
para "Apprendre"
line "@"
text_ram wStringBuffer
text " à"
cont "un #MON?"
done

_MonCannotLearnMachineMoveText::
text_ram wStringBuffer
text " est"
line "incompatible avec"
cont "@"
text_ram wNameBuffer
text "."
para "Instruction de"
line "@"
text_ram wStringBuffer
text_start
cont "impossible."
prompt

_ItemUseNotTimeText::
text "CHEN: Allô?"
line "<PLAYER>? C'est"
cont "pas l'moment de"
cont "faire ça!"
prompt

_ItemUseValuableText::
	text "Looks valuable!"
	para "Selling it would"
	line "be a good idea."
	prompt

_TopSecretKeyText::
	text "This key looks"
	line "similar to the"
	cont "SECRET KEY."
	para "It's a lot more"
	line "worn though."
	para "What's it open?"
	para "Maybe a door on"
	line "CINNABAR ISLAND?"
	para "It says -B2F-"
	line "on it."
	prompt

_ItemUseFossilText::
	text "This fossil is"
	line "fun to admire!"
	para "Maybe putting it"
	line "in the <PC> until"
	cont "finding a use"
	cont "for it is best."
	prompt

_ItemUseInBattleText::
	text "This can only"
	line "be used during"
	cont "a #MON battle."
	prompt

_ItemUseNotYoursToUseText::
text "C'est pas à toi!"
prompt

_ThrowBallAtTrainerMonText1::
text "Le dresseur dévie"
line "la BALL!"
prompt

_ThrowBallAtTrainerMonText2::
text "Voler, c'est mal!"
prompt

_NoCyclingAllowedHereText::
text "Interdit de"
next "pédaler ici!!!"
prompt

_NoSurfingHereText::
text "Pas de SURF sur"
line "@"
text_ram wNameBuffer
text " ici!"
prompt

_BoxFullCannotThrowBallText::
text "La BOITE #MON"
line "est pleine! Objet"
cont "inutilisable!"
prompt
