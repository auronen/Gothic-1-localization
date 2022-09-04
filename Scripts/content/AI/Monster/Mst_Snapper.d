/*************************************************************************
** Snapper prototype **
*************************************************************************/

prototype Mst_Default_Snapper(C_Npc)
{
	// -------- primary data --------
	name							= "Snapper";
	guild							= GIL_SNAPPER;
	level							= 22;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 40;
	protection[PROT_POINT]			= 20;
	protection[PROT_FIRE]			= 20;
	protection[PROT_FLY]			= 10;
	protection[PROT_MAGIC]			= 0;

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
	aivar[AIV_MM_REAL_ID]			= ID_SNAPPER;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 2200;
	aivar[AIV_MM_DrohRange]			= 1800;
	aivar[AIV_MM_AttackRange]		= 1500;
	aivar[AIV_MM_DrohTime]			= 3;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_SNAPPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000; // 30m

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------------
func void Set_Snapper_Visuals()
{
	Mdl_SetVisual(self, "Snapper.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Sna_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Snapper **
*************************************************************************/

instance Snapper(Mst_Default_Snapper)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Snapper_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
