instance GRD_271_Ulbert(Npc_Default)
{
	// -------- primary data --------
	name							= "Ulbert";
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 7;
	id								= 271;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	100,		3,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_01);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_271;
};

func void Rtn_start_271()
{
	TA_Guard(00, 00, 12, 00, "OM_014B");
	TA_Guard(12, 00, 24, 00, "OM_014B");
};

func void Rtn_away_271()
{
	TA_Guard(00, 00, 12, 00, "OM_CAVE1_49");
	TA_Guard(12, 00, 24, 00, "OM_CAVE1_49");
};
