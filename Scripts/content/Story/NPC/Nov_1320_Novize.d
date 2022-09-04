instance NOV_1320_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 3;

	voice							= 3;
	id								= 1320;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	26,			2,			NOV_ARMOR_L);

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
	daily_routine = Rtn_start_1320;
};

func void Rtn_start_1320()
{
	TA_Smalltalk(07, 05, 23, 05, "PSI_PATH_TEMPLE_4");
	TA_Sleep(23, 05, 07, 05, "PSI_11_HUT_IN");
};

func void Rtn_Ritual_1320()
{
	TA_Stay(00, 00, 08, 00, "PSI_TEMPLE_COURT_3");
	TA_Stay(08, 00, 00, 00, "PSI_TEMPLE_COURT_3");
};
