// Nur für Kap.6 benutzen

instance KDF_406_OTXardas(Npc_Default)
{
	// -------- primary data --------
	name							= "Xardas";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 30;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 14;
	id								= 406;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 55;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	82,			1,			DMB_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	// Da gespawnde Gegner nicht auf SC reagieren
	Npc_PercEnable(self, PERC_ASSESSENEMY, B_AssessEnemy);
	Npc_PercEnable(self, PERC_ASSESSFIGHTER, B_AssessFighter);
	Npc_PercEnable(self, PERC_ASSESSPLAYER, B_AssessSC);
	Npc_PercEnable(self, PERC_ASSESSDAMAGE, ZS_ReactToDamage);
	Npc_PercEnable(self, PERC_ASSESSMAGIC, B_AssessMagic);
	Npc_PercEnable(self, PERC_ASSESSCASTER, B_AssessCaster);

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItems(self, ItFo_Potion_Health_03, 3);
	CreateInvItems(self, ItFo_Potion_Mana_03, 3);
	EquipItem(self, Amulett_der_Erleuchtung);
	EquipItem(self, Ring_der_Magie);
	EquipItem(self, Ring_der_Erleuchtung);

	// -------- spells --------
	CreateInvItem(self, ItArRuneFireball);
	CreateInvItems(self, ItArScrollSummonDemon, 20);

	// -------- daily routine --------
	daily_routine = Rtn_start_406;
};

func void Rtn_start_406()
{
	TA_Intercept(15, 00, 22, 00, "TPL_331");
	TA_Intercept(22, 00, 15, 00, "TPL_331");
};

func void Rtn_Drained_406()
{
	TA_Drained_YBerion(23, 00, 07, 00, "TPL_331");
	TA_Drained_YBerion(07, 00, 23, 00, "TPL_331");
};
