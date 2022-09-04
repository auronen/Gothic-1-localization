/*************************************************************************
** Golem prototype **
*************************************************************************/

prototype Mst_Default_Golem(C_Npc)
{
	// -------- primary data --------
	name							= "Golem";
	guild							= GIL_GOLEM;
	level							= 100;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 150;
	attribute[ATR_DEXTERITY]		= 150;
	attribute[ATR_HITPOINTS_MAX]	= 600;
	attribute[ATR_HITPOINTS]		= 600;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 9999;
	protection[PROT_EDGE]			= 9999;
	protection[PROT_POINT]			= 9999; // immun
	protection[PROT_FIRE]			= 9999; // immun
	protection[PROT_FLY]			= 9999; // immun
	protection[PROT_MAGIC]			= 9999;

	// -------- damage --------
	damageType						= DAM_FLY;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	// REAL_ID in Instanzen !!!
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1500;
	aivar[AIV_MM_DrohRange]			= 1500;
	aivar[AIV_MM_AttackRange]		= 1500;
	aivar[AIV_MM_DrohTime]			= 0;
	aivar[AIV_MM_FollowTime]		= 5;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_GOLEM;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_StoneGolem_Visuals()
{
	Mdl_SetVisual(self, "Golem.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Gol_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// -------------------------------------------------------------
func void Set_FireGolem_Visuals()
{
	Mdl_SetVisual(self, "Golem.mds");
	Mdl_ApplyOverlayMDS(self, "Golem_Firegolem.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Gol_Fire_Body",		DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// -------------------------------------------------------------
func void Set_IceGolem_Visuals()
{
	Mdl_SetVisual(self, "Golem.mds");
	Mdl_ApplyOverlayMDS(self, "Golem_Icegolem.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Gol_Ice_Body",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Stone Golem **
*************************************************************************/

instance StoneGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Stein Golem";

	// -------- abilities --------

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_StoneGolem_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_STONEGOLEM;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItAt_StoneGolem_01);

	// -------- daily routine --------
};

/*************************************************************************
** Summoned Stone Golem **
*************************************************************************/

instance SummonedByPC_StoneGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Golem";

	// -------- abilities --------

	// -------- protection --------
	protection[PROT_EDGE]			= 100;
	protection[PROT_BLUNT]			= 75;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_StoneGolem_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_STONEGOLEM;
	aivar[AIV_MM_DistToMaster]		= 400;
	aivar[AIV_MM_TimeLooseHP]		= 2;
	aivar[AIV_MM_PARTYMEMBER]		= TRUE;

	senses = SENSE_HEAR | SENSE_SEE;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_SummonedByPC;
};

instance SummonedByNPC_StoneGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Stein Golem";

	// -------- abilities --------

	// -------- protection --------
	protection[PROT_BLUNT]			= 75;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_StoneGolem_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_STONEGOLEM;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Summoned;
};

/*************************************************************************
** Fire Golem **
*************************************************************************/
instance FireGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Feuer Golem";

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50; // da Feuerschaden
	attribute[ATR_HITPOINTS_MAX]	= 150; // da er nur durch Blitz- und Eiszauber verwundbar ist, muß dieser Wert hier sehr viel niedriger sein
	attribute[ATR_HITPOINTS]		= 150;

	// -------- protection --------
	protection[PROT_MAGIC]			= 0; // betrifft im wesentlichen die Blitz- und Eiszauber

	// -------- damage --------
	damageType						= DAM_FIRE;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_FireGolem_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_FIREGOLEM;

	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItAt_FireGolem_01);

	// -------- daily routine --------
};

/*************************************************************************
** Ice Golem **
*************************************************************************/
instance IceGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Eis Golem";

	// -------- abilities --------
	attribute[ATR_MANA_MAX]			= 500;
	attribute[ATR_MANA]				= 500;
	attribute[ATR_HITPOINTS_MAX]	= 150; // da er nur durch Feuerschaden verwundbar
	attribute[ATR_HITPOINTS]		= 150;

	// -------- protection --------
	protection[PROT_FIRE]			= 0;

	// -------- damage --------
	damageType						= DAM_BLUNT;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_IceGolem_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_ICEGOLEM;

	fight_tactic = FAI_HUMAN_MAGE; // damit der Golem eine "Icecube"-Attack einsetzen kann
//	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItAt_IceGolem_01);
	CreateInvItem(self, ItAt_IceGolem_02);

	// -------- daily routine --------
};

/*************************************************************************
** Bridge Golem **
*************************************************************************/
// bewacht die Brücke zur Bergfestung
// Hinweis im Spiel: sollte mit Keulenwaffen bezwungen werden!
instance BridgeGolem(Mst_Default_Golem)
{
	// -------- primary data --------
	name							= "Brücken Golem";
	level							= 50;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_StoneGolem_Visuals();
	// Mdl_SetModelScale(self, 0.8, 0.8, 0.8);

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
