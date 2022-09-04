instance STT_324_Balam(Npc_Default)
{
	// -------- primary data --------
	name							= "Balam";
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	level							= 3;

	voice							= 4;
	id								= 324;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Hum_Body_CookSmith",	0,		1,			"Hum_Head_Fighter",	15,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 2);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItKeLockpick);
	EquipItem(self, ItMw_1H_Sword_Short_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_324;
};

func void Rtn_start_324()
{
	TA_Cook(08, 00, 18, 00, "OCC_BARONS_RIGHT_ROOM_FRONT");
	TA_Cook(18, 00, 08, 00, "OCC_KITCHEN");
};
