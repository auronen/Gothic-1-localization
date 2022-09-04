instance NOV_1337_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 3;

	voice							= 2;
	id								= 1337;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 8;
	attribute[ATR_MANA]				= 8;
	attribute[ATR_HITPOINTS_MAX]	= 208;
	attribute[ATR_HITPOINTS]		= 208;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	31,			2,			NOV_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Hatchet_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1337;
};

func void Rtn_start_1337()
{
	TA_Meditate(08, 00, 10, 00, "PSI_TEMPLE_COURT_2_MOVEMENT");
	TA_Meditate(10, 00, 08, 00, "PSI_TEMPLE_COURT_2_MOVEMENT");
};

func void Rtn_Ritual_1337()
{
	TA_Stay(08, 00, 10, 00, "PSI_TEMPLE_NOVIZE_PR2");
	TA_Stay(10, 00, 08, 00, "PSI_TEMPLE_NOVIZE_PR2");
};
