/*********************************************************************
** Testprototyp **
*********************************************************************/
// ****************
// Neuer NSC
// ****************

prototype Npc_TestDefault(C_NPC)
{
	// -------- primary data --------
	name							= "Prototype";
	guild							= GIL_NONE;
	level							= 1;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 5;
	attribute[ATR_HITPOINTS]		= 5;

	// -------- protection --------
	protection[PROT_EDGE]			= 5;
	protection[PROT_BLUNT]			= 5;
	protection[PROT_POINT]			= 5;
	protection[PROT_FIRE]			= 5;
	protection[PROT_MAGIC]			= 5;

	// talents						= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 4000;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_SNEAK);
	// Npc_LearnTalent (self,TAL_STEAL);
	// Npc_LearnTalent (self,TAL_PICKLOCK);
	// Npc_LearnTalent (self,TAL_ACROBAT);
	// Npc_LearnTalent (self,TAL_HEAL);
	// Npc_LearnTalent (self,TAL_MANA);
	// Npc_LearnTalent (self,TAL_IRONWILL);

	// -------- inventory --------

	// -------- daily routine --------
};

instance ATestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "ATestmodell";
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
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	-1);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;
	Npc_SetAttitude(self, ATT_HOSTILE);

	// -------- talents --------
	// Npc_LearnFightTalent (self,TAL_1H_SWORD2);

	// -------- inventory --------
	// CreateInvItem(self, ItMw1hSword01);
	// CreateInvItem(self, ItMw1hAxe01);
	// CreateInvItem(self, ItMwPoker01);

	// -------- daily routine --------
	// daily_routine = Rtn_start_3001;
	start_aistate = ZS_Firespit;
};

func void Rtn_start_3001()
{
};

instance BTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "BTestmodell";
	guild							= GIL_EBR;
	level							= 20;

	voice							= 11; // 7;
	id								= 3002;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	EBR_ARMOR_H);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_1H_SWORD3);
	// Npc_LearnTalent (self,TAL_1H_AXE2);
	// Npc_LearnTalent (self,TAL_2H_SWORD2);
	// Npc_LearnTalent (self,TAL_2H_AXE);
	// Npc_LearnTalent (self,TAL_BOW2);
	// Npc_LearnTalent (self,TAL_CROSSBOW2);
	// Npc_LearnTalent (self,TAL_HEAL);

	// -------- inventory --------
	// CreateInvItem(self, ItMw1hSword01);
	// CreateInvItem(self, ItMw1hAxe01);
	// CreateInvItem(self, ItMwPoker01);

	// -------- daily routine --------
	daily_routine = Rtn_start_3002;
};

func void Rtn_start_3002()
{
};

instance CTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "CTestmodell";
	guild							= GIL_EBR;
	level							= 6;

	voice							= 11; // 7;
	id								= 3003;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 15;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	EBR_ARMOR_H);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_BOW2);
	// Npc_LearnTalent (self,TAL_CROSSBOW2);
	// Npc_LearnTalent (self,TAL_HEAL);
	// Npc_LearnFightTalent (self,TAL_1H_SWORD3);
	// Npc_LearnFightTalent (self,TAL_1H_AXE2);
	// Npc_LearnFightTalent (self,TAL_2H_SWORD2);
	// Npc_LearnFightTalent (self,TAL_2H_AXE);

	// -------- inventory --------
	// CreateInvItem(self, ItMw2hSword01);
	// CreateInvItem(self, ItMw1hAxe01);
	// CreateInvItem(self, ItMwPoker01);

	// -------- daily routine --------
	daily_routine = Rtn_start_3003;
};

func void Rtn_start_3003()
{
};

instance DTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "DTestmodell";
	slot							= "Guru";
	guild							= GIL_GUR;
	level							= 6;

	voice							= 11; // 120;
	id								= 3004;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 0;
	attribute[ATR_MANA_MAX]			= 10;
	attribute[ATR_MANA]				= 10;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	GUR_ARMOR_H);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self,ItFoRice);
	// CreateInvItem(self,ItFoBeer);
	// CreateInvItem(self,ItMw1hSword01);

	// -------- daily routine --------
	daily_routine = Rtn_start_3004;
};

