instance TPL_1425_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Templer;
	npctype							= NpcType_Guard;
	guild							= GIL_TPL;
	level							= 17;

	voice							= 13;
	id								= 1425;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 85;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 244;
	attribute[ATR_HITPOINTS]		= 244;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	65,			1,			TPL_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1425;
};

func void Rtn_start_1425() // TempelPlatz-Seeplattform, trifft sich mit 1407 Horst
{
	TA_Smalltalk(06, 00, 07, 00, "PSI_SWAMP_6");
	TA_Guard(07, 00, 08, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(08, 00, 09, 00, "PSI_SWAMP_6");
	TA_Guard(09, 00, 10, 00, "PSI_PATH_TEMPLE_8");

	TA_Smalltalk(10, 00, 11, 00, "PSI_SWAMP_6");
	TA_Guard(11, 00, 12, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(12, 00, 13, 00, "PSI_SWAMP_6");
	TA_Guard(13, 00, 14, 00, "PSI_PATH_TEMPLE_8");

	TA_Smalltalk(14, 00, 15, 00, "PSI_SWAMP_6");
	TA_Guard(15, 00, 16, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(16, 00, 17, 00, "PSI_SWAMP_6");
	TA_Guard(17, 00, 18, 00, "PSI_PATH_TEMPLE_8");

	TA_Smalltalk(18, 00, 19, 00, "PSI_SWAMP_6");
	TA_Guard(19, 00, 20, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(20, 00, 21, 00, "PSI_SWAMP_6");
	TA_Guard(21, 00, 22, 00, "PSI_PATH_TEMPLE_8");

	TA_Smalltalk(22, 00, 23, 00, "PSI_SWAMP_6");
	TA_Guard(23, 00, 00, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(00, 00, 01, 00, "PSI_SWAMP_6");
	TA_Guard(01, 00, 02, 00, "PSI_PATH_TEMPLE_8");

	TA_Smalltalk(02, 00, 03, 00, "PSI_SWAMP_6");
	TA_Guard(03, 00, 04, 00, "PSI_PATH_TEMPLE_8");
	TA_Smalltalk(04, 00, 05, 00, "PSI_SWAMP_6");
	TA_Guard(05, 00, 06, 00, "PSI_PATH_TEMPLE_8");
};
