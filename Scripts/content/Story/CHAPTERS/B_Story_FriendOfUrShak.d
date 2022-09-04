//*****************************************************************************
//*** Macht den Spieler zum Freund des Ork-Schamanen ***
//*****************************************************************************
func void B_Story_FriendOfUrShak()
{
	// -------- Missionsgegenstände --------
	CreateInvItem(hero, ItMi_OrcTalisman);

	// -------- NSCs --------
	var C_Npc urshak;
	urshak = Hlp_GetNpc(ORC_2200_Shaman);
	urshak.name = NAME_OrcShaman;

	// -------- globale Variable setzen --------
	FriendOfUrShak = TRUE;
};
