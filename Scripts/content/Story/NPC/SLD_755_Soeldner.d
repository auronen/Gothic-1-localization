instance SLD_755_Soeldner(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Soeldner;
	npctype							= NpcType_Mine_Guard;
	guild							= GIL_SLD;
	level							= 16;

	voice							= 8;
	id								= 755;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 75;
	attribute[ATR_DEXTERITY]		= 55;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 232;
	attribute[ATR_HITPOINTS]		= 232;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		3,			"Hum_Head_FatBald",	9,			2,			SLD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Amphore_01);
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 18);
	CreateInvItems(self, ItFoBooze, 6);
	CreateInvItems(self, ItLsTorch, 6);
	CreateInvItems(self, ItFo_Potion_Health_02, 8);
	EquipItem(self, ItMw_1H_Mace_War_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMCstart_755;
};

func void Rtn_FMCstart_755()
{
	TA_GuardPalisade(01, 00, 13, 00, "FMC_HUT12_OUT");
	TA_GuardPalisade(13, 00, 01, 00, "FMC_HUT12_OUT");
};
