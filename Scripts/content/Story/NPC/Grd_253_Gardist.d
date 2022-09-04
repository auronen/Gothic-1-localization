instance GRD_253_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 7;
	id								= 253;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Psionic",	14,			1,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_253;
};

func void Rtn_start_253()
{
	TA_Smalltalk(00, 00, 08, 00, "OCR_AT_HUT_3");
	TA_Smalltalk(08, 00, 00, 00, "OCR_AT_HUT_3");
};

func void Rtn_FMTaken_253()
{
	TA_StayNeutral(07, 00, 20, 00, "OCR_MAINGATE_OUTSIDE");
	TA_StayNeutral(20, 00, 07, 00, "OCR_MAINGATE_OUTSIDE");
};

func void Rtn_FMTaken2_253()
{
	TA_Stay(07, 00, 20, 00, "OCR_MAINGATE_OUTSIDE");
	TA_Stay(20, 00, 07, 00, "OCR_MAINGATE_OUTSIDE");
};
