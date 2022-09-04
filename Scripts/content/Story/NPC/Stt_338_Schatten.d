instance Stt_338_Schatten(Npc_Default)
{
	// -------- primary data --------
	name							= NAME_Schatten;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_STT;
	level							= 7;

	voice							= 12;
	id								= 338;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 18;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 124;
	attribute[ATR_HITPOINTS]		= 124;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	94,			1,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItKeLockpick);
	CreateInvItem(self, ItFo_Potion_Water_01);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Sword_Short_04);
	EquipItem(self, ItRw_Bow_Small_01);

	// -------- daily routine --------
	daily_routine = Rtn_FMstart_338;
};

func void Rtn_FMstart_338() // FM
{
	TA_SitAround(0, 00, 13, 00, "FM_162");
	TA_SitAround(13, 00, 00, 00, "FM_162");
};
