// #####################################################################
// ##
// ## KAPITEL 3
// ## =========
// ## Der Spieler kehrt vom Ork-Friedhof zurück und berichtet
// ## von Baal-Lukor und den Ereignissen dort.
// ##
// #####################################################################

func void B_Story_BackFromOrcGraveyard()
{
	// -------- Tagebucheintrag --------
	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_1);
	Log_SetTopicStatus(CH3_OrcGraveyard, LOG_SUCCESS);
};
