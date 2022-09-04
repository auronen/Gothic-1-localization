instance VLK_530_Guy(Npc_Default)
{
	// -------- primary data --------
	name							= "Guy";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 2;

	voice							= 3;
	id								= 530;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Psionic",	72,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, Itfo_Potion_Water_01);
	CreateInvItems(self, ItMiNugget, 2);
	EquipItem(self, ItMwPickaxe);

	// -------- daily routine --------
	daily_routine = Rtn_start_530;
};

func void Rtn_start_530()
{
	TA_Sleep(23, 00, 07, 00, "OCR_HUT_25");
	TA_SitAround(07, 00, 08, 00, "OCR_OUTSIDE_HUT_25");
	TA_Smalltalk(08, 00, 17, 00, "OCR_OUTSIDE_HUT_27"); // mit Stt 306
	TA_SitAround(17, 00, 19, 05, "OCR_OUTSIDE_ARENA_BENCH_2");
	TA_ArenaSpectator(19, 05, 23, 00, "OCR_ARENA_07");
};
