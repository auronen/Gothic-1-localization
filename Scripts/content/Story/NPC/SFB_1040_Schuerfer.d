instance SFB_1040_Schuerfer(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schuerfer;
	npctype							= Npctype_ambient;
	guild							= GIL_SFB;
	level							= 6;
	flags							= 0;

	voice							= 2;
	id								= 1040;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 112;
	attribute[ATR_HITPOINTS]		= 112;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Pony",	43,			3,			SFB_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMw_1H_Sword_Short_01);
	CreateInvItems(self, ItFoRice, 2);
	CreateInvItems(self, ItMiNugget, 6);
	EquipItem(self, ItMwPickaxe);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_FMCstart_1040;
};

func void Rtn_FMCstart_1040()
{
	TA_SitAround(01, 00, 13, 00, "FMC_HUT01_OUT");
	TA_SitAround(13, 00, 01, 00, "FMC_HUT01_OUT");
};
