instance SLD_708_Soeldner(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Soeldner;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	level							= 8;

	voice							= 11;
	id								= 856;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 136;
	attribute[ATR_HITPOINTS]		= 136;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	36,			2,			SLD_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 3);
	CreateInvItems(self, ItMiNugget, 15);
	CreateInvItems(self, ItFoRice, 9);
	CreateInvItems(self, ItFoBooze, 7);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 3);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_708;
};

func void Rtn_start_708()
{
	TA_Sleep(00, 00, 08, 00, "NC_HUT07_IN");
	TA_SitAround(08, 00, 00, 00, "NC_PLACE03");
};
