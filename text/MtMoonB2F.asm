_MtMoonB2FDomeFossilYouWantText::
text "Tu veux le"
line "fossile DOME?"
done

_MtMoonB2FHelixFossilYouWantText::
text "Tu veux le"
line "fossile NAUTILE?"
done

_MtMoonB2FReceivedFossilText::
text "<PLAYER> obtient"
line "@"
text_ram wStringBuffer
text "!@"
text_end

_MtMoonB2FYouHaveNoRoomText::
text "Attends, ton"
line "inventaire est"
cont "plein!@"
text_end

_MtMoonB2FSuperNerdTheyreBothMineText::
text "Hep! Toi là!"
para "Ces fossiles sont"
line "à moi!"
cont "Pas touche!"
done

_MtMoonB2FSuperNerdOkIllShareText::
text "Bon, OK!"
line "On partage!"
prompt

_MtMoonB2fSuperNerdEachTakeOneText::
text "Chacun le sien!"
line "Comme ça,"
cont "pas de jaloux!"
done

_MtMoonB2FSuperNerdTheresAPokemonLabText::
text "Loin d'ici, sur"
line "la CRAMOIS'ILE,"
cont "se trouve un"
cont "LABO #MON."
para "On essaye d'y"
line "régénérer des"
cont "fossiles de"
cont "#MON."
done

_MtMoon3TextSuperNerdGiveFossil::
	text "I plan on taking"
	line "my fossil there!"

	para "Tell you what:"

	para "If you give me"
	line "your fossil too,"
	cont "I can bring it"
	cont "to the lab and"
	cont "see if it can be"
	cont "regenerated!"

	para "How about it?@"
	text_end

_MtMoon3TextSuperNerdNoFossil::
	text "Looks like you"
	line "don't have your"
	cont "fossil in your"
	cont "bag. Go get it!"
	done	

_MtMoon3TextSuperNerdGaveHelix::
	text "<PLAYER> gave the"
	line "HELIX FOSSIL to"
	cont "the SUPER NERD!"
	done

_MtMoon3TextSuperNerdGaveDome::
	text "<PLAYER> gave the"
	line "DOME FOSSIL to"
	cont "the SUPER NERD!"
	done

_MtMoon3TextSuperNerdGaveFossil::
	text "Great! I'll try"
	line "reviving both"
	cont "fossils."
	prompt

_MtMoon3TextSuperNerdKeptFossil::
	text "No worries!"
	para "It's your fossil"
	line "after all."
	done

_MtMoon3TextSuperNerdGaveFossilEnd::
	text "Meet me in"
	line "SAFFRON CITY."
	
	para "I'll tell you"
	line "the results!"
	done

_MtMoon3TextSuperNerdLookingForMoreFossils::
	text "Hey! I'm looking"
	line "for more fossils."

	para "Haven't found any"
	line "yet! Oh well."

	para "I live for the"
	line "hunt!"
	done

_MtMoonB2FSuperNerdThenThisIsMineText::
text "OK, je prends"
line "celui-ci!@"
text_end

_MtMoonB2FRocket1BattleText::
text "La TEAM ROCKET"
line "trouvera les "
cont "fossiles et fera"
cont "fortune en les "
cont "vendant!"
done

_MtMoonB2FRocket1EndBattleText::
text "Grrr!"
line "J'suis vert!"
prompt

_MtMoonB2FRocket1AfterBattleText::
text "A cause de toi"
line "j'suis vert!"
cont "La TEAM ROCKET me"
cont "vengera!"
done

_MtMoonB2FRocket2BattleText::
text "La TEAM ROCKET?"
line "C'est nous!"
cont "Les voleurs de"
cont "#MON!"
done

_MtMoonB2FRocket2EndBattleText::
text "NOOOONNN!"
line "J'ai perdu!"
prompt

_MtMoonB2FRocket2AfterBattleText::
text "Hein? Mes"
line "compagnons vont"
cont "me venger!"
done

_MtMoonB2FRocket3BattleText::
text "Ca bosse dur"
line "ici!"
cont "Alors du balai,"
cont "le mouflet!"
done

_MtMoonB2FRocket3EndBattleText::
text "OK,"
line "t'es pas mauvais!"
prompt

_MtMoonB2FRocket3AfterBattleText::
text "Si tu trouves un"
line "fossile, tu me le"
cont "donnes et tu"
cont "décampes, pigé?"
done

_MtMoonB2FRocket4BattleText::
text "Les p'tits gamins"
line "ne s'occupent pas"
cont "des affaires"
cont "des grands!"
done

_MtMoonB2FRocket4EndBattleText::
text "..."
line "J'suis épuisé!"
prompt

_MtMoonB2FRocket4AfterBattleText::
text "Les #MON"
line "existaient bien"
cont "avant l'homme..."
done
