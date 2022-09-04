instance VLK_560_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= npctype_ambient;
	guild							= GIL_VLK;
	level							= 3;

	voice							= 2;
	id								= 560;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Psionic",	67,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_560;
};

func void Rtn_start_560()
{
	TA_Sleep(23, 00, 06, 30, "OCR_HUT_16");
	TA_StandAround(06, 30, 11, 00, "OCR_OUTSIDE_HUT_16");
	TA_WashSelf(11, 00, 11, 20, "OCR_TO_HUT_17");
	TA_SitCampfire(11, 20, 23, 00, "OCR_OUTSIDE_HUT_16");
};
