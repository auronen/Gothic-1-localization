// ************************************************************************************************
// Heilwirkung und Kosten von Nahrung
// ************************************************************************************************

const int Value_Bugmeat = 2; const int HP_Bugmeat = 4;
const int Value_Apfel = 4; const int HP_Apfel = 8;
const int Value_Weintrauben = 6; const int HP_Weintrauben = 8;

const int Value_Wasser = 3; const int HP_Wasser = 5;
const int Value_Bier = 10; const int HP_Bier = 3;
const int Value_Wein = 13; const int HP_Wein = 3;
const int Value_Reisschnaps = 15; const int HP_Reisschnaps = 3;

const int Value_Reis = 5; const int HP_Reis = 10;
const int Value_Wurzelsuppe = 3; const int HP_Wurzelsuppe = 7;
const int Value_Ragout = 4; const int HP_Ragout = 9;
const int Value_CrawlerSuppe = 10; const int HP_CrawlerSuppe = 15;

const int Value_FleischRoh = 5; const int HP_FleischRoh = 10;
const int Value_Brot = 8; const int HP_Brot = 12;
const int Value_Käse = 10; const int HP_Käse = 15;
const int Value_Fleisch = 8; const int HP_Fleisch = 15; // Rohes Fleisch mit Pfanne benutzt
const int Value_Schinken = 12; const int HP_Schinken = 18;

const int Value_Waldbeeren = 5; const int HP_Waldbeeren = 10;
const int Value_Flammendorn = 6; const int HP_Flammendorn = 12;
const int Value_Seraphis = 7; const int HP_Seraphis = 14;
const int Value_Velayis = 8; const int HP_Velayis = 16;
const int Value_Bergmoos = 9; const int HP_Bergmoos = 18;
const int Value_Grabmoos = 10; const int HP_Grabmoos = 20;
const int Value_Nachtschatten = 11; const int HP_Nachtschatten = 22;
const int Value_Mondschatten = 12; const int HP_Mondschatten = 24;
const int Value_Orkblatt = 13; const int HP_Orkblatt = 26;
const int Value_Eichenblatt = 14; const int HP_Eichenblatt = 28;

const int Value_Höllenpilz = 3; const int HP_Höllenpilz = 6;
const int Value_Sklavenbrot = 9; const int HP_Sklavenbrot = 15;

const int Value_Heilkräuter1 = 14; const int HP_Heilkräuter1 = 30;
const int Value_Heilkräuter2 = 19; const int HP_Heilkräuter2 = 39;
const int Value_Heilkräuter3 = 24; const int HP_Heilkräuter3 = 49;

// Fixme: Trollkirsche als Handelsware mit Wert?
const int Value_Trollkirsche = 15; const int HP_Trollkirsche = - 20;

// Mana
const int Value_Blutbuche = 3; const int Mana_Blutbuche = 5;
const int Value_Turmeiche = 8; const int Mana_Turmeiche = 10;
const int Value_Rabenkraut = 12; const int Mana_Rabenkraut = 15;
const int Value_Dunkelkraut = 17; const int Mana_Dunkelkraut = 20;
const int Value_Steimwurzel = 20; const int Mana_Steinwurzel = 25;
const int Value_Drachenwurzel = 23; const int Mana_Drachenwurzel = 30;

/*******************************************************************************************
** Essbares **
*******************************************************************************************/

instance ItAt_Meatbug_01(C_Item)
{
	name						= "Wanzenfleisch";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Meatbug_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= UseBugmeat;

	value						= Value_Bugmeat;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Bugmeat;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Bugmeat;
};

func void UseBugmeat()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Bugmeat);
};

/******************************************************************************************/
instance ItFoApple(C_Item)
{
	name						= "Apfel";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Apple_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "FOOD";
	on_state[0]					= UseApple;

	value						= Value_Apfel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Apfel;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Apfel;
};

func void UseApple()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Apfel);
};

/******************************************************************************************/
instance ItFo_wineberrys_01(C_Item)
{
	name						= "Weintrauben";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_wineberrys_01.3ds";

	scemeName					= "FOOD";
	on_state[0]					= Usewineberrys;

	value						= Value_Weintrauben;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Weintrauben;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Weintrauben;
};

