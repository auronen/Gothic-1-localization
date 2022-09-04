instance SLD_700_Lee(Npc_Default)
{
	// -------- primary data --------
	name							= "Lee";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	level							= 19;

	voice							= 8;
	id								= 700;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 268;
	attribute[ATR_HITPOINTS]		= 268;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Pony",	88,			0,			SLD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 20);
	CreateInvItems(self, ItFoRice, 8);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 4);
	CreateInvItems(self, ItMiNugget, 25);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 5);
	CreateInvItems(self, ItFo_Potion_Health_02, 10);
	EquipItem(self, Lees_Axt);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_700;
};

func void Rtn_start_700()
{
	TA_Sleep(01, 00, 07, 00, "NC_SMALL_CAVE_CENTER");
	TA_Smalltalk(07, 00, 19, 00, "NC_SMALL_CAVE_CENTER");
	TA_ReadBook(19, 00, 01, 00, "NC_SMALL_CAVE_READBOOK");
};

func void Rtn_damnpast_700() // LEE DAMM STORY KAPITEL 3
{
	TA_Boss(23, 00, 06, 00, "NC_DAM2");
	TA_Boss(06, 00, 23, 00, "NC_DAM2");
};

func void Rtn_PCSLD_700() // AUFNAHME SLD KAPITEL 3
{
	TA_GuidePc(23, 00, 06, 00, "NC_DAM");
	TA_GuidePC(06, 00, 23, 00, "NC_DAM");
};
