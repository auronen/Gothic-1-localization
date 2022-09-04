instance KDF_403_Drago(Npc_Default)
{
	// -------- primary data --------
	name							= "Drago";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	level							= 28;

	voice							= 13;
	id								= 403;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 90;
	attribute[ATR_MANA]				= 90;
	attribute[ATR_HITPOINTS_MAX]	= 376;
	attribute[ATR_HITPOINTS]		= 376;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Thief",	4,			0,			KDF_ARMOR_L);

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
	EquipItem(self, Schutzring_Total2);

	// -------- spells --------
	CreateInvItem(self, ItArRuneFireball);

	// -------- daily routine --------
	daily_routine = Rtn_start_403;
};

func void Rtn_start_403()
{
	TA_SitCampfire(18, 50, 07, 10, "OCC_CHAPEL_MAGE_04");
	TA_PracticeMagic(07, 10, 18, 50, "OCC_CHAPEL_MAGE_04");
};

func void Rtn_KDFRITUAL_403()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_MAGE_03");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_MAGE_03");
};
