instance PC_Fighter(NPC_DEFAULT)
// PlayerInstanz
{
	// -------- primary data --------
	name							= "Gorn";
	npctype							= NpcType_Friend;
	guild							= GIL_SLD;
	level							= 999; // real 15, aber 999 damit er nicht flieht!
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 9;
	id								= 3;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 20;
	attribute[ATR_MANA]				= 20;
	attribute[ATR_HITPOINTS_MAX]	= 22;
	attribute[ATR_HITPOINTS]		= 22;

	// -------- protection --------
	protection[PROT_FIRE]			= 1000;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_Fighter",	13,			0,			SLD_ARMOR_M);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_PICKPOCKET, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKPOCKET, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);

	// -------- inventory --------
	// CreateInvItems(self, ItAmBolt, 100);
	CreateInvItems(self, ItFoWine, 5);
	CreateInvItems(self, ItFo_Potion_Health_03, 10);
	CreateInvItems(self, ItFo_Potion_Mana_01, 5);
	EquipItem(self, Gorns_Rache);
	// EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_3;
};

func void Rtn_Start_3() // Vor Gorns Hütte
{
	TA_StandAround(08, 00, 01, 00, "NC_PLACE03_MOVEMENT2");
	TA_Sleep(01, 00, 08, 00, "NC_HUT06_IN");
};

// ##################################################################
//	Kapitel 3
// ##################################################################
// SN: bitte ab hier keine TAs ändern, da Storyrelevant

func void Rtn_NCWait_3()
{
	TA_Stay(00, 00, 23, 00, "NC_PATH52");
	TA_Stay(23, 00, 24, 00, "NC_PATH52");
};

// Gorn wartet vor der Klosterruine auf den Spieler
func void Rtn_RuinWait_3()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_ABYSS_4");
	TA_Stay(23, 00, 24, 00, "OW_PATH_ABYSS_4");
};

// Gorn führt den Spieler in die erste Höhle
func void Rtn_RuinAbyss_3()
{
	TA_GuidePC(00, 00, 23, 00, "OW_ABYSS_TO_CAVE_MOVE6");
	TA_GuidePC(23, 00, 24, 00, "OW_ABYSS_TO_CAVE_MOVE6");
};

// Gorn folgt dem Spieler bis vor das verschlossene Tor
func void Rtn_RuinFollow_3()
{
	TA_FollowPC(00, 00, 23, 00, "OW_PATH_175_GATE1");
	TA_FollowPC(23, 00, 24, 00, "OW_PATH_175_GATE1");
};

// Gorn wartet vor dem verschlossenen Tor
func void Rtn_RuinWall_3()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_175_GATE1");
	TA_Stay(23, 00, 24, 00, "OW_PATH_175_GATE1");
};

// Gorn folgt dem Spieler innerhalb der Klostermauern
func void Rtn_RuinFollowInside_3()
{
	TA_FollowPC(00, 00, 23, 00, "OW_PATH_176");
	TA_FollowPC(23, 00, 24, 00, "OW_PATH_176");
};

// Gorn wartet im Innenhof der Klostermauern
func void Rtn_RuinStay_3()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_176");
	TA_Stay(23, 00, 24, 00, "OW_PATH_176");
};

// Gorn begleitet den Spieler bis zum Innenhof der Klostermauern
func void Rtn_RuinYard_3()
{
	TA_FollowPC(00, 00, 23, 00, "OW_PATH_176");
	TA_FollowPC(23, 00, 24, 00, "OW_PATH_176");
};

// ##################################################################
//	Kapitel 4
// ##################################################################

// Gorn berichtet vom Überfall auf die Freie Mine
func void Rtn_NCReport_3()
{
	TA_Stay(00, 00, 23, 00, "NC_KDW_CAVE_CENTER");
	TA_Stay(23, 00, 24, 00, "NC_KDW_CAVE_CENTER");
};

// Gorn bewacht den Weg zwischen Neuem Lager und Freier Mine
func void Rtn_GuardNC_3()
{
	TA_Stay(00, 00, 23, 00, "OW_PATH_075_GUARD4");
	TA_Stay(23, 00, 24, 00, "OW_PATH_075_GUARD4");
};

// Gorn folgt dem Spieler zur Freien Mine bis zum Eingang des Lagers
func void Rtn_FollowToFMC_3()
{
	TA_FollowPC(00, 00, 23, 00, "FMC_ENTRANCE");
	TA_FollowPC(23, 00, 24, 00, "FMC_ENTRANCE");
};

// Gorn wartet am Eingang des FreeMineCamps bis der Spieler unten am Mineneingang ist
func void Rtn_WaitFMC_3()
{
	TA_Stay(00, 00, 23, 00, "FMC_ENTRANCE");
	TA_Stay(23, 00, 24, 00, "FMC_ENTRANCE");
};

// Gorn bewacht den Eingang zur Freien Mine während der Spieler das Tor öffnet
func void Rtn_WaitFM_3()
{
	TA_Stay(00, 00, 23, 00, "FMC_FM_ENTRANCE");
	TA_Stay(23, 00, 24, 00, "FMC_FM_ENTRANCE");
};

// ##################################################################
//	2. Gorn-Instanz in der Freien Mine
// ##################################################################
instance PC_FighterFM(NPC_DEFAULT)
// PlayerInstanz
{
	// -------- primary data --------
	name							= "Gorn";
	npctype							= NpcType_Friend;
	guild							= GIL_SLD;
	level							= 15;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 9;
	id								= 5;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 20;
	attribute[ATR_MANA]				= 20;
	attribute[ATR_HITPOINTS_MAX]	= 22;
	attribute[ATR_HITPOINTS]		= 22;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_Fighter",	13,			0,			SLD_ARMOR_M);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;
	aivar[AIV_PARTYMEMBER]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);

	// -------- inventory --------
	CreateInvItems(self, ItFoWine, 5);
	CreateInvItems(self, ItFo_Potion_Health_03, 10);
	CreateInvItems(self, ItFo_Potion_Mana_01, 5);
	EquipItem(self, Gorns_Rache);

	// -------- daily routine --------
	daily_routine = Rtn_Follow_5;
};

// Gorn begleitet den Spieler innerhalb der Freien Mine
func void Rtn_Follow_5()
{
	TA_FollowPC(00, 00, 23, 00, "FM_02");
	TA_FollowPC(23, 00, 24, 00, "FM_02");
};

// Der Spieler hat Gorn zurückgelassen und zieht auf eigene Faust los.
func void Rtn_Wait_5()
{
	TA_Stay(00, 00, 23, 00, "FM_02");
	TA_Stay(23, 00, 24, 00, "FM_02");
};
