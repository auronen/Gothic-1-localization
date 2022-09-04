/*************************************************************************
** Undead Orc Shaman prototype **
*************************************************************************/

prototype Mst_Default_UndeadOrcShaman(C_Npc)
{
	// -------- primary data --------
	name							= "Hohepriester";
	guild							= GIL_UNDEADORC;
	level							= 30;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 190;
	attribute[ATR_DEXTERITY]		= 190;
	attribute[ATR_HITPOINTS_MAX]	= 350;
	attribute[ATR_HITPOINTS]		= 350;
	attribute[ATR_MANA_MAX]			= 75;
	attribute[ATR_MANA]				= 75;

	// -------- protection --------
	protection[PROT_BLUNT]			= 9999; // immun
	protection[PROT_EDGE]			= 9999; // immun
	protection[PROT_POINT]			= 9999; // immun
	protection[PROT_FIRE]			= 9999; // immun
	protection[PROT_FLY]			= 9999; // immun
	protection[PROT_MAGIC]			= 150;

	// -------- damage --------
	damageType						= DAM_EDGE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_UNDEADORCSHAMAN;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_UndeadOrcShaman_Visuals()
{
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Undead Orc Shaman **
*************************************************************************/

instance UndeadOrcShaman(Mst_Default_UndeadOrcShaman)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_UndeadOrcShaman_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItArRuneBreathOfDeath);
	CreateInvItems(self, ItArScrollSummonGolem, 20);
	EquipItem(self, ItRwUdOrcstaff); // für Magiemodus

	// -------- daily routine --------
};
