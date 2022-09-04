instance GRD_263_Asghan(Npc_Default)
{
	// -------- primary data --------
	name							= "Asghan";
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 20;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 6;
	id								= 263;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 280;
	attribute[ATR_HITPOINTS]		= 280;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	15,			1,			GRD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;
	Npc_SetPermAttitude(self, ATT_NEUTRAL);

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFo_Potion_Health_01);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 20);
	EquipItem(self, ItMw_1H_Sword_03);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_263;
};

func void Rtn_start_263()
{
	TA_Stay(00, 00, 12, 00, "OM_CAVE3_21");
	TA_Stay(12, 00, 24, 00, "OM_CAVE3_21");
};

func void Rtn_opengate_263()
{
	TA_Stay(00, 00, 12, 00, "OM_CAVE3_18");
	TA_Stay(12, 00, 24, 00, "OM_CAVE3_18");
};
