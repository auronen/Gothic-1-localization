instance ORG_807_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= Npctype_Ambient;
	guild							= GIL_ORG;
	level							= 11;

	voice							= 7;
	id								= 807;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 172;
	attribute[ATR_HITPOINTS]		= 172;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	37,			1,			ORG_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 16);
	CreateInvItems(self, ItFoRice, 6);
	CreateInvItems(self, ItFoBooze, 4);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_War_01);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_807;
};

func void Rtn_start_807()
{
	TA_Sleep(00, 00, 08, 00, "NC_HUT14_IN");
	TA_SitCampfire(08, 00, 00, 00, "NC_PLACE05");
};