func void Rtn_start_3004()
{
	TA_Smoke(0, 00, 1, 00, "WP_CAVE_12");
	TA_PickOre(1, 00, 2, 00, "WP_ORE");
	TA_SitAround(2, 00, 3, 00, "WP_CHAIR");
	TA_CookForMe(3, 00, 4, 00, "WP_PAN");
	TA_Ebr_HangAround(4, 00, 5, 00, "WP_THRONE");
	TA_Cook(5, 00, 6, 00, "WP_CAULDRON");
	TA_HerbAlchemy(6, 00, 7, 00, "WP_HERB");
	TA_Smith_Sharp(7, 00, 8, 00, "WP_BSSHARP");
	TA_Sleep(8, 00, 9, 00, "WP_BEDLOW");
	TA_Smith_Fire(9, 00, 10, 00, "WP_BSFIRE");
	TA_Smith_Anvil(10, 00, 11, 00, "WP_BSANVIL");
	TA_Smith_Cool(11, 00, 12, 00, "WP_BSCOOL");
	TA_RoastScavenger(12, 00, 13, 00, "WP_CHICKEN");
	TA_ReadBook(13, 00, 14, 00, "WP_BOOK");
	TA_Sleep(14, 00, 15, 00, "WP_BED");
	TA_PotionAlchemy(15, 00, 16, 00, "WP_LAB");
	TA_Pray(16, 00, 17, 00, "WP_IDOL");
	TA_HerbAlchemy(17, 00, 18, 00, "WP_HERB");
	TA_RepairHut(18, 00, 19, 00, "WP_REPAIR");
	TA_StandAround(19, 00, 0, 00, "WP_BSANVIL");
	// TA_SitAround (0,0,"WP_RUNNER_1");
};

instance FTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "FTestmodell";
	slot							= "Gardist";
	guild							= GIL_GRD;
	level							= 5;

	voice							= 11; // 11;
	id								= 3006;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 13;
	attribute[ATR_DEXTERITY]		= 0;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 15;
	attribute[ATR_HITPOINTS]		= 15;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	GRD_ARMOR_M);

	// -------- ai --------
	fight_tactic = 1;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_STEAL);
	// Npc_LearnTalent (self,TAL_PICKLOCK);
	// Npc_LearnFightTalent (self,TAL_1H_SWORD2);
	// Npc_LearnFightTalent (self,TAL_1H_AXE3);
	// Npc_LearnFightTalent (self,TAL_2H_SWORD2);

	// -------- inventory --------
	// CreateInvItem(self, ItMw2hSword01);
	// CreateInvItem(self, ItMw1hAxe01);
	// CreateInvItem(self, ItMwPoker01);

	// -------- daily routine --------
	daily_routine = Rtn_start_3006;
};

func void Rtn_start_3006()
{
	TA_Guard(0, 0, 23, 59, "WP_STEALWITNESS_2");
};

instance GTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "GTestmodell";
	guild							= GIL_KDF;
	level							= 6;

	voice							= 11; // 1;
	id								= 3007;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 7;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 15;
	attribute[ATR_MANA]				= 15;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	KDF_ARMOR_L);

	// -------- ai --------
	fight_tactic = 1;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_BOW);

	// -------- inventory --------
	// CreateInvItem(self, ItFoWine);
	// CreateInvItem(self, ItFoLoaf);
	// CreateInvItem(self, ItMw2hSword01);
	// CreateInvItem(self, ItMw1hAxe01);
	// CreateInvItem(self, ItMwPoker01);
	// CreateInvItems(self, ItFoHealingPotion, 5);
	// CreateInvItems(self, ItFoManaPotion, 5);
	// CreateInvItems(self, ItFoHolyWater, 2);

	// -------- daily routine --------
	daily_routine = Rtn_start_3007;
};

func void Rtn_start_3007()
{
	TA_SitAround(0, 0, 23, 59, "WP_STEALWITNESS_1");
};

instance HTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "HTestmodell";
	guild							= GIL_KDF;
	level							= 6;

	voice							= 11; // 10;
	id								= 3008;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 6;
	attribute[ATR_MANA_MAX]			= 15;
	attribute[ATR_MANA]				= 15;
	attribute[ATR_HITPOINTS_MAX]	= 20;
	attribute[ATR_HITPOINTS]		= 20;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		DEFAULT,DEFAULT,	"Hum_Head_Bald",	DEFAULT,	DEFAULT,	KDF_ARMOR_L);

	// -------- ai --------
	fight_tactic = 1;

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItFoWine);
	// CreateInvItem(self, ItFoCheese);
	// CreateInvItems(self, ItFoHealingPotion, 5);
	// CreateInvItems(self, ItFoManaPotion, 5);
	// CreateInvItems(self, ItFoHolyWater, 3);

	// -------- missions --------
	// mission[0] = Mis_BringItArRunesword;

	// -------- daily routine --------
	daily_routine = Rtn_start_3008;
};

