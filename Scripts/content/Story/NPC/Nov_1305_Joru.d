instance NOV_1305_Joru(Npc_Default)
{
	// -------- primary data --------
	name							= "Joru";
	npctype							= NpcType_Main;
	guild							= GIL_NOV;
	level							= 9;
	flags							= 0;

	voice							= 7;
	id								= 1305;

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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	75,			1,			NOV_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	// CreateInvItem(self, ItFoSoup);
	// CreateInvItem(self, ItMiJoint);
	EquipItem(self, ItMw_1H_Axe_Old_01);

	// -------- missions --------

	// -------- daily routine --------
	daily_routine = Rtn_start_1305;
};

func void Rtn_start_1305() // ST: Teach-Platz 1 (Joru-Platz)
{
	TA_Sleep(23, 55, 08, 05, "PSI_14_HUT_IN");
	TA_Teaching(08, 05, 23, 55, "PSI_11_HUT_EX");
};