func void Usewineberrys()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Weintrauben);
};

/******************************************************************************************/
instance ItFoLoaf(C_Item)
{
	name						= "Brot";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Loaf_01.3ds";

	scemeName					= "FOODHUGE";
	on_state[0]					= UseLoaf;

	value						= Value_Brot;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Brot;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Brot;
};

func void UseLoaf()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Brot);
};

/******************************************************************************************/
instance ItFoMutton(C_Item)
{
	name						= "gebratenes Fleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_CookedMutton_01.3ds";

	scemeName					= "MEAT";
	on_state[0]					= UseMutton;

	value						= Value_Fleisch;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Fleisch;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Fleisch;
};

func void UseMutton()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Fleisch);
};

/******************************************************************************************/
instance ItFoMuttonRaw(C_Item)
{
	name						= "rohes Fleisch";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_RawMutton_01.3ds";

	scemeName					= "MEAT";
	on_state[0]					= UseMuttonRaw;

	value						= Value_FleischRoh;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_FleischRoh;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_FleischRoh;
};

func void UseMuttonRaw()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_FleischRoh);
};

/******************************************************************************************/
instance ItFo_mutton_01(C_Item)
{
	name						= "Schinken";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_mutton_01.3ds";

	scemeName					= "FOODHUGE";
	on_state[0]					= UseMutton1;

	value						= Value_Schinken;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Schinken;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Schinken;
};

func void UseMutton1()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Schinken);
};

/******************************************************************************************/
instance ItFoCheese(C_Item)
{
	name						= "Käse";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Cheese_01.3ds";

	scemeName					= "FOODHUGE";
	on_state[0]					= UseCheese;

	value						= Value_Käse;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Käse;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Käse;
};

func void UseCheese()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Käse);
};

/******************************************************************************************/
instance ItFoRice(C_Item)
{
	name						= "Reis";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Rice_01.3ds";

	scemeName					= "RICE";
	on_state[0]					= UseRice;

	value						= Value_Reis;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Reis;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Reis;
};

func void UseRice()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Reis);
};

/******************************************************************************************/
instance ItFoSoup(C_Item)
{
	name						= "Wurzelsuppe";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Soup_01.3ds";

	scemeName					= "RICE";
	on_state[0]					= UseSoup;

	value						= Value_Wurzelsuppe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Wurzelsuppe;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Wurzelsuppe;
};

func void UseSoup()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Wurzelsuppe);
};

/******************************************************************************************/
instance ItFoMeatbugragout(C_Item)
{
	name						= "Fleischwanzenragout";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Meatbugragout_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "RICE";
	on_state[0]					= UseMeatbugragout;

	value						= Value_Ragout;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Ragout;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Ragout;
};

func void UseMeatbugragout()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Ragout);
};

/******************************************************************************************/
instance ItFoCrawlersoup(C_Item)
{
	name						= "Minecrawlersuppe";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Crawlersoup_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "RICE";
	on_state[0]					= UseCrawlersoup;

	value						= Value_CrawlerSuppe;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_CrawlerSuppe;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_CrawlerSuppe;
};

func void UseCrawlersoup()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_CrawlerSuppe);
};

/*******************************************************************************************
** Trinkbares **
*******************************************************************************************/

/******************************************************************************************/
instance ItFo_Potion_Water_01(C_Item)
{
	name						= "Wasser";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Water_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseWaterPotion;

	value						= Value_Wasser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Wasser;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Wasser;
};

func void UseWaterPotion()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Wasser);
};

// FIXME: zs_Drunk für SC oder nicht?
instance ItFoBeer(C_Item)
{
	name						= "Bier";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Beer_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseBeer;

	value						= Value_Bier;

	description					= name;
	// text[1]					= NAME_Bonus_HP;								count[1] = HP_Bier;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Bier;
};

func void UseBeer()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Bier);
};

/******************************************************************************************/

instance ItFoWine(C_Item)
{
	name						= "Wein";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Wine_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "POTION";
	on_state[0]					= UseWine;

	value						= Value_Wein;

	description					= name;
	// text[1]					= NAME_Bonus_HP;								count[1] = HP_Wein;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Wein;
};

