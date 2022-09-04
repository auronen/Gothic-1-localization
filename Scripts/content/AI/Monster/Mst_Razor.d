/*************************************************************************
** Razor prototype(Anims wie Snapper) **
*************************************************************************/

prototype Mst_Default_Razor(C_Npc)
{
	// -------- primary data --------
	name							= "Razor";
	guild							= GIL_SNAPPER;
	level							= 20;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 110;
	attribute[ATR_DEXTERITY]		= 110;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 100;
	protection[PROT_EDGE]			= 100;
	protection[PROT_POINT]			= 30;
	protection[PROT_FIRE]			= 80;
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
	aivar[AIV_MM_REAL_ID]			= ID_RAZOR;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1400;
	aivar[AIV_MM_DrohRange]			= 1200;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 4;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RestStart]			= OnlyRoutine;

	fight_tactic = FAI_SNAPPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Razor_Visuals()
{
	Mdl_SetVisual(self, "Snapper.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Raz_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Razor **
*************************************************************************/

// in den Instanz-Scripten bitte NUR die Werte eintragen, die vom Prototyp abweichen sollen!

instance Razor(Mst_Default_Razor)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Razor_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
