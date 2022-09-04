instance GRD_280_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 20;
	flags							= NPC_FLAG_IMMORTAL; // weil Windenwache !!! wird in Kapitel 4 gelöscht!

	voice							= 6;
	id								= 230;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	19,			0,			GRD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_280;
};

func void Rtn_start_280() // Drehkreuz Burgtor
{
	TA_GuardWheelOpen(06, 25, 23, 10, "OCC_GATE_VWHEEL");
	TA_GuardWheelOpen(23, 10, 06, 25, "OCC_GATE_VWHEEL");
};

func void Rtn_FMTaken_280()
{
	TA_GuardWheelClosed(07, 00, 20, 00, "OCC_GATE_VWHEEL");
	TA_GuardWheelClosed(20, 00, 07, 00, "OCC_GATE_VWHEEL");
};
