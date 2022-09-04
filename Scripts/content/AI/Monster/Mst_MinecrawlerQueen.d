/*************************************************************************
** Minecrawler QUEEN prototype **
*************************************************************************/

prototype Mst_Default_MinecrawlerQueen(C_Npc)
{
	// -------- primary data --------
	name							= "Minecrawler Königin";
	guild							= GIL_MINECRAWLER;
	level							= 200; // SN: wegen XP, real nur Level 15!

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 70;
	protection[PROT_EDGE]			= 70;
	protection[PROT_POINT]			= 60;
	protection[PROT_FIRE]			= 60;
	protection[PROT_FLY]			= 1000;
	protection[PROT_MAGIC]			= 60;

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
	aivar[AIV_MM_REAL_ID]			= ID_MINECRAWLERQUEEN;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 1;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	fight_tactic = FAI_MINECRAWLERQUEEN;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------
func void Set_MinecrawlerQueen_Visuals()
{
	Mdl_SetVisual(self, "CrwQueen.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"CrQ_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** MinecrawlerQueen **
*************************************************************************/

instance MinecrawlerQueen(Mst_Default_MinecrawlerQueen)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_MinecrawlerQueen_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
