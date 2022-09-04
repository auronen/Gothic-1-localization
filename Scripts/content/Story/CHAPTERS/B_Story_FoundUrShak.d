func void B_Story_FoundUrShak()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_FindOrcShaman, CH4_FindOrcShaman_2);

	Log_CreateTopic(CH4_UluMulu, LOG_MISSION);
	Log_SetTopicStatus(CH4_UluMulu, LOG_RUNNING);
	B_LogEntry(CH4_UluMulu, CH4_UluMulu_3);

	// -------- Erfahrung --------
	B_GiveXP(XP_FoundOrcShaman);

	// -------- Tagesabläufe ändern --------
	var C_Npc riordian; riordian = Hlp_GetNpc(KDW_605_Riordian); Npc_ExchangeRoutine(riordian, "FoundUrShak");

	// -------- globale Variable setzen --------
	UrShak_SpokeOfUluMulu = TRUE;
};
