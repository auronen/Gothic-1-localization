instance GUR_1209_BaalOrun(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Orun";
	npctype							= NpcType_Main;
	guild							= GIL_GUR;
	level							= 28;

	voice							= 12;
	id								= 1209;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_MANA_MAX]			= 50;
	attribute[ATR_MANA]				= 50;
	attribute[ATR_HITPOINTS_MAX]	= 376;
	attribute[ATR_HITPOINTS]		= 376;

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
	// CreateInvItems(self, ItMiJoint, 5);
	EquipItem(self, Oruns_Keule);

	// -------- daily routine --------
	daily_routine = Rtn_start_1209;
};

func void Rtn_start_1209()
{
	TA_Boss(07, 00, 00, 00, "PSI_PATH_2_6");
	TA_Sleep(00, 00, 07, 00, "PSI_TREE_IN");
};
