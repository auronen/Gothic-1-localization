instance VLK_5006_Buddler(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Buddler;
	npctype							= NpcType_Mine_Ambient;
	guild							= GIL_VLK;
	level							= 3;

	voice							= 2;
	id								= 5006;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_FatBald",	74,			1,			VLK_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMwPickaxe);
	CreateInvItem(self, ItFoLoaf);
	CreateInvItem(self, ItFoBeer);
	CreateInvItem(self, ItLsTorch);
	EquipItem(self, ItMw_1h_Nailmace_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMstart_5006;
};

func void Rtn_FMstart_5006() // FM
{
	TA_PickOre(00, 00, 23, 00, "FM_136");
	TA_PickOre(23, 00, 24, 00, "FM_136");
};