func void Rtn_start_3008()
{
	TA_SitAround(0, 0, 23, 59, "WP_STEAL_1");
};

instance ITestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "ITestmodell";
	guild							= GIL_EBR;
	level							= 3;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 11; // 18;// Babe 1;
	id								= 3009;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 7;
	attribute[ATR_DEXTERITY]		= 11;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 13;
	attribute[ATR_HITPOINTS]		= 13;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "BABE.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Bab_body_Naked0",		DEFAULT,DEFAULT,	"Bab_Head_Hair1",	DEFAULT,	DEFAULT,	-1);

	// -------- ai --------

	// -------- talents --------

	// -------- inventory --------
	// CreateInvItem(self, ItMiBrush);
	// CreateInvItems(self, ItFoWine, 4);

	// -------- daily routine --------
	daily_routine = Rtn_start_3009;
};

func void Rtn_start_3009()
{
	TA_Sleep(23, 00, 04, 00, "WP_CHAIRSNBEDS"); // Bei Gomez
	TA_SitAround(04, 00, 06, 00, "WP_REPAIR"); // ###Was macht sie da? Da steht Scar
	TA_StandAround(06, 00, 08, 00, "WP_IDOL");
	TA_WashSelf(08, 00, 09, 00, "WP_REPAIR"); // Bei Gomez
	TA_Babe_Sweep(09, 00, 20, 00, "WP_LAB"); // Luftzufächeln?
	TA_SitAround(20, 00, 23, 00, "WP_IDOL"); // Später Tanz
};

instance JTestmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "JTestmodell";
	guild							= GIL_EBR;
	level							= 2;

	voice							= 11; // 19 Babe 2;
	id								= 3010;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 6;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 10;
	attribute[ATR_HITPOINTS]		= 10;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "Babe.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Bab_body_Naked0",		DEFAULT,DEFAULT,	"Bab_Head_Hair2",	DEFAULT,	DEFAULT,	-1);

	// -------- ai --------

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_PICKLOCK);

	// -------- inventory --------
	// CreateInvItem(self, ItFoBeer);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItem(self, ItFoLoaf);
	// CreateInvItem(self, ItFoMutton);
	// CreateInvItem(self, ItFoCheese);
	// CreateInvItem(self, ItFoWine);
	// CreateInvItem(self, ItMiLute);
	// CreateInvItem(self, ItMiBrush);

	// -------- daily routine --------
	daily_routine = Rtn_start_3010;
};

func void Rtn_start_3010()
{
	TA_Babe_Sweep(00, 00, 23, 59, "WP_HALLYWAY_2"); // Roscoe
};

instance SLD1_Testmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "SLD1_Testmodell";
	guild							= GIL_VLK;
	level							= 4;

	voice							= 4; // 8;
	id								= 1707;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Fighter",	51,			DEFAULT,	VLK_ARMOR_L);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;
	// Npc_SetPermAttitude( self, ATT_FRIENDLY );
	// Npc_SetAttitude( self, ATT_ANGRY );
	Wld_AssignRoomToNpc("T2", self);
	Wld_AssignRoomToGuild("T4", GIL_SLD);

	// -------- talents --------
	// Npc_LearnTalent ( self, TAL_SNEAK);
	// Npc_LearnFightTalent (self, TAL_1H_AXE2);
	// Npc_LearnFightTalent (self, TAL_2H_AXE);
	// Npc_LearnFightTalent (self, TAL_2H_SWORD);

	// -------- inventory --------
	// CreateInvItem(self, ItMw2hAxe02);
	// CreateInvItem(self, ItFoBooze);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItem(self, ItFoHealingPotion);
	// CreateInvItem(self, ItRwLongbow);
	// CreateInvItems(self, ItMiNugget, 10);

	// -------- missions --------
	// mission[0] = mission_Test_Empty;
	// mission[1] = mission_Test_Default;

	// -------- daily routine --------
	// daily_routine = Rtn_start_SLD1_Testmodell;
	start_aistate = ZS_TestHangAround;
	// start_aistate = ZS_TestObstacle;
};

