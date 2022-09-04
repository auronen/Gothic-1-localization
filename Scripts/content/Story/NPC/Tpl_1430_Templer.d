instance TPL_1430_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Templer;
	npctype							= NpcType_Guard;
	guild							= GIL_TPL;
	level							= 17;

	voice							= 8;
	id								= 1430;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 85;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 244;
	attribute[ATR_HITPOINTS]		= 244;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	59,			1,			TPL_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1430;
};

func void Rtn_start_1430()
{
	TA_GuardPassage(21, 00, 08, 00, "PSI_TEMPLE_GUARD_02");
	TA_GuardPassage(08, 00, 21, 00, "PSI_TEMPLE_GUARD_02");
};
