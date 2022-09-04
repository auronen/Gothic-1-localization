instance ORG_891_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= NpcType_Mine_Ambient;
	guild							= GIL_ORG;
	level							= 8;

	voice							= 13;
	id								= 891;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 136;
	attribute[ATR_HITPOINTS]		= 136;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Fighter",	9,			3,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 16);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_FMCstart_891;
};

func void Rtn_FMCstart_891()
{
	TA_SitAround(01, 00, 13, 00, "FMC_HUT06_IN");
	TA_SitAround(13, 00, 01, 00, "FMC_HUT06_IN");
};