func void Rtn_start_SLD1_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "x");
	TA_TestHangAround(13, 00, 00, 00, "x");

	/*TA_TestGotoWP (0,00,13,00, "WP_RUNNER_8");
	TA_TestGotoWP(13, 00, 13, 05, "WP_RUNNER_9");
	TA_TestGotoWP(13, 05, 13, 10, "WP_RUNNER_8");
	TA_TestGotoWP(13, 10, 13, 15, "WP_RUNNER_9");
	TA_TestGotoWP(13, 15, 13, 20, "WP_RUNNER_8");
	TA_TestGotoWP(13, 20, 13, 25, "WP_RUNNER_9");
	TA_TestGotoWP(13, 25, 13, 30, "WP_RUNNER_8");
	TA_TestGotoWP(13, 30, 0, 00, "WP_RUNNER_8"); */
};

instance SLD2_Testmodell(NPC_TestDefault)
{
	// -------- primary data --------
	name							= "SLD2_Testmodell";
	guild							= GIL_SLD;
	level							= 3;
	//  flags						= NPC_FLAG_IMMORTAL;

	voice							= 4; // 8;
	id								= 2707;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;
	attribute[ATR_MANA_MAX]			= 10;
	attribute[ATR_MANA]				= 10;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Fighter",	51,			DEFAULT,	SLD_ARMOR_H);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetPermAttitude(self, ATT_FRIENDLY);

	// -------- talents --------
	// Npc_LearnFightTalent (self, TAL_1H_AXE2);
	// Npc_LearnFightTalent (self, TAL_2H_AXE);
	// Npc_LearnFightTalent (self, TAL_2H_SWORD);
	// Npc_LearnFightTalent ( self, TAL_BOW3 );
	// Npc_LearnFightTalent ( self, TAL_CROSSBOW3 );

	// -------- inventory --------
	// CreateInvItem(self, ItFoRice);
	// CreateInvItem(self, ItMw2hAxe02);
	// CreateInvItem(self, ItRwLongbow);
	// CreateInvItem(self, ItFoBeer);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItem(self, ItFoHealingPotion);
	// CreateInvItems(self, ItMiNugget, 10);
	// CreateInvItems( self, ItAmArrow, 50 );
	// EquipItem( self,ItRwLongbow);

	// -------- missions --------
	// mission[0] = mission_Test_Empty;
	// mission[1] = mission_Test_Default;

	// -------- daily routine --------
	// daily_routine = DailyRoute_Test_Empty;
	start_aistate = ZS_TestHangAround;
};

func void Rtn_start_SLD2_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "X");
	TA_TestHangAround(13, 00, 00, 00, "X");
};

instance SLD3_Testmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "SLD3_Testmodell";
	guild							= GIL_SLD;
	level							= 3;

	voice							= 4; // 8;
	id								= 3707;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 10;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Fighter",	51,			DEFAULT,	SLD_ARMOR_H);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_COWARD;
	// Npc_SetPermAttitude ( self, ATT_HOSTILE);

	// -------- talents --------
	// Npc_LearnFightTalent (self, TAL_1H_AXE2);
	// Npc_LearnFightTalent (self, TAL_2H_AXE);
	// Npc_LearnFightTalent (self, TAL_2H_SWORD);

	// -------- inventory --------
	// CreateInvItem(self, ItMw2hAxe02);
	// CreateInvItem(self, ItFoRice);
	// CreateInvItem(self, ItFoBooze);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItem(self, ItFoHealingPotion);
	// CreateInvItems(self, ItMiNugget, 10);

	// -------- daily routine --------
	daily_routine = Rtn_start_SLD3_Testmodell;
};

func void Rtn_start_SLD3_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "X");
	TA_TestHangAround(13, 00, 00, 00, "X");
};

instance GRD1_Testmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "GRD1_Testmodell";
	guild							= GIL_GRD;
	level							= 3;

	voice							= 11; // 15;
	id								= 1221;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "HumanS_Relaxed.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Fighter",	1,			2,			GRD_ARMOR_L);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_STRONG;
	Npc_SetAttitude(self, ATT_FRIENDLY);

	// -------- talents --------
	// Npc_LearnFightTalent (self, TAL_1H_SWORD2);
	// Npc_LearnFightTalent (self, TAL_1H_AXE2);

	// -------- inventory --------
	// CreateInvItem(self, ItMw1hSword01);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItem(self, ItFoHealingPotion);
	// CreateInvItems(self, ItMiNugget, 4);

	// -------- daily routine --------
	daily_routine = Rtn_start_GRD1_Testmodell;
};
instance TestInfo_001_07_700(C_INFO)
{
	npc				= GRD1_Testmodell;
	nr				= 1;
	condition		= TestInfo_001_07_700_Condition;
	information		= TestInfo_001_07_700_Info;
};

func int Testinfo_001_07_700_Condition()
{
	return 1; // Npc_GetTrueGuild(other)==Gil_None;
};

