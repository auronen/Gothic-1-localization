// ************************************************************************************************
// Wert von Tiertrophäen
// ************************************************************************************************

// FIXME: welche Trophäe wann freigeschaltet? Wert tunen!
const int Value_Zähne = 10;
const int Value_Krallen = 15;

const int Value_Wolfsfell = 10;
const int Value_Orkhundfell = 15;

const int Value_Panzerplatte = 50;
const int Value_Crawlerzangen = 10;

const int Value_Shadowbeastfell = 100;

const int Value_Lurkerklaue = 15;
const int Value_Lurkerhaut = 25;

const int Value_Sumpfhaihaut = 200;

const int Value_Trollfell = 300;

// Bloodfly
const int Value_Flügel = 15;
const int Value_Stachel = 25;

// Durch Ulu-Mulu freigeschaltet
// bei Auftragsvergabe werden je 3 neue Monster gespawnt
const int Value_Feuerzunge = 500;
const int Value_Sumpfhaizähne = 500;
const int Value_Shadowbeasthorn = 500;
const int Value_Trollhauer = 500;

// Golems beim Dämonenbeschwörer
const int Value_Steinherz = 1000;
const int Value_Feuerherz = 1000;
const int Value_Eisherz = 1000;
const int Value_Eistueck = 100;

/*
So in der Tasche
----------------
ItAt_Meatbug_01 // Meatbug Körper (Essen) (Item-Instanz in Food.d)
ItFoMuttonRaw // Scavenger 2 Bollen OK
// Molerats 2 Bollen OK
// Shadowbeast 4 Bollen OK

ItAt_Bloodfly_01 // Bloodfly Flügel OK

Durch Jäger freigeschaltet(noch nicht verteilt)
--------------------------
ItAt_Teeth_01 // Wolf 2 Zähne OK
// Schwarzer Wolf 2 Zähne OK
// Snapper 10 Zähne OK
// Orcbiter 2 Zähne OK
// Shadowbeast 4 Zähne OK
// Bloodhound 4 Zähne OK
// --------------------------------------------------------------
ItAt_Claws_01 // Waran 4 Klauen OK
// Feuerechse 4 Klauen OK
// Snapper 3 Klauen OK
// Razor 3 Klauen OK
// Beisser 2 Klauen OK
ItAt_Lurker_01 // Lurker 2 Klauen OK
// --------------------------------------------------------------
ItAt_Wolf_01 // Wolf Wolfsfell OK
ItAt_Wolf_02 // Orkhund Orkhundfell OK
ItAt_Shadow_01 // Shadowbeast Shadowbeast-Fell OK
ItAt_Troll_01 // Troll Trollfell OK
// --------------------------------------------------------------
ItAt_Swampshark_01 // Sumpfhai Haut des Sumpfhais OK
ItAt_Lurker_02 // Lurker Haut des Lurkers OK

Durch Templer / Kalom freigeschaltet(noch nicht verteilt)
------------------------------------
ItAt_Crawler_01 // Crawler Zangen OK
ItAt_Bloodfly_02 // Bloodfly Stachel OK

Durch ORG_855_Wolf freigeschaltet
------------------------
ItAt_Crawler_02 // Crawler Panzerplatten OK

Durch Ulu - Mulu freigeschaltet
-----------------------------
ItAt_Waran_01 // Feuerechse Flammenzunge OK
ItAt_Swampshark_02 // Sumpfhai Zähne des Sumpfhais OK
ItAt_Shadow_02 // Shadowbeast Horn OK
ItAt_Troll_02 // Troll Hauer OK
*/

/******************************************************************************************/
instance ItAt_Teeth_01(C_Item)
{
	name						= "Zähne";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Teeth_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Zähne;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Zähne;
};

/******************************************************************************************/
instance ItAt_Wolf_01(C_Item)
{
	name						= "Wolfsfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Wolf_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Wolfsfell;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Wolfsfell;
};

/******************************************************************************************/
instance ItAt_Wolf_02(C_Item)
{
	name						= "Orkhundfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Wolf_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Orkhundfell;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Orkhundfell;
};

/******************************************************************************************/
instance ItAt_Waran_01(C_Item)
{
	name						= "Flammenzunge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Waran_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Feuerzunge;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Feuerzunge;
};

/******************************************************************************************/
instance ItAt_Claws_01(C_Item)
{
	name						= "Krallen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Claws_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Krallen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Krallen;
};

/******************************************************************************************/
instance ItAt_Crawler_02(C_Item)
{
	name						= "Panzerplatte";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItAt_Crawler_02.3DS";
	material					= MAT_WOOD;

	value						= Value_Panzerplatte;

	description					= "Die Panzerplatte eines Minecrawler Kriegers";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Panzerplatte;
};

