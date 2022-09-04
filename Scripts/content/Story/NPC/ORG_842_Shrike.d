instance ORG_842_Shrike(Npc_Default)
{
	// -------- primary data --------
	name							= "Shrike";
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 6;

	voice							= 7;
	id								= 842;

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
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 15);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItLsTorch, 2);
	CreateInvItems(self, ItFo_Potion_Health_01, 2);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_02);
	EquipItem(self, ItRw_Bow_Small_02);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_842;
};

func void Rtn_PreStart_842()
{
	TA_Sleep(23, 30, 08, 00, "NC_HUT01_IN");
	TA_RepairHut(08, 00, 23, 30, "NC_HUT01_OUT");
};

func void Rtn_Start_842()
{
	TA_Sleep(23, 30, 08, 00, "NC_HUT18_IN");
	TA_Smoke(08, 00, 23, 30, "NC_PATH09"); // auf Stand-FP
};
