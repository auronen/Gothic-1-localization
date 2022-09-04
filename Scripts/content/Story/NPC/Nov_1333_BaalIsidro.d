instance NOV_1333_BaalIsidro(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Isidro";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 3;
	id								= 1333;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	29,			2,			NOV_ARMOR_M);

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
	daily_routine = Rtn_start_1333;
};

func void Rtn_start_1333()
{
	TA_SitAround(08, 00, 20, 00, "NC_TAVERN_SIT2");
	TA_SitAround(20, 00, 08, 00, "NC_TAVERN_SIT2");
};
