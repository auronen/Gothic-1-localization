//******************Der tote Riddler****************************Björn****

instance Bau_940_Riddler(Npc_Default)
{
	// -------- primary data --------
	name							= "Leiche";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	level							= 10;

	voice							= 7;
	id								= 940;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Pony",	110,		1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItFoBooze);
	CreateInvItem(self, theriddle6);
	CreateInvItem(self, Lebensamulett);
	CreateInvItems(self, ItMiNugget, 302);
	CreateInvItems(self, ItFoRice, 6);
	CreateInvItems(self, ItArScrollTrfBloodfly, 2);

	// -------- daily routine --------
	daily_routine = Rtn_start_940;
};

func void Rtn_start_940()
{
	TA_Stand(08, 00, 20, 00, "OW_FOGDUNGEON_36_MOVEMENT");
	TA_Stand(20, 00, 08, 00, "OW_FOGDUNGEON_36_MOVEMENT");
};
