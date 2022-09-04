// #####################################################################
// ##
// ## KAPITEL 3
// ## =========
// ## Der Spieler wurde von Cor Angar zu den Wassermagiern ins
// ## Neue Lager geschickt.
// ##
// #####################################################################

func void B_Story_SentToNC()
{
	// -------- Cor-Angar zurück zum Übungsplatz schicken --------
	var C_Npc angar;
	angar = Hlp_GetNpc(Gur_1202_CorAngar);
	Npc_ExchangeRoutine(angar, "start");

	// -------- Y-Berion --------
	var C_Npc yberion;
	yberion = Hlp_GetNpc(Gur_1200_YBerion);
	Npc_ExchangeRoutine(yberion, "dead");

	// -------- Gorn platzieren --------
	var C_Npc gorn;
	gorn = Hlp_GetNpc(PC_FIGHTER);
	PrintDebugNpc(PD_MISSION, gorn.name);
	Npc_ExchangeRoutine(gorn, "NCWAIT");
	AI_ContinueRoutine(gorn);

	// -------- Tagebucheinträge --------
	Log_CreateTopic(CH3_EscapePlanNC, LOG_MISSION);
	Log_SetTopicStatus(CH3_EscapePlanNC, LOG_RUNNING);
	B_LogEntry(CH3_EscapePlanNC, CH3_EscapePlanNC_2);
	B_LogEntry(CH3_EscapePlanNC, CH3_EscapePlanNC_3);

	// -------- Missionitem --------
	CreateInvItem(self, ItArRuneTeleport5);
	B_GiveInvItems(self, hero, ItArRuneTeleport5, 1);

	// -------- globale Missionsvariable --------
	CorAngar_SendToNC = TRUE;
};
