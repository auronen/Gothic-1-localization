//*****************************************************************************
//*** Der Spieler hat den Freund von Ur-Shak gefunden ***
//*****************************************************************************
func void B_Story_FoundOrcSlave()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_UluMulu, CH4_UluMulu_2);

	// -------- Erfahrung --------
	B_GiveXP(XP_FoundOrcSlave);

	// -------- globale Variable setzen --------
	FreemineOrc_SuchePotion = LOG_RUNNING;
};
