instance TPL_1455_GorBoba(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_GorBoba;
	npctype							= NpcType_Main;
	guild							= GIL_GUR;
	level							= 50;

	voice							= 8;
	id								= 1455;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;

	// -------- protection --------
	protection[PROT_BLUNT]			= 90;
	protection[PROT_EDGE]			= 90;
	protection[PROT_POINT]			= 140;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 80;
	protection[PROT_MAGIC]			= 75;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	117,		2,			TPL_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMw_2H_Sword_Light_02);
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	CreateInvItem(self, ItFo_Potion_Health_02);

	// -------- daily routine --------
	daily_routine = Rtn_OT_1455;
};

func void Rtn_start_1455()
{
	TA_Guard(09, 00, 21, 00, "TPL_408");
	TA_Guard(21, 00, 09, 00, "TPL_408");
};

func void Rtn_OT_1455()
{
	TA_AlignGuard(09, 00, 21, 00, "TPL_110");
	TA_AlignGuard(21, 00, 09, 00, "TPL_110");
};
