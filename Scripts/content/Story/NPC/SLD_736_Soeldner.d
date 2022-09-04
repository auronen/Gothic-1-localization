instance SLD_736_Soeldner(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Soeldner;
	npctype							= NpcType_Guard;
	guild							= GIL_SLD;
	level							= 11;

	voice							= 11;
	id								= 736;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 172;
	attribute[ATR_HITPOINTS]		= 172;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	48,			1,			SLD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Mug_01);
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 8);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 6);
	CreateInvItems(self, ItMiNugget, 10);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 9);
	EquipItem(self, ItMw_1H_Mace_War_02);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_736;
};

func void Rtn_start_736()
{
	TA_Sleep(20, 50, 07, 10, "NC_HUT08_IN");
	TA_PracticeSword(07, 10, 20, 50, "NC_WATERFALL_TOP02");
};

func void Rtn_FMTaken_736()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_075_GUARD");
	TA_Stay(23, 00, 24, 00, "OW_PATH_075_GUARD");
};
