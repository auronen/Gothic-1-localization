/*************************************************************************
** Orc WARRIOR prototype **
*************************************************************************/

prototype Mst_Default_OrcWarrior(C_Npc)
{
	// -------- primary data --------
	name							= "Ork Krieger";
	npctype							= NpcType_Guard;
	guild							= GIL_ORCWARRIOR;
	level							= 25;

	voice							= 17;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 40;
	protection[PROT_FIRE]			= 55;
	protection[PROT_FLY]			= 30;
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

	// -------- ai --------
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_Guard;
};

// -------------------------------------------------------------
func void Set_OrcWarrior_Visuals()
{
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyWarrior",		DEFAULT,DEFAULT,	"Orc_HeadWarrior",	DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Orc Warrior 1 - Fighter **
*************************************************************************/
instance OrcWarrior1(Mst_Default_OrcWarrior)
{
	// -------- primary data --------
	name							= "Ork Kämpfer";
	level							= 25;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 55;
	attribute[ATR_HITPOINTS_MAX]	= 210;
	attribute[ATR_HITPOINTS]		= 210;

	// -------- protection --------
	protection[PROT_BLUNT]			= 60;
	protection[PROT_EDGE]			= 60;
	protection[PROT_POINT]			= 30;
	protection[PROT_FIRE]			= 30;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcWarrior_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	EquipItem(self, ItMw2hOrcaxe01);

	// -------- daily routine --------
};

/*************************************************************************
** Orc Warrior 2 - Warrior **
*************************************************************************/
instance OrcWarrior2(Mst_Default_OrcWarrior)
{
	// -------- primary data --------
	name							= "Ork Krieger";
	level							= 30;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_HITPOINTS_MAX]	= 230;
	attribute[ATR_HITPOINTS]		= 230;

	// -------- protection --------
	protection[PROT_BLUNT]			= 70;
	protection[PROT_EDGE]			= 70;
	protection[PROT_POINT]			= 35;
	protection[PROT_FIRE]			= 35;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcWarrior_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	EquipItem(self, ItMw2hOrcaxe02);

	// -------- daily routine --------
};

/*************************************************************************
** Orc Warrior 3 - Clan **
*************************************************************************/
instance OrcWarrior3(Mst_Default_OrcWarrior)
{
	// -------- primary data --------
	name							= "Ork Klankrieger";
	level							= 35;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 65;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;

	// -------- protection --------
	protection[PROT_BLUNT]			= 80;
	protection[PROT_EDGE]			= 80;
	protection[PROT_POINT]			= 40;
	protection[PROT_FIRE]			= 40;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcWarrior_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	EquipItem(self, ItMw2hOrcaxe03);

	// -------- daily routine --------
};

/*************************************************************************
** Orc Warrior 4 - Tempelkrieger **
*************************************************************************/
instance OrcWarrior4(Mst_Default_OrcWarrior)
{
	// -------- primary data --------
	name							= "Ork Tempelkrieger";
	level							= 40;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 75;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 45;
	protection[PROT_FIRE]			= 45;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcWarrior_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	EquipItem(self, ItMw2hOrcaxe04);

	// -------- daily routine --------
};
