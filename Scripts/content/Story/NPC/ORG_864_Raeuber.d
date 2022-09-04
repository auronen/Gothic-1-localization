instance ORG_864_Raeuber(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Raeuber;
	npctype							= NpcType_Rogue;
	guild							= GIL_NONE;
	level							= 12;

	voice							= 13;
	id								= 864;

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
	// Mdl_ApplyOverlayMDS(self,"Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Thief",	9,			1,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 9);
	CreateInvItems(self, ItFoRice, 5);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 2);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_864;
};

func void Rtn_start_864()
{
	TA_StandAround(13, 00, 14, 00, "LOCATION_11_14");
	TA_StandAround(14, 00, 13, 00, "LOCATION_11_14");
};

func void Rtn_OMFull_864()
{
	TA_StandAround(13, 00, 14, 00, "LOCATION_11_14");
	TA_StandAround(14, 00, 13, 00, "LOCATION_11_14");
};

func void Rtn_FMTaken_864()
{
	TA_StandAround(13, 00, 14, 00, "LOCATION_11_14");
	TA_StandAround(14, 00, 13, 00, "LOCATION_11_14");
};

func void Rtn_OrcAssault_864()
{
	TA_StandAround(13, 00, 14, 00, "LOCATION_11_14");
	TA_StandAround(14, 00, 13, 00, "LOCATION_11_14");
};
