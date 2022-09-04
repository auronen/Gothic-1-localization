instance GRD_288_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 20;

	voice							= 13;
	id								= 288;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 65;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 280;
	attribute[ATR_HITPOINTS]		= 280;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Psionic",	2,			1,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

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
	daily_routine = Rtn_FMstart_288;
};

func void Rtn_FMstart_288() // FM
{
	TA_GuardPalisade(0, 00, 13, 00, "FM_111");
	TA_GuardPalisade(13, 00, 00, 00, "FM_111");
};
