//*****************************************************************************
//*** Initialisiert die Ork-Schamanen-Szene am Kastell ***
//*****************************************************************************
func void B_Story_FindOrcShaman()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_FindXardas, CH4_FindXardas_3);

	Log_CreateTopic(CH4_FindOrcShaman, LOG_MISSION);
	Log_SetTopicStatus(CH4_FindOrcShaman, LOG_RUNNING);
	B_LogEntry(CH4_FindOrcShaman, CH4_FindOrcShaman_1);

	// -------- NSCs einsetzen --------
	Wld_InsertNpc(ORC_2200_Shaman, "CASTLE_06");
	Wld_InsertNpc(OrcWarrior4, "CASTLE_07");
	Wld_InsertNpc(OrcWarrior4, "CASTLE_07");
	Wld_InsertNpc(OrcWarrior4, "CASTLE_07");
	Wld_InsertNpc(StoneGolem, "CASTLE_04");

	// -------- globale Variable setzen --------
	FindOrcShaman = LOG_RUNNING;
};
