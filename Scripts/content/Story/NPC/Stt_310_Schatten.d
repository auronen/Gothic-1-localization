instance STT_310_Schatten(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schatten;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STT;
	level							= 5;

	voice							= 12;
	id								= 310;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_Psionic",	10,			2,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Water_01);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItKeLockpick);
	CreateInvItems(self, ItAmArrow, 10);
	EquipItem(self, ItMw_1H_Sword_Short_02);
	EquipItem(self, ItRw_Bow_Small_03);

	// -------- daily routine --------
	daily_routine = Rtn_start_310;
};

func void Rtn_start_310()
{
	TA_Sleep(22, 00, 07, 00, "OCR_HUT_8");
	TA_Smalltalk(07, 00, 11, 00, "OCR_OUTSIDE_HUT_7");
	TA_StandAround(11, 00, 20, 05, "OCR_COOK_AT_HUT_10");
	TA_Smalltalk(20, 05, 22, 00, "OCR_OUTSIDE_HUT_7");
};
