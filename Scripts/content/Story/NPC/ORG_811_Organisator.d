// ### Trademodul checken, wenn die Stärke der Armbrust und Rüstungen feststeht
// ### Eintrag in das Journal wegen Tauschhandel

instance ORG_811_Organisator(Npc_Default)
{
	// -------- primary data --------
	name							= Name_Organisator;
	npctype							= Npctype_Ambient;
	guild							= GIL_ORG;
	level							= 11;

	voice							= 6;
	id								= 811;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 50;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 172;
	attribute[ATR_HITPOINTS]		= 172;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	// Mdl_ApplyOverlayMDS(self,"Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		2,			"Hum_Head_Pony",	8,			1,			ORG_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMi_Stuff_Barbknife_01);
	CreateInvItem(self, ItFoMutton);
	CreateInvItem(self, ItAt_Teeth_01);
	CreateInvItems(self, ItKeLockpick, 2);
	CreateInvItems(self, ItMiNugget, 14);
	CreateInvItems(self, ItFoRice, 7);
	CreateInvItems(self, ItFoBooze, 4);
	CreateInvItems(self, ItLsTorch, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 1);
	CreateInvItems(self, ItAmArrow, 20);
	EquipItem(self, ItMw_1H_Mace_War_01);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
	daily_routine = Rtn_start_811;
};

func void Rtn_start_811()
{
	TA_Sleep(23, 55, 08, 05, "NC_HUT17_IN");
	TA_Smalltalk(08, 05, 23, 55, "NC_HUT17_OUT");
};
