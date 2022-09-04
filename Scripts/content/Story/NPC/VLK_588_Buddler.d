instance VLK_588_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= NpcType_Mine_Ambient;
	guild							= GIL_VLK;
	level							= 5;

	voice							= 2;
	id								= 588;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 25;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Thief",	67,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_588;
};

func void Rtn_start_588()
{
	TA_PickOre(00, 00, 12, 00, "OM_PICKORE_03");
	TA_PickOre(12, 00, 24, 00, "OM_PICKORE_03");
};
