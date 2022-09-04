/*************************************************************************
** Demon LORD prototype **
*************************************************************************/

prototype Mst_Default_DemonLord(C_Npc)
{
	// -------- primary data --------
	name							= "Dämonenlord";
	guild							= GIL_DEMON;
	level							= 100;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 170;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 1000;
	protection[PROT_EDGE]			= 1000;
	protection[PROT_POINT]			= 1000;
	protection[PROT_FIRE]			= 70; // immun
	protection[PROT_FLY]			= 1000; // immun
	protection[PROT_MAGIC]			= 70;

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
	aivar[AIV_MM_REAL_ID]			= ID_DEMONLORD;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 4000;
	aivar[AIV_MM_DrohRange]			= 4000;
	aivar[AIV_MM_AttackRange]		= 3500;
	aivar[AIV_MM_DrohTime]			= 0;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	// aivar[AIV_MM_RestStart]		= OnlyRoutine;

	fight_tactic = FAI_DEMON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 4000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_DemonLord_Visuals()
{
	Mdl_SetVisual(self, "Demon.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Dem2_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** DemonLord **
*************************************************************************/

instance DemonLord(Mst_Default_DemonLord)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_DemonLord_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
