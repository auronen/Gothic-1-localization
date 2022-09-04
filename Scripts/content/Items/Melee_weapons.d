const int Value_1H_Sword_01 = 100; // SN: WICHTIG, da diese Instanz das Produkt des SC-Schmiedens ist!!!

/*********************************************************************************
** Kleiner Kram **
*********************************************************************************/
// VLK
instance ItMw_1H_Club_01(C_Item)
{
	name						= "Knüppel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Club_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 5;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Poker_01(C_Item)
{
	name						= "Schürhaken";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Poker_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 6;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// BAU
instance ItMw_1H_Sickle_01(C_Item)
{
	name						= "Sichel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Sickle_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 7;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// Auch für Mobsi-Benutzung (PickOre)
// VLK, SFB
instance ItMwPickaxe(C_Item)
{
	name						= "Spitzhacke";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Pickaxe_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 7;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 4;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Auch für Mobsi-Benutzung (Schmieden)
instance ItMw_1H_Sledgehammer_01(C_Item)
{
	name						= "Schmiedehammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Sledgehammer_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 10;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 5;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// VLK_573_Graham, VLK_581_Snaf
instance ItMw_1H_Mace_Light_01(C_Item)
{
	name						= "Keule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_Light_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 8;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 5;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// NOV
instance ItMw_1H_Hatchet_01(C_Item)
{
	name						= "Handaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Hatchet_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 9;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 6;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Old_01(C_Item)
{
	name						= "Rostiges Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 10;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 10;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// VLK, SFB
instance ItMw_1H_Nailmace_01(C_Item)
{
	name						= "Nagelkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Nailmace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 5;

	damageTotal					= 11;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 13;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** KURZSCHWERTER **
*********************************************************************************/
// SFB
instance ItMw_1H_Sword_Short_01(C_Item)
{
	name						= "Kurzschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Short_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 6;

	damageTotal					= 12;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 44; // 22;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// STT
instance ItMw_1H_Sword_Short_02(C_Item)
{
	name						= "Bauernwehr";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Short_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 7;

	damageTotal					= 14;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 64; // 32;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// STT
instance ItMw_1H_Sword_Short_03(C_Item)
{
	name						= "Lurkerbiß";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Short_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 8;

	damageTotal					= 16;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 88; // 44;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// STT
instance ItMw_1H_Sword_Short_04(C_Item)
{
	name						= "Wundendorn";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Short_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 9;

	damageTotal					= 18;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 120; // 60;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Short_05(C_Item)
{
	name						= "Buddlerzucht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Short_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 20;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 160; // 80;// 40

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Staebe und Kram **
*********************************************************************************/
// NOV
instance ItMw_1H_Axe_Old_01(C_Item)
{
	name						= "Verwitterte Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_Old_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 7;

	damageTotal					= 13;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 19;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// BAU
// FIXME: zu stark?
instance ItMw_1H_Scythe_01(C_Item)
{
	name						= "Schnitter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Scythe_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 8;

	damageTotal					= 15;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 25;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Staff_01(C_Item)
{
	name						= "Kampfstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Staff_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 9;

	damageTotal					= 17;
	damageType					= DAM_BLUNT;
	range						= 160;

	value						= 62; // 31;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Staff_02(C_Item)
{
	name						= "Richtstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Staff_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 19;
	damageType					= DAM_EDGE;
	range						= 160;

	value						= 72; // 36;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Staff_03(C_Item)
{
	name						= "Priesterstab";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Staff_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 21;
	damageType					= DAM_BLUNT;
	range						= 160;

	value						= 90; // 45;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Leichtes Gardeschwert **
*********************************************************************************/

instance ItMw_1H_LightGuardsSword_03(C_Item)
{
	name						= "Leichtes Gardeschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 20;

	damageTotal					= 22;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 75;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Streitkolben **
*********************************************************************************/
// NOV + ORG
instance ItMw_1H_Mace_01(C_Item)
{
	name						= "Streitkolben";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 23;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 55;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// ORG
instance ItMw_1H_Mace_02(C_Item)
{
	name						= "Stachelkeule";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 11;

	damageTotal					= 25;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 65;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// ORG
instance ItMw_1H_Mace_03(C_Item)
{
	name						= "Blutfliegenstachel";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 11;

	damageTotal					= 26;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 75;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// NOV_1303_NYRAS, NOV_1330_BAALPARVEZ
instance ItMw_1H_Mace_04(C_Item)
{
	name						= "Stahlzunge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 11;

	damageTotal					= 29;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 85;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Schwerter **
*********************************************************************************/
// GRD
instance ItMw_1H_Sword_01(C_Item)
{
	name						= "grobes Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 20; // 12

	damageTotal					= 20; // 30 weil Schmieden und verkaufen runtergesetzt
	damageType					= DAM_EDGE;
	range						= 100;

	value						= Value_1H_Sword_01; // SN: WICHTIG, da diese Instanz das Produkt des SC-Schmiedens ist!!!

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// GRD
instance ItMw_1H_Sword_02(C_Item)
{
	name						= "Richtschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 12;

	damageTotal					= 30;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 97;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// GRD
instance ItMw_1H_Sword_03(C_Item)
{
	name						= "Gardeschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 12;

	damageTotal					= 32;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 104;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// GRD, STT (einer)
instance ItMw_1H_Sword_04(C_Item)
{
	name						= "Kampfschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 13;

	damageTotal					= 33;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 111;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPC
instance ItMw_1H_Sword_05(C_Item)
{
	name						= "Kriegsschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 14;

	damageTotal					= 34;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 472; // 236;// 118

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Morgensterne **
*********************************************************************************/
// ORG

instance ItMw_1H_Mace_War_01(C_Item)
{
	name						= "Morgenstern";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_War_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 14;

	damageTotal					= 35;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 125;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// ORG, SLD
instance ItMw_1H_Mace_War_02(C_Item)
{
	name						= "Stahlgeflecht";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_War_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 15;

	damageTotal					= 36;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 132;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// SLD
instance ItMw_1H_Mace_War_03(C_Item)
{
	name						= "Steinbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_War_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 26;

	damageTotal					= 37;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 139;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// GUR_1211_BaalLukor
instance ItMw_1H_Mace_War_04(C_Item)
{
	name						= "Herzensbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Mace_War_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 17;

	damageTotal					= 39;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 600; // 300;// 153

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Langschwerter **
*********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Long_01(C_Item)
{
	name						= "Langschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Long_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 17;

	damageTotal					= 40;
	damageType					= DAM_EDGE;
	range						= 120;

	value						= 640; // 320;// 160

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// GRD_203_BULLIT
instance ItMw_1H_Sword_Long_02(C_Item)
{
	name						= "Furchtbringer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Long_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 18;

	damageTotal					= 42;
	damageType					= DAM_EDGE;
	range						= 120;

	value						= 680; // 340;// 178

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Long_03(C_Item)
{
	name						= "Hassbringer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Long_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 18;

	damageTotal					= 44;
	damageType					= DAM_EDGE;
	range						= 120;

	value						= 800; // 400;// 196

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Long_04(C_Item)
{
	name						= "Siegbringer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Long_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 20;

	damageTotal					= 46;
	damageType					= DAM_EDGE;
	range						= 120;

	value						= 860; // 430;// 214

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Long_05(C_Item)
{
	name						= "Todbringer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Long_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 21;

	damageTotal					= 48;
	damageType					= DAM_EDGE;
	range						= 120;

	value						= 920; // 460;// 232

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Warhammer_01(C_Item)
{
	name						= "Orkhammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Warhammer_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 22;

	damageTotal					= 50;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 1000; // 500;// 250

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Warhammer_02(C_Item)
{
	name						= "Kriegshammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Warhammer_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 23;

	damageTotal					= 51;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 1040; // 520;// 261

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Warhammer_03(C_Item)
{
	name						= "Götterhammer";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Warhammer_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 23;

	damageTotal					= 52;
	damageType					= DAM_BLUNT;
	range						= 100;

	value						= 1080; // 540;// 272

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Äxte **
*********************************************************************************/
// keine NPCs
instance ItMw_1H_Axe_01(C_Item)
{
	name						= "Axt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 12;

	damageTotal					= 29;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 320; // 160;// 85

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Axe_02(C_Item)
{
	name						= "Schädelspalter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 24;

	damageTotal					= 53;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 1020; // 560;// 283

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Axe_03(C_Item)
{
	name						= "Knochenbrecher";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_AXE;

	visual						= "ItMw_1H_Axe_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 25;

	damageTotal					= 54;
	damageType					= DAM_EDGE;
	range						= 100;

	value						= 1160; // 580;// 294

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Breitschwerter **
*********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Broad_01(C_Item)
{
	name						= "Breitschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Broad_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 26;

	damageTotal					= 55;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1240; // 610;// 305

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Broad_02(C_Item)
{
	name						= "Kriegerurteil";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Broad_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 27;

	damageTotal					= 57;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1300; // 650;// 327

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Broad_03(C_Item)
{
	name						= "Sturmgeflüster";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Broad_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 28;

	damageTotal					= 58;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1360; // 680;// 338

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Broad_04(C_Item)
{
	name						= "Gardistenhand";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Broad_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 29;

	damageTotal					= 59;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1400; // 700;// 349

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Alte Zweihänder **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Old_01(C_Item)
{
	name						= "Rostiger Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 61;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1480; // 740;// 372

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Bastardschwerter **
*********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Bastard_01(C_Item)
{
	name						= "Rostiges Bastardschwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Bastard_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 31;

	damageTotal					= 45; // weil es im OGY rumliegt und der Spieler Anfang des dritten Kapitels dort hinkommt!
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 200; // 810;// 406

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Bastard_02(C_Item)
{
	name						= "Schlachter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Bastard_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 32;

	damageTotal					= 64;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1660; // 830;// 418

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Bastard_03(C_Item)
{
	name						= "Vollstrecker";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Bastard_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 33;

	damageTotal					= 65;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1720; // 860;// 430

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_1H_Sword_Bastard_04(C_Item)
{
	name						= "Berserkerwort";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	visual						= "ItMw_1H_Sword_Bastard_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 35;

	damageTotal					= 66;
	damageType					= DAM_EDGE;
	range						= 130;

	value						= 1760; // 880;// 442

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Alte Streitäxte **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Old_01(C_Item)
{
	name						= "Alte Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Old_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 36;

	damageTotal					= 67;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1800; // 900;// 454

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Old_02(C_Item)
{
	name						= "Bluternter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Old_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 38;

	damageTotal					= 68;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1840; // 920;// 466

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Old_03(C_Item)
{
	name						= "Alter Richter";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Old_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 69;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1880; // 940;// 478

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Leichte Zweihänder **
*********************************************************************************/
// TPL
instance ItMw_2H_Sword_Light_01(C_Item)
{
	name						= "Leichter Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Light_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 42;

	damageTotal					= 70;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1900;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// TPL
instance ItMw_2H_Sword_Light_02(C_Item)
{
	name						= "Hüterklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Light_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 44;

	damageTotal					= 71;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 1950;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Light_03(C_Item)
{
	name						= "Söldnerklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Light_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 46;

	damageTotal					= 73;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2000; // 1000;// 535

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// TPL_1402_GorNaToth, TPL_1439_GorNaDrak
instance ItMw_2H_Sword_Light_04(C_Item)
{
	name						= "Königsklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Light_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 48;

	damageTotal					= 74;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2200; // 1100;// 550

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCS
instance ItMw_2H_Sword_Light_05(C_Item)
{
	name						= "Dämonenklinge";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Light_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 50;

	damageTotal					= 76;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2320; // 1160;// 580

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Leichte Streitaxt **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_light_01(C_Item)
{
	name						= "Leichte Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_light_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 52;

	damageTotal					= 77;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2400; // 1200;// 595

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_light_02(C_Item)
{
	name						= "Donnerschlag";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_light_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 54;

	damageTotal					= 79;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2440; // 1220;// 610

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_light_03(C_Item)
{
	name						= "Schmetterschlag";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_light_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 56;

	damageTotal					= 80;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2520; // 1260;// 630

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Zweihänder **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_01(C_Item)
{
	name						= "Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 58;

	damageTotal					= 81;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2600; // 1300;// 650

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_02(C_Item)
{
	name						= "Heldenschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 60;

	damageTotal					= 83;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2760; // 1380;// 690

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_03(C_Item)
{
	name						= "Blutschneide";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 62;

	damageTotal					= 85;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2840; // 1420;// 710

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Schwere Zweihänder **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Heavy_01(C_Item)
{
	name						= "Schwerer Zweihänder";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Heavy_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 64;

	damageTotal					= 86;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 2920; // 1460;// 730

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Heavy_02(C_Item)
{
	name						= "Zornstahl";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Heavy_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 66;

	damageTotal					= 88;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 3040; // 1520;// 770

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Heavy_03(C_Item)
{
	name						= "Grimmstahl";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Heavy_03.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 68;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 3260; // 1630;// 815

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Sword_Heavy_04(C_Item)
{
	name						= "Rachestahl";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_Sword_Heavy_04.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 70;

	damageTotal					= 92;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 3440; // 1720;// 865

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Streitäxte **
*********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Heavy_01(C_Item)
{
	name						= "Streitaxt";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Heavy_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 72;

	damageTotal					= 94;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 3660; // 1830;// 915

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Heavy_02(C_Item)
{
	name						= "Kriegerstimme";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Heavy_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 74;

	damageTotal					= 96;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 3860; // 1930;// 965

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Heavy_03(C_Item)
{
	name						= "Barbarenfaust";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Heavy_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 76;

	damageTotal					= 98;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 4060; // 2030;// 1015

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// keine NPCs
instance ItMw_2H_Axe_Heavy_04(C_Item)
{
	name						= "Trollfaust";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_Axe_Heavy_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 78;

	damageTotal					= 100;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 4360; // 2180;// 1090

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************
** Orkische Waffen(entsprechen Kap. 3 - 4 Waffen !!! **
*********************************************************************************/
// Orc-Scout (ab Ende Kap 3!)
instance ItMw2hOrcSword01(C_Item)
{
	name						= "Krush Varrok";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD;

	visual						= "ItMw_2H_OrcSword_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 25;

	damageTotal					= 45;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 30; // 90

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Orc-Warrior (Mitte Kap 4!)
instance ItMw2hOrcAxe01(C_Item)
{
	name						= "Krush Pach";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 50;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 35; // 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Orc-Warrior (Mitte Kap 4!)
instance ItMw2hOrcAxe02(C_Item)
{
	name						= "Krush UrRok";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_02.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 35;

	damageTotal					= 55;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 38; // 110;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Orc-Warrior (Mitte Kap 4!)
instance ItMw2hOrcAxe03(C_Item)
{
	name						= "Krush Agash";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_03.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 40;

	damageTotal					= 60;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 40; // 120;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Orc-Warrior (Mitte Kap 4!)
instance ItMw2hOrcAxe04(C_Item)
{
	name						= "Krush BrokDar";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcAxe_04.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 45;

	damageTotal					= 65;
	damageType					= DAM_EDGE;
	range						= 150;

	value						= 43; // 130;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Undead Orc-Warrior (Kap. 5)
instance ItMw2hOrcMace01(C_Item)
{
	name						= "Krush Karrok";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItMw_2H_OrcMace_01.3DS";
	material					= MAT_WOOD;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 50;

	damageTotal					= 75;
	damageType					= DAM_BLUNT;
	range						= 150;

	value						= 50; // 150;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_TwoHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Orc-Schamane (wird im Magiemodus zur Visulaisierung benutzt)
instance ItRwOrcstaff(C_Item)
{
	name						= "Grachtnakk";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItRw_2H_Orcstaff_01.3DS";
	material					= MAT_WOOD;

	damageTotal					= 0;
	damageType					= DAM_BLUNT;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
// Untoter Orc-Priester (wird im Magiemodus zur Visulaisierung benutzt)
instance ItRwUdOrcstaff(C_Item)
{
	name						= "ShaBaNakk";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE;

	visual						= "ItRw_2H_Orcstaff_01.3DS";
	material					= MAT_WOOD;

	damageTotal					= 0;
	damageType					= DAM_BLUNT;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};
