instance ORG_863_Raeuber(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Raeuber;
	npctype							= NpcType_Rogue;
	guild							= GIL_NONE;
	level							= 12;

	voice							= 7;
	id								= 863;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 184;
	attribute[ATR_HITPOINTS]		= 184;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_FatBald",	6,			1,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 12);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 1);
	CreateInvItems(self, ItLsTorch, 2);
	CreateInvItems(self, ItFo_Potion_Health_01, 3);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_863;
};

func void Rtn_start_863()
{
	TA_RoastScavenger(13, 00, 14, 00, "LOCATION_11_12");
	TA_RoastScavenger(14, 00, 13, 00, "LOCATION_11_12");
};

func void Rtn_OMFull_863()
{
	TA_RoastScavenger(13, 00, 14, 00, "LOCATION_11_12");
	TA_RoastScavenger(14, 00, 13, 00, "LOCATION_11_12");
};

func void Rtn_FMTaken_863()
{
	TA_RoastScavenger(13, 00, 14, 00, "LOCATION_11_12");
	TA_RoastScavenger(14, 00, 13, 00, "LOCATION_11_12");
};

func void Rtn_OrcAssault_863()
{
	TA_RoastScavenger(13, 00, 14, 00, "LOCATION_11_12");
	TA_RoastScavenger(14, 00, 13, 00, "LOCATION_11_12");
};
