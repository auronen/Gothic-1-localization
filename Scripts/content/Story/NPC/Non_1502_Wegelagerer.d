instance Non_1502_Wegelagerer(Npc_Default)
{
	// -------- primary data --------
	name							= "Wegelagerer";
	npctype							= npctype_ambient;
	guild							= GIL_NONE;
	level							= 9;

	voice							= 6;
	id								= 1502;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 35;
	attribute[ATR_DEXTERITY]		= 15;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 195;
	attribute[ATR_HITPOINTS]		= 195;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		2,		3,			"Hum_Head_Thief",	5,			2,			-1);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItems(self, ItFo_Potion_Health_01, 2);
	CreateInvItems(self, ItMiNugget, 43);
	CreateInvItems(self, ItFoBeer, 3);
	EquipItem(self, ItMw_1H_Sword_Old_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_1502;
};

func void Rtn_start_1502()
{
	// Angreifen bei Sichtung
	Npc_SetPermAttitude(self, ATT_HOSTILE);

	TA_SitCampfire(22, 00, 06, 00, "SPAWN_TALL_PATH_BANDITOS2_03");
	TA_Smalltalk(06, 00, 22, 00, "SPAWN_TALL_PATH_BANDITOS2_02_04");
};
