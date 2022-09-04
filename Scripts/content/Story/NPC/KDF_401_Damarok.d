instance KDF_401_Damarok(Npc_Default)
{
	// -------- primary data --------
	name							= "Damarok";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	level							= 27;

	voice							= 14;
	id								= 401;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 364;
	attribute[ATR_HITPOINTS]		= 364;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	5,			1,			KDF_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItFo_Potion_Health_02, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 4);
	EquipItem(self, Schutzamulett_Geschosse);

	// -------- spells --------
	CreateInvItem(self, ItArRuneFireball);

	// -------- daily routine --------
	daily_routine = Rtn_start_401;
};

func void Rtn_start_401()
{
	TA_SitCampfire(19, 01, 07, 01, "OCC_CHAPEL_MAGE_01");
	TA_PotionAlchemy(07, 01, 19, 01, "OCC_CHAPEL_RIGHT_ROOM");
};

func void Rtn_KDFRITUAL_401()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_MAGE_04");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_MAGE_04");
};
