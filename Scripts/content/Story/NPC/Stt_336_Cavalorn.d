instance STT_336_Cavalorn(Npc_Default)
{
	// -------- primary data --------
	name							= "Cavalorn";
	npctype							= NpcType_Main;
	guild							= GIL_STT;
	level							= 5;

	voice							= 12;
	id								= 336;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
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
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		3,			"Hum_Head_Psionic",	10,			2,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);

	// -------- inventory --------
	B_Give_CavalornChapter1Weapons();
	CreateInvItem(self, ItFo_Potion_Water_01);
	CreateInvItem(self, ItFoApple);
	CreateInvItem(self, ItKeLockpick);
	CreateInvItems(self, ItAmArrow, 16);
	EquipItem(self, ItMw_1H_Sword_Short_02);
	EquipItem(self, ItRw_Bow_Small_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_336;
};

func void Rtn_start_336()
{
	TA_Sleep(23, 00, 06, 30, "OW_CAVALORN_01");
	TA_StandAround(06, 30, 23, 00, "OW_SAWHUT_SLEEP_01");
};
