/*************************************************************************
** Meatbug prototype **
*************************************************************************/

prototype Mst_Default_Meatbug(C_Npc)
{
	// -------- primary data --------
	name							= "Fleischwanze";
	guild							= GIL_MEATBUG;
	level							= 1;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 1;
	attribute[ATR_DEXTERITY]		= 1;
	attribute[ATR_HITPOINTS_MAX]	= 10;
	attribute[ATR_HITPOINTS]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 0;
	protection[PROT_EDGE]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 100;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_EDGE;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_MEATBUG;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

//	fight_tactic =; // kämpfen nicht!
	senses = SENSE_SMELL;
	senses_range = 500; // 5m

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------
func void Set_Meatbug_Visuals()
{
	Mdl_SetVisual(self, "Meatbug.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Mbg_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Meatbug **
*************************************************************************/

instance Meatbug(Mst_Default_Meatbug)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Meatbug_Visuals();

	// -------- ai --------
	// Npc_SetToFistMode(self); // SN: damit der Kleine keine unnötigen PERC_ASSESSFIGHTER auslöst!

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItAt_Meatbug_01, 1);

	// -------- daily routine --------
};
