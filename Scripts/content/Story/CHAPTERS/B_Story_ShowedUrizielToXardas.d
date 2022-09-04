func void B_Story_ShowedUrizielToXardas()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_EnterTemple, CH4_EnterTemple_2);
	Log_SetTopicStatus(CH4_EnterTemple, LOG_SUCCESS);

	Log_CreateTopic(CH5_Uriziel, LOG_MISSION);
	Log_SetTopicStatus(CH5_Uriziel, LOG_RUNNING);
	B_LogEntry(CH5_Uriziel, CH5_Uriziel_3);

	// -------- Erfahrung --------
	B_GiveXP(XP_ShowUrizielToXardas);
};
