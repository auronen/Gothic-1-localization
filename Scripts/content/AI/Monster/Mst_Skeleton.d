/*************************************************************************
** Skeleton prototype **
*************************************************************************/

prototype Mst_Default_Skeleton(C_Npc)
{
	// -------- primary data --------
	name							= "Skelett";
	guild							= GIL_SKELETON;
	level							= 25;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 80;
	attribute[ATR_DEXTERITY]		= 30;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS]		= 300;
	attribute[ATR_MANA_MAX]			= 200;
	attribute[ATR_MANA]				= 200;

	// -------- protection --------
	protection[PROT_BLUNT]			= 35;
	protection[PROT_EDGE]			= 50;
	protection[PROT_POINT]			= 100; // SN:besonders resistent gegen Pfeile
	protection[PROT_FIRE]			= 35;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 35;

	// -------- damage --------
	damageType						= DAM_EDGE;
	// damage[DAM_INDEX_BLUNT]		= 0;
	// damage[DAM_INDEX_EDGE]		= 0;
	// damage[DAM_INDEX_POINT]		= 0;
	// damage[DAM_INDEX_FIRE]		= 0;
	// damage[DAM_INDEX_FLY]		= 0;
	// damage[DAM_INDEX_MAGIC]		= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	// REAL ID IN INSTANZEN!
	aivar[AIV_MM_Behaviour]			= PACKHUNTER;
	aivar[AIV_MM_PercRange]			= 2000;
	aivar[AIV_MM_DrohRange]			= 1500;
	aivar[AIV_MM_AttackRange]		= 1500;
	aivar[AIV_MM_DrohTime]			= 0;
	aivar[AIV_MM_FollowTime]		= 5;
	aivar[AIV_MM_FollowInWater]		= FALSE;
	// aivar[AIV_MM_RestStart]		= OnlyRoutine;

	fight_tactic = FAI_SKELETON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 3000;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_AllScheduler;
};

// -------------------------------------------------------------
func void Set_Skeleton_Visuals()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Ske_Body",				DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// -------------------------------------------------------------
func void Set_SkeletonWarrior_Visuals()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Ske_Body3",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// -------------------------------------------------------------
func void Set_SkeletonScout_Visuals()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Ske_Body2",			DEFAULT,DEFAULT,	"",					DEFAULT,	DEFAULT,	-1);
};

// -------------------------------------------------------------
func void Set_SkeletonMage_Visuals()
{
	Mdl_SetVisual(self, "HumanS.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton.mds");
	Mdl_ApplyOverlayMDS(self, "humans_skeleton_fly.mds");

	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Ske_Fly_Body",			01,		DEFAULT,	"",					01,			DEFAULT,	-1);
};

/*************************************************************************
** Skeleton **
*************************************************************************/

instance Skeleton(Mst_Default_Skeleton)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Skeleton_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON;

	Npc_SetToFightMode(self, ItMw_1H_Sword_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** SkeletonSH - für die Gruft unter den Stonehenge(SH) **
*************************************************************************/

instance SkeletonSH(Mst_Default_Skeleton)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------
	protection[PROT_FIRE]			= 40;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Skeleton_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON;
	aivar[AIV_MM_Behaviour]			= PACKHUNTER;
	aivar[AIV_MM_PercRange]			= 1000;
	aivar[AIV_MM_DrohRange]			= 1000;
	aivar[AIV_MM_AttackRange]		= 1000;
	aivar[AIV_MM_DrohTime]			= 0;
	aivar[AIV_MM_FollowTime]		= 5;
	aivar[AIV_MM_FollowInWater]		= FALSE;

	senses_range = 1000;
	Npc_SetToFightMode(self, ItMw_1H_Axe_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Skeleton Scout **
*************************************************************************/

instance SkeletonScout(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Späher";

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonScout_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONSCOUT;

	Npc_SetToFightMode(self, ItMw_1H_Scythe_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Skeleton Warrior **
*************************************************************************/

instance SkeletonWarrior(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Krieger";
	level							= 30;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 120;
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonWarrior_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONWARRIOR;

	Npc_SetToFightMode(self, ItMw_1H_Axe_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
};

/*************************************************************************
** Skeleton Mage **
*************************************************************************/

instance SkeletonMage(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Magier";
	guild							= GIL_DEMON; // "fliegende" Gilde nötig, damit es nicht Watet/Schwimmt/... !
	level							= 50;

	// -------- abilities --------

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 80;
	protection[PROT_POINT]			= 50;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 50;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonMage_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONMAGE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItArRuneThunderbolt);
	CreateInvItems(self, ItArScrollSummonSkeletons, 5);

	// -------- daily routine --------
};

/*************************************************************************
** Skeleton Mage im Nebelturm **
*************************************************************************/

instance SkeletonMage_fogtower(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Magier des Nebelturms";
	guild							= GIL_DEMON; // "fliegende" Gilde nötig, damit es nicht Watet/Schwimmt/... !
	level							= 50;

	// -------- abilities --------

	// -------- protection --------
	protection[PROT_BLUNT]			= 50;
	protection[PROT_EDGE]			= 80;
	protection[PROT_POINT]			= 50;
	protection[PROT_FIRE]			= 50;
	protection[PROT_FLY]			= 0;
	protection[PROT_MAGIC]			= 50;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonMage_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONMAGE;

	fight_tactic = FAI_HUMAN_MAGE;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItArRuneThunderbolt);
	CreateInvItem(self, theriddle1);
	CreateInvItems(self, ItArScrollSummonSkeletons, 5);

	// -------- daily routine --------
};

/*************************************************************************
** Summoned Skeleton **
*************************************************************************/

instance SummonedByPC_Skeleton(Mst_Default_Skeleton)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Skeleton_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON;
	aivar[AIV_MM_DistToMaster]		= 300;
	aivar[AIV_MM_TimeLooseHP]		= 5;
	aivar[AIV_MM_PARTYMEMBER]		= TRUE;

	senses = SENSE_HEAR | SENSE_SEE;
	Npc_SetToFightMode(self, ItMw_1H_Sword_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_SummonedByPC;
};

instance SummonedByNPC_Skeleton(Mst_Default_Skeleton)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_Skeleton_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETON;

	Npc_SetToFightMode(self, ItMw_1H_Sword_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Summoned;
};

/*************************************************************************
** Summoned Skeleton Warrior **
*************************************************************************/

instance SummonedByPC_SkeletonWarrior(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Krieger";
	level							= 30;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 120;
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonWarrior_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONWARRIOR;
	aivar[AIV_MM_DistToMaster]		= 300;
	aivar[AIV_MM_TimeLooseHP]		= 5;
	aivar[AIV_MM_PARTYMEMBER]		= TRUE;

	senses = SENSE_HEAR | SENSE_SEE;
	Npc_SetToFightMode(self, ItMw_1H_Axe_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_SummonedByPC;
};

instance SummonedByNPC_SkeletonWarrior(Mst_Default_Skeleton)
{
	// -------- primary data --------
	name							= "Skelett Krieger";
	level							= 30;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 120;
	attribute[ATR_STRENGTH]			= attribute[ATR_STRENGTH] + 10; // SN: da Waffe nicht zum Schaden addiert wird!

	// -------- protection --------

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Set_SkeletonWarrior_Visuals();

	// -------- ai --------
	aivar[AIV_MM_REAL_ID]			= ID_SKELETONWARRIOR;

	Npc_SetToFightMode(self, ItMw_1H_Axe_Old_01);

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	start_aistate = ZS_MM_Summoned;
};
