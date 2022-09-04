// ------------------------------------------------------------------
// PERSÖNLICHE WAFFEN
/***********************************************************/
// ALTES LAGER
/***********************************************************/
// THORUS
// ------------------------------------------------------------------
instance Thorus_Schwert(C_Item)
{
	name						= "Thorus Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	owner						= GRD_200_THORUS;
	visual						= "ItMw_2H_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 75;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 500;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// GOMEZ
// -----------------------------------------------------------
instance Innos_Zorn(C_Item)
{
	name						= "Innos Zorn";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	owner						= EBR_100_GOMEZ;
	visual						= "ItMw_2H_Sword_Heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 90;

	damageTotal					= 110;
	damageType					= DAM_EDGE;
	range						= 160;

	value						= 570;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// SCAR
// -----------------------------------------------------------
instance Scars_Schwert(C_Item)
{
	name						= "Scars Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= EBR_101_SCAR;
	visual						= "ItMw_1H_Sword_Bastard_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 70;

	damageTotal					= 85;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 460;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// ARTO
// -----------------------------------------------------------
instance Artos_Schwert(C_Item)
{
	name						= "Artos Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= EBR_102_ARTO;
	visual						= "ItMw_1H_Sword_Long_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 50;

	damageTotal					= 65;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 360;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// RAVEN
// -----------------------------------------------------------
instance Rabenrecht(C_Item)
{
	name						= "Rabenrecht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= EBR_105_RAVEN;
	visual						= "ItMw_1H_Sword_Broad_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 55;

	damageTotal					= 70;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 400;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// BARTHOLO
// -----------------------------------------------------------
instance Prankenhieb(C_Item)
{
	name						= "Prankenhieb";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= EBR_106_BARTHOLO;
	visual						= "ItMw_1H_Sword_Long_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 55;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 300;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// DIEGO
// -----------------------------------------------------------
instance Diegos_Bogen(C_Item)
{
	name						= "Diegos Bogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	owner						= PC_THIEF;
	visual						= "ItRwLongbow.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 45;

	damageTotal					= 70;
	damageType					= DAM_POINT;

	value						= 390;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// Whistler (Bei Fisk)
// -----------------------------------------------------------
instance Whistlers_Schwert(C_Item)
{
	name						= "Whistlers Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	// owner					= STT_309_Whistler; raus wegen Mission
	visual						= "ItMw_1H_Sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 15;

	damageTotal					= 20;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 110;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/***********************************************************/
// BRUDERSCHAFT
/***********************************************************/
// -----------------------------------------------------------
// Y'BERION
// -----------------------------------------------------------
instance Stab_des_Lichts(C_Item)
{
	name						= "Stab des Lichts";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= GUR_1200_YBERION;
	visual						= "ItMw_2H_Staff_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 45;

	damageTotal					= 65;
	damageType					= DAM_BLUNT;
	range						= 160;

	value						= 350;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// COR KALOM
// -----------------------------------------------------------
instance Kaloms_Schwert(C_Item)
{
	name						= "Kaloms Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= GUR_1201_CORKALOM;
	visual						= "ItMw_1H_Sword_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 55;

	damageTotal					= 70;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 400;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// LESTER
// -----------------------------------------------------------
instance Streitschlichter(C_Item)
{
	name						= "Lesters Streitschlichter ";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= PC_PSIONIC;
	visual						= "ItMw_1H_Mace_War_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 60;
	damageType					= DAM_BLUNT;
	range						= 90;

	value						= 340;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// COR ANGAR
// -----------------------------------------------------------
instance Roter_Wind(C_Item)
{
	name						= "Roter Wind";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	owner						= GUR_1202_CORANGAR;
	visual						= "ItMw_2H_Sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 80;

	damageTotal					= 105;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 570;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// BAAL NAMIB
// -----------------------------------------------------------
instance Namibs_Keule(C_Item)
{
	name						= "Namibs Keule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= GUR_1204_BAALNAMIB;
	visual						= "ItMw_1H_Mace_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 55;
	damageType					= DAM_BLUNT;
	range						= 90;

	value						= 300;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// BAAL ORUN
// -----------------------------------------------------------
instance Oruns_Keule(C_Item)
{
	name						= "Oruns Keule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= GUR_1209_BAALORUN;
	visual						= "ItMw_1H_Mace_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 50;

	damageTotal					= 60;
	damageType					= DAM_BLUNT;
	range						= 90;

	value						= 330;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// FORTUNO
// -----------------------------------------------------------
instance Fortunos_Keule(C_Item)
{
	name						= "Fortunos Keule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= NOV_1357_FORTUNO;
	visual						= "ItMw_1H_Mace_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 15;

	damageTotal					= 20;
	damageType					= DAM_BLUNT;
	range						= 90;

	value						= 110;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/***********************************************************/
// NEUES LAGER
/***********************************************************/
// -----------------------------------------------------------
// LEE
// -----------------------------------------------------------
instance Lees_Axt(C_Item)
{
	name						= "Lees Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= SLD_700_LEE;
	visual						= "ItMw_2H_Axe_Heavy_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 95;

	damageTotal					= 105;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 560;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// ORIK
// -----------------------------------------------------------
instance Oriks_Axt(C_Item)
{
	name						= "Oriks Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= SLD_701_ORIK;
	visual						= "ItMw_2H_Axe_Heavy_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 90;

	damageTotal					= 95;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 540;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// TORLOF
// -----------------------------------------------------------
instance Torlofs_Axt(C_Item)
{
	name						= "Torlofs Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= SLD_737_TORLOF;
	visual						= "ItMw_2H_Axe_Heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 85;

	damageTotal					= 99;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 550;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// CORD
// -----------------------------------------------------------
instance Cords_Spalter(C_Item)
{
	name						= "Cords Spalter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= SLD_709_CORD;
	visual						= "ItMw_1H_Axe_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 50;

	damageTotal					= 60;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 310;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// GORN
// -----------------------------------------------------------
instance Gorns_Rache(C_Item)
{
	name						= "Gorns Rache";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= PC_FIGHTER;
	visual						= "ItMw_2H_Axe_Heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 80;

	damageTotal					= 100;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 560;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// LARES
// -----------------------------------------------------------
instance Lares_Axt(C_Item)
{
	name						= "Lares Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= ORG_801_LARES;
	visual						= "ItMw_1H_Axe_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 45;

	damageTotal					= 65;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 340;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// WOLF
// -----------------------------------------------------------
instance Wolfs_Bogen(C_Item)
{
	name						= "Wolfs Bogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	owner						= ORG_855_WOLF;
	visual						= "ItRwLongbow.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 35;

	damageTotal					= 35;
	damageType					= DAM_POINT;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// SILAS
// -----------------------------------------------------------
instance Silas_Axt(C_Item)
{
	name						= "Silas Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	owner						= ORG_841_SILAS;
	visual						= "ItMw_1H_Axe_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 55;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 290;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// -----------------------------------------------------------
// RICELORD
// -----------------------------------------------------------
instance Heerscherstab(C_Item)
{
	name						= "Herrscherstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	owner						= BAU_900_RICELORD;
	visual						= "ItMw_2H_Staff_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 20;

	damageTotal					= 26;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 150;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
