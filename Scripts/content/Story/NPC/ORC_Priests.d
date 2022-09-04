// ****************************************************************
// ------------------ Orkpriester 1 -----------------------------
// ****************************************************************

instance ORC_Priest_1(Npc_Default)
{
	// -------- primary data --------
	name							= "Varrag-Hashor";
	npctype							= NpcType_Main;
	guild							= GIL_ORCSHAMAN;
	level							= 800;

	voice							= 17;
	id								= 2995;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 25;
	protection[PROT_FLY]			= 50;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_TALKBEFOREATTACK]		= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItRwOrcstaff); // für Magiemodus
	CreateInvItem(self, Weltenspalter);
	CreateInvItem(self, ItArRunePyrokinesis);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_2995;
};

func void Rtn_PreStart_2995()
{
	TA_Intercept(07, 00, 12, 00, "TPL_058");
	TA_Intercept(12, 00, 07, 00, "TPL_058");
};

// ****************************************************************
// ------------------ Orkpriester 2 -----------------------------
// ****************************************************************

instance ORC_Priest_2(Npc_Default)
{
	// -------- primary data --------
	name							= "Varrag-Kasorg";
	npctype							= NpcType_Main;
	guild							= GIL_ORCSHAMAN;
	level							= 800;

	voice							= 17;
	id								= 2996;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 25;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 1000;

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_TALKBEFOREATTACK]		= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItRwUdOrcstaff); // für Magiemodus
	CreateInvItem(self, Lichtbringer);
	CreateInvItem(self, ItArRuneThunderball);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_2996;
};

func void Rtn_PreStart_2996()
{
	TA_Intercept(07, 00, 12, 00, "TPL_096");
	TA_Intercept(12, 00, 07, 00, "TPL_096");
};

// ****************************************************************
// ------------------ Orkpriester 3 -----------------------------
// ****************************************************************

instance ORC_Priest_3(Npc_Default)
{
	// -------- primary data --------
	name							= "Varrag-Unhilqt";
	npctype							= NpcType_Main;
	guild							= GIL_ORCSHAMAN;
	level							= 800;

	voice							= 17;
	id								= 2997;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 25;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 1000;

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_TALKBEFOREATTACK]		= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItRwUdOrcstaff); // für Magiemodus
	CreateInvItem(self, Zeitenklinge);
	CreateInvItem(self, ItArRuneChainLightning);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_2997;
};

func void Rtn_PreStart_2997()
{
	TA_Intercept(07, 00, 12, 00, "TPL_124");
	TA_Intercept(12, 00, 07, 00, "TPL_124");
};

// ****************************************************************
// ------------------ Orkpriester 4 -----------------------------
// ****************************************************************

instance ORC_Priest_4(Npc_Default)
{
	// -------- primary data --------
	name							= "Varrag-Ruuushk";
	npctype							= NpcType_Main;
	guild							= GIL_ORCSHAMAN;
	level							= 800;

	voice							= 17;
	id								= 2998;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 1000;
	attribute[ATR_HITPOINTS]		= 1000;

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 25;
	protection[PROT_FIRE]			= 1000;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_TALKBEFOREATTACK]		= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	senses_range = 1000;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItRwUdOrcstaff); // für Magiemodus
	CreateInvItem(self, Daemonenstreich);
	CreateInvItem(self, ItArRuneFirestorm);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_2998;
};

func void Rtn_PreStart_2998()
{
	TA_Intercept(07, 00, 12, 00, "TPL_193");
	TA_Intercept(12, 00, 07, 00, "TPL_193");
};

// ****************************************************************
// ------------------ Orkpriester 5 -----------------------------
// ****************************************************************

instance ORC_Priest_5(Npc_Default)
{
	// -------- primary data --------
	name							= "Grash-Varrag-Arushat";
	npctype							= NpcType_Friend;
	guild							= GIL_ORCSHAMAN;
	level							= 1000;

	voice							= 17;
	id								= 2999;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 500;
	attribute[ATR_MANA]				= 500;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;

	// -------- protection --------
	protection[PROT_BLUNT]			= 1000;
	protection[PROT_EDGE]			= 1000;
	protection[PROT_POINT]			= 1000;
	protection[PROT_FIRE]			= 1000;
	protection[PROT_FLY]			= 1000;
	protection[PROT_MAGIC]			= 100;

	// -------- visuals --------
	Mdl_SetVisual(self, "Orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"UOS_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_SPECIALCOMBATDAMAGEREACTION]= TRUE;
	aivar[AIV_TALKBEFOREATTACK]		= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItRwUdOrcstaff); // für Magiemodus
	CreateInvItem(self, Bannklinge);
	CreateInvItem(self, ItArRuneBreathOfDeath);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_2999;
};

func void Rtn_PreStart_2999()
{
	TA_Intercept(07, 00, 12, 00, "TPL_300");
	TA_Intercept(12, 00, 07, 00, "TPL_300");
};
