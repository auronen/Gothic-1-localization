instance VLK_521_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= npctype_ambient;
	guild							= GIL_VLK;
	level							= 2;

	voice							= 2;
	id								= 521;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 13;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 64;
	attribute[ATR_HITPOINTS]		= 64;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Thief",	67,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_521;
};

func void Rtn_start_521() // Marktplatz Playtune
{
	TA_Sleep(22, 30, 07, 00, "OCR_HUT_45");
	TA_Smalltalk(07, 00, 11, 00, "OCR_OUTSIDE_HUT_47_SMALT2");
	TA_RepairHut(11, 00, 13, 00, "OCR_OUTSIDE_HUT_45");
	TA_Smalltalk(13, 00, 16, 00, "OCR_OUTSIDE_HUT_47_SMALT2");
	TA_PlayTune(16, 00, 22, 30, "OCR_OUTSIDE_HUT_48");
};
