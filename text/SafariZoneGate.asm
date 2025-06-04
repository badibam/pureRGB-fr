_SafariZoneGateSafariZoneWorker1Text::
text "Bienvenue au"
line "PARC SAFARI!"
done

_SafariZoneGateSafariZoneWorker1WouldYouLikeToJoinText::
text "Pour juste 500¥,"
line "tu peux attraper"
cont "autant de #MON"
cont "qu'il te plaira"
cont "dans le parc!"
para "Qu'en dis-tu?@"
text_end

_SafariZoneGateSafariZoneWorker1ThatllBe500PleaseText::
text "Ca fera 500¥"
line "siouplaît!"
para "Seul un certain"
line "type de # BALL"
cont "est utilisé ici."
para "<PLAYER> reçoit"
line "30 SAFARI BALL!@"
text_end

_SafariZoneEntranceWhatGame::
	text "Which Safari Game"
	line "would you like?@"
	text_end

_SafariZoneClassic::
	text "Hunt for #MON"
	line "to catch using"
	cont "bait and rocks!"

	para "Try to find the"
	line "SECRET HOUSE"
	cont "before time runs"
	cont "out! Good luck!"
	prompt

_SafariZoneEntranceSafariBallsReceived::
	text "We only use a"
	line "special # BALL"
	cont "in the CLASSIC"
	cont "Safari game."

	para "<PLAYER> received"
	line "30 SAFARI BALLs!@"
	text_end

_SafariZoneRangerHunt::
	text "Find and defeat"
	line "all 5 RANGERs"
	cont "before time runs"
	cont "out to receive an"
	cont "amazing prize!"

	para "Use your #MON"
	line "at your leisure!"

	para "Watch out for"
	line "other trainers!"
	prompt

_SafariZoneFreeRoam::
	text "Roam the SAFARI"
	line "ZONE as much as"
	cont "you like!"

	para "Use your #MON"
	line "at your leisure!"

	para "No time limits"
	line "and plenty of"
	cont "trainers around!"

	para "Have fun!@"
	text_end


_SafariZoneEntranceText_75360::
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time"
	cont "or SAFARI BALLs!"
	done

_SafariZonePATextNoBalls::
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time!"
	done

_SafariZoneGateSafariZoneWorker1PleaseComeAgainText::
text "Très bien!"
line "A plus tard!"
done

_GenericNotEnoughMoneyText::
_SafariZoneGateSafariZoneWorker1NotEnoughMoneyText::
	text "Oops! Not enough"
	line "money!"
	done

_SafariZoneGateSafariZoneWorker1LeavingEarlyText::
text "On part déjà?@"
text_end

_SafariZoneGateSafariZoneWorker1ReturnSafariBallsText::
text "Donne-moi donc"
line "tes SAFARI BALL"
cont "neuves."
done

_GenericGoodLuckText::
_SafariZoneGateSafariZoneWorker1GoodLuckText::
	text "Good Luck!"
	done

_SafariZoneGateSafariZoneWorker1GoodHaulComeAgainText::
text "Bonne chasse?"
line "Allez..."
cont "A plus tard!"
done

_RangerHuntDoneFailText::
	text "Oh, so close!"
	para "Didn't find all"
	line "the RANGERs?"

	para "Better luck next"
	line "time! Come again!"
	done

_RangerHuntDoneSuccessText::
	text "You beat every"
	line "single RANGER!"
	para "Come right this"
	line "way!"
	done

_ReceivedHyperBallText::
	text "Here's your well-"
	line "earned prize!!"

	para "<PLAYER> received" ; TODO: use generic message
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_SafariZoneEntranceHyperBallOwedText::
	text "You're back!@"
	text_end

_SafariZoneGateSafariZoneWorker2FirstTimeHereText::
text "C'est...c'est la"
line "première fois?"
done

_SafariZoneHelp::
	text "There are 3 types"
	line "of Safari game."

	para "Need any info?@"
	text_end

_SafariZoneGateSafariZoneWorker2SafariZoneExplanationText::
text "Le PARC SAFARI a"
line "4 zones."
para "Tu y trouveras"
line "des #MON"
cont "différents."
cont "Utilise tes"
cont "SAFARI BALL pour"
cont "les capturer!"
para "Le Safari sera"
line "terminé lorsque"
cont "tu auras épuisé"
cont "tes SAFARI BALL!"
para "Avant de partir,"
line "ouvre donc une"
cont "nouvelle boîte de"
cont "#MON pour"
cont "avoir plus de"
cont "place!"
done

_SafariZoneGateSafariZoneWorker2YoureARegularHereText::
text "Oh! T'es un"
line "habitué!"
done
