_FileDataDestroyedText::
text "La sauvegarde est"
line "détruite!"
prompt

_WouldYouLikeToSaveText::
text "Voulez-vous"
line "sauvegarder?"
done

_GameSavedText::
text "<PLAYER>"
line "sauvegarde"
cont "la partie!"
done

_OlderFileWillBeErasedText::
text "L'ancienne"
line "sauvegarde sera"
cont "effacée. OK?"
done

_WhenYouChangeBoxText::
text "En activant"
line "une autre boîte"
cont "de #MON, les"
cont "données seront"
cont "sauvegardées."
para "Etes-vous"
line "d'accord?"
done

_SkippedForever::
	text "This question"
	line "won't show again."
	prompt

_ChooseABoxText::
text "Choisissez une"
line "BOITE <PKMN>.@"
text_end

_ChooseABoxDataWillSaveText::
	text "Choose a <PKMN> BOX."
	line "Game will save.@"
	text_end

_EvolvedText::
text_ram wStringBuffer
text " évolue"
done

_IntoText::
text_start
line "en @"
text_ram wNameBuffer
text "!"
done

_StoppedEvolvingText::
text "Hein? @"
text_ram wStringBuffer
text_start
line "n'évolue plus!"
prompt

_IsEvolvingText::
text "Hein? @"
text_ram wStringBuffer
text_start
line "évolue!"
done

_FellAsleepText::
text "<TARGET>"
line "s'endort!"
prompt

_AlreadyAsleepText::
text "<TARGET>"
line "est déjà endormi!"
prompt

_PoisonedText::
text "<TARGET>"
line "est empoisonné!"
prompt

_BadlyPoisonedText::
text "<TARGET>"
line "est gravement"
cont "empoisonné!"
prompt

_BurnedText::
text "<TARGET>"
line "brûle!"
prompt

_FrozenText::
text "<TARGET>"
line "est gelé!"
prompt

_FireDefrostedText::
text "Le feu dégèle"
line "<TARGET>!"
prompt

_MonsStatsRoseText::
text "<USER>"
line "gagne @"
text_ram wStringBuffer
text "@"
text_end

_GreatlyRoseText::
text "<SCROLL>à fond@"
text_end

_RoseText::
text "!"
prompt

_MonsStatsFellText::
text "<TARGET>"
line "perd @"
text_ram wStringBuffer
text "@"
text_end

_GreatlyFellText::
text "<SCROLL>à fond@"
text_end

_FellText::
text "!"
prompt

_TeleportedAway::
	text "<USER>"
	line "teleported away!"
	prompt

_RanFromBattleText::
text "<USER>"
line "fuit le combat!"
prompt

_ChargeMoveEffectText::
text "<USER>@"
text_end

_FlewUpHighText::
text_start
line "s'envole!"
prompt

_DugAHoleText::
text_start
line "creuse un trou!"
prompt

_BecameConfusedText::
text "<TARGET>"
line "devient fou!"
prompt

_MimicLearnedMoveText::
text "<USER>"
line "apprend"
cont "@"
text_ram wNameBuffer
text "!"
prompt

_MoveWasDisabledText::
text_ram wNameBuffer
text " de"
line "<TARGET>"
cont "a disparu!"
prompt

_NothingHappenedText::
text "Rien ne se passe!"
prompt

_NoEffectText::
text "Sans effet!"
prompt

_ButItFailedText::
text "Mais échoue!"
prompt

_DidntAffectText::
text "Aucun effet sur"
line "<TARGET>!"
prompt

_IsUnaffectedText::
text "<TARGET>"
line "ne sent rien!"
prompt

_ParalyzedMayNotAttackText::
text "<TARGET>"
line "est paralysé!"
cont "Il peut ne pas"
cont "attaquer!"
prompt

_SubstituteText::
text "Il crée un"
line "CLONE!"
prompt

_HasSubstituteText::
text "<USER>"
line "a un CLONE!"
prompt

_TooWeakSubstituteText::
text "Trop faible pour"
line "créer un CLONE!"
prompt

_CoinsScatteredText::
text "Une pluie de"
line "pognon!"
prompt

_GettingPumpedText::
text "<USER>"
line "accroît sa force!"
prompt

_WasSeededText::
text "<TARGET>"
line "est infecté!"
prompt

_EvadedAttackText::
text "<TARGET>"
line "esquive!"
prompt

_HitWithRecoilText::
text "<USER>"
line "se blesse en"
cont "frappant!"
prompt

_ConversionChooseModeText::
	text "Convert to which"
	line "mode?"
	prompt

_StatusChangesEliminatedText::
text "Tout effet est"
line "annulé!"
prompt

_ImmuneToPsychicText::
	text "<USER> is"
	line "now immune to"
	cont "PSYCHIC-type!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
text "<USER>"
line "s'endort et"
cont "régénère!"
done

_RegainedHealthText::
text "<USER>"
line "régénère!"
prompt

_TransformedText::
text "<USER>"
line "se transforme en"
cont "@"
text_ram wNameBuffer
text "!"
prompt

_LightScreenProtectedText::
text "<USER>"
line "est protégé con-"
cont "tre les attaques"
cont "spéciales!"
prompt

_ReflectGainedArmorText::
text "<USER>"
line "augmente sa"
cont "protection!"
prompt

_ShroudedInMistText::
text "<USER>"
line "s'estompe dans la"
cont "brume!"
prompt

_SuckedHealthText::
text "La vie de"
line "<TARGET>"
cont "est absorbée!"
prompt

_DreamWasEatenText::
text "Les rêves de"
line "<TARGET>"
cont "sont dévorés!"
prompt

_ColosseumOpponentText::
text "!"
done

_GuardedAgainstSuperEffectiveMovesText::
	text "<USER>"
	line "protected against"
	para "super effective"
	line "hits!"
	prompt

_AcidArmorLiquifiedText::
	text "<USER>"
	line "liquified!"
	para "@"
	; fall through
_AllDamageHalvedText::
	text "All damage to it"
	line "is halved!"
	prompt