func void TestInfo_001_07_700_Info()
{
	AI_Output(self, other, "Global_001_07_00"); //Hey Frischling.
	AI_Output(self, other, "Global_001_07_01"); //Falls Du es noch nicht kapiert hast:
	AI_Output(self, other, "Global_001_07_02"); //Es gibt hier im Knast drei große Lager.
	AI_Output(self, other, "Global_001_07_03"); //Das Alte Lager, das Neue Lager und den Sektentempel.
	AI_Output(self, other, "Global_001_07_05"); //Wenn Du nicht den Erzbaronen im Alten Lager den Arsch abwischen willst, kommst Du zu uns.
};

func void Rtn_start_GRD1_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "X");
	TA_TestHangAround(13, 00, 00, 00, "X");
};

instance GRD1_Testmodell_Trade_01(C_ITEMREACT)
{
	npc = GRD1_Testmodell;
	trade_item = ItFoRice;
	trade_amount = 1;
	requested_item = ItMiHammer;
	requested_amount = 1;
	reaction = GRD1_Testmodell_Trade_01_Func;
};

func int GRD1_Testmodell_Trade_01_Func()
{
	if (GRD1_Testmodell_Trade_01.requested_amount == 1)
	{
		Print("Trade klappt");
		return 1;
	};

	return 0;
};
instance GRD1_Testmodell_Trade_01_Info_01(C_INFO)
{
	npc				= GRD1_Testmodell;
	nr				= 1;
	condition		= GRD1_Testmodell_Trade_01_Info_01_Condition;
	information		= GRD1_Testmodell_Trade_01_Info_01_Info;
	important		= TRUE;
};

func int GRD1_Testmodell_Trade_01_Info_01_Condition()
{
	return 1;
};

func void GRD1_Testmodell_Trade_01_Info_01_Info()
{
	B_say(self, other, "BAU_900_Ricelord01_Trade_01_Info_01_Satz_01"); // Hey Freundchen hör mal:
	Print("Gardisten Info");
	B_say(self, other, "BAU_900_Ricelord01_Trade_01_Info_01_Satz_02"); // Ich geb' Dir 10 Portionen Reis, wenn Du mir dafür 'ne ordentliche Hammelkeule gibst..
	B_say(self, other, "BAU_900_Ricelord01_Trade_01_Info_01_Satz_03"); // Oder hast Du vielleicht 'n Bier dabei? Oder Wein?
};

instance GRD2_Testmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "GRD2_Testmodell";
	guild							= GIL_VLK; // GIL_GRD;
	level							= 3;

	voice							= 11; // 15;
	id								= 2221;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "HumanS_Relaxed.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Fighter",	1,			2,			VLK_ARMOR_L);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_Strong;
	Npc_SetAttitude(self, ATT_ANGRY);

	// -------- talents --------
	//// Npc_LearnFightTalent (self, TAL_1H_SWORD2);
	//// Npc_LearnFightTalent (self, TAL_1H_AXE2);

	// -------- inventory --------
	// CreateInvItem(self, ItMw1hSword01);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItems(self, ItMiNugget, 4);

	// -------- daily routine --------
	daily_routine = Rtn_start_GRD2_Testmodell;
};

func void Rtn_start_GRD2_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "X");
	TA_TestHangAround(13, 00, 00, 00, "X");
};

instance GRD3_Testmodell(Npc_TestDefault)
{
	// -------- primary data --------
	name							= "GRD3_Testmodell";
	guild							= GIL_EBR;
	level							= 3;

	voice							= 11; // 15;
	id								= 3221;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 9;
	attribute[ATR_DEXTERITY]		= 7;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 18;
	attribute[ATR_HITPOINTS]		= 18;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "HumanS_Relaxed.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		0,			"Hum_Head_Fighter",	1,			2,			EBR_ARMOR_H);

	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	fight_tactic = FAI_HUMAN_Strong;

	// -------- talents --------
	// Npc_LearnFightTalent (self, TAL_1H_SWORD2);
	// Npc_LearnFightTalent (self, TAL_1H_AXE2);

	// -------- inventory --------
	// CreateInvItem(self, ItMw1hSword01);
	// CreateInvItem(self, ItFoApple);
	// CreateInvItems(self, ItMiNugget, 4);

	// -------- daily routine --------
	daily_routine = Rtn_start_GRD3_Testmodell;
};

func void Rtn_start_GRD3_Testmodell()
{
	TA_TestHangAround(0, 00, 13, 00, "X");
	TA_TestHangAround(13, 00, 00, 00, "X");
};
