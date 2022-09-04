instance ORG_818_Ratford(Npc_Default)
{
	// -------- primary data --------
	name							= "Ratford";
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 8;

	voice							= 7;
	id								= 818;

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
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Claws_01);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 17);
	CreateInvItems(self, ItFoRice, 6);
	CreateInvItems(self, ItFoBooze, 2);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 3);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Small_04);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_Start_818;
};

func void Rtn_Start_818()
{
	TA_Smalltalk(00, 00, 23, 00, "OW_PATH_1_5_A");
	TA_Smalltalk(23, 00, 00, 00, "OW_PATH_1_5_A");
};
