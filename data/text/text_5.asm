_CableClubNPCPleaseComeAgainText::
text "A bientôt!"
done

_CableClubNPCMakingPreparationsText::
text "Nous préparons"
line "le lien."
cont "Patience s.v.p.!"
done

_UsedStrengthText::
text_ram wNameBuffer
text_start
line "utilise FORCE.@"
text_end

_CanMoveBouldersText::
text_ram wNameBuffer
text_start
line "peut bouger"
cont "les rochers."
prompt

_CurrentTooFastText::
text "Le courant est"
line "trop rapide!"
prompt

_CurrentTooFastTextEntry::
	db "The current is"
	line "much too fast!"
	done

_CurrentTooFastText2::
	text "Can't SURF here!"
	para "@"
	text_jump _CurrentTooFastTextEntry

_CyclingIsFunText::
text "Le vélo,"
line "c'est cool!"
cont "Oublie le SURF!"
prompt

_FlashLightsAreaText::
text "Un FLASH éclaire"
line "les environs!"
prompt

_EscapeText::
	text "Escape@"
	text_end

_WarpText::
	text "Warp@"
	text_end

_ToLastPkmnCenterText::
	text " to the last"
	line "#MON CENTER?"
	prompt

_PocketAbraFlavorText1::
	text_ram wPocketAbraNick
	text " "
	line "grabbed your"
	cont "hand quickly in"
	cont "anticipation."
	prompt

_PocketAbraFlavorText2::
	text_ram wPocketAbraNick
	text " looks"
	line "very excited!"
	prompt

_PocketAbraFlavorText3::
	text_ram wPocketAbraNick
	text " was"
	line "dozing off in"
	cont "your bag."
	prompt

_PocketAbraFlavorText4::
	text_ram wPocketAbraNick
	text " sat"
	line "on your shoulder"
	cont "comfily."
	prompt

_PocketAbraFlavorText5::
	text_ram wPocketAbraNick
	text " "
	line "focused with"
	cont "all its might!"
	prompt

_PocketAbraNo::
	text_ram wPocketAbraNick
	text " looks"
	line "disappointed<...>"
	prompt

_WarpToLastPokemonCenterText::
text "Téléportation au"
line "dernier CENTRE"
cont "#MON visité."
done

_CannotUseTeleportNowText::
text_ram wNameBuffer
text " ne"
line "peut utiliser la"
cont "TELEPORTATION."
prompt

_CannotFlyHereText::
text_ram wNameBuffer
text " ne"
line "peut VOLER ici."
prompt

_CannotDigHereText::
	text_ram wNameBuffer
	text " can't"
	line "DIG here."
	prompt

_CannotDigWhileSurfingText::
	text "Can't DIG while"
	line "SURFing on water!"
	prompt

_NoWhereToDigDown::
	text "You'll hit water"
	line "if you dig here."
	para "Find some"
	line "stabler ground."
	prompt

_NotHealthyEnoughText::
text "Points de vie"
line "insuffisants."
prompt

_AlreadyBrightText::
	text "It's already"
	line "bright enough."
	prompt

_NewBadgeRequiredText::
text "Non! Un nouveau"
line "BADGE est requis."
prompt

_CannotUseItemsHereText::
text "Pas d'objets ici!"
prompt

_CannotGetOffHereText::
text "Impossible de"
line "descendre ici!"
prompt

_GotMonText::
text "<PLAYER> obtient:"
line "@"
text_ram wNameBuffer
text "!@"
text_end

_SentToBoxText::
text "Plus de place"
line "pour un #MON!"
cont "@"
text_ram wBoxMonNicks
text " est"
cont "transféré à la"
cont "BOITE @"
text_ram wStringBuffer
text " du PC!"
done

_BoxIsFullText::
text "Plus de place"
line "pour un #MON!"
para "La BOITE #MON"
line "est pleine!"
para "Changez de BOITE"
line "dans un CENTRE"
cont "#MON!"
done
