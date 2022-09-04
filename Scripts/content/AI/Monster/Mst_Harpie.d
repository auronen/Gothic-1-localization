/*************************************************************************
** Bloodfly prototype **
*************************************************************************/

prototype Mst_Default_Harpie(C_Npc)
{
	// -------- primary data --------
	name							= "Harpie";
	guild							= GIL_DEMON;
	level							= 20;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 85;
	attribute[ATR_DEXTERITY]		= 85;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 30;
	protection[PROT_POINT]			= 10;
	protection[PROT_FIRE]			= 0;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 50;

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
	aivar[AIV_MM_REAL_ID]			= ID_HARPIE;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 2500;
	aivar[AIV_MM_DrohRange]			= 2500;
	aivar[AIV_MM_AttackRange]		= 2000;
	aivar[AIV_MM_DrohTime]			= 3;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_Demon;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------------------
func void Set_Harpie_Visuals()
{
	Mdl_SetVisual(self, "Harpie.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Har_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Harpie **
*************************************************************************/

instance Harpie(Mst_Default_Harpie)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Harpie_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
