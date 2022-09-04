/*************************************************************************
** OrcBiter prototype **
*************************************************************************/

prototype Mst_Default_OrcBiter(C_Npc)
{
	// -------- primary data --------
	name							= "Beisser";
	guild							= GIL_ORCDOG;
	level							= 12;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_HITPOINTS_MAX]	= 80;
	attribute[ATR_HITPOINTS]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 40;
	protection[PROT_POINT]			= 20;
	protection[PROT_FIRE]			= 20;
	protection[PROT_FLY]			= 0;
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
	aivar[AIV_MM_REAL_ID]			= ID_ORCBITER;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_SCAVENGER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_OrcBiter_Visuals()
{
	Mdl_SetVisual(self, "Scavenger.mds");
	Mdl_ApplyOverlayMDS(self, "Orcbiter.mds"); // eigener Run-Loop
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Sc2_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** OrcBiter **
*************************************************************************/

instance OrcBiter(Mst_Default_OrcBiter)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcBiter_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 2);

	// -------- daily routine --------
};
