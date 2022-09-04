instance GRD_230_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 20;
	flags							= NPC_FLAG_IMMORTAL; // weil Windenwache !!! wird in Kapitel 4 gelöscht!

	voice							= 6;
	id								= 230;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 220;
	attribute[ATR_HITPOINTS]		= 220;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	19,			0,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_02);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_230;
};

func void Rtn_start_230()
{
/*
	TA_GuardPassage(21, 00, 06, 00, "OCR_MAINGATE_RIGHT_GUARD");
	TA_Sleep(06, 00, 15, 00, "OCC_MERCS_UPPER_RIGHT_ROOM_BACK");
	TA_StandAround(15, 00, 16, 00, "OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_Smoke(16, 00, 18, 00, "OCR_WASH_8"); // für CS Forgetspell bis 21 Uhr hier gebraucht
	TA_SitAround(18, 00, 21, 00, "OCR_WASH_8");
*/
/*
	TA_GuardPassage(02, 00, 06, 00, "OCR_MAINGATE_RIGHT_GUARD");
	TA_Sleep(06, 00, 10, 00, "OCR_MAINGATE_GUARDROOM");
	TA_GuardPassage(10, 00, 14, 00, "OCR_MAINGATE_RIGHT_GUARD");
	TA_StandAround(14, 00, 18, 00, "OCR_MAINGATE_GUARDROOM");
	TA_GuardPassage(18, 00, 22, 00, "OCR_MAINGATE_RIGHT_GUARD");
	TA_Sleep(22, 00, 02, 00, "OCR_MAINGATE_GUARDROOM");
*/
	TA_GuardWheelOpen(07, 55, 19, 55, "OCC_MAINGATE_VWHEEL");
	TA_GuardWheelOpen(19, 55, 07, 55, "OCC_MAINGATE_VWHEEL"); // SN 09.01.01: geändert, damit Tore rund um die Uhr offen sind
};

func void Rtn_Forgetspell_230() // ### eigentlich Overlay-TA
{
	TA_SitAround(00, 00, 24, 00, "OCC_CENTER_1");
};

func void Rtn_OMFull_230()
{
	TA_GuardPassage(21, 00, 06, 00, "OCR_MAINGATE_RIGHT_GUARD");
	TA_Sleep(06, 00, 15, 00, "OCC_MERCS_UPPER_RIGHT_ROOM_BACK");
	TA_StandAround(15, 00, 16, 00, "OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_Smoke(16, 00, 18, 00, "OCC_GATE_CAMPFIRE_1");
	TA_SitAround(18, 00, 21, 00, "OCC_GATE_CAMPFIRE_1");
};

func void Rtn_FMTaken_230()
{
	TA_GuardWheelClosed(07, 00, 20, 00, "OCC_MAINGATE_VWHEEL");
	TA_GuardWheelClosed(20, 00, 07, 00, "OCC_MAINGATE_VWHEEL");
};
