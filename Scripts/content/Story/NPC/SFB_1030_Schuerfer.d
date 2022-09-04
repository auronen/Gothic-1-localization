instance SFB_1030_Schuerfer(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schuerfer;
	npctype							= npctype_ambient;
	guild							= GIL_SFB;
	level							= 3;

	voice							= 1;
	id								= 1030;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Psionic",	42,			1,			SFB_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMw_1H_Nailmace_01);
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItFoRice, 4);
	CreateInvItems(self, ItMiNugget, 7);
	EquipItem(self, ItMwPickaxe);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_FMCstart_1030;
};

func void Rtn_FMCstart_1030()
{
	TA_PickOre(01, 00, 13, 00, "FMC_ORE_02");
	TA_PickOre(13, 00, 01, 00, "FMC_ORE_02");
};
