instance ORG_859_Aidan(Npc_Default)
{
	// -------- primary data --------
	name							= "Aidan";
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 15;

	voice							= 13;
	id								= 859;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 192;
	attribute[ATR_HITPOINTS]		= 192;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Thief",	9,			1,			ORG_ARMOR_M);

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
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItem(self, ItFoBooze);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 13);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItLsTorch, 2);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_859;
};

func void Rtn_start_859()
{
	TA_StandAround(07, 00, 22, 00, "OW_WOODRUIN_WOLF_SPAWN");
	TA_SitCampfire(22, 00, 07, 00, "OW_WOODRUIN_WOLF_SPAWN");
};
