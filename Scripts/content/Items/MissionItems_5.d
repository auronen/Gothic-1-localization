// #####################################################################
// ##
// ##
// ## KAPITEL 5
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
// Skizze des Orctempels
// ---------------------------------------------------------------------

instance ItWrTemplemap(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseTemplemap;

	value						= 30;

	description					= "Skizze des Tempels";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

func void UseTemplemap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
//					Doc_SetLevel( nDocID, "ORCTEMPEL.ZEN" ); // Positionsanzeige funzt nicht!
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_Temple.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Alarmhorn der Orks
// ---------------------------------------------------------------------
instance ItMiAlarmhorn(C_Item)
{
	name						= "Horn";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Alarmhorn_01.3DS";
	material					= MAT_WOOD;

	scemeName					= "HORN";

	value						= 9;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Statuette für Tür zum Alten Tempel
// ---------------------------------------------------------------------
instance ItMi_Stuff_Idol_Sleeper_01(C_Item)
{
	name						= "Statuette";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Stuff_Idol_Sleeper_01.3DS";
	material					= MAT_CLAY;

	value						= 0;

	description					= name;
	text[0]						= "Diese Figur stellt ein unförmiges Wesen dar,";count[0] = 0;
	text[1]						= "das eine Maske trägt.";						count[1] = 0;
	text[2]						= "Die Maske wird von 6 großen Stacheln umsäumt";count[2] = 0;
};

// ---------------------------------------------------------------------
//	Schläferschwert 1
// ---------------------------------------------------------------------
instance Weltenspalter(C_Item)
{
	name						= "Weltenspalter";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMi_SleeperKey_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 900;

	description					= name;
	text[0]						= "Dies war das Schwert des untoten";			count[0] = 0;
	text[1]						= "Ork-Priesters Varrag-Hashor.";				count[1] = 0;
	text[2]						= "Die Waffe ist im Laufe der Jahre";			count[2] = 0;
	text[3]						= "unbrauchbar geworden!";						count[3] = 0;
	text[4]						= "Vielleicht ist das Schwert noch auf";		count[4] = 0;
	text[5]						= "andere Art und Weise nützlich.";				count[5] = 0;
};

// ---------------------------------------------------------------------
//	Schläferschwert 2
// ---------------------------------------------------------------------
instance Lichtbringer(C_Item)
{
	name						= "Lichtbringer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMi_SleeperKey_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 900;

	description					= name;
	text[0]						= "Dies war das Schwert des untoten";			count[0] = 0;
	text[1]						= "Ork-Priesters Varrag-Kasorg.";				count[1] = 0;
	text[2]						= "Die Waffe ist im Laufe der Jahre";			count[2] = 0;
	text[3]						= "unbrauchbar geworden!";						count[3] = 0;
	text[4]						= "Vielleicht ist das Schwert noch auf";		count[4] = 0;
	text[5]						= "andere Art und Weise nützlich.";				count[5] = 0;
};

// ---------------------------------------------------------------------
//	Schläferschwert 3
// ---------------------------------------------------------------------
instance Zeitenklinge(C_Item)
{
	name						= "Zeitenklinge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMi_SleeperKey_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 900;

	description					= name;
	text[0]						= "Dies war das Schwert des untoten";			count[0] = 0;
	text[1]						= "Ork-Priesters Varrag-Unhilqt.";				count[1] = 0;
	text[2]						= "Die Waffe ist im Laufe der Jahre";			count[2] = 0;
	text[3]						= "unbrauchbar geworden!";						count[3] = 0;
	text[4]						= "Vielleicht ist das Schwert noch auf";		count[4] = 0;
	text[5]						= "andere Art und Weise nützlich.";				count[5] = 0;
};

// ---------------------------------------------------------------------
//	Schläferschwert 4
// ---------------------------------------------------------------------
instance Daemonenstreich(C_Item)
{
	name						= "Dämonenstreich";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMi_SleeperKey_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 900;

	description					= name;
	text[0]						= "Dies war das Schwert des untoten";			count[0] = 0;
	text[1]						= "Ork-Priesters Varrag-Ruuushk.";				count[1] = 0;
	text[2]						= "Die Waffe ist im Laufe der Jahre";			count[2] = 0;
	text[3]						= "unbrauchbar geworden!";						count[3] = 0;
	text[4]						= "Vielleicht ist das Schwert noch auf";		count[4] = 0;
	text[5]						= "andere Art und Weise nützlich.";				count[5] = 0;
};

// ---------------------------------------------------------------------
//	Schläferschwert 5
// ---------------------------------------------------------------------
instance Bannklinge(C_Item)
{
	name						= "Bannklinge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMi_SleeperKey_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 900;

	description					= name;
	text[0]						= "Dies war das Schwert des untoten";			count[0] = 0;
	text[1]						= "Ork-Hohepriesters Grash-Varrag-Arushat.";	count[1] = 0;
	text[2]						= "Die Waffe ist im Laufe der Jahre";			count[2] = 0;
	text[3]						= "unbrauchbar geworden!";						count[3] = 0;
	text[4]						= "Vielleicht ist das Schwert noch auf";		count[4] = 0;
	text[5]						= "andere Art und Weise nützlich.";				count[5] = 0;
};

// ---------------------------------------------------------------------
//	Schwert für den Untoten Ork-Hohepriester (unidentifiziert)
// ---------------------------------------------------------------------
instance Mythrilklinge(C_Item)
{
	name						= "Sonderbares Schwert";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMw_2H_Sword_Sleeper_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 10;
	damageType					= DAM_EDGE;
	range						= 160;

	value						= 900;

	description					= name;
	text[0]						= "Ein wundervoll gefertigtes Schwert.";		count[0] = 0;
	text[1]						= "Uralte Runen wurden in die Klinge eingraviert.";count[1] = 0;
	text[2]						= "Vielleicht kann Xardas diese Runen entziffern!";count[2] = 0;
	text[3]						= "Bevor er das Schwert nicht identifiziert hat,";count[3] = 0;
	text[4]						= "lege ich es besser nicht an.";				count[4] = 0;
};

// ---------------------------------------------------------------------
//	Schwert für den Untoten Ork-Hohepriester (identifiziert)
// ---------------------------------------------------------------------
instance Mythrilklinge01(C_Item)
{
	name						= "URIZIEL";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMw_2H_Sword_Sleeper_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 180;

	value						= 900;

	description					= name;
	text[0]						= "Xardas sagt das Schwert heißt URIZIEL und soll";count[0] = 0;
	text[1]						= "uralt sein. Vor langem hat es große Kräfte";	count[1] = 0;
	text[2]						= "besessen, doch es hat seine Magie verloren.";count[2] = 0;
	text[3]						= NAME_Damage;									count[3] = damageTotal;
	text[4]						= NAME_Str_needed;								count[4] = cond_value[2];
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Schwert für den Untoten Ork-Hohepriester (aufgeladen)
// ---------------------------------------------------------------------
instance Mythrilklinge02(C_Item)
{
	name						= "URIZIEL";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMw_2H_Sword_Sleeper_02.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	//	damage[DAM_INDEX_EDGE]	= 1; // Templer sollten sofort tot sein
	damage[DAM_INDEX_FIRE]		= 30;
	damage[DAM_INDEX_MAGIC]		= 120;
	// damage[DAM_INDEX_MAGIC]	= 150;
	//	damageType				= DAM_EDGE|DAM_FIRE|DAM_MAGIC;// Templer sollten sofort tot sein
	damageType					= DAM_FIRE | DAM_MAGIC;
	//	damageType				= DAM_MAGIC;
	range						= 180;

	value						= 10000;

	description					= name;
	text[0]						= "Dies ist das Schwert Uriziel.";				count[0] = 0;
	text[1]						= "Uriziel ist magisch geladen";				count[1] = 0;
	text[2]						= NAME_Dam_Magic;								count[2] = damage[DAM_INDEX_MAGIC];
	text[3]						= NAME_Dam_Fire;								count[3] = damage[DAM_INDEX_FIRE];
	text[4]						= NAME_Str_needed;								count[4] = cond_value[2];
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	URIZIEL, mit entferntem Stein
// ---------------------------------------------------------------------
instance Mythrilklinge03(C_Item)
{
	name						= "URIZIEL";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_SWD | ITEM_MISSION;

	visual						= "ItMw_2H_Sword_Sleeper_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 90;
	damageType					= DAM_EDGE;
	range						= 180;

	value						= 900;

	description					= name;
	text[0]						= "Der magische Edelstein  wurde aus der Klinge";count[0] = 0;
	text[1]						= "entfernt. Es ist immer noch eine exzellente";count[1] = 0;
	text[2]						= "Waffe, aber hat seine Kräfte eingebüßt.";	count[2] = 0;
	text[3]						= NAME_Damage;									count[3] = damageTotal;
	text[4]						= NAME_Str_needed;								count[4] = cond_value[2];
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Schriftrolle, um Schwert für den untoten Ork-Hohepriester zu laden
// ---------------------------------------------------------------------
instance Scroll4Milten(C_Item)
{
	name						= "Machttausch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWrScroll.3DS";
	material					= MAT_LEATHER;

	//	scemeName				= "MAP";

	value						= 15;

	description					= name;
	text[0]						= "Zauber um magische Kraft auf Uriziel";		count[0] = 0;
	text[1]						= "zu übertragen.";								count[1] = 0;
	text[2]						= "Kann nicht von mir benutzt werden";			count[2] = 0;
};

// ---------------------------------------------------------------------
//	Schlüssel zum Versunkenen Turm
// ---------------------------------------------------------------------
instance ItKe_SunkenTower(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= 3;

	description					= name;
	text[0]						= "öffnet die Türen";							count[0] = 0;
	text[1]						= "im versunkenen Turm.";						count[1] = 0;
};

// ---------------------------------------------------------------------
//	Kerkerschlüssel
// ---------------------------------------------------------------------
instance DungeonKey(C_Item)
{
	name						= "Kerkerschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= 3;

	description					= name;
	text[0]						= "Öffnet den Kerker";							count[0] = 0;
	text[1]						= "des Alten Lagers.";							count[0] = 0;
};

// ---------------------------------------------------------------------
//	Destroyer Rune (geladen)
// ---------------------------------------------------------------------
instance UrizielRune(C_Item)
{
	name						= "URIZIEL's Welle des Todes";

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MISSION;

	visual						= "ItAr_Rune_14.3ds";
	material					= MAT_STONE;

	spell						= SPL_MASSDEATH;
	mag_circle					= 6;

	value						= 10000;

	description					= name;
	text[0]						= "Diese mächtige Zauberrune enthält";			count[0] = 0;
	text[1]						= "die uralten Kräfte des Schwertes URIZIEL";	count[1] = 0;
	text[2]						= NAME_Mag_Circle;								count[2] = mag_circle;
	text[3]						= NAME_Manakosten;								count[3] = SPL_SENDCAST_MASSDEATH;
	text[4]						= NAME_Dam_Magic;								count[4] = SPL_DAMAGE_MASSDEATH;
	text[5]						= NAME_Value;									count[5] = value;
};
