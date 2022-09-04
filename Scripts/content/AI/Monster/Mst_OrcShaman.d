/*************************************************************************
** Orc SHAMAN prototype **
*************************************************************************/

prototype Mst_Default_OrcShaman(C_Npc)
{
	// -------- primary data --------
	name							= "Ork Schamane";
	npctype							= NpcType_Guard;
	guild							= GIL_ORCSHAMAN;
	level							= 50;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 50;
	attribute[ATR_MANA]				= 50;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 25;
	protection[PROT_FLY]			= 20;
	protection[PROT_MAGIC]			= 100;

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
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Orc_Pray;
};

// -------------------------------------------------------------
func void Set_OrcShaman_Visuals()
{
	Mdl_SetVisual(self, "Orc.mds");
	Mdl_ApplyOverlayMDS(self, "Orc_Shaman.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyShaman",		DEFAULT,DEFAULT,	"Orc_HeadShaman",	DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Orc Shaman **
*************************************************************************/

instance OrcShaman(Mst_Default_OrcShaman)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcShaman_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItArRuneFireball);
	EquipItem(self, ItRwOrcstaff); // für Magiemodus

	// -------- daily routine --------
};
