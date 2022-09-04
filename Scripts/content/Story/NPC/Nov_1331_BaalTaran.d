instance NOV_1331_BaalTaran(Npc_Default)
{
	// -------- primary data --------
	name							= "Baal Taran";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	level							= 9;

	voice							= 5;
	id								= 1331;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 148;
	attribute[ATR_HITPOINTS]		= 148;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_FatBald",	29,			2,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_OldCoin_02);
	CreateInvItems(self, ItMiNugget, 15);
	CreateInvItems(self, ItFoRice, 5);
	CreateInvItems(self, ItFoBooze, 3);
	CreateInvItems(self, ItMiJoint_1, 13);
	EquipItem(self, ItMw_1H_Axe_Old_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1331;
};

func void Rtn_start_1331()
{
	TA_Smalltalk(00, 00, 08, 00, "OCR_TO_HUT_6");
	TA_StandAround(08, 00, 00, 00, "OCR_OUTSIDE_HUT_77_INSERT");
};
