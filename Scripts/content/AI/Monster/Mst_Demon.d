/*************************************************************************
** Demon prototype **
*************************************************************************/

prototype Mst_Default_Demon(C_Npc)
{
	// -------- primary data --------
	name							= "Flammendämon";
	guild							= GIL_DEMON;
	level							= 50;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 75;
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 35;
	protection[PROT_FIRE]			= 500;
	protection[PROT_FLY]			= 1000;
	protection[PROT_MAGIC]			= 35;

	// -------- damage --------
	damageType						= DAM_FIRE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_DEMON;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 2800;
	aivar[AIV_MM_DrohRange]			= 2500;
	aivar[AIV_MM_AttackRange]		= 2000;
	aivar[AIV_MM_DrohTime]			= 3;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	// aivar[AIV_MM_RestStart]		= OnlyRoutine;

	fight_tactic = FAI_DEMON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Demon_Visuals()
{
	Mdl_SetVisual(self, "Demon.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Dem_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Demon **
*************************************************************************/

instance Demon(Mst_Default_Demon)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Demon_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Summoned Demon **
*************************************************************************/

instance SummonedByPC_Demon(Mst_Default_Demon)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Demon_Visuals();

	// -------- ai --------
	aivar[AIV_MM_DistToMaster]		= 400;
	aivar[AIV_MM_TimeLooseHP]		= 1;
	aivar[AIV_MM_PARTYMEMBER]		= TRUE;

	senses = SENSE_HEAR | SENSE_SEE;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_SummonedByPC;
};

instance SummonedByNPC_Demon(Mst_Default_Demon)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Demon_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Summoned;
};

/*************************************************************************
** Xardas' zahmer Dämon **
*************************************************************************/

instance XardasDemon(Mst_Default_Demon)
{
	// -------- primary data --------
	npctype							= NpcType_Friend;
	guild							= GIL_DEMON;
	flags							= NPC_FLAG_IMMORTAL;

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Demon_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_DEMON;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_XardasDemon; // Einsetzen bei WP "DT_E1_06"
};

/*************************************************************************
** OTDemon **
*************************************************************************/

instance OTDemon(Mst_Default_Demon)
{
	// -------- primary data --------
	name							= "niederer Dämon";
	guild							= GIL_DEMON;
	level							= 60;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 130;
	attribute[ATR_DEXTERITY]		= 130;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 70;
	protection[PROT_EDGE]			= 70;
	protection[PROT_POINT]			= 70;
	protection[PROT_FIRE]			= 35;
	protection[PROT_FLY]			= 70;
	protection[PROT_MAGIC]			= 35;

	// -------- damage --------
	damageType						= DAM_EDGE;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Demon_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
