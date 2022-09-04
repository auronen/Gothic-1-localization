func void B_Story_CuredOrc()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_UluMulu, CH4_UluMulu_1);

	// -------- Erfahrung --------
	B_GiveXP(XP_CuredOrcSlave);

	// -------- Tarroks Fokusnamen ändern --------
	var C_Npc tarrok;
	tarrok = Hlp_GetNpc(FreemineOrc);
	tarrok.name = NAME_CuredOrc;

	// -------- globale Variable setzen --------
	FreemineOrc_SuchePotion = LOG_SUCCESS;
	FreemineOrc_LookingUlumulu = LOG_RUNNING;
	Knows_GetUluMulu = TRUE;
};
