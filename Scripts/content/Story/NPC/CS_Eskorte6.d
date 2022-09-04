instance CS_Eskorte6(Npc_Default)
{
	// -------- primary data --------
	name							= "Eskorte6";
	slot							= "guard";
	guild							= GIL_GRD;
	level							= 5;
	flags							= 0;

	voice							= 11; // 9;
	id								= 3028;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 13;
	attribute[ATR_DEXTERITY]		= 9;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 26;
	attribute[ATR_HITPOINTS]		= 26;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Fighter",	18,			2,			GRD_ARMOR_I);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	// CreateInvItem(self, ItMw2hSword02);
	// CreateInvItem(self, ItRwCrossbow);
	// CreateInvItems(self, ItAmBolt, 15);

	// -------- daily routine --------
	daily_routine = Rtn_start_3030;
};

func void Rtn_start_3030()
{
	TA_Position(00, 00, 24, 00, "WP_INTRO_WI01");
};
