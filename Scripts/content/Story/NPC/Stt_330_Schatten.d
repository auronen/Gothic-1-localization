instance STT_330_Schatten(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Schatten;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STT;
	level							= 7;

	voice							= 10;
	id								= 330;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 18;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 124;
	attribute[ATR_HITPOINTS]		= 124;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	2,			1,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_BOW,1 );
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItKeLockpick);
	CreateInvItems(self, ItAmArrow, 10);
	CreateInvItems(self, ItFoBeer, 2);
	EquipItem(self, ItMw_1H_Sword_Short_04);
	EquipItem(self, ItRw_Bow_Small_02);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_330;
};

func void Rtn_PreStart_330() // Südtor Unten
{
	TA_Smalltalk(08, 00, 20, 00, "OCR_OUTSIDE_HUT_44"); // mit Org_827_Fox
	TA_Smalltalk(20, 00, 08, 00, "OCR_OUTSIDE_HUT_44");
};

func void Rtn_start_330() // Südtor Unten
{
	TA_Sleep(23, 00, 07, 30, "OCR_HUT_44");
	TA_SitAround(07, 30, 10, 00, "OCR_OUTSIDE_HUT_44");
	TA_CookForMe(10, 00, 17, 00, "OCR_OUTSIDE_HUT_44");
	TA_SitAround(17, 00, 23, 00, "OCR_OUTSIDE_HUT_44");
};
