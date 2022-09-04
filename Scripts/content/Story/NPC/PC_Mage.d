instance PC_Mage(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Milten";
	npctype							= NpcType_Friend;
	guild							= GIL_KDF;
	level							= 999; // real 15, aber 999 damit er nicht flieht!
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 2;
	id								= 2;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 150;
	attribute[ATR_MANA]				= 150;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;

	// -------- protection --------
	protection[PROT_FIRE]			= 1000;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	76,			1,			KDF_ARMOR_L);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItArRuneFireball);
	CreateInvItems(self, ItFoWine, 3);
	CreateInvItems(self, ItFo_Potion_Health_02, 10);
	CreateInvItems(self, ItFo_Potion_Mana_02, 10);

	// -------- daily routine --------
	daily_routine = rtn_Start_2;
};

func void Rtn_Start_2()
{
	TA_Sleep(00, 00, 08, 00, "OCC_CHAPEL_LEFT_ROOM");
	TA_Stand(08, 00, 00, 00, "OCC_CHAPEL_ENTRANCE");
};

// ##################################################################
//	Kapitel 3
// ##################################################################
// SN: bitte ab hier keine TAs ändern, da Storyrelevant

func void Rtn_SHWait_2()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_274");
	TA_Stay(23, 00, 24, 00, "OW_PATH_274");
};

func void Rtn_SHGuide_2()
{
	TA_GuidePC(00, 00, 23, 00, "OW_PATH_3_STONES");
	TA_GuidePC(23, 00, 24, 00, "OW_PATH_3_STONES");
};

func void Rtn_SHFollow_2()
{
	TA_FollowPC(00, 00, 23, 00, "OW_PATH_3_STONES");
	TA_FollowPC(23, 00, 24, 00, "OW_PATH_3_STONES");
};

func void Rtn_ReturnToOC_2()
{
	TA_SitAround(00, 00, 12, 00, "LOCATION_02_04");
	TA_SitAround(12, 00, 24, 00, "LOCATION_02_04");
};

// ##################################################################
//	Kapitel 4
// ##################################################################
func void Rtn_OCWait_2()
{
	TA_Stay(00, 00, 12, 00, "PATH_OC_NC");
	TA_Stay(12, 00, 24, 00, "PATH_OC_NC");
};

// ##################################################################
//	Kapitel 5
// ##################################################################
// Milten wartet auf den Spieler am Pentragramm der Wassermagier
func void Rtn_LSWait_2()
{
	TA_Stay(00, 00, 12, 00, "NC_KDW_CAVE_STAIRS");
	TA_Stay(12, 00, 24, 00, "NC_KDW_CAVE_STAIRS");
};

// Milten geht an einen ruhigeren Ort im NC
func void Rtn_LSAway_2()
{
	TA_GuidePC(00, 00, 12, 00, "NC_KDW04_IN");
	TA_GuidePC(12, 00, 24, 00, "NC_KDW04_IN");
};

// Milten geht zum Erzhaufen
func void Rtn_LSOreHeap_2()
{
	TA_Stay(00, 00, 12, 00, "NC_PATH41");
	TA_Stay(12, 00, 24, 00, "NC_PATH41");
};
