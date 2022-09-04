instance Org_834_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= NpcType_Guard;
	guild							= GIL_ORG;
	level							= 4;

	voice							= 13;
	id								= 834;

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
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		0,			"Hum_Head_FatBald",	12,			2,			ORG_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItAt_Claws_01);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 14);
	CreateInvItems(self, ItFoRice, 8);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 2);
	EquipItem(self, ItMw_1H_Mace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_834;
};

func void Rtn_start_834()
{
	TA_GuardWheelOpen(23, 30, 08, 00, "OW_PATH_067_WHEEL");
	TA_GuardWheelOpen(08, 00, 23, 30, "OW_PATH_067_WHEEL");
};
