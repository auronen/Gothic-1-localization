instance Org_829_Organisator(Npc_Default)
// ###Frei Mine-Waypoints eintragen
{
	// -------- primary data --------
	name							= Name_Torwache;
	npctype							= NpcType_Main;
	guild							= GIL_ORG;
	level							= 4;

	voice							= 6;
	id								= 829;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	// Mdl_ApplyOverlayMDS(self,"Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	13,			1,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 1);
	CreateInvItems(self, ItMiNugget, 9);
	CreateInvItems(self, ItFoRice, 8);
	CreateInvItems(self, ItFoBooze, 2);
	CreateInvItems(self, ItLsTorch, 2);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	EquipItem(self, ItMw_1H_Mace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_829;
};

func void Rtn_start_829()
{
	TA_GuardPassage(08, 00, 20, 00, "OW_PATH_07_21_GUARD_RIGHT");
	TA_GuardPassage(20, 00, 08, 00, "OW_PATH_07_21_GUARD_RIGHT");
};
