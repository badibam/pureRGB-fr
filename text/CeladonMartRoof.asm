_CeladonMartRoofLittleGirlGiveHerWhichDrinkText::
text "Quelle boisson"
line "lui offrir?"
done

_CeladonMartRoofLittleGirlYayText::
	text "Yay!"

	para "@"
	text_ram wNameBuffer
	text "!"

	para "Thank you!"

	para "You can have this"
	line "from me!@"
	text_end

_CeladonMartRoofLittleGirlTM13ExplanationText::
text_start
para "@"
text_ram wStringBuffer
text ":"
line "LASER GLACE!"
para "Cette attaque"
line "pourra geler"
cont "l'ennemi!@"
text_end

_CeladonMartRoofLittleGirlTM48ExplanationText::
text_start
para "@"
text_ram wStringBuffer
text ":"
line "EBOULEMENT!"
para "Cette attaque"
line "peut faire peur"
cont "à l'ennemi!@"
text_end

_CeladonMartRoofLittleGirlTM49ExplanationText::
text_start
para "TM49..."
line "TRIPLATTAQUE!@"
text_end

_CeladonMartRoofLittleGirlNoRoomText::
text "Plus de place!@"
text_end

_CeladonMartRoofLittleGirlImNotThirstyText::
text "Heu..."
line "Non merci."
cont "A pu soif!@"
text_end

_CeladonMartRoofSuperNerdText::
text "Ma soeur est"
line "dresseur. Tu le"
cont "crois, ça?"
para "Mais c'est une"
line "p'tite peste!"
cont "Elle m'agace!"
done

_CeladonMartRoofLittleGirlImThirstyText::
text "N'ai soif!"
line "Ne veux boire!"
done

_CeladonMartRoofLittleGirlGiveHerADrinkText::
text "N'ai soif!"
line "Ne veux boire!"
done

_VendingMachineText1::
text "Un distributeur!"
line "Que choisir?"
prompt

_VendingMachineText4::
text "Oups! Pas assez"
line "d'argent!"
done

_VendingMachineText5::
text "Et hop!"
line "@"
text_ram wStringBuffer
text "!"
done

_VendingMachineText6::
text "L'inventaire est"
line "plein!"
done

_VendingMachineText7::
text "Pas soif!"
done

_VendingMachineText8::
	text "That's enough"
	line "of that!"