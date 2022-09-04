instance VLK_508_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= npctype_ambient;
	guild							= GIL_VLK;
	level							= 2;

	voice							= 1;
	id								= 508;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		0,			"Hum_Head_FatBald",	0,			1,			VLK_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMwPickaxe);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItFoBeer);
	CreateInvItem(self, ItLsTorch);
	EquipItem(self, ItMw_1h_Nailmace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_508;
};

func void Rtn_start_508()
{
	TA_Sleep(22, 30, 08, 00, "OCR_HUT_37");
	TA_StandAround(08, 00, 15, 00, "OCR_TO_LADDER_TOP_01");
	TA_Sleep(15, 00, 17, 00, "OCR_HUT_37");
	TA_SitCampfire(17, 00, 22, 30, "OCR_TO_LADDER_TOP_01");
};
