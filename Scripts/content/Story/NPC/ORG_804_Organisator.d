instance ORG_804_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 15;

	voice							= 6;
	id								= 804;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 220;
	attribute[ATR_HITPOINTS]		= 220;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	10,			1,			ORG_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItem(self, ItFoBooze);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 12);
	CreateInvItems(self, ItFoRice, 8);
	CreateInvItems(self, ItFoBooze, 2);
	CreateInvItems(self, ItLsTorch, 1);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_War_02);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_804;
};

func void Rtn_start_804() // Wache: Durchgang zu Lares
{
	TA_GuardPassage(20, 00, 08, 00, "NC_HUT23_OUT_GUARD");
	TA_GuardPassage(08, 00, 20, 00, "NC_HUT23_OUT_GUARD");
};
