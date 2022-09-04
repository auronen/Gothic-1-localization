instance SLD_733_Soeldner(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Soeldner;
	npctype							= NpcType_Guard;
	guild							= GIL_SLD;
	level							= 16;

	voice							= 11;
	id								= 733;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	49,			1,			SLD_ARMOR_M);

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
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 6);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 20);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 8);
	EquipItem(self, ItMw_1H_Mace_War_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_733;
};

func void Rtn_start_733()
{
	TA_Boss(06, 30, 22, 15, "NC_LO_11");
	TA_Boss(22, 15, 06, 30, "NC_LO_11");
};
