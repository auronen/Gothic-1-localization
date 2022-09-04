instance GUR_1211_BaalLukor(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Lukor";
	npctype							= NpcType_Friend;
	guild							= GIL_GUR;
	level							= 50;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 13;
	id								= 1211;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 388;
	attribute[ATR_HITPOINTS]		= 388;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	20,			1,			GUR_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	EquipItem(self, ItMw_1H_Sword_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1211;
};

func void Rtn_Start_1211()
{
	TA_Guard(23, 00, 16, 00, "GRYD_025");
	TA_Guard(16, 00, 23, 00, "GRYD_025");
};

func void Rtn_Follow_1211()
{
	TA_FollowPC(23, 00, 16, 00, "GRYD_025");
	TA_FollowPC(16, 00, 23, 00, "GRYD_025");
};

func void Rtn_WaitInSideTunnelOne_1211()
{
	TA_Stay(23, 00, 16, 00, "GRYD_040");
	TA_Stay(16, 00, 23, 00, "GRYD_040");
};

func void Rtn_WaitInSideTunnelTwo_1211()
{
	TA_Stay(23, 00, 16, 00, "GRYD_047");
	TA_Stay(16, 00, 23, 00, "GRYD_047");
};

func void Rtn_Door_1211()
{
	TA_Stay(23, 00, 16, 00, "GRYD_060");
	TA_Stay(16, 00, 23, 00, "GRYD_060");
};

func void Rtn_Teleport_1211()
{
	TA_FollowPC(23, 00, 16, 00, "GRYD_060");
	TA_FollowPC(16, 00, 23, 00, "GRYD_060");
};

func void Rtn_Meditate_1211()
{
	TA_Meditate(23, 00, 16, 00, "GRYD_082");
	TA_Meditate(16, 00, 23, 00, "GRYD_082");
};
