/*************************************************************************
** Molerat prototype **
*************************************************************************/

prototype Mst_Default_Molerat(C_Npc)
{
	// -------- primary data --------
	name							= "Molerat";
	guild							= GIL_MOLERAT;
	level							= 5;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 8;
	attribute[ATR_DEXTERITY]		= 8;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 8;
	protection[PROT_EDGE]			= 8;
	protection[PROT_POINT]			= 5;
	protection[PROT_FIRE]			= 5;
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
	aivar[AIV_MM_REAL_ID]			= ID_MOLERAT;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 5;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_MOLERAT;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000; // 30m

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ------------------------------------------------------------
func void Set_Molerat_Visuals()
{
	Mdl_SetVisual(self, "Molerat.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Mol_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Molerat **
*************************************************************************/

instance Molerat(Mst_Default_Molerat)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Molerat_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 2);

	// -------- daily routine --------
};

/*************************************************************************
** junge Molerat(für Spielstart) **
*************************************************************************/

instance YMolerat(Mst_Default_Molerat)
{
	// -------- primary data --------
	name							= "junge Molerat";
	level							= 4;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------
	protection[PROT_BLUNT]			= 8;
	protection[PROT_EDGE]			= 8;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Molerat_Visuals();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- ai --------
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
