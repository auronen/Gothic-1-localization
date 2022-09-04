instance GUR_1204_BaalNamib(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Namib";
	npctype							= NpcType_Main;
	guild							= GIL_GUR;
	level							= 29;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 2;
	id								= 1204;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 55;
	attribute[ATR_MANA_MAX]			= 50;
	attribute[ATR_MANA]				= 50;
	attribute[ATR_HITPOINTS_MAX]	= 388;
	attribute[ATR_HITPOINTS]		= 388;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	20,			1,			GUR_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItArRuneSleep);
	EquipItem(self, Namibs_Keule);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1204;
};

func void Rtn_Start_1204()
{
	TA_Smalltalk(08, 00, 20, 00, "PSI_PATH_1");
	TA_Smalltalk(20, 00, 08, 00, "PSI_PATH_1");
};
