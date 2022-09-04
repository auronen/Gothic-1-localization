instance OverlayHuman(C_NPC)
{
	// -------- primary data --------
	name							= "OverlayHuman";
	guild							= GIL_BAU;
	level							= 10;

	voice							= 11; // 4
	id								= 3001;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_1hST1.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_1hST2.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_2hST1.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_2hST2.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_BowT1.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_BowT2.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_CBowT1.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_CBowT2.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Acrobatic.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Militia.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_drunken.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Swim.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Sprint.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Torch.mds");
	Mdl_ApplyOverlayMDS(self, "Humans_Flee.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance OverlayOrc(C_NPC)
{
	// -------- primary data --------
	name[0]							= "Orc Rockefeller";
	guild							= GIL_ORCWARRIOR;
	level							= 4;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 0;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------
	protection[PROT_EDGE]			= 5;
	protection[PROT_BLUNT]			= 5;
	protection[PROT_POINT]			= 5;
	protection[PROT_FIRE]			= 5;
	protection[PROT_MAGIC]			= 5;

	// -------- visuals --------
	Mdl_SetVisual(self, "orc.mds");
	Mdl_ApplyOverlayMDS(self, "Orc_Drunken.mds");
	Mdl_ApplyOverlayMDS(self, "Orc_Torch.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyWarrior",		DEFAULT,DEFAULT,	"Orc_Head",			DEFAULT,	DEFAULT,	-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

instance Babe_Rockefeller(Npc_Default)
{
	// -------- primary data --------
	name							= "babe rockefeller";
	guild							= GIL_BAB;
	level							= 1;
	flags							= 0;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 19;
	id								= 110;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 6;
	attribute[ATR_DEXTERITY]		= 8;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 10;
	attribute[ATR_HITPOINTS]		= 10;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "Babe.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Bab_body_Naked0",		0,		1,			"Bab_Head_Hair1",	0,			DEFAULT,	-1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, BAB_ARMOR_NUDE);
	CreateInvItem(self, BAB_ARMOR_BIKINI);
	CreateInvItem(self, ItMiBrush);
	CreateInvItem(self, ItMiWedel);
	CreateInvItem(self, ItMiLute);
	CreateInvItems(self, ItFo_mutton_01, 20);
	CreateInvItems(self, ItFoApple, 5);
	CreateInvItems(self, ItFoLoaf, 5);
	CreateInvItems(self, ItFoMutton, 20);
	CreateInvItems(self, ItFoCheese, 5);
	CreateInvItems(self, ItFoRice, 5);
	CreateInvItems(self, ItFoSoup, 5);
	CreateInvItems(self, ItFoMeatbugragout, 5);
	CreateInvItems(self, ItFoCrawlersoup, 5);
	CreateInvItems(self, ItFoBooze, 10);
	CreateInvItems(self, ItFoWine, 5);
	CreateInvItems(self, ItFo_wineberrys_01, 5);
	CreateInvItems(self, ItFoBeer, 5);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 5 (Ende Kap 1) noch keiner Gilde beigetreten
// ***************************************************************************

instance L5(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "l5";
	npctype							= NpcType_Main;
	guild							= GIL_NONE; //
	level							= 5;

	voice							= 15;
	id								= 0;

	exp								= 7500;
	exp_next						= 10500;
	lp								= 90;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			SFB_ARMOR_L);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_MAGE, 6);
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET, 1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW, 1);

	// -------- inventory --------
	// Armor
	CreateInvItem(self, VLK_ARMOR_L);
	CreateInvItem(self, VLK_ARMOR_M);
	CreateInvItem(self, SFB_ARMOR_L);
	CreateInvItem(self, NOV_ARMOR_L);

	// Weapons (Damage bis 25)
	CreateInvItem(self, ItMw_1H_Club_01);
	CreateInvItem(self, ItMw_1H_Poker_01);
	CreateInvItem(self, ItMw_1H_Sickle_01);
	CreateInvItem(self, ItMw_1H_Mace_Light_01);
	CreateInvItem(self, ItMw_1H_Hatchet_01);
	CreateInvItem(self, ItMw_1H_Sword_Old_01);
	CreateInvItem(self, ItMw_1H_Nailmace_01);
	CreateInvItem(self, ItMw_1H_Sword_Short_01);
	CreateInvItem(self, ItMw_1H_Sword_Short_02);
	CreateInvItem(self, ItMw_1H_Sword_Short_03);
	CreateInvItem(self, ItMw_1H_Sword_Short_04);
//	CreateInvItem(self, ItMw_1H_Sword_Short_05);
	CreateInvItem(self, ItMw_1H_Axe_Old_01);
	CreateInvItem(self, ItMw_1H_Scythe_01);
	CreateInvItem(self, ItMw_2H_Staff_01);
	CreateInvItem(self, ItMw_2H_Staff_02);
	CreateInvItem(self, ItMw_2H_Staff_03);
	CreateInvItem(self, ItMw_1H_Mace_01);
	CreateInvItem(self, ItMw_1H_Mace_02);
//	CreateInvItem(self, ItRw_Bow_Small_01);
	CreateInvItem(self, ItRw_Bow_Small_02);
	CreateInvItem(self, ItRw_Bow_Small_03);
	CreateInvItem(self, ItRw_Bow_Small_04);
	CreateInvItems(self, ItAmArrow, 50);
	CreateInvItems(self, ItMiNugget, 200);
	CreateInvItems(self, ItKeLockpick, 10);
	CreateInvItems(self, ItLsTorch, 20);
	EquipItem(self, ItMw_1H_Sword_Short_05);
	EquipItem(self, ItRw_Bow_Small_01);

	// -------- daily routine --------
	start_aistate = ZS_Firespit;
};

// ***************************************************************************
// PlayerInstanz LEVEL 10 (Ende Kapitel 2) Noch keine LP ausgegeben
// ***************************************************************************
instance L10(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "L10 ";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 10;

	voice							= 15;
	id								= 0;

	exp								= 27500;
	exp_next						= 33000;
	lp								= 165;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	// Armor
	CreateInvItem(self, STT_ARMOR_M);
	CreateInvItem(self, STT_ARMOR_H);
	CreateInvItem(self, ORG_ARMOR_L);
	CreateInvItem(self, ORG_ARMOR_M);
	CreateInvItem(self, NOV_ARMOR_M);
	CreateInvItem(self, NOV_ARMOR_H);

	// Weapons (Damage 26-40)
	CreateInvItem(self, ItMw_1H_Mace_03);
	CreateInvItem(self, ItMw_1H_Mace_04);
	CreateInvItem(self, ItMw_1H_Sword_01);
	CreateInvItem(self, ItMw_1H_Sword_02);
	CreateInvItem(self, ItMw_1H_Sword_03);
	CreateInvItem(self, ItMw_1H_Sword_04);
	CreateInvItem(self, ItMw_1H_Sword_05);
	CreateInvItem(self, ItMw_1H_Mace_War_01);
	CreateInvItem(self, ItMw_1H_Mace_War_02);
	CreateInvItem(self, ItMw_1H_Mace_War_03);
	CreateInvItem(self, ItMw_1H_Mace_War_04);
	CreateInvItem(self, ItMw_1H_Sword_Long_01); // Dam. 40, Str. 17
	CreateInvItem(self, ItRw_Bow_Small_05);
	CreateInvItem(self, ItRw_Bow_Long_01);
	CreateInvItem(self, ItRw_Bow_Long_02); // Dam. 40, Dex. 22
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 20);
	CreateInvItems(self, ItLsTorch, 20);
//	EquipItem(self, ItMw_1H_Sword_Long_01); // Dam. 40, Str. 17
//	EquipItem(self, ItRw_Bow_Long_02); // Dam. 40, Dex. 22

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 15 (Ende Kapitel 3) Noch keine LP ausgegeben
// ***************************************************************************
instance L15(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "L15 ";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 15;

	voice							= 15;
	id								= 0;

	exp								= 60000;
	exp_next						= 68000;
	lp								= 240;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 220;
	attribute[ATR_HITPOINTS]		= 220;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	// Armor
	CreateInvItem(self, GRD_ARMOR_L);
	CreateInvItem(self, GRD_ARMOR_M);
	CreateInvItem(self, ORG_ARMOR_H);
	CreateInvItem(self, TPL_ARMOR_L);
	CreateInvItem(self, TPL_ARMOR_M);
	CreateInvItem(self, KDF_ARMOR_L);
	CreateInvItem(self, KDF_ARMOR_H);

	// Weapons (Damage 41-55)
	CreateInvItem(self, ItMw_1H_Sword_Long_02);
	CreateInvItem(self, ItMw_1H_Sword_Long_03);
	CreateInvItem(self, ItMw_1H_Sword_Long_04);
	CreateInvItem(self, ItMw_1H_Sword_Long_05);
	CreateInvItem(self, ItMw_1H_Warhammer_01);
	CreateInvItem(self, ItMw_1H_Warhammer_02);
	CreateInvItem(self, ItMw_1H_Warhammer_03);
	CreateInvItem(self, ItMw_1H_Axe_02);
	CreateInvItem(self, ItMw_1H_Axe_03);
	CreateInvItem(self, ItMw_1H_Sword_Broad_01); // Dam. 55, Str. 26
	CreateInvItem(self, ItRw_Bow_Long_03);
	CreateInvItem(self, ItRw_Bow_Long_04);
	CreateInvItem(self, ItRw_Bow_Long_05); // Dam. 55, Dex. 28
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 20);
	CreateInvItems(self, ItLsTorch, 20);
//	EquipItem(self, ItMw_1H_Sword_Broad_01); // Dam. 55, Str. 26
//	EquipItem(self, ItRw_Bow_Long_05); // Dam. 55, Dex. 28

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 20 (Ende Kapitel 4) Noch keine LP ausgegeben
// ***************************************************************************
instance L20(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "L20 ";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 20;

	voice							= 15;
	id								= 0;

	exp								= 105000;
	exp_next						= 115500;
	lp								= 315;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 280;
	attribute[ATR_HITPOINTS]		= 280;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	// Armor
	CreateInvItem(self, GRD_ARMOR_H);
	CreateInvItem(self, SLD_ARMOR_M);
	CreateInvItem(self, SLD_ARMOR_H);
	CreateInvItem(self, TPL_ARMOR_H);
	CreateInvItem(self, KDW_ARMOR_L);

	// Weapons (Damage 56-70)
	CreateInvItem(self, ItMw_1H_Sword_Broad_02);
	CreateInvItem(self, ItMw_1H_Sword_Broad_03);
	CreateInvItem(self, ItMw_1H_Sword_Broad_04);
	CreateInvItem(self, ItMw_2H_Sword_Old_01);
	CreateInvItem(self, ItMw_1H_Sword_Bastard_01);
	CreateInvItem(self, ItMw_1H_Sword_Bastard_02);
	CreateInvItem(self, ItMw_1H_Sword_Bastard_03);
	CreateInvItem(self, ItMw_1H_Sword_Bastard_04);
	CreateInvItem(self, ItMw_2H_Axe_Old_01);
	CreateInvItem(self, ItMw_2H_Axe_Old_02);
	CreateInvItem(self, ItMw_2H_Axe_Old_03);
	CreateInvItem(self, ItMw_2H_Sword_Light_01); // Dam. 70, Str. 42
	CreateInvItem(self, ItRw_Bow_Long_06);
	CreateInvItem(self, ItRw_Bow_Long_07);
	CreateInvItem(self, ItRw_Bow_Long_08); // Dam. 70, Dex. 34
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 20);
	CreateInvItems(self, ItLsTorch, 20);
//	EquipItem(self, ItMw_2H_Sword_Light_01); // Dam. 70, Str. 42
//	EquipItem(self, ItRw_Bow_Long_08); // Dam. 70, Dex. 34

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 25 (Ende Kapitel 5) Noch keine LP ausgegeben
// ***************************************************************************
instance L25(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "L25 ";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 25;

	voice							= 15;
	id								= 0;

	exp								= 162500;
	exp_next						= 175500;
	lp								= 390;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 340;
	attribute[ATR_HITPOINTS]		= 340;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	// Armor
	CreateInvItem(self, CRW_ARMOR_H);
	CreateInvItem(self, KDW_ARMOR_H);
	CreateInvItem(self, DMB_ARMOR_M);
	CreateInvItem(self, ORE_ARMOR_M);

	// Weapons (Damage 71-85)
	CreateInvItem(self, ItMw_2H_Sword_Light_02);
	CreateInvItem(self, ItMw_2H_Sword_Light_03);
	CreateInvItem(self, ItMw_2H_Sword_Light_04);
	CreateInvItem(self, ItMw_2H_Sword_Light_05);
	CreateInvItem(self, ItMw_2H_Axe_light_01);
	CreateInvItem(self, ItMw_2H_Axe_light_02);
	CreateInvItem(self, ItMw_2H_Axe_light_03);
	CreateInvItem(self, ItMw_2H_Sword_01);
	CreateInvItem(self, ItMw_2H_Sword_02);
	CreateInvItem(self, ItMw_2H_Sword_03); // Dam: 85, Str. 62
	CreateInvItem(self, ItRw_Bow_Long_09);
	CreateInvItem(self, ItRw_Bow_War_01);
	CreateInvItem(self, ItRw_Bow_War_02); // Dam: 85, Dex. 40
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 20);
	CreateInvItems(self, ItLsTorch, 20);
//	EquipItem(self, ItMw_2H_Sword_03); // Dam: 85, Str. 62
//	EquipItem(self, ItRw_Bow_War_02); // Dam: 85, Dex. 40

	// -------- daily routine --------
};

/*************************************************************************
** junge Molerat(für Spielstart) **
*************************************************************************/

instance Testratte(Mst_Default_Molerat)
{
	// -------- primary data --------
	name							= "junge Molerat";

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;

	// -------- protection --------
	protection[PROT_BLUNT]			= 8;
	protection[PROT_EDGE]			= 8;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Molerat_Visuals();
	Mdl_SetModelScale(self, 0.9, 0.9, 0.9);

	// -------- ai --------
	fight_tactic = FAI_MONSTER_MASTER;
	Npc_SetToFistMode(self);

	// -------- talents --------

	// -------- inventory --------
	CreateInvItems(self, ItFoMuttonRaw, 1);

	// -------- daily routine --------
};
