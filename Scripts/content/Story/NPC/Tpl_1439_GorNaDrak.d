instance TPL_1439_GorNaDrak(Npc_Default)
{
	// -------- primary data --------
	name							= "Gor Na Drak";
	npctype							= NpcType_Main;
	guild							= GIL_TPL;
	level							= 21;

	voice							= 9;
	id								= 1439;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 292;
	attribute[ATR_HITPOINTS]		= 292;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	63,			2,			TPL_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_04);

	// -------- daily routine --------
	daily_routine = Rtn_start_1439;
};

func void Rtn_start_1439() // ST-OM-Pendler (MC-Jäger)
{
	TA_Smalltalk(06, 00, 14, 00, "PSI_WALK_05");
	TA_Smalltalk(14, 00, 06, 00, "OW_OM_ENTRANCE02");
};

func void Rtn_FMTaken_1439() // OM ist vollgelaufen
{
	TA_Smalltalk(06, 00, 14, 00, "PSI_WALK_05");
	TA_Smalltalk(14, 00, 06, 00, "PSI_WALK_05");
};
