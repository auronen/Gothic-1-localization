instance TPL_1406_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= "Kalom's Leibwache";
	npctype							= NpcType_Main;
	guild							= GIL_TPL;
	level							= 25;

	voice							= 13;
	id								= 1406;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 100;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 292;
	attribute[ATR_HITPOINTS]		= 292;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Bald",	63,			2,			TPL_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1406;
};

func void Rtn_start_1406() // Kaloms Wache
{
	TA_GuardPassage(09, 00, 21, 00, "PSI_LABOR_GUARD_1");
	TA_GuardPassage(21, 00, 09, 00, "PSI_LABOR_GUARD_1");
};
