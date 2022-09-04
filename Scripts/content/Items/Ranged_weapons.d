// KURZBOGEN//
instance ItRw_Bow_Small_01(C_Item)
{
	name						= "Kurzbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Small_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 10;

	damageTotal					= 20;
	damageType					= DAM_POINT;

	value						= 40; // 20;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Small_02(C_Item)
{
	name						= "Reiterbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Small_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 12;

	damageTotal					= 24;
	damageType					= DAM_POINT;

	value						= 80; // 40;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Small_03(C_Item)
{
	name						= "Feldbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Small_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 14;

	damageTotal					= 28;
	damageType					= DAM_POINT;

	value						= 120; // 60;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Small_04(C_Item)
{
	name						= "Jagdbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Small_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 16;

	damageTotal					= 32;
	damageType					= DAM_POINT;

	value						= 160; // 80;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Small_05(C_Item)
{
	name						= "Knochenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Small_05.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 18;

	damageTotal					= 36;
	damageType					= DAM_POINT;

	value						= 200; // 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// LANGBOGEN//
/******************************************************************************************/
// Org & SLD
instance ItRw_Bow_Long_01(C_Item)
{
	name						= "Langbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 20;

	damageTotal					= 40;
	damageType					= DAM_POINT;

	value						= 240; // 120;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_02(C_Item)
{
	name						= "Heckenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 22;

	damageTotal					= 44;
	damageType					= DAM_POINT;

	value						= 280; // 140;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_03(C_Item)
{
	name						= "Weidenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 24;

	damageTotal					= 48;
	damageType					= DAM_POINT;

	value						= 320; // 160;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_04(C_Item)
{
	name						= "Eichenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 26;

	damageTotal					= 52;
	damageType					= DAM_POINT;

	value						= 360; // 180;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_05(C_Item)
{
	name						= "Wolfsfetzer";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_05.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 28;

	damageTotal					= 56;
	damageType					= DAM_POINT;

	value						= 440; // 220;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_06(C_Item)
{
	name						= "Windbrecher";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_06.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 30;

	damageTotal					= 60;
	damageType					= DAM_POINT;

	value						= 480; // 240;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_07(C_Item)
{
	name						= "Armeebogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_07.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 32;

	damageTotal					= 64;
	damageType					= DAM_POINT;

	value						= 520; // 260;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_08(C_Item)
{
	name						= "Hornbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_08.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 34;

	damageTotal					= 68;
	damageType					= DAM_POINT;

	value						= 560; // 280;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_Long_09(C_Item)
{
	name						= "Nimroder";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_Long_08.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 36;

	damageTotal					= 72;
	damageType					= DAM_POINT;

	value						= 600; // 300;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// KRIEGSBOGEN//
/******************************************************************************************/
instance ItRw_Bow_War_01(C_Item)
{
	name						= "Kriegsbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_War_01.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 38;

	damageTotal					= 76;
	damageType					= DAM_POINT;

	value						= 640; // 320;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_War_02(C_Item)
{
	name						= "Orkhetzer";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_War_02.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 40;

	damageTotal					= 79;
	damageType					= DAM_POINT;

	value						= 680; // 340;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_War_03(C_Item)
{
	name						= "Sturmbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_War_03.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 42;

	damageTotal					= 82;
	damageType					= DAM_POINT;

	value						= 720; // 360;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_War_04(C_Item)
{
	name						= "Dämonenbogen";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_War_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 44;

	damageTotal					= 85;
	damageType					= DAM_POINT;

	value						= 760; // 380;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Bow_War_05(C_Item)
{
	name						= "Todbringer";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_BOW;

	munition					= ItAmArrow;

	visual						= "ItRw_Bow_War_04.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 50;

	damageTotal					= 88;
	damageType					= DAM_POINT;

	value						= 1000; // 500;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// ARMBRUST//
/******************************************************************************************/
instance ItRw_Crossbow_01(C_Item)
{
	name						= "Leichte Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItAmBolt;

	visual						= "ItRwCrossbow1.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 25;

	damageTotal					= 50;
	damageType					= DAM_POINT;

	value						= 180;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Crossbow_02(C_Item)
{
	name						= "Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItAmBolt;

	visual						= "ItRwCrossbow2.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 42;

	damageTotal					= 85;
	damageType					= DAM_POINT;

	value						= 780; // 390;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Crossbow_03(C_Item)
{
	name						= "Schwere Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItAmBolt;

	visual						= "ItRwCrossbow3.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 45;

	damageTotal					= 90;
	damageType					= DAM_POINT;

	value						= 1000; // 500;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItRw_Crossbow_04(C_Item)
{
	name						= "Kriegs-Armbrust";

	mainflag					= ITEM_KAT_FF;
	flags						= ITEM_CROSSBOW;

	munition					= ItAmBolt;

	visual						= "ItRwCrossbow4.mms";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_DEXTERITY;
	cond_value[2]				= 55;

	damageTotal					= 100;
	damageType					= DAM_POINT;

	value						= 1300; // 650;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Dex_needed;								count[3] = cond_value[2];
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// MUNITION//
/******************************************************************************************/
instance ItAmArrow(C_Item)
{
	name						= "Pfeil";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_BOW | ITEM_MULTI;

	visual						= "ItAm_Arrow_01.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance ItAmBolt(C_Item)
{
	name						= "Bolzen";

	mainflag					= ITEM_KAT_MUN;
	flags						= ITEM_CROSSBOW | ITEM_MULTI;

	visual						= "ItAm_Bolt_01.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
