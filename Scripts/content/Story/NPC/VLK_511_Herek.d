instance VLK_511_Herek(Npc_Default)
{
	// -------- primary data --------
	name							= "Herek";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 2;

	voice							= 1;
	id								= 511;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Pony",	105,		3,			VLK_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);

	// -------- inventory --------
	CreateInvItem(self, ItMwPickaxe);
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItMinugget, 4);
	EquipItem(self, ItMw_1h_Nailmace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_511;
};

func void Rtn_start_511()
{
	TA_Sleep(22, 00, 07, 00, "OCR_HUT_62");
	TA_Boss(07, 00, 08, 00, "OCR_OUTSIDE_HUT_62");
	TA_Smalltalk(08, 00, 12, 00, "OCR_OUTSIDE_HUT_63_SMALLTALK");
	TA_Smith_Sharp(12, 00, 17, 00, "OCR_OUTSIDE_HUT_63_SMALLTALK");
	TA_SitAround(17, 00, 22, 00, "OCR_OUTSIDE_HUT_62");
};
