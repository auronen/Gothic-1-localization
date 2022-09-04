instance GRD_240_Gardist(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Gardist;
	npctype							= NpcType_Guard;
	guild							= GIL_GRD;
	level							= 20;

	voice							= 7;
	id								= 240;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 280;
	attribute[ATR_HITPOINTS]		= 280;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Bald",	3,			1,			GRD_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_RANGED;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItFo_Potion_Health_01);
	CreateInvItem(self, ItLsTorch);
	CreateInvItems(self, ItAmBolt, 30);
	CreateInvItems(self, ItMiNugget, 20);
	EquipItem(self, ItMw_1H_Sword_03);
	EquipItem(self, ItRw_Crossbow_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_240;
};

func void Rtn_start_240()
{
	TA_GuardPalisade(06, 00, 21, 00, "OCR_PALISADE_WALK_10");
	TA_GuardPalisade(21, 00, 06, 00, "OCR_PALISADE_WALK_10");
};

func void Rtn_OMFull_240()
{
	TA_GuardPassage(06, 00, 21, 00, "OCC_BARONS_RIGHT_GUARD");
	TA_StandAround(21, 00, 22, 00, "OCC_MERCS_RIGHT_ROOM_FRONT");
	TA_SitAround(22, 00, 24, 00, "OCC_MERCS_RIGHT_ROOM_BACK");
	TA_Sleep(24, 00, 06, 00, "OCC_MERCS_UPPER_LEFT_ROOM_BACK");
};

func void Rtn_FMTaken_240()
{
};

func void Rtn_OrcAssault_240()
{
};
