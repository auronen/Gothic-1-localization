/*************************************************************************
** Orc SLAVE prototype **
*************************************************************************/

prototype Mst_Default_OrcSlave(C_Npc)
{
	// -------- primary data --------
	name							= "Orc Sklave";
	guild							= GIL_ORCSLAVE;
	level							= 15;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 25;
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
	// aivar[AIV_MM_Behaviour]		= ;
	// aivar[AIV_MM_PercRange]		= 1200;
	// aivar[AIV_MM_DrohRange]		= 1000;
	// aivar[AIV_MM_AttackRange]	= 700;
	// aivar[AIV_MM_DrohTime]		= 5;
	// aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	// aivar[AIV_MM_RestStart]		= OnlyRoutine;

	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------

func void Set_OrcSlave_Visuals()
{
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodySlave",		DEFAULT,DEFAULT,	"Orc_HeadSlave",	DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Orc Slave **
*************************************************************************/

// in den Instanz-Scripten bitte NUR die Werte eintragen, die vom Prototyp abweichen sollen!

instance OrcSlave(Mst_Default_OrcSlave)
{
	// -------- primary data --------
	guild							= GIL_ORCSLAVE;

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcSlave_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Tanzender Ork **
*************************************************************************/
instance OrcPeasantDance(Mst_Default_OrcSlave)
{
	// -------- primary data --------
	name							= "Ork";
	guild							= GIL_ORCWARRIOR;

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcSlave_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMw2hOrcSword01);

	// -------- daily routine --------
	start_aistate = ZS_Orc_Dance;
};

/*************************************************************************
** Trommelnder Ork **
*************************************************************************/
instance OrcPeasantDrum(Mst_Default_OrcSlave)
{
	// -------- primary data --------
	name							= "Ork";
	guild							= GIL_ORCWARRIOR;

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_OrcSlave_Visuals();

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMw2hOrcSword01);

	// -------- daily routine --------
	start_aistate = ZS_Orc_Drum;
};
