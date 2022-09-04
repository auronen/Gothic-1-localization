instance VLK_586_Grimes(Npc_Default)
{
	// -------- primary data --------
	name							= "Grimes";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 5;

	voice							= 4;
	id								= 586;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		3,		1,			"Hum_Head_Thief",	110,		2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Water_01);
	EquipItem(self, ItMwPickaxe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_586;
};

func void Rtn_Start_586()
{
	TA_PickOre(08, 00, 18, 00, "OM_PICKORE_02");
	TA_RoastScavenger(18, 00, 23, 00, "OM_CAVE1_48");
	TA_SitAround(23, 00, 08, 00, "OM_CAVE1_48");
};
