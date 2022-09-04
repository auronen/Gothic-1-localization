instance NOV_1300_Talas(Npc_Default)
{
	// -------- primary data --------
	name							= "Talas";
	npctype							= NpcType_Friend;
	guild							= GIL_NOV;
	level							= 4;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 2;
	id								= 1300;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 78;
	attribute[ATR_HITPOINTS]		= 78;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	27,			1,			NOV_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItems(self, ItMiNugget, 9);
	CreateInvItems(self, ItFoRice, 5);
	CreateInvItems(self, ItFoBooze, 5);
	CreateInvItems(self, ItLsTorch, 2);
	EquipItem(self, ItMw_1H_Mace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1300;
};

func void Rtn_start_1300()
{
	TA_Smoke(24, 00, 06, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(06, 00, 24, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
};

func void Rtn_GobboCave_1300()
{
	TA_GuidePC(24, 00, 06, 00, "LOCATION_29_02");
	TA_GuidePC(06, 00, 24, 00, "LOCATION_29_02");
};

func void Rtn_ReturnToCamp_1300()
{
	TA_GuidePC(24, 00, 06, 00, "PSI_START");
	TA_GuidePC(06, 00, 24, 00, "PSI_START");
};

func void Rtn_BackInCamp_1300()
{
	TA_Smoke(24, 00, 06, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(06, 00, 24, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
};

func void Rtn_Ogy_1300()
{
	TA_GuidePC(24, 00, 06, 00, "OW_PATH_011");
	TA_GuidePC(06, 00, 24, 00, "OW_PATH_011");
};

func void Rtn_ReturnToCampAgain_1300()
{
	TA_Smoke(24, 00, 06, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
	TA_Smoke(06, 00, 24, 00, "PSI_PATH_TEMPLE_4_MOVEMENT");
};
