instance KDF_402_Corristo(Npc_Default)
{
	// -------- primary data --------
	name							= "Corristo";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	level							= 30;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 14;
	id								= 402;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 100;
	attribute[ATR_MANA]				= 100;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Pony",	84,			1,			KDF_ARMOR_H);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItFo_Potion_Health_02, 2);
	CreateInvItems(self, ItFo_Potion_Mana_02, 2);
	CreateInvItems(self, ItFoWine, 2);
	EquipItem(self, Schutzring_Magie2_Fire2);

	// -------- spells --------
	CreateInvItem(self, ItArRuneFireball);

	// -------- daily routine --------
	daily_routine = Rtn_start_402;
};

func void Rtn_start_402()
{
	TA_SitCampfire(19, 05, 06, 55, "OCC_CHAPEL_MAGE_02");
	TA_ReadBook(06, 55, 19, 05, "OCC_CHAPEL_UPSTAIRS_RIGHT");
};

func void Rtn_KDFRITUAL_402()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_UPSTAIRS");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_UPSTAIRS");
};

func void Rtn_WAITFORSC_402()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_HALL");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_HALL");
};
