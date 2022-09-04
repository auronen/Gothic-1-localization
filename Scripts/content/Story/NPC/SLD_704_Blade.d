instance SLD_704_Blade(Npc_Default)
{
	// -------- primary data --------
	name							= "Blade";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	level							= 18;

	voice							= 11;
	id								= 704;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 90;
	attribute[ATR_DEXTERITY]		= 70;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 256;
	attribute[ATR_HITPOINTS]		= 256;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Pony",	47,			2,			SLD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Mug_01);
	CreateInvItem(self, ItMi_Stuff_Amphore_01);
	CreateInvItems(self, ItAmArrow, 22);
	CreateInvItems(self, ItFoRice, 9);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 18);
	CreateInvItems(self, ItFoBooze, 7);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 11);
	EquipItem(self, ItMw_1H_Mace_War_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_704;
};

func void Rtn_start_704()
{
	TA_Sleep(23, 00, 07, 30, "NC_HUT10_IN");
	TA_Smalltalk(07, 30, 23, 00, "NC_HUT09_OUT");
};
