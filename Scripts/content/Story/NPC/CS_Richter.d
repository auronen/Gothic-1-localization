instance CS_Richter(Npc_Default)
{
	// -------- primary data --------
	name							= "Richter";
	npctype							= NpcType_Main;
	guild							= GIL_None;
	level							= 5;

	voice							= 13;
	id								= 3022;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.MDS");
	// Spezialrobe heisst : LAW_ARMOR
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	89,			1,			LAW_ARMOR);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------

	// -------- spells --------

	// -------- daily routine --------
	daily_routine = Rtn_start_3022;
};

func void Rtn_start_3022()
{
	TA_Position(00, 00, 24, 00, "WP_INTRO_WI01");
};