/******************************************************************************************/
instance ItAt_Crawler_01(C_Item)
{
	name						= "Crawlerzangen";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Crawler_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Crawlerzangen;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Crawlerzangen;
};

/******************************************************************************************/
instance ItAt_Shadow_01(C_Item)
{
	name						= "Fell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Shadowbeast_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Shadowbeastfell;

	description					= "Fell eines Schattenläufers";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Shadowbeastfell;
};

/******************************************************************************************/
instance ItAt_Shadow_02(C_Item)
{
	name						= "Horn";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Shadowbeast_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Shadowbeasthorn;

	description					= "Horn eines Schattenläufers";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Shadowbeasthorn;
};

/******************************************************************************************/
instance ItAt_Lurker_01(C_Item)
{
	name						= "Lurkerklaue";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Lurker_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Lurkerklaue;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Lurkerklaue;
};

/******************************************************************************************/
instance ItAt_Lurker_02(C_Item)
{
	name						= "Lurkerhaut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Lurker_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Lurkerhaut;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Lurkerhaut;
};

/******************************************************************************************/
instance ItAt_Troll_02(C_Item)
{
	name						= "Trollhauer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Troll_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Trollhauer;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Trollhauer;
};

/******************************************************************************************/
instance ItAt_Troll_01(C_Item)
{
	name						= "Trollfell";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Troll_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Trollfell;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Trollfell;
};

/******************************************************************************************/
instance ItAt_Swampshark_01(C_Item)
{
	name						= "Sumpfhaihaut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Swampshark_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Sumpfhaihaut;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Sumpfhaihaut;
};

/******************************************************************************************/
instance ItAt_Swampshark_02(C_Item)
{
	name						= "Sumpfhaizähne";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Swampshark_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Sumpfhaizähne;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Sumpfhaizähne;
};

/******************************************************************************************/
instance ItAt_Bloodfly_01(C_Item)
{
	name						= "Flügel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Bloodfly_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Flügel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Flügel;
};

/******************************************************************************************/
instance ItAt_Bloodfly_02(C_Item)
{
	name						= "Blutfliegenstachel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItAt_Bloodfly_02.3DS";
	material					= MAT_LEATHER;

	value						= Value_Stachel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Stachel;
};

/******************************************************************************************/
instance ItAt_StoneGolem_01(C_Item)
{
	name						= "Herz eines Steingolems";

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MISSION;

	visual						= "ItAt_StoneGolem_01.3DS";
	material					= MAT_STONE;

	spell						= SPL_WINDFIST;

	value						= Value_Steinherz;

	description					= name;
	text[0]						= "Dieses Herz stammt aus den Überresten";		count[0] = 0;
	text[1]						= "eines besiegten Steingolems.";				count[1] = 0;
	text[2]						= "Es hat die Kraft, einen Gegner";				count[2] = 0;
	text[3]						= "durch die Luft zu schleudern.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Steinherz;
};

/******************************************************************************************/
instance ItAt_FireGolem_01(C_Item)
{
	name						= "Herz eines Feuergolems";

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MISSION;

	visual						= "ItAt_FireGolem_01.3DS";
	material					= MAT_STONE;

	spell						= SPL_FIREBALL;

	value						= Value_Feuerherz;

	description					= name;
	text[0]						= "Dieses Herz stammt aus den Überresten";		count[0] = 0;
	text[1]						= "eines besiegten Feuergolems.";				count[1] = 0;
	text[2]						= "Es hat die Kraft, einen Gegner";				count[2] = 0;
	text[3]						= "in Flammen aufgehen zu lassen.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Feuerherz;
};

/******************************************************************************************/
instance ItAt_IceGolem_01(C_Item)
{
	name						= "Herz eines Eisgolems";

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MISSION;

	visual						= "ItAt_IceGolem_01.3DS";
	material					= MAT_STONE;

	spell						= SPL_ICECUBE;

	value						= Value_Eisherz;

	description					= name;
	text[0]						= "Dieses Herz stammt aus den Überresten";		count[0] = 0;
	text[1]						= "eines besiegten Eisgolems.";					count[1] = 0;
	text[2]						= "Es hat die Kraft, einen Gegner";				count[2] = 0;
	text[3]						= "zu Eis erstarren zu lassen.";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Eisherz;
};

/******************************************************************************************/
instance ItAt_IceGolem_02(C_Item)
{
	name						= "Stück eines Eisgolems";

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAt_IceGolem_01.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= 500;
	spell						= SPL_THUNDERBOLT;

	value						= Value_Eistueck;

	description					= name;
	text[0]						= "Dieses Stück stammt aus den Überresten";		count[0] = 0;
	text[1]						= "eines besiegten Eisgolems.";					count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Eistueck;
};
