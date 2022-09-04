/*************************************************************************
** **
** TESTMODELLE_NYUL.D **
** ================== **
** **
** **
*************************************************************************/

instance PC_Nyul(NPC_DEFAULT)
// PlayerInstanz
{
	// -------- primary data --------
	name							= "PC_Nyul";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 10;

	voice							= 15;
	id								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 30;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 400;
	attribute[ATR_MANA]				= 400;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------
	// Npc_LearnTalent ( self, TAL_STEAL);
	// Npc_LearnTalent ( self, TAL_SNEAK);
	// Npc_LearnTalent ( self, TAL_PICKLOCK);
	// Npc_LearnTalent ( self, TAL_IRONWILL);
	// Npc_LearnTalent ( self, TAL_MANA);
	// Npc_LearnTalent ( self, TAL_HEAL);
	// Npc_LearnFightTalent (self, TAL_NEW_1H2);
	// Npc_LearnFightTalent (self, TAL_NEW_1H1);
	// Npc_LearnFightTalent (self, TAL_NEW_2H1);
	// Npc_LearnFightTalent (self, TAL_NEW_2H2);
	// Npc_LearnFightTalent (self, TAL_NEW_BOW1);
	// Npc_LearnFightTalent (self, TAL_NEW_CROSSBOW1);

	// -------- inventory --------

// ----------------------------------------
// Melee_weapons.d
// ----------------------------------------
	EquipItem(self, ItMw_2H_Staff_02);
	CreateInvItem(self, ItMw_1H_Sword_Long_05);
// ----------------------------------------
// Ranged_weapons.d
// ----------------------------------------
	EquipItem(self, ItRw_Bow_Long_01);
	CreateInvItem(self, ItRw_Crossbow_01);

// ----------------------------------------
// Ammunition.d
// ----------------------------------------
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItAmBolt, 100);

// ----------------------------------------
// Armor.d
// ----------------------------------------
	CreateInvItem(self, EBR_ARMOR_H2);

// ----------------------------------------
// Artifacts.d
// ----------------------------------------
// Magic Runes
	CreateInvItem(self, ItArRuneLight);
	CreateInvItem(self, ItArRuneFirebolt);
	CreateInvItem(self, ItArRuneFireball);
	CreateInvItem(self, ItArRuneFirestorm);
	CreateInvItem(self, ItArRuneFireRain);
	CreateInvItem(self, ItArRuneTeleport1);
	CreateInvItem(self, ItArRuneTeleport2);
	CreateInvItem(self, ItArRuneTeleport3);
	CreateInvItems(self, ItArScrollTeleport4, 20);
	CreateInvItem(self, ItArRuneTeleport5);

	CreateInvItem(self, ItArRuneHeal);
	CreateInvItem(self, ItArRuneChainLightning);
	CreateInvItem(self, ItArRuneThunderbolt);
	CreateInvItem(self, ItArRuneThunderball);
	CreateInvItem(self, ItArRuneIceCube);
	CreateInvItem(self, ItArRuneIceWave);

	CreateInvItem(self, ItArRuneDestroyUndead);

// Magic Scrolls
	CreateInvItems(self, ItArScrollTrfBloodfly, 20);
	CreateInvItems(self, ItArScrollTrfCrawler, 20);
	CreateInvItems(self, ItArScrollTrfLurker, 20);
	CreateInvItems(self, ItArScrollTrfMeatbug, 20);
	CreateInvItems(self, ItArScrollTrfMolerat, 20);
	CreateInvItems(self, ItArScrollTrfOrcdog, 20);
	CreateInvItems(self, ItArScrollTrfScavenger, 20);
	CreateInvItems(self, ItArScrollTrfShadowbeast, 20);
	CreateInvItems(self, ItArScrollTrfSnapper, 20);
	CreateInvItems(self, ItArScrollTrfWaran, 20);
	CreateInvItems(self, ItArScrollTrfWolf, 20);

	CreateInvItems(self, ItArScrollSummonDemon, 20);
	CreateInvItems(self, ItArScrollSummonSkeletons, 20);
	CreateInvItems(self, ItArScrollSummonGolem, 20);
	CreateInvItems(self, ItArScrollArmyOfDarkness, 20);

// Psi-Runes
	CreateInvItem(self, ItArRuneWindfist);
	CreateInvItem(self, ItArRuneStormfist);
	CreateInvItem(self, ItArRuneTelekinesis);
	CreateInvItem(self, ItArRuneCharm);
	CreateInvItem(self, ItArRuneSleep);
	CreateInvItem(self, ItArRunePyrokinesis);
	CreateInvItem(self, ItArRuneControl);
	CreateInvItem(self, ItArRuneBreathOfDeath);

// Psi-Scrolls
	CreateInvItems(self, ItArScrollFear, 20);
	CreateInvItems(self, ItArScrollBerzerk, 20);
	CreateInvItems(self, ItArScrollShrink, 20);

