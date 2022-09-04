instance VLK_585_Aleph(Npc_Default)
{
	// -------- primary data --------
	name							= "Aleph";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 5;

	voice							= 5;
	id								= 585;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Thief",	71,			0,			VLK_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMwPickaxe);
	CreateInvItem(self, ItFoBeer);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItKe_OM_03, 1); // Mission-Item!
	EquipItem(self, ItMw_1h_Nailmace_01);
	EquipItem(self, Staerkering);

	// -------- daily routine --------
	daily_routine = Rtn_start_585;
};

func void Rtn_start_585()
{
	TA_SitAround(04, 00, 16, 00, "OM_PICKORE_05");
	TA_SitAround(16, 00, 04, 00, "OM_PICKORE_05");
};

func void Rtn_Busy_585()
{
	TA_PickOre(16, 00, 04, 00, "OM_PICKORE_05");
	TA_PickOre(04, 00, 16, 00, "OM_PICKORE_05");
};
