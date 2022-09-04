instance TPL_1418_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Templer;
	npctype							= NpcType_Guard;
	guild							= GIL_TPL;
	level							= 12;

	voice							= 13;
	id								= 1418;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 45;
	attribute[ATR_DEXTERITY]		= 25;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 184;
	attribute[ATR_HITPOINTS]		= 184;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	61,			0,			TPL_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1418;
};

func void Rtn_start_1418()
{
	TA_Sleep(23, 10, 06, 00, "PSI_33_HUT_IN");
	TA_Sleep(06, 00, 23, 10, "PSI_33_HUT_IN");
	// TA_PracticeSword (06,00,23,10,"PSI_PATH_6_7"); // SN: zum ewigen Schlafen verdammt, da der SC an dieser Stelle seine Lern-Anim abspielen soll
};
