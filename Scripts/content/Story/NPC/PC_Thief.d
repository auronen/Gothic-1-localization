instance PC_Thief(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Diego";
	npctype							= NpcType_Friend;
	guild							= GIL_STT;
	level							= 999; // real 25, aber 999 damit er nicht vor dem Troll flieht!
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 1;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 90;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 340;
	attribute[ATR_HITPOINTS]		= 340;

	// -------- protection --------
	protection[PROT_FIRE]			= 1000;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Thief",	15,			4,			STT_ARMOR_H);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_PICKPOCKET, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKPOCKET, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 100);
	EquipItem(self, Diegos_Bogen);
	EquipItem(self, ItMw_1H_Sword_04);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1;
};

func void Rtn_PreStart_1()
{
	TA_Position(00, 00, 12, 00, "WP_INTRO_FALL3");
	TA_Position(12, 00, 00, 00, "WP_INTRO_FALL3");
};

func void Rtn_Start_1()
{
	TA_Sleep(23, 00, 03, 00, "OCR_HUT_1");
	TA_SitAround(03, 00, 05, 30, "OCR_HUT_Z5_SIT3");
	TA_Sleep(05, 30, 07, 00, "OCR_CAULDRON_1");
	TA_SitAround(07, 00, 10, 00, "OCR_CAULDRON_1");
	TA_Smalltalk(10, 00, 12, 00, "OCR_CAMPFIRE_A_MOVEMENT1"); // mit Grim
	TA_SitAround(12, 00, 16, 00, "OCR_CAULDRON_1");
	TA_Smalltalk(16, 00, 18, 00, "OCR_CAMPFIRE_A_MOVEMENT3"); // mit Stt_322
	TA_SitCampfire(18, 00, 23, 00, "OCR_CAMPFIRE_A_MOVEMENT1");
};

func void Rtn_OCWait_1()
{
	TA_Stay(00, 00, 12, 00, "OC_ROUND_13");
	TA_Stay(12, 00, 00, 00, "OC_ROUND_13");
};

// SITUATION TROLLSCHLUCHT
func void Rtn_TrollWait_1()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_190");
	TA_Stay(23, 00, 00, 00, "OW_PATH_190");
};

func void Rtn_GuideTroll_1()
{
	TA_GuidePC(00, 00, 12, 00, "LOCATION_12_01");
	TA_GuidePC(12, 00, 00, 00, "LOCATION_12_01");
};

func void Rtn_WaitAtWheel_1()
{
	TA_Stay(00, 00, 12, 00, "LOCATION_12_14_WHEEL");
	TA_Stay(12, 00, 24, 00, "LOCATION_12_14_WHEEL");
};

func void Rtn_WaitAtFocus_1()
{
	TA_GuidePC(00, 00, 12, 00, "LOCATION_12_03");
	TA_GuidePC(12, 00, 24, 00, "LOCATION_12_03");
};

func void Rtn_OMFull_1()
{
};

func void Rtn_FMTaken_1()
{
};

func void Rtn_OrcAssault_1()
{
};
