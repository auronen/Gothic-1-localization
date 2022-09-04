instance VLK_581_Snaf(Npc_Default)
{
	// -------- primary data --------
	name							= "Snaf";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	level							= 5;

	voice							= 1;
	id								= 581;

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
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Hum_Body_CookSmith",	0,		1,			"Hum_Head_Fighter",	81,			1,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 2);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Cup_01);
	EquipItem(self, ItMw_1H_Mace_Light_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_581;
};

func void Rtn_start_581()
{
	TA_Cook(08, 00, 22, 00, "OCR_CAULDRON_2");
	TA_Sleep(22, 00, 08, 00, "OCR_HUT_14");
};