func void UseWine()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Wein);
};

/******************************************************************************************/

instance ItFoBooze(C_Item)
{
	name						= "Reisschnaps";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Booze_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseBooze;

	value						= Value_Reisschnaps;

	description					= name;
	// text[1]					= NAME_Bonus_HP;								count[1] = HP_Reisschnaps;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Reisschnaps;
};

func void UseBooze()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Reisschnaps);
};

//**************************************************************************************/
//						PFLANZEN PFLANZEN PFLANZEN
/******************************************************************************************/
instance ItFo_Plants_Berrys_01(C_Item)
{
	name						= "Waldbeeren";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Berrys_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UseBerrys;

	value						= Value_Waldbeeren;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Waldbeeren;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Waldbeeren;
};

func void UseBerrys()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Waldbeeren);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Beeren");
};

/******************************************************************************************/
instance ItFo_Plants_Flameberry_01(C_Item)
{
	name						= "Flammendorn";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Flameberry_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useflame;

	value						= Value_Flammendorn;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Flammendorn;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Flammendorn;
};

func void Useflame()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Flammendorn);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Flammendorn");
};

/******************************************************************************************/
instance ItFo_Plants_Seraphis_01(C_Item)
{
	name						= "Seraphis";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Seraphis_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useseraphis;

	value						= Value_Seraphis;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Seraphis;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Seraphis;
};

func void Useseraphis()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Seraphis);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Seraphis");
};

/******************************************************************************************/
// Steigerung von Seraphis

instance ItFo_Plants_Velayis_01(C_Item)
{
	name						= "Velayis";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Seraphis_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UseVelayis;

	value						= Value_Velayis;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Velayis;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Velayis;
};

func void UseVelayis()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Velayis);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Velayis");
};

/******************************************************************************************/
instance ItFo_Plants_mountainmoos_01(C_Item)
{
	name						= "Bergmoos";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_mountainmoos_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usemoos;

	value						= Value_Bergmoos;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Bergmoos;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Bergmoos;
};

func void Usemoos()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Bergmoos);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Moos");
};

/******************************************************************************************/
instance ItFo_Plants_mountainmoos_02(C_Item)
{
	name						= "Grabmoos";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_mountainmoos_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usemoos2;

	value						= Value_Grabmoos;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Grabmoos;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Grabmoos;
};

func void Usemoos2()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Grabmoos);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse GrabMoos");
};

/******************************************************************************************/
instance ItFo_Plants_Nightshadow_01(C_Item)
{
	name						= "Nachtschatten";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Nightshadow_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usenight;

	value						= Value_Nachtschatten;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Nachtschatten;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Nachtschatten;
};

func void Usenight()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Nachtschatten);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Nachtschatten");
};

/******************************************************************************************/
instance ItFo_Plants_Nightshadow_02(C_Item)
{
	name						= "Mondschatten";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Nightshadow_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usemoon;

	value						= Value_Mondschatten;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Mondschatten;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Mondschatten;
};

func void Usemoon()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Mondschatten);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Mondschatten");
};

/******************************************************************************************/
instance ItFo_Plants_OrcHerb_01(C_Item)
{
	name						= "Orkblatt";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_OrcHerb_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useorc;

	value						= Value_Orkblatt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Orkblatt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Orkblatt;
};

func void Useorc()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Orkblatt);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse orkblatt");
};

/******************************************************************************************/
instance ItFo_Plants_OrcHerb_02(C_Item)
{
	name						= "Eichenblatt";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_OrcHerb_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useorc2;

	value						= Value_Eichenblatt;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Eichenblatt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Eichenblatt;
};

func void Useorc2()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Eichenblatt);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Eichenblatt");
};

/*****************************************************************************************/
//								PILZE
/*****************************************************************************************/
instance ItFo_Plants_mushroom_01(C_Item)
{
	name						= "Höllenpilz";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_mushroom_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usemush;

	value						= Value_Höllenpilz;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Höllenpilz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Höllenpilz;
};

func void Usemush()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Höllenpilz);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Höllenpilz");
};

