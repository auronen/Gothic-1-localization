instance SLD_752_Okyl(Npc_Default)
{
	// -------- primary data --------
	name							= "Okyl";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	level							= 18;

	voice							= 11;
	id								= 752;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 70;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 256;
	attribute[ATR_HITPOINTS]		= 256;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Pony",	45,			1,			SLD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Amphore_01);
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoLoaf, 6);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 18);
	CreateInvItems(self, ItFoBooze, 4);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 9);
	EquipItem(self, ItMw_2H_Axe_Heavy_02);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMCstart_752;
};

func void Rtn_FMCstart_752()
{
	TA_GuardPalisade(01, 00, 13, 00, "FMC_PATH07");
	TA_GuardPalisade(13, 00, 01, 00, "FMC_PATH07");
};
