// Nur für Kap.6 benutzen

instance GUR_1212_MadCorKalom(Npc_Default)
{
	// -------- primary data --------
	name							= "verrückter Cor Kalom";
	npctype							= NpcType_Main;
	guild							= GIL_GUR;
	level							= 1000;
	flags							= 0;

	voice							= 10;
	id								= 1212;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 100;
	attribute[ATR_MANA_MAX]			= 500;
	attribute[ATR_MANA]				= 500;
	attribute[ATR_HITPOINTS_MAX]	= 500;
	attribute[ATR_HITPOINTS]		= 500;

	// -------- protection --------
	protection[PROT_BLUNT]			= 500;
	protection[PROT_EDGE]			= 500;
	protection[PROT_POINT]			= 500;
	protection[PROT_FIRE]			= 80;
	protection[PROT_FLY]			= 80;
	protection[PROT_MAGIC]			= 60;

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		0,			"Hum_Head_Psionic",	19,			0,			GUR_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	senses_range = 2000;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	// CreateInvItem(self, ItArRuneSleep);
	CreateInvItems(self, ItArRunePyrokinesis, 1);
	EquipItem(self, Kaloms_Schwert);

	// -------- daily routine --------
	daily_routine = Rtn_OT_1212;
};

func void Rtn_start_1212()
{
	TA_Stay(15, 00, 22, 00, "TPL_408");
	TA_Stay(22, 00, 15, 00, "TPL_408");
};

func void Rtn_OT_1212()
{
	TA_InterceptMadCorKalom(15, 00, 22, 00, "TPL_390");
	TA_InterceptMadCorKalom(22, 00, 15, 00, "TPL_390");
};
