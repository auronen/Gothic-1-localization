instance BAU_920_Bauer(Npc_Default)
{
	// -------- primary data --------
	name							= name_Bauer;
	npctype							= npctype_ambient;
	guild							= GIL_BAU;
	level							= 2;

	voice							= 2;
	id								= 920;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 11;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Thief",	2,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoBooze);
	CreateInvItems(self, ItFoRice, 4);
	EquipItem(self, ItMw_1H_Scythe_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_920;
};

func void Rtn_start_920()
{
	TA_Sleep(20, 45, 07, 45, "NC_PATH_PEASANT");
	TA_PickRice(07, 45, 20, 45, "NC_PATH54");
};
