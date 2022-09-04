instance GRD_254_Orry(Npc_Default)
{
	// -------- primary data --------
	name							= "Orry";
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 6;
	id								= 254;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Psionic",	14,			1,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 10);
	EquipItem(self, ItMw_1H_Sword_01);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- missions --------
	// mission[0] = MIS_OC_AMBIENT_GetMyWeapon;

	// -------- daily routine --------
	daily_routine = Rtn_start_254;
};

func void Rtn_start_254()
{
	TA_GuardPalisade(00, 00, 23, 00, "OW_PATH_1_16_B");
	TA_GuardPalisade(23, 00, 24, 00, "OW_PATH_1_16_B");
};

func void Rtn_OMFull_254()
{
};

func void Rtn_FMTaken_254()
{
};

func void Rtn_OrcAssault_254()
{
};