// ----------------------------------------
// Food.d
// ----------------------------------------
	CreateInvItems(self, ItFo_mutton_01, 20);
	CreateInvItems(self, ItFoBeer, 20);
	CreateInvItems(self, ItFo_Plants_Trollberrys_01, 20);

// ----------------------------------------
// MISC.D
// ----------------------------------------
	CreateInvItems(self, ItKeLockpick, 20);
	CreateInvItems(self, ItLsTorch, 20);
	CreateInvItems(self, ItMiNugget, 1000);

// ----------------------------------------
// Written.d
// ----------------------------------------
	CreateInvItem(self, ItWrWorldmap);

// ---------------------------------------------------------------------
// Potions
// ---------------------------------------------------------------------
	CreateInvItems(self, ItFo_Potion_Mana_01, 10);
	CreateInvItems(self, ItFo_Potion_Health_01, 10);

	// -------- daily routine --------
};

instance Nyul_16(NPC_DEFAULT)
// PlayerInstanz
{
	// -------- primary data --------
	name							= "Me";
	npctype							= NpcType_Main;
	guild							= GIL_GRD;
	level							= 16;

	voice							= 15;
	id								= 0;

	exp								= 68000;
	exp_next						= 76500;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_MANA_MAX]			= 15;
	attribute[ATR_MANA]				= 15;
	attribute[ATR_HITPOINTS_MAX]	= 232;
	attribute[ATR_HITPOINTS]		= 232;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			GRD_ARMOR_M);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill( self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_ACROBAT, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItem(self, ItMw_2H_Sword_Old_01);
	CreateInvItem(self, ItWrWorldmap);
	CreateInvItems(self, ItAmArrow, 200);
	CreateInvItems(self, ItArScrollFireball, 5);
	CreateInvItems(self, ItArScrollThunderbolt, 10);
	CreateInvItems(self, ItArScrollThunderball, 5);
	CreateInvItems(self, ItArScrollChainLightning, 5);
	CreateInvItems(self, ItArscrollIceCube, 5);
	CreateInvItems(self, ItArScrollWindfist, 10);
	CreateInvItems(self, ItFo_mutton_01, 20);
	CreateInvItems(self, ItFoBeer, 20);
	CreateInvItems(self, ItFo_Plants_Trollberrys_01, 20);
	CreateInvItems(self, ItKeLockpick, 30);
	CreateInvItems(self, ItLsTorch, 30);
	CreateInvItems(self, ItMiNugget, 1000);
	CreateInvItems(self, ItFo_Potion_Mana_03, 20);
	CreateInvItems(self, ItFo_Potion_Health_03, 20);
	EquipItem(self, ItMw_1H_Sword_Bastard_04);
	EquipItem(self, ItRw_Bow_Long_06);

	// -------- daily routine --------
};

instance Nyul_21(NPC_DEFAULT)
// PlayerInstanz
{
	// -------- primary data --------
	name							= "Me";
	npctype							= NpcType_Main;
	guild							= GIL_SLD;
	level							= 21;

	voice							= 15;
	id								= 0;

	exp								= 115500;
	exp_next						= 126500;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_MANA_MAX]			= 15;
	attribute[ATR_MANA]				= 15;
	attribute[ATR_HITPOINTS_MAX]	= 292;
	attribute[ATR_HITPOINTS]		= 292;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			CRW_ARMOR_H);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill( self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1); Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_ACROBAT, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItem(self, ItArRuneLight);
	CreateInvItem(self, ItArRuneFirebolt);
	CreateInvItem(self, ItArRuneTeleport2);
	CreateInvItem(self, ItWrWorldmap);
	CreateInvItem(self, UluMulu);
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItArScrollFireball, 5);
	CreateInvItems(self, ItArScrollThunderbolt, 10);
	CreateInvItems(self, ItArScrollThunderball, 5);
	CreateInvItems(self, ItArScrollChainLightning, 5);
	CreateInvItems(self, ItArscrollIceCube, 5);
	CreateInvItems(self, ItArScrollWindfist, 10);
	CreateInvItems(self, ItFo_mutton_01, 20);
	CreateInvItems(self, ItFoBeer, 20);
	CreateInvItems(self, ItFo_Plants_Trollberrys_01, 20);
	CreateInvItems(self, ItKeLockpick, 30);
	CreateInvItems(self, ItLsTorch, 30);
	CreateInvItems(self, ItMiNugget, 1000);
	CreateInvItems(self, ItFo_Potion_Mana_03, 20);
	CreateInvItems(self, ItFo_Potion_Health_03, 20);
	EquipItem(self, ItMw_2H_Sword_03);
	EquipItem(self, ItRw_Bow_Long_01);

	// -------- daily routine --------
};
