//*****************************************************************************
//*** Diese Funktion tötet alle Bewohner des FMC ***
//*****************************************************************************
func void B_Story_FindXardas()
{
	// -------- Tagebucheinträge --------
	Log_CreateTopic(CH4_FindXardas, LOG_MISSION);
	Log_SetTopicStatus(CH4_FindXardas, LOG_RUNNING);
	B_LogEntry(CH4_FindXardas, CH4_FindXardas_4);
	B_LogEntry(CH4_FindXardas, CH4_FindXardas_5);

	// -------- Missionsgegenstände --------

	// -------- NSCs einsetzen --------
	Wld_InsertNpc(XardasDemon, "DT_E1_06");

	// -------- globale Variable setzen --------
	FindXardas = TRUE;
};
