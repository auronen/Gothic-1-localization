instance TPL_1436_Templer(Npc_Default)
{
	// -------- primary data --------
	name							= "Templer";
	npctype							= NpcType_Main; // NO NAME Templer in der ALten Mine darf keine Ambient Infos haben/ M.F.
	guild							= GIL_TPL;
	level							= 17;
	flags							= 0;

	voice							= 13;
	id								= 1436;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 85;
	attribute[ATR_DEXTERITY]		= 65;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 244;
	attribute[ATR_HITPOINTS]		= 244;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		1,		1,			"Hum_Head_Psionic",	65,			0,			TPL_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	EquipItem(self, ItMw_2H_Sword_Light_02);

	// -------- daily routine --------
	daily_routine = Rtn_start_1436;
};

func void Rtn_start_1436()
{
	TA_SmallTalk(00, 00, 12, 00, "OM_CAVE1_56");
	TA_SmallTalk(12, 00, 24, 00, "OM_CAVE1_56");
};
