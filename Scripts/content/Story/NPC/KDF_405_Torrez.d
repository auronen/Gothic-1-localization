instance KDF_405_Torrez(Npc_Default)
{
	// -------- primary data --------
	name							= "Torrez";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	level							= 26;

	voice							= 4;
	id								= 405;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 85;
	attribute[ATR_MANA]				= 85;
	attribute[ATR_HITPOINTS_MAX]	= 352;
	attribute[ATR_HITPOINTS]		= 352;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Thief",	5,			4,			KDF_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	// HÄNDLER FÜR KDF
	B_Give_TorrezChapter1Runes();
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);

	// -------- spells --------
	EquipItem(self, ItArRuneFireball);

	// -------- daily routine --------
	daily_routine = Rtn_start_405;
};

func void Rtn_start_405()
{
	TA_SitCampfire(22, 05, 06, 55, "OCC_CHAPEL_MAGE_05");
	TA_Smalltalk(06, 55, 22, 05, "OCC_CENTER_2");
};

func void Rtn_KDFRITUAL_405()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_MAGE_02");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_MAGE_02");
};
