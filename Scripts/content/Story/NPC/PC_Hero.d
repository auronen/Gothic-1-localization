instance PC_Hero(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 0;

	voice							= 15;
	id								= 0;
	exp								= 0;
	exp_next						= 500;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItWr_Fire_Letter_01);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz ANFANG LEVEL2!!! Mit Buddlerrüstung +10, Waffe +13, Waffe +20
// ***************************************************************************

instance PC_Hero_L2(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_NONE;
	level							= 2;

	voice							= 15;
	id								= 0;
	exp								= 1500;
	exp_next						= 3000;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 13;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 64;
	attribute[ATR_HITPOINTS]		= 64;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			VLK_ARMOR_L);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill( self, NPC_TALENT_SNEAK, 1);
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 50);
	EquipItem(self, HeroSword20);
	EquipItem(self, HeroSword13);
	EquipItem(self, HeroBow13);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz ANFANG LEVEL 5 (Ende Kap 1)
// ***************************************************************************

instance PC_Hero_L5(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_NONE; //
	level							= 5;

	voice							= 15;
	id								= 0;
	exp								= 7500;
	exp_next						= 10500;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 25;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 5;
	attribute[ATR_MANA]				= 5;
	attribute[ATR_HITPOINTS_MAX]	= 100;
	attribute[ATR_HITPOINTS]		= 100;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			-1);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 50);
	EquipItem(self, HeroSword25);
	EquipItem(self, HeroBow13);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 7 (Anfang Kapitel 2)
// ***************************************************************************
instance PC_Hero_L7(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_ORG; //
	level							= 7;

	voice							= 15;
	id								= 0;
	exp								= 14000;
	exp_next						= 18000;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 45;
	attribute[ATR_DEXTERITY]		= 35;
	attribute[ATR_MANA_MAX]			= 20;
	attribute[ATR_MANA]				= 20;
	attribute[ATR_HITPOINTS_MAX]	= 160;
	attribute[ATR_HITPOINTS]		= 160;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			ORG_ARMOR_H);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_BOW,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItem(self, ItWrWorldmap);
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 50);
	CreateInvItems(self, ItKeLockpick, 30);
	CreateInvItems(self, ItLsTorch, 20);
	CreateInvItems(self, ItFo_Potion_Health_03, 20);
	CreateInvItems(self, ItFo_Potion_Mana_03, 20);
	EquipItem(self, ItMw_1H_Sword_05);
	EquipItem(self, ItRw_Bow_Small_04);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 11 (Anfang Kapitel 3)
// ***************************************************************************
instance PC_Hero_L11(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_SLD; //
	level							= 11;

	voice							= 15;
	id								= 0;
	exp								= 33000;
	exp_next						= 39000;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 60;
	attribute[ATR_DEXTERITY]		= 45;
	attribute[ATR_MANA_MAX]			= 50;
	attribute[ATR_MANA]				= 50;
	attribute[ATR_HITPOINTS_MAX]	= 220;
	attribute[ATR_HITPOINTS]		= 220;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			SLD_ARMOR_H);

	// -------- ai --------

	// -------- talents --------
	// Npc_SetTalentSkill( self, NPC_TALENT_PICKPOCKET,1);Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	// Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 30);
	CreateInvItems(self, ItLsTorch, 20);
	EquipItem(self, ItMw_1H_Sword_Long_05);
	EquipItem(self, ItRw_Bow_Long_02);

	// -------- daily routine --------
};

// ***************************************************************************
// PlayerInstanz LEVEL 13 (Mitte Kapitel 3)
// ***************************************************************************
instance PC_Hero_L13(NPC_DEFAULT)
{
	// -------- primary data --------
	name							= "Ich";
	npctype							= NpcType_Main;
	guild							= GIL_SLD; //
	level							= 13;

	voice							= 15;
	id								= 0;
	exp								= 45500;
	exp_next						= 52500;
	lp								= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 65;
	attribute[ATR_DEXTERITY]		= 50;
	attribute[ATR_MANA_MAX]			= 50;
	attribute[ATR_MANA]				= 50;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS]		= 250;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		4,		1,			"Hum_Head_Pony",	9,			0,			SLD_ARMOR_H);

	// -------- ai --------

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_PICKPOCKET, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKPOCKET, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill(self, NPC_TALENT_PICKLOCK, 1);Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 60);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	// Npc_SetTalentSkill(self, NPC_TALENT_1H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	// Npc_SetTalentSkill(self, NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 1);
	// Npc_SetTalentSkill(self, NPC_TALENT_CROSSBOW,1);

	// -------- inventory --------
	CreateInvItems(self, ItAmArrow, 100);
	CreateInvItems(self, ItMiNugget, 400);
	CreateInvItems(self, ItKeLockpick, 50);
	CreateInvItems(self, ItLsTorch, 20);
	EquipItem(self, ItMw_1H_Sword_Broad_01);
	EquipItem(self, ItRw_Bow_Long_04);

	// -------- daily routine --------
};

// ***************************************************************************
// Testwaffen
// ***************************************************************************

instance HeroSword13(C_Item)
{
	name						= "worn out sword"; // Rostiges Schwert

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw1hSwordold01.3DS";
	material					= MAT_METAL;

	damage						= 13;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 27;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance HeroSword20(C_Item)
{
	name						= "sword"; // Schwert

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw1hSword01.3DS";
	material					= MAT_METAL;

	damage						= 20;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 31;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance HeroSword25(C_Item)
{
	name						= "sword"; // Schwert

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw1hSword01.3DS";
	material					= MAT_METAL;

	damage						= 25;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 31;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance HeroBow13(C_Item)
{
	name						= "Longbow"; // Langbogen

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRwLongbow.mms";
	material					= MAT_WOOD;

	damage						= 13;
	damageType					= DAM_POINT;

	value						= 35;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

// *********** NICHT LÖSCHEN - SONST STERBEN **************

instance XP_Map(C_Item)
{
	name						= "XP Map";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Map_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_XP_Map;

	value						= 1000;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_XP_Map()
{
	CreateInvItems(self, ItMiNugget, 1000);
	hero.lp = hero.lp + 20;

	_ = PrintScreen(PRINT_XP_MAP, -1, 40, "font_10_book.tga", 10);
};
