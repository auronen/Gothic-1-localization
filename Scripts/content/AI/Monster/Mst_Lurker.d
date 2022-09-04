/*************************************************************************
** Lurker prototype **
*************************************************************************/

prototype Mst_Default_Lurker(C_Npc)
{
	// -------- primary data --------
	name							= "Lurker";
	guild							= GIL_LURKER;
	level							= 17;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_HITPOINTS_MAX]	= 90;
	attribute[ATR_HITPOINTS]		= 90;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 20;
	protection[PROT_FIRE]			= 50;
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
	aivar[AIV_MM_REAL_ID]			= ID_LURKER;
	aivar[AIV_MM_Behaviour]			= HUNTER;
	aivar[AIV_MM_PercRange]			= 1400;
	aivar[AIV_MM_DrohRange]			= 1300;
	aivar[AIV_MM_AttackRange]		= 700;
	aivar[AIV_MM_DrohTime]			= 5;
	aivar[AIV_MM_FollowTime]		= 10;
	aivar[AIV_MM_FollowInWater]		= TRUE;
	aivar[AIV_MM_RoamStart]			= OnlyRoutine;

	fight_tactic = FAI_LURKER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// ---------------------------------------------------
func void Set_Lurker_Visuals()
{
	Mdl_SetVisual(self, "Lurker.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Lur_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

/*************************************************************************
** Lurker **
*************************************************************************/

instance Lurker(Mst_Default_Lurker)
{
	// -------- primary data --------

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Lurker_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** DamLurker **
*************************************************************************/

instance DamLurker(Mst_Default_Lurker)
{
	// -------- primary data --------
	name							= "Dammlurker";
	level							= 20;

	id								= MID_DAMLURKER;

	// -------- abilities --------

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Lurker_Visuals();

	// -------- ai --------
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItAt_DamLurker_01);

	// -------- daily routine --------
};
