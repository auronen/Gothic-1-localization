instance SFB_1000_Senyan(Npc_Default)
{
	// -------- primary data --------
	name							= "Senyan";
	npctype							= NpcType_Main;
	guild							= GIL_SFB;
	level							= 3;

	voice							= 1;
	id								= 1000;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 76;
	attribute[ATR_HITPOINTS]		= 76;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Psionic",	42,			1,			SFB_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Plate_01);
	CreateInvItem(self, ItMw_1H_Nailmace_01);
	CreateInvItems(self, ItFoRice, 4);
	CreateInvItems(self, ItMiNugget, 7);
	EquipItem(self, ItMwPickaxe);

	// -------- daily routine --------
	daily_routine = Rtn_start_1000;
};

func void Rtn_start_1000()
{
	TA_StandAround(10, 05, 03, 05, "NC_TAVERN_ROOM06");
	TA_StandAround(03, 05, 10, 05, "NC_TAVERN_ROOM06");
};
