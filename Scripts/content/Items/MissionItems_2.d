// #####################################################################
// ##
// ##
// ## KAPITEL 2
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	Karte für 1. Fokus
// ---------------------------------------------------------------------
instance ItWrFocusmapPsi(C_Item)
{
	name						= "Fokuskarte von Y'Berion";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseFocusmapPsi;

	value						= 15;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Auf dieser Karte ist der Weg zum";			count[1] = 0;
	text[2]						= "Fokusstein eingezeichnet, den Y'Berion";		count[2] = 0;
	text[3]						= "für seine Schläfer-Beschwörung benötigt";	count[3] = 0;
};

func void UseFocusmapPsi()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetLevel(nDocID, "WORLD.ZEN");
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_World_FocusPSI.tga", 1); // 1 -> DO NOT SCALE

	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Fokus 1 - (Meeresklippe)
// ---------------------------------------------------------------------
instance Focus_1(C_Item)
{
	name						= "Fokus von der Meeresklippe";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	hp							= 1;
	hp_max						= 1;
	weight						= 1;

	visual						= "ItMi_Focus_01.3ds";
	material					= MAT_STONE;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Einer der fünf Foki, die zur Erschaffung";	count[1] = 0;
	text[2]						= "der magischen Barriere benutzt wurden.";		count[2] = 0;
};

// ---------------------------------------------------------------------
//	Zahnrad für Ian
// ---------------------------------------------------------------------
instance ItMi_Stuff_Gearwheel_01(C_Item)
{
	name						= "Zahnrad";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Stuff_Gearwheel_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Es stammt von einem defekten Erzstampfer";	count[0] = 0;
	text[1]						= "der in einem verlassenen Nebenstollen";		count[1] = 0;
	text[2]						= "der Alten Mine steht.";						count[2] = 0;
};

// ---------------------------------------------------------------------
//	Minecrawler-Ei
// ---------------------------------------------------------------------
instance ItAt_Crawlerqueen(C_Item)
{
	name						= "Minecrawler Ei";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItAt_Crawlerqueen.3ds";
	material					= MAT_LEATHER;

	value						= 100;

	description					= name;
	text[0]						= "Diese Eier wurden von einer";				count[0] = 0;
	text[1]						= "Minecrawler-Königin gelegt.";				count[1] = 0;
	text[2]						= "Sie enthalten ein viel stärkeres Sekret";	count[2] = 0;
	text[3]						= "als die Zangen der normalen Minecrawler.";	count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Almanach / Fokusbuch
// ---------------------------------------------------------------------
instance ItWrFokusbuch(C_Item)
{
	name						= "Almanach";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWrFokusbuch;

	value						= 0;

	description					= name;
	text[0]						= "Dieses uralte Zauberbuch enthält eine Reihe";count[0] = 0;
	text[1]						= "magischer Formeln, die sich alle auf die ";	count[1] = 0;
	text[2]						= "Verwendung sogenannter Fokus-Steine beziehen.";count[2] = 0;
};

func void UseItWrFokusbuch()
{
	if ((Wissen_Almanach == FALSE)
	&& Npc_IsPlayer(self))
	{
		B_GiveXP(50);
		Wissen_Almanach = TRUE;
	};

	const string ItWrFokusbuch_1	= "Kapitel 23";
	const string ItWrFokusbuch_2	= "Die gebündelte Macht";
	const string ItWrFokusbuch_3	= "Die im Inneren des Steins ruhende und ständige wachsende Kraft wird durch die Worte des Magiers freigesetzt. Beständig oder auf einen Schlag, das liegt alleine im seinem Ermessen. ";
	const string ItWrFokusbuch_4	= "Zugleich wird der Fokus jedoch frei von der Macht, er ist nunmehr eine leere Hülle.";
	const string ItWrFokusbuch_5	= "Die Worte der Macht, um  die in einem Fokus aufbewahrte Energie freizulassen sind vielen Künstlern der arkanen Kraft zugänglich. Auch einen neues Artefakt mit Energie zu füllen ist mehr magische Gepflogenheit geworden denn ein Geheimnis der Wissenden. ";
	const string ItWrFokusbuch_6	= "Doch einen gebrauchten Fokusstein wieder erneut aufzuladen, verstehen nur Auserwählte.Diese Formel aus uralten Tagen dient als Zeichen der hohen Gabe.";
	const string ItWrFokusbuch_7	= "So dann Wissender öffne deinen Geist für die Worte alter Macht  ";


	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWrFokusbuch_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, ItWrFokusbuch_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWrFokusbuch_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWrFokusbuch_4);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, ItWrFokusbuch_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, ItWrFokusbuch_6);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, ItWrFokusbuch_7);

	Doc_Show(nDocID);
};
