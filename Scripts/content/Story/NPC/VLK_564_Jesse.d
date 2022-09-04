instance VLK_564_Jesse(Npc_Default)
{
	// -------- primary data --------
	name							= "Jesse";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 4;

	voice							= 3;
	id								= 564;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_FatBald",	71,			1,			VLK_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);

	// -------- inventory --------
	CreateInvItem(self, ItMwPickaxe);
	CreateInvItem(self, Itfo_Potion_Water_01);
	EquipItem(self, ItMw_1h_Nailmace_01);

	// -------- daily routine --------
	daily_routine = Rtn_Start_564;
};

func void Rtn_start_564()
{
	TA_Sleep(23, 00, 06, 45, "OCR_HUT_63");
	TA_CookForMe(06, 45, 12, 00, "OCR_OUTSIDE_HUT_63_COOK");
	TA_Smalltalk(12, 00, 17, 00, "OCR_OUTSIDE_HUT_63_COOK");
	TA_SitCampfire(17, 00, 23, 00, "OCR_CAMPFIRE_E_2_MOVEMENT");
};
