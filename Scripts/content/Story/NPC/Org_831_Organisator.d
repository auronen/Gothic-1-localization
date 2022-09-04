instance Org_831_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_ORG;
	level							= 4;

	voice							= 6;
	id								= 831;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_FatBald",	10,			1,			ORG_ARMOR_L);

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
	CreateInvItems(self, ItMiNugget, 11);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 1);
	CreateInvItems(self, ItLsTorch, 1);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	EquipItem(self, ItMw_1H_Mace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_831;
};

func void Rtn_start_831()
{
	TA_Smalltalk(20, 00, 08, 00, "OW_PATH_067");
	TA_Smalltalk(08, 00, 20, 00, "OW_PATH_067");
};
