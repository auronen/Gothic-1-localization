// Der Spieler wird von Xardas losgeschickt, um URIZIEL aufzuladen.
func void B_Story_LoadSword()
{
	// -------- Tagebucheinträge --------
	B_LogEntry(CH5_Uriziel, CH5_Uriziel_2);

	// -------- Erfahrung --------
	B_GiveXP(XP_ReturnedFromSunkenTower);

	// -------- magische Formel, um URIZIEL zu laden --------
	CreateInvItem(hero, Scroll4Milten);

	// -------- TA für Milten, dass er auf SC wartet --------
	var C_Npc Milten; Milten = Hlp_GetNpc(PC_Mage);
	Npc_ExchangeRoutine(Milten, "LSWait");

	// -------- globale Variable --------
	LoadSword = TRUE;
};
