instance STT_316_Schatten(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schatten;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STT;
	level							= 5;

	voice							= 10;
	id								= 316;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 18;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Pony",	56,			1,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Water_01);
	CreateInvItems(self, ItAmArrow, 15);
	CreateInvItems(self, ItFoBeer, 2);
	EquipItem(self, ItMw_1H_Sword_Short_01);
	EquipItem(self, ItRw_Bow_Small_05);

	// -------- daily routine --------
	daily_routine = Rtn_start_316;
};

func void Rtn_start_316()
{
	TA_Sleep(23, 00, 08, 00, "OCR_HUT_18");
	TA_Smalltalk(08, 00, 19, 00, "OCR_OUTSIDE_HUT_18");
	TA_ArenaSpectator(19, 00, 23, 00, "OCR_ARENA_09");
};
