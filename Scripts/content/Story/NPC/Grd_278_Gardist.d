instance GRD_278_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_gardist;
	npctype							= NpcType_Mine_Guard;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 13;
	id								= 278;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Fighter",	12,			2,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_278;
};

func void Rtn_start_278()
{
	TA_GuardPalisade(20, 00, 07, 00, "OM_CAVE3_30");
	TA_GuardPalisade(07, 00, 20, 00, "OM_CAVE3_30");
};
