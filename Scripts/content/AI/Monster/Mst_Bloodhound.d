/*************************************************************************
** Bloodhound prototype(Anims wie Shadowbeast) **
*************************************************************************/

prototype Mst_Default_Bloodhound(C_Npc)
{
	// -------- primary data --------
	name							= "Bluthund";
	guild							= GIL_SHADOWBEAST;
	level							= 22;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 90;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 55;
	protection[PROT_EDGE]			= 55;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
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
	aivar[AIV_MM_REAL_ID]			= ID_BLOODHOUND;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 2500;
	aivar[AIV_MM_DrohRange]			= 2000;
	aivar[AIV_MM_AttackRange]		= 1800;
	aivar[AIV_MM_DrohTime]			= 2;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_SHADOWBEAST;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Bloodhound_Visuals()
{
	Mdl_SetVisual(self, "Shadow.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Bhd_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Bloodhound **
*************************************************************************/

instance Bloodhound(Mst_Default_Bloodhound)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Bloodhound_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};
