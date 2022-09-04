instance TPL_1444_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Templer;
	npctype							= NpcType_Guard;
	guild							= GIL_TPL;
	level							= 17;
	flags							= 0;

	voice							= 13;
	id								= 1444;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 55;
	attribute[ATR_DEXTERITY]		= 55;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 5;
	attribute[ATR_HITPOINTS]		= 5;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	64,			4,			TPL_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	EquipItem(self, ItMw_1H_Sword_04);

	// -------- daily routine --------
	daily_routine = Rtn_start_1444;
};

func void Rtn_start_1444()
{
	TA_SittingDuck(00, 00, 12, 00, "GRYD_025");
	TA_SittingDuck(12, 00, 24, 00, "GRYD_025");
};
