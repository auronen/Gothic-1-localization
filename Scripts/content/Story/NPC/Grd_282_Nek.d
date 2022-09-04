instance GRD_282_Nek(Npc_Default)
{
	// -------- primary data --------
	name							= "Toter Gardist"; // Nek
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 10;

	voice							= 7;
	id								= 282;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 40;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_FatBald",	2,			1,			GRD_ARMOR_L);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, Neks_Amulett);
	CreateInvItems(self, ItMiNugget, 10);

	// -------- daily routine --------
	daily_routine = Rtn_start_282;
};

func void Rtn_start_282()
{
	TA_Stand(08, 00, 20, 00, "LOCATION_15_IN_2");
	TA_Stand(20, 00, 08, 00, "LOCATION_15_IN_2");
};
