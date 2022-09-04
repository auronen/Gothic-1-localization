instance VLK_574_Mud(Npc_Default)
{
	// -------- primary data --------
	name							= "Mud";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 0;

	voice							= 7;
	id								= 574;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Pony",	109,		1,			VLK_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL; // für DIREKTES ansprechen

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, Itfo_Potion_Water_01);
	CreateInvItems(self, ItMiNugget, 5);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_574;
};

func void Rtn_start_574()
{
	TA_Sleep(23, 00, 06, 00, "OCR_HUT_13");
	TA_SitAround(23, 00, 06, 00, "OCR_OUTSIDE_HUT_13");
};

func void Rtn_Follow_574()
{
	TA_FollowPC(23, 00, 16, 00, "OCR_HUT_13");
	TA_FollowPC(16, 00, 23, 00, "OCR_HUT_13");
};
