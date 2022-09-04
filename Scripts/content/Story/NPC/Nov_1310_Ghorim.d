instance NOV_1310_Ghorim(Npc_Default)
{
	// -------- primary data --------
	name							= "Ghorim";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 2;
	id								= 1310;

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
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Axe_Old_01);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_1310;
};

func void Rtn_PreStart_1310()
{
	TA_HerbAlchemy(06, 55, 23, 55, "PSI_HERB_PLACE_1");
	TA_Sleep(23, 55, 06, 55, "PSI_6_HUT_IN_BED3");
};

func void Rtn_start_1310()
{
	TA_Sleep(06, 55, 23, 55, "PSI_6_HUT_IN_BED3");
	TA_Sleep(23, 55, 06, 55, "PSI_6_HUT_IN_BED3");
};
