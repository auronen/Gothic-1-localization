/*************************************************************************
** Bloodfly prototype **
*************************************************************************/

prototype Mst_Default_Bloodfly(C_Npc)
{
	// -------- primary data --------
	name							= "Blutfliege";
	guild							= GIL_BLOODFLY;
	level							= 7;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_HITPOINTS_MAX]	= 50;
	attribute[ATR_HITPOINTS]		= 50;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 8;
	protection[PROT_FIRE]			= 0;
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
	aivar[AIV_MM_REAL_ID]			= ID_BLOODFLY;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 5;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

	fight_tactic = FAI_BLOODFLY;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 1500;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------------------
func void Set_Bloodfly_Visuals()
{
	Mdl_SetVisual(self, "Bloodfly.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Blo_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Bloodfly **
*************************************************************************/

instance Bloodfly(Mst_Default_Bloodfly)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Bloodfly_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItAt_Bloodfly_01, 2); // 2 Flügel

	// -------- daily routine --------
};

/*************************************************************************
** Bloodfly für Mission: Mis_1_Psi_HelpBrothers **
*************************************************************************/

instance HelpBrothers_Bloodfly(Mst_Default_Bloodfly)
{
	// -------- primary data --------
	name							= "aggressive Blutfliege";

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Bloodfly_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItAt_Bloodfly_01, 2); // 2 Flügel

	// -------- daily routine --------
};
