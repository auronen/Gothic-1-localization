instance VLK_583_Glen(Npc_Default)
{
	// -------- primary data --------
	name							= "Glen";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 5;

	voice							= 2;
	id								= 583;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 25;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Thief",	73,			4,			VLK_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItems(self, ItKeLockpick, 20);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_start_583;
};

func void Rtn_start_583()
{
	TA_PickOre(00, 00, 12, 00, "OM_PICKORE_01A");
	TA_PickOre(12, 00, 24, 00, "OM_PICKORE_01A");
};
