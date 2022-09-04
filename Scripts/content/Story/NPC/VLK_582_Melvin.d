instance VLK_582_Melvin(Npc_Default)
{
	// -------- primary data --------
	name							= "Melvin";
	npctype							= NpcType_Main;
	guild							= GIL_NOV; // SN: Absicht, da Melvin übergelaufen!!!
	level							= 5;

	voice							= 3;
	id								= 582;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		1,			"Hum_Head_Fighter",	74,			3,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	EquipItem(self, ItMw_1h_Club_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_582;
};

func void Rtn_start_582() // ST: Joru-Schüler
{
	TA_Sleep(00, 00, 08, 00, "PSI_12_HUT_IN_BED");
	TA_Listen(08, 00, 00, 00, "PSI_12_HUT_EX_TEACH");
};
