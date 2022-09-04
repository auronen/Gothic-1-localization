instance GRD_225_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 7;
	id								= 225;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	3,			3,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1); // ### Palisadenwache

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItems(self, ItMiNugget, 10);
	CreateInvItems(self, ItAmBolt, 30);
	EquipItem(self, ItMw_1H_Sword_01);
	EquipItem(self, ItRw_Crossbow_01); // ### Palisadenwache

	// -------- daily routine --------
	daily_routine = Rtn_start_225;
};

func void Rtn_start_225()
{
	TA_GuardPalisade(00, 00, 12, 00, "OCC_PALISADE_WALLCRACK");
	TA_GuardPalisade(12, 00, 00, 00, "OCC_PALISADE_WALLCRACK");
};