/*****************************************************************************************/
instance ItFo_Plants_mushroom_02(C_Item)
{
	name						= "Sklavenbrot";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_mushroom_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Usemush2;

	value						= Value_Sklavenbrot;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Sklavenbrot;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Sklavenbrot;
};

func void Usemush2()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Sklavenbrot);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Sklavenbrot");
};

/*****************************************************************************************/
//								HEILKRÄUTER
/*****************************************************************************************/
instance ItFo_Plants_Herb_01(C_Item)
{
	name						= "Heilkräuter";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Herb_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UsePlants1;

	value						= Value_Heilkräuter1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Heilkräuter1;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Heilkräuter1;
};

func void UsePlants1()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Heilkräuter1);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Heilkräuter");
};

/******************************************************************************************/
instance ItFo_Plants_Herb_02(C_Item)
{
	name						= "Heilkräuter";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Herb_02.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UsePlants2;

	value						= Value_Heilkräuter2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Heilkräuter2;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Heilkräuter2;
};

func void UsePlants2()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Heilkräuter2);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Heilpflanzen");
};

/******************************************************************************************/
instance ItFo_Plants_Herb_03(C_Item)
{
	name						= "Heilkräuter";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Herb_03.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UsePlants3;

	value						= Value_Heilkräuter3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Heilkräuter3;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Heilkräuter3;
};

func void UsePlants3()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Heilkräuter3);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Heilpflanzen");
};

/*****************************************************************************************/
//							MANAREG. PFLANZEN
/*****************************************************************************************/
instance ItFo_Plants_Bloodwood_01(C_ITEM)
{
	name						= "Blutbuchen Samen";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Bloodwood_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useblood;

	value						= Value_Blutbuche;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Blutbuche;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Blutbuche;
};

func void Useblood()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Blutbuche);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Blutbuchensamen");
};

/******************************************************************************************/
instance ItFo_Plants_Towerwood_01(C_ITEM)
{
	name						= "Turmeichen Samen";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Bloodwood_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useblood2;

	value						= Value_Turmeiche;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Turmeiche;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Turmeiche;
};

func void Useblood2()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Turmeiche);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Turmeichensamen");
};

/******************************************************************************************/
instance ItFo_Plants_RavenHerb_01(C_Item)
{
	name						= "Rabenkraut";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_RavenHerb_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useraven;

	value						= Value_Rabenkraut;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Rabenkraut;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Rabenkraut;
};

func void Useraven()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Rabenkraut);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Rabenkraut");
};

/******************************************************************************************/
instance ItFo_Plants_RavenHerb_02(C_Item)
{
	name						= "Dunkelkraut";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_RavenHerb_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useraven2;

	value						= Value_Dunkelkraut;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Dunkelkraut;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Dunkelkraut;
};

func void Useraven2()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Dunkelkraut);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Dunkelkraut");
};

/******************************************************************************************/
instance ItFo_Plants_Stoneroot_01(C_Item)
{
	name						= "Steinwurzel";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Stoneroot_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useroot;

	value						= Value_Steimwurzel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Steinwurzel;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Steimwurzel;
};

func void Useroot()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Steinwurzel);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Steinwurzel");
};

/******************************************************************************************/
instance ItFo_Plants_Stoneroot_02(C_Item)
{
	name						= "Drachenwurzel";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Stoneroot_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= Useroot2;

	value						= Value_Drachenwurzel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Drachenwurzel;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Drachenwurzel;
};

func void Useroot2()
{
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Drachenwurzel);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Drachenwurzel");
};

/******************************************************************************************/
//								GIFTPFLANZEN
/******************************************************************************************/
instance ItFo_Plants_Trollberrys_01(C_Item)
{
	name						= "Trollkirsche";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Plants_Trollberrys_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "FOOD";
	on_state[0]					= UseTrollberrys;

	value						= Value_Trollkirsche;

	description					= name;
	//	text[1]					= NAME_Bonus_HP;								count[1] = HP_Trollkirsche;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Trollkirsche;
};

func void UseTrollberrys()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Trollkirsche);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich esse Trollkirschen");
};
