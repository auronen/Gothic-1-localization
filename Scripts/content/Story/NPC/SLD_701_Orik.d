instance SLD_701_Orik(Npc_Default)
{
	// -------- primary data --------
	name							= "Orik";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_SLD;
	level							= 18;

	voice							= 8;
	id								= 701;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_FatBald",	8,			0,			SLD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItMi_Stuff_Amphore_01);
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 19);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 9);
	EquipItem(self, Oriks_Axt);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_701;
};

func void Rtn_start_701()
{
	TA_Smalltalk(07, 00, 19, 00, "NC_SMALL_CAVE_CENTER");
	TA_Boss(19, 00, 00, 00, "NC_HUT05_OUT");
	TA_Sleep(00, 00, 07, 00, "NC_HUT05_IN");
};
