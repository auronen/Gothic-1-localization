instance GRD_203_Bullit(Npc_Default)
{
	// -------- primary data --------
	name							= "Bullit";
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 6;
	id								= 203;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Thief",	57,			2,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoCheese);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 25);
	EquipItem(self, ItMw_1H_Sword_Long_02);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_203;
};

func void Rtn_start_203()
{
	TA_SitAround(00, 00, 21, 00, "OCC_MERCS_RIGHT_ROOM_BACK");
	TA_SitAround(21, 00, 24, 00, "OCC_MERCS_RIGHT_ROOM_BACK");
};

func void Rtn_OT_203()
{
	TA_Guard(07, 00, 20, 00, "OCC_MERCS_DOWNSTAIRS_2");
	TA_Guard(20, 00, 07, 00, "OCC_MERCS_DOWNSTAIRS_2");
};
