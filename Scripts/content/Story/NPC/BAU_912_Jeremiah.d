instance BAU_912_Jeremiah(Npc_Default)
{
	// -------- primary data --------
	name							= "Jeremiah";
	npctype							= NpcType_Main;
	guild							= GIL_BAU;
	level							= 7;

	voice							= 4;
	id								= 912;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 13;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 124;
	attribute[ATR_HITPOINTS]		= 124;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Bald",	80,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Alchemy_Alcohol_01);
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItMinugget, 15);
	CreateInvItems(self, ItFoBooze, 5);
	EquipItem(self, ItMw_1H_Sword_Short_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_912;
};

func void Rtn_start_912()
{
	TA_Sleep(22, 00, 08, 00, "NC_TAVERN_BACKROOM05");
	TA_PotionAlchemy(08, 00, 22, 00, "NC_TAVERN_BACKROOM01");
};
