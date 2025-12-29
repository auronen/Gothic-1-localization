instance TPL_1416_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= name_Templer;
	npctype							= NpcType_Main;
	guild							= GIL_TPL;
	level							= 17;

	voice							= 8;
	id								= 1416;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 85;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 244;
	attribute[ATR_HITPOINTS]		= 244;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	59,			2,			TPL_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1416;
};

func void Rtn_start_1416()
{
	TA_Guard(08, 00, 20, 00, "PSI_GATE_GUARD_2");
	TA_Guard(20, 00, 08, 00, "PSI_GATE_GUARD_2");
};
