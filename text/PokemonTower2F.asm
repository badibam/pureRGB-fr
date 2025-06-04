_PokemonTower2FRivalWhatBringsYouHereText::
text "<RIVAL>: Hé,"
line "<PLAYER>!"
cont "Kesstu fais là?"
cont "Tes #MON sont"
cont "pas morts!"
para "Je peux quand"
line "même les mettre"
cont "K.O.! Minable!"
done

_PokemonTower2FRivalDefeatedText::
text "Hein?"
line "Petit fennec!"
para "Je ne t'ai pas"
line "pris au sérieux!"
cont "M-I-N-A-B-L-E!"
prompt

_PokemonTower2FRivalVictoryText::
text "<RIVAL>: Haha,"
line "Tes #MON sont"
cont "minables..."
cont "Comme toi!"
para "Tu devrais les"
line "entraîner un peu!"
prompt

_PokemonTower2FRivalHowsYourDexText::
text "Où en est ton"
line "#DEX? Je"
cont "viens de capturer"
cont "un OSSELAIT!"
para "Je n'ai pas"
line "encore trouvé de"
cont "OSSATUEUR!"
para "Je crois qu'il"
line "n'en existe plus!"
cont "Je dois y aller,"
cont "minable! J'ai du"
cont "pain sur la"
cont "planche, minable!"
para "A bientôt..."
line "Gros minable!"
done

_PokemonTower2FChannelerText::
text "Nous ne pouvons"
line "identifier les"
cont "SPECTRES!"
para "Un SCOPE SYLPHE"
line "pourrait les"
cont "démasquer."
done

_PokemonTower2FChannelerText2::
	text "Thanks for"
	line "getting rid of"
	cont "<TEAM><ROCKET>"
	cont "in our tower!"
	done

_PokemonTower2FChannelerText3::
	text "Thanks for all"
	line "your help!"
	done

_PokemonTower2FChannelerTextBorrowSilphScope::
	text "Before you go,"
	line "maybe you could"
	cont "lend me that"
	cont "@"
	text_ram wNameBuffer
	text "?"
	para "It'd help us"
	line "with the wayward"
	cont "spirits!"
	para "I'll give it"
	line "back whenever"
	cont "you visit here!"
	para "How about it?"
	done

_PokemonTower2FChannelerTextBorrowSilphScopeYes::
	text "Perfect!"
	para "<PLAYER> handed"
	line "the channeler the"
	cont "@"
	text_ram wNameBuffer
	text "."
	done

_PokemonTower2FChannelerTextBack::
	text "Do you want your"
	line "@"
	text_ram wNameBuffer
	text " back?"
	done

_PlayerGotBackItem::
	text "<PARA><PLAYER> got back"
	line "the @"
	text_ram wNameBuffer
	text "!"
	done

_PokemonTower2FChannelerTextBorrowAgain::
	text "By the way<...>"
	para "May I borrow your"
	line "@"
	text_ram wNameBuffer
	text " again?"
	done

_GenericWaitText::
	text "Wait!"
	done

_OhHelloAgainText::
	text "Oh, hello again!"
	done
