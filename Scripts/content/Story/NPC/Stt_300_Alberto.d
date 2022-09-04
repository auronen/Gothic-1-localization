instance STT_300_Alberto(Npc_Default)
{
	// -------- primary data --------
	name							= "Alberto";
	npctype							= NpcType_Main;
	guild							= GIL_STT;
	level							= 13;

	voice							= 12;
	id								= 300;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 40;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 196;
	attribute[ATR_HITPOINTS]		= 196;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Pony",	55,			1,			STT_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKPOCKET, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKPOCKET, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);

	// -------- inventory --------
	CreateInvItem(self, ItMw_1H_Sword_01);
	CreateInvItem(self, ItRw_Bow_Small_04);
	CreateInvItems(self, ItFoApple, 5);
	CreateInvItems(self, ItFoBeer, 3);
	CreateInvItems(self, ItFo_Potion_Health_01, 5);
	CreateInvItems(self, ItMinugget, 50);
	CreateInvItems(self, ItAmArrow, 100);

	// -------- daily routine --------
	daily_routine = Rtn_Start_300;
};

func void Rtn_Start_300()
{
	TA_Stay(00, 00, 18, 00, "OM_203");
	TA_Stay(18, 03, 00, 00, "OM_203");
};
