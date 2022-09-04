instance KDF_400_Rodriguez(Npc_Default)
{
	// -------- primary data --------
	name							= "Rodriguez";
	npctype							= NpcType_Main;
	guild							= GIL_KDF;
	level							= 25;

	voice							= 12;
	id								= 400;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 45;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 90;
	attribute[ATR_MANA]				= 90;
	attribute[ATR_HITPOINTS_MAX]	= 340;
	attribute[ATR_HITPOINTS]		= 340;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Pony",	6,			1,			KDF_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	/*
	CreateInvItem(self, ItFoMutton);
	CreateInvItems(self, ItFoHealingPotion, 2);
	CreateInvItems(self, ItFoManaPotion, 2);
	CreateInvItems(self, ItFoWine, 2);
	*/

	// -------- spells --------
	CreateInvItem(self, ItArRuneFirebolt);

	// -------- daily routine --------
	daily_routine = Rtn_start_400;
};

func void Rtn_start_400()
{
	TA_SitCampfire(22, 00, 07, 00, "OCC_CHAPEL_MAGE_03");
	TA_Smalltalk(07, 00, 22, 00, "OCC_CENTER_2");
};

func void Rtn_KDFRITUAL_400()
{
	TA_Position(08, 00, 20, 00, "OCC_CHAPEL_MAGE_01");
	TA_Position(20, 00, 08, 00, "OCC_CHAPEL_MAGE_01");
};
