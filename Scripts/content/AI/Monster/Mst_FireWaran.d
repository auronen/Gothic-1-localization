/*************************************************************************
** Fire Waran prototype **
*************************************************************************/

prototype Mst_Default_FireWaran(C_Npc)
{
	// -------- primary data --------
	name							= "Feuerwaran";
	guild							= GIL_WARAN;
	level							= 50;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 40;
	protection[PROT_POINT]			= 20;
	protection[PROT_FIRE]			= 9999;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- damage --------
	damageType						= DAM_FIRE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_FIREWARAN;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_WARAN;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000; // 30m

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------
func void Set_FireWaran_Visuals()
{
	Mdl_SetVisual(self, "Waran.mds");
	Mdl_ApplyOverlayMDS(self, "Firewaran.mds");

	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"War_Fire_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Fire Waran **
*************************************************************************/

instance FireWaran(Mst_Default_FireWaran)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_FireWaran_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
