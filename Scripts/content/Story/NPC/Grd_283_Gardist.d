instance GRD_283_Gardist(Npc_Default)
// FM Gardist
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 30;

	voice							= 6;
	id								= 283;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS]		= 200;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	13,			1,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 2);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoCheese);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItAmBolt, 15);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_Broad_04);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMTaken_283;
};

func void Rtn_FMTaken_283()
{
	TA_StayNeutral(01, 00, 13, 00, "FMC_PATH27");
	TA_StayNeutral(13, 00, 01, 00, "FMC_PATH27");
};

func void Rtn_FMTaken2_283()
{
	TA_Stay(01, 00, 13, 00, "FMC_PATH27");
	TA_Stay(13, 00, 01, 00, "FMC_PATH27");
};
