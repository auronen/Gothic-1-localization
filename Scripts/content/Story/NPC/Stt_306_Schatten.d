instance STT_306_Schatten(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schatten;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STT;
	level							= 7;

	voice							= 12;
	id								= 306;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Bald",	12,			1,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Water_01);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItKeLockpick);
	CreateInvItems(self, ItAmArrow, 10);
	EquipItem(self, ItMw_1H_Sword_Short_04);
	EquipItem(self, ItRw_Bow_Small_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_306;
};

func void Rtn_start_306() // Arenaplatz
{
	TA_Sleep(23, 00, 08, 05, "OCR_HUT_27");
	TA_Smalltalk(08, 05, 17, 00, "OCR_OUTSIDE_HUT_27_MOVEMENT");
	TA_SitAround(17, 00, 19, 05, "OCR_OUTSIDE_ARENA_HANGAROUND");
	TA_ArenaSpectator(19, 05, 23, 00, "OCR_ARENA_07");
};
