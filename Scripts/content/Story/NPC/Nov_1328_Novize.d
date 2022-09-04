instance NOV_1328_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 3;

	voice							= 3;
	id								= 1328;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	26,			3,			NOV_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Hatchet_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1328;
};

func void Rtn_start_1328() // Sumpfkraut-Sammler
{
	TA_PickRice(07, 00, 19, 00, "PATH_TAKE_HERB_2_1");
	TA_PickRice(19, 00, 07, 00, "PATH_TAKE_HERB_2_1");
};
