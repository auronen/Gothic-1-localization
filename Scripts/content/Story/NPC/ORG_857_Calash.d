instance ORG_857_Calash(Npc_Default)
{
	// -------- primary data --------
	name							= "Calash";
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 11;

	voice							= 2;
	id								= 857;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 172;
	attribute[ATR_HITPOINTS]		= 172;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Pony",	8,			1,			ORG_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoRice);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItFoBooze);
	CreateInvItem(self, ItKeLockpick);
	CreateInvItems(self, ItMiNugget, 5);
	CreateInvItems(self, ItAmArrow, 10);
	EquipItem(self, ItMw_1H_Mace_War_01);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_prestart_857;
};

func void Rtn_prestart_857()
{
	TA_Position(00, 00, 12, 00, "OM_85");
	TA_Position(12, 00, 24, 00, "OM_85");
};

func void Rtn_start_857()
{
	TA_Position(00, 00, 12, 00, "OM_85");
	TA_Position(12, 00, 24, 00, "OM_85");
};

func void Rtn_OMFull_857()
{
	TA_Position(00, 00, 12, 00, "OM_85");
	TA_Position(12, 00, 24, 00, "OM_85");
};
