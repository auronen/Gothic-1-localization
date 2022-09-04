instance NOV_1314_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 2;
	id								= 1310;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 148;
	attribute[ATR_HITPOINTS]		= 148;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	31,			1,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Axe_Old_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1314;
};

func void Rtn_start_1314()
{
	TA_Sleep(00, 30, 07, 30, "PSI_13_HUT_IN");
	TA_Smoke(07, 30, 00, 30, "PSI_PATH_4_2");
};
