func void B_Story_ReturnedFromUrShak()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_FindOrcShaman, CH4_FindOrcShaman_3);
	Log_SetTopicStatus(CH4_FindOrcShaman, LOG_SUCCESS);

	Log_CreateTopic(CH4_EnterTemple, LOG_MISSION);
	Log_SetTopicStatus(CH4_EnterTemple, LOG_RUNNING);
	B_LogEntry(CH4_EnterTemple, CH4_EnterTemple_3);

	// -------- Erfahrung --------
	B_GiveXP(XP_ReturnedFromUrShak);

	// -------- Tagesabläufe ändern --------
	var C_Npc riordian; riordian = Hlp_GetNpc(KDW_605_Riordian); Npc_ExchangeRoutine(riordian, "FoundUrShak");

	// -------- globale Variable setzen --------
	UrShak_SpokeOfUluMulu = TRUE;
};
