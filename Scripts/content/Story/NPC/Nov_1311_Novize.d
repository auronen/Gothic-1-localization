instance NOV_1311_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 3;
	id								= 1311;

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
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	25,			2,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	// EquipItem(self, ItMw1hClub01);

	// -------- missions --------
	// mission[0] = Mis_1_Psi_RecruitBuddler;

	// -------- daily routine --------
	daily_routine = Rtn_start_1311;
};

func void Rtn_start_1311()
{
	TA_Sleep(00, 00, 08, 00, "PSI_10_HUT_IN");
	TA_SmallTalk(08, 00, 24, 00, "PSI_TALK_AT_11_HUT");
};
