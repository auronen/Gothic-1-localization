/*************************************************************************
** Minecrawler WARRIOR prototype **
*************************************************************************/

prototype Mst_Default_MinecrawlerWarrior(C_Npc)
{
	// -------- primary data --------
	name							= "Minecrawler Warrior";
	guild							= GIL_MINECRAWLER;
	level							= 22;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 130;
	attribute[ATR_DEXTERITY]		= 70;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 120;
	protection[PROT_EDGE]			= 120;
	protection[PROT_POINT]			= 35;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 30;
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
	aivar[AIV_MM_REAL_ID]			= ID_MINECRAWLERWARRIOR;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 2;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_WuselStart]		= OnlyRoutine;

	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------
func void Set_MinecrawlerWarrior_Visuals()
{
	Mdl_SetVisual(self, "Crawler.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Cr2_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** MinecrawlerWarrior **
*************************************************************************/

instance MinecrawlerWarrior(Mst_Default_MinecrawlerWarrior)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_MinecrawlerWarrior_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** OTMinecrawler **
*************************************************************************/
instance OTMinecrawler(Mst_Default_MinecrawlerWarrior)
{
	// -------- primary data --------
	name							= "Tempel Minecrawler";
	level							= 25;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 120;
	attribute[ATR_DEXTERITY]		= 120;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 70;
	protection[PROT_EDGE]			= 70;
	protection[PROT_POINT]			= 35;
	protection[PROT_FIRE]			= 30;
	protection[PROT_FLY]			= 70;
	protection[PROT_MAGIC]			= 30;

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
	Set_MinecrawlerWarrior_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
