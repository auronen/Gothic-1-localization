instance GRD_295_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 30;

	voice							= 13;
	id								= 295;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	17,			4,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoCheese);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_02);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMstart_295;
};

func void Rtn_FMstart_295() // FM
{
	TA_GuardPalisade(0, 00, 13, 00, "FM_139");
	TA_GuardPalisade(13, 00, 00, 00, "FM_139");
};
