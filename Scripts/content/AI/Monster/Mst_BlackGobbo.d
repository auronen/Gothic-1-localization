/*************************************************************************
** BlackGobbo prototype **
*************************************************************************/

prototype Mst_Default_BlackGobbo(C_NPC)
{
	// -------- primary data --------
	name							= "schwarzer Goblin";
	guild							= GIL_GOBBO;
	level							= 12;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_HITPOINTS_MAX]	= 80;
	attribute[ATR_HITPOINTS]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 40;
	protection[PROT_EDGE]			= 40;
	protection[PROT_POINT]			= 10;
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
	aivar[AIV_MM_REAL_ID]			= ID_BLACKGOBBO;
	aivar[AIV_MM_Behaviour]			= PACKHUNTER;
	aivar[AIV_MM_PercRange]			= 1500;
	aivar[AIV_MM_DrohRange]			= 1200;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 4;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000; // 30m

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ------------------------------------------------------------------
func void Set_BlackGobbo_Visuals()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Gob_Body",				1,		DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Black Gobbo Mace **
*************************************************************************/

instance BlackGobboMace(Mst_Default_BlackGobbo)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 35; // da technisch im Faustkampf

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_BlackGobbo_Visuals();

	// -------- ai --------
	Npc_SetToFightMode(self, ItMw_1H_Nailmace_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Black Gobbo Warrior **
*************************************************************************/

instance BlackGobboWarrior(Mst_Default_BlackGobbo)
{
	// -------- primary data --------
	name							= "Goblin Krieger";
	level							= 15;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60 + 30; // da Gobbos technisch im Faustkampf
	attribute[ATR_HITPOINTS_MAX]	= 105;
	attribute[ATR_HITPOINTS]		= 105;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_BlackGobbo_Visuals();

	// -------- ai --------
	Npc_SetToFightMode(self, ItMw_1H_Mace_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
