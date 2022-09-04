instance VLK_520_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 2;

	voice							= 1;
	id								= 520;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 13;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 64;
	attribute[ATR_HITPOINTS]		= 64;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Thief",	68,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItMiLute);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_520;
};

func void Rtn_start_520()
{
	TA_SitCampfire(10, 00, 22, 00, "OC_ROUND_22_CF_1");
	TA_SitCampfire(10, 00, 22, 00, "OC_ROUND_22_CF_1");
};
