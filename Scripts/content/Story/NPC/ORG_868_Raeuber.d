instance ORG_868_Raeuber(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Raeuber;
	npctype							= NpcType_Rogue;
	guild							= GIL_NONE;
	level							= 12;

	voice							= 6;
	id								= 868;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	37,			2,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Claws_01);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 11);
	CreateInvItems(self, ItFoRice, 6);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 1);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_868;
};

func void Rtn_start_868()
{
	TA_GuardPalisade(13, 00, 14, 00, "LOCATION_11_16");
	TA_GuardPalisade(14, 00, 13, 00, "LOCATION_11_16");
};

func void Rtn_OMFull_868()
{
	TA_GuardPalisade(13, 00, 14, 00, "LOCATION_11_16");
	TA_GuardPalisade(14, 00, 13, 00, "LOCATION_11_16");
};

func void Rtn_FMTaken_868()
{
	TA_GuardPalisade(13, 00, 14, 00, "LOCATION_11_16");
	TA_GuardPalisade(14, 00, 13, 00, "LOCATION_11_16");
};

func void Rtn_OrcAssault_868()
{
	TA_GuardPalisade(13, 00, 14, 00, "LOCATION_11_16");
	TA_GuardPalisade(14, 00, 13, 00, "LOCATION_11_16");
};
