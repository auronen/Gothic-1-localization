instance VLK_559_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= NpcType_Mine_Ambient;
	guild							= GIL_VLK;
	level							= 3;

	voice							= 3;
	id								= 559;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Psionic",	68,			0,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_559;
};

func void Rtn_start_559()
{
	TA_PickOre(21, 00, 07, 00, "OM_CAVE3_01");
	TA_PickOre(07, 00, 21, 00, "OM_CAVE3_01");
};
