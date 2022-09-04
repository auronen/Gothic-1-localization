/*************************************************************************
** GreenGobbo prototype **
*************************************************************************/

prototype Mst_Default_GreenGobbo(C_NPC)
{
	// -------- primary data --------
	name							= "Goblin";
	guild							= GIL_GOBBO;
	level							= 6;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 15;
	protection[PROT_EDGE]			= 15;
	protection[PROT_POINT]			= 8;
	protection[PROT_FIRE]			= 15;
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
	aivar[AIV_MM_REAL_ID]			= ID_GOBBO;
	aivar[AIV_MM_Behaviour]			= PACKHUNTER;
	aivar[AIV_MM_PercRange]			= 1500;
	aivar[AIV_MM_DrohRange]			= 1000;
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
func void Set_GreenGobbo_Visuals()
{
	Mdl_SetVisual(self, "Gobbo.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Gob_Body",				0,		DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Green Gobbo Club **
*************************************************************************/

instance GreenGobboClub(Mst_Default_GreenGobbo)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 5; // da technisch im Faustkampf

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_GreenGobbo_Visuals();

	// -------- ai --------
	fight_tactic = FAI_MONSTER_COWARD;
	Npc_SetToFightMode(self, ItMw_1h_Club_01); // +5

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Green Gobbo Sword **
*************************************************************************/

instance GreenGobboSword(Mst_Default_GreenGobbo)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // da technisch im Faustkampf

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_GreenGobbo_Visuals();

	// -------- ai --------
	Npc_SetToFightMode(self, ItMw_1H_Sword_Old_01); // +10

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
