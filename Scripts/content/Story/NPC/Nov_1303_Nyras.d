instance NOV_1303_Nyras(Npc_Default)
{
	// -------- primary data --------
	name							= "Nyras";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 6;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 3;
	id								= 1303;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 24;
	attribute[ATR_DEXTERITY]		= 13;
	attribute[ATR_MANA_MAX]			= 12;
	attribute[ATR_MANA]				= 12;
	attribute[ATR_HITPOINTS_MAX]	= 132;
	attribute[ATR_HITPOINTS]		= 132;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	22,			1,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItems(self, ItMiNugget, 15);
	CreateInvItems(self, ItFoRice, 5);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItMiJoint_1, 1);
	EquipItem(self, ItMw_1H_Mace_04);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1303;
};

func void Rtn_Start_1303()
{
	TA_Smalltalk(08, 00, 23, 00, "PSI_3_HUT_EX");
	TA_Sleep(23, 00, 08, 00, "PSI_4_HUT_IN");
};

func void Rtn_PrepareRitual_1303()
{
	TA_Stay(00, 00, 07, 00, "WP_CIRCLE_01");
	TA_Stay(07, 00, 24, 00, "WP_CIRCLE_01");
};
