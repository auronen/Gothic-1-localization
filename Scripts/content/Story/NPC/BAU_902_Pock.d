instance BAU_902_Pock(Npc_Default)
{
	// -------- primary data --------
	name							= "Pock";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	level							= 4;

	voice							= 4;
	id								= 902;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 88;
	attribute[ATR_HITPOINTS]		= 88;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Pony",	3,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItFoBooze);
	CreateInvItems(self, ItFoRice, 6);
	EquipItem(self, ItMw_1H_Scythe_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_902;
};

func void Rtn_start_902()
{
	TA_Sleep(20, 15, 07, 15, "NC_PATH_PEASANT_OUTSIDE2"); // CF2
	TA_PickRice(07, 15, 20, 15, "NC_PATH54_02");
};
