instance BAU_901_Horatio(Npc_Default)
{
	// -------- primary data --------
	name							= "Horatio";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	level							= 8;

	voice							= 9;
	id								= 901;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 45;
	attribute[ATR_DEXTERITY]		= 11;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 136;
	attribute[ATR_HITPOINTS]		= 136;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Fighter",	99,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItFoBooze);
	CreateInvItems(self, ItFoRice, 5);
	EquipItem(self, ItMw_1H_Scythe_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_901;
};

func void Rtn_start_901()
{
	TA_SitCampfire(20, 00, 06, 00, "NC_PATH_PEASANT_OUTSIDE10"); // CF3
	TA_PickRice(06, 00, 20, 00, "NC_PATH78_A");
};
