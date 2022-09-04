instance VLK_573_Graham(Npc_Default)
{
	// -------- primary data --------
	name							= "Graham";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 4;

	voice							= 2;
	id								= 573;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Fighter",	67,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, Itfo_Potion_Water_01);
	CreateInvItem(self, ItWrOMmap);
	CreateInvItem(self, ItWrWorldmap);
	CreateInvItem(self, ItWrOCmap);
	CreateInvItem(self, ItWrPinup);
	EquipItem(self, ItMw_1H_Mace_Light_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_573;
};

func void Rtn_start_573()
{
	TA_Sleep(22, 30, 06, 00, "OCR_HUT_76");
	TA_SitAround(06, 00, 07, 00, "OCR_OUTSIDE_HUT_76");
	TA_StandAround(07, 00, 11, 00, "OCR_OUSIDE_HUT_77_INSERT");
	TA_WashSelf(11, 00, 11, 30, "OCR_LAKE_4");
	TA_RepairHut(11, 30, 12, 00, "OCR_OUTSIDE_HUT_76");
	TA_Boss(12, 00, 18, 00, "OCR_HUT_76");
	TA_SitCampfire(18, 00, 22, 30, "OCR_OUSIDE_HUT_77_INSERT");
};
