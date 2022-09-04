instance NOV_1332_BaalKagan(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Kagan";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 13;
	id								= 1332;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 148;
	attribute[ATR_HITPOINTS]		= 148;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	29,			1,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItems(self, ItMiJoint_1, 10);
	CreateInvItems(self, ItMiJoint_2, 20);
	CreateInvItems(self, ItMiJoint_3, 20);
	EquipItem(self, ItMw_1H_Axe_Old_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1332;
};

func void Rtn_start_1332()
{
	TA_Standaround(00, 00, 07, 30, "NC_PATH_PEASANT_OUTSIDE11");
	TA_Smalltalk(07, 30, 00, 00, "NC_PLACE06");
};
