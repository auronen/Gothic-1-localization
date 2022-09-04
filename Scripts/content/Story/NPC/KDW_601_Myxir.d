instance KDW_601_Myxir(Npc_Default)
{
	// -------- primary data --------
	name							= "Myxir";
	npctype							= NpcType_Main;
	guild							= GIL_KDW;
	level							= 24;

	voice							= 10;
	id								= 601;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 55;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 96;
	attribute[ATR_MANA]				= 96;
	attribute[ATR_HITPOINTS_MAX]	= 328;
	attribute[ATR_HITPOINTS]		= 328;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Pony",	7,			4,			KDW_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_MAGE, 6);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Health_02);
	CreateInvItem(self, ItFo_Potion_Mana_03);
	CreateInvItem(self, ItFo_Plants_Flameberry_01);
	CreateInvItem(self, ItFo_Plants_RavenHerb_01);

	// -------- spells --------
	CreateInvItem(self, ItArRuneThunderbolt);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_start_601;
};

func void Rtn_start_601()
{
	TA_Sleep(01, 00, 04, 00, "NC_KDW03_IN");
	TA_ReadBook(04, 00, 01, 00, "NC_KDW03_IN");
};
