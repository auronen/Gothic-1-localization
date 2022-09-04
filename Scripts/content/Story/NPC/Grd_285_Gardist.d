instance GRD_285_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 30;

	voice							= 7;
	id								= 285;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	19,			1,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_Broad_04);

	// -------- daily routine --------
	daily_routine = Rtn_FMTaken_285;
};

func void Rtn_FMTaken_285()
{
	TA_StayNeutral(01, 00, 13, 00, "FMC_PATH28");
	TA_StayNeutral(13, 00, 01, 00, "FMC_PATH28");
};

func void Rtn_FMTaken2_285()
{
	TA_Guard(01, 00, 13, 00, "FMC_PATH28");
	TA_Guard(13, 00, 01, 00, "FMC_PATH28");
};
