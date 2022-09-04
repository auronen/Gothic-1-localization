/*************************************************************************
** Swampshark prototype **
*************************************************************************/

prototype Mst_Default_Swampshark(C_Npc)
{
	// -------- primary data --------
	name							= "Sumpfhai";
	guild							= GIL_SWAMPSHARK;
	level							= 40;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 140;
	attribute[ATR_DEXTERITY]		= 140;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 130;
	protection[PROT_EDGE]			= 130;
	protection[PROT_POINT]			= 70;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 9999;
	protection[PROT_MAGIC]			= 40;

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
	aivar[AIV_MM_REAL_ID]			= ID_SWAMPSHARK;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1500;
	aivar[AIV_MM_DrohRange]			= 1300;
	aivar[AIV_MM_AttackRange]		= 1000;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_SWAMPSHARK;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Swampshark_Visuals()
{
	Mdl_SetVisual(self, "Swampshark.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Swa_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Swampshark **
*************************************************************************/

instance Swampshark(Mst_Default_Swampshark)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Swampshark_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** hurt Swampshark: Mission: Sit_1_PSI_GorNaRan_KillSwampshark **
*************************************************************************/

instance HurtSwampshark(Mst_Default_Swampshark)
{
	// -------- primary data --------
	name							= "verletzter Sumpfhai";

	// -------- abilities --------
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Swampshark_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
