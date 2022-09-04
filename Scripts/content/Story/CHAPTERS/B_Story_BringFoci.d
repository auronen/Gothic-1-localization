// #####################################################################
// ##
// ## KAPITEL 3
// ## =========
// ## Saturas beauftragt den Spieler die vier restlichen Foki
// ## zu finden und zu ihm zu bringen.
// ##
// #####################################################################
func void B_Story_BringFoci()
{
	// -------- Ausrüstung für Spieler --------
	CreateInvItems(self, ItWrFocimap, 2); // 2, damit die Bildschirmausgabe stimmt!
	B_GiveInvItems(self, hero, ItWrFocimap, 2);
	Npc_RemoveInvItem(hero, ItWrFocimap);

	CreateInvItem(hero, ItArScrollTeleport2);

	// -------- Gorn platzieren --------
	var C_Npc gorn;
	gorn = Hlp_GetNpc(PC_FIGHTER);
	Npc_ExchangeRoutine(gorn, "RuinWait");
	AI_ContinueRoutine(gorn);

	// -------- Lester platzieren --------
	var C_Npc lester;
	lester = Hlp_GetNpc(PC_PSIONIC);
	Npc_ExchangeRoutine(lester, "FORTRESSWAIT");
	AI_ContinueRoutine(lester);

	// -------- Lebt der Golem noch? ----
	var C_Npc Lestermonster;
	lestermonster = Hlp_GetNpc(Bridgegolem);
	if (Npc_IsDead(Lestermonster))
	{
		Wld_InsertNpc(Bridgegolem, "PATH_TO_PLATEAU04_BRIDGE2");
	};

	// -------- Milten platzieren --------
	var C_Npc milten;
	milten = Hlp_GetNpc(PC_MAGE);
	Npc_ExchangeRoutine(milten, "SHWait");
	AI_ContinueRoutine(milten);

	// -------- Diego platzieren --------
	var C_Npc diego;
	diego = Hlp_GetNpc(PC_THIEF);
	Npc_ExchangeRoutine(diego, "TROLLWAIT");
	AI_ContinueRoutine(diego);

	// -------- Lebt der Troll noch? ----
	var C_Npc DiegoMonster;
	Diegomonster = Hlp_GetNpc(Troll);
	if (Npc_IsDead(Diegomonster))
	{
		Wld_InsertNpc(Troll, "LOCATION_12_14");
	};

	// -------- Wachen zur Ebene der Wassermagier freischalten --------
	var C_Npc sld723; sld723 = Hlp_GetNpc(SLD_723_Soeldner); sld723.aivar[AIV_PASSGATE] = TRUE;
	var C_Npc sld732; sld732 = Hlp_GetNpc(SLD_732_Soeldner); sld732.aivar[AIV_PASSGATE] = TRUE;

	// -------- Tagebucheinträge --------
	B_LogEntry(CH3_EscapePlanNC, CH3_EscapePlanNC_1);
	Log_SetTopicStatus(CH3_EscapePlanNC, LOG_SUCCESS);

	Log_CreateTopic(CH3_BringFoci, LOG_MISSION);
	Log_SetTopicStatus(CH3_BringFoci, LOG_RUNNING);
	B_LogEntry(CH3_BringFoci, CH3_BringFoci_1);
	B_LogEntry(CH3_BringFoci, CH3_BringFoci_2);
	B_LogEntry(CH3_BringFoci, CH3_BringFoci_3);

	// -------- Mission auf RUNNING setzen --------
	Saturas_BringFoci = 1;
};
