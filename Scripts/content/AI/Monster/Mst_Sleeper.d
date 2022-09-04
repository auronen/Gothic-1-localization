/*************************************************************************
** Sleeper prototype **
*************************************************************************/

prototype Mst_Default_Sleeper(C_Npc)
{
	// -------- primary data --------
	name							= "Der Schläfer";
	guild							= GIL_SLF;
	level							= 2000;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 500;
	attribute[ATR_DEXTERITY]		= 500;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;
	attribute[ATR_MANA_MAX]			= 500;
	attribute[ATR_MANA]				= 500;

	// -------- protection --------
	protection[PROT_BLUNT]			= 500;
	protection[PROT_EDGE]			= 500;
	protection[PROT_POINT]			= 1000;
	protection[PROT_FIRE]			= 1000;
	protection[PROT_FLY]			= 1000;
	protection[PROT_MAGIC]			= 500;

	// -------- damage --------
	damageType						= DAM_MAGIC;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SLEEPER;
	aivar[AIV_MM_Behaviour]			= PASSIVE;
	aivar[AIV_MM_PercRange]			= 1200;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	// aivar[AIV_MM_RestStart]		= OnlyRoutine;

	fight_tactic = FAI_SLEEPER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_start_Sleeper;
};

// -------------------------------------------------------------
func void Set_Sleeper_Visuals()
{
	Mdl_SetVisual(self, "Sleeper.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Sle_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Sleeper **
*************************************************************************/
instance Sleeper(Mst_Default_Sleeper)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Sleeper_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

func void Rtn_start_Sleeper()
{
	TA_Sleeper(24, 00, 06, 00, "TPL_395");
	TA_Sleeper(06, 00, 24, 00, "TPL_395");
};
