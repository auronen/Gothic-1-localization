func void B_Story_AccessToXardas()
{
	// -------- Missionsgegenstände --------
	CreateInvItem(hero, ItArRuneTeleport3);

	// -------- Tagebucheinträge --------
	B_LogEntry(CH4_FindXardas, CH4_FindXardas_1);

	// -------- Erfahrung --------
	B_GiveXP(XP_DeliveredGolemhearts);

	// -------- Tagesabläufe ändern --------

	// -------- globale Variable setzen --------
	FindGolemHearts = 4;
};
