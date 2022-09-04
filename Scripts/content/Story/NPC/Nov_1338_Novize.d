instance NOV_1338_Novize(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Novize;
	npctype							= Npctype_Ambient;
	guild							= GIL_NOV;
	level							= 14;

	voice							= 5;
	id								= 1338;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 19;
	attribute[ATR_MANA]				= 19;
	attribute[ATR_HITPOINTS_MAX]	= 208;
	attribute[ATR_HITPOINTS]		= 208;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	22,			1,			NOV_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Mace_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1338;
};

func void Rtn_start_1338()
{
	TA_Meditate(08, 00, 10, 00, "PSI_TEMPLE_COURT_2");
	TA_Meditate(10, 00, 08, 00, "PSI_TEMPLE_COURT_2");
};

func void Rtn_Ritual_1338() // wichtig für Kapitel 2 (ehem 1326)
{
	TA_Stay(00, 00, 08, 00, "PSI_TEMPLE_NOVIZE_PR6");
	TA_Stay(08, 00, 24, 00, "PSI_TEMPLE_NOVIZE_PR6");
};
