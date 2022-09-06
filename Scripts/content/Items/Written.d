/******************************************************************************************/
instance ItWr_Book_Circle_01(C_Item)
{
	name						= "Der erste Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_01;

	value						= 50;

	description					= "Der erste Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_01()
{
	const string ItWr_Book_Circle_01_1	= "Erster Kreis";
	const string ItWr_Book_Circle_01_2	= "Als die Götter den Menschen die Fähigkeit zur Magie schenkten, schenkten sie ihnen auch das Wissen magische Runen herzustellen. Die Diener der Götter haben die ehrenvolle Aufgabe übernommen, diese Artefakte göttlicher Macht zu erschaffen und zu benutzen, wobei der Kreis des Magiers bestimmt, welche Zauber er in der Lage ist zu verstehen und anzuwenden. ";
	const string ItWr_Book_Circle_01_3	= "Licht";
	const string ItWr_Book_Circle_01_4	= "Das erste Geschenk Innos an die Menschen.Eine hell strahlende Kugel wird über dem Magier erzeugt.";
	const string ItWr_Book_Circle_01_5	= "Eispfeil";
	const string ItWr_Book_Circle_01_6	= "Ein Geschoss aus magischer Energie.";
	const string ItWr_Book_Circle_01_7	= "Feuerpfeil";
	const string ItWr_Book_Circle_01_8	= "Ein Geschoss aus magischem Feuer.";

	var int nDocID;
	var string Text;
	Text = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_LIGHT));
	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_THUNDERBOLT));
	var string Text_2;
	Text_2 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_FIREBOLT));
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_01_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_01_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_01_3);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_01_4);
				Doc_PrintLine	(nDocID, 1, Text);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_01_5);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_01_6);
				Doc_PrintLine	(nDocID, 1, Text_1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_01_7);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_01_8);
				Doc_PrintLine	(nDocID, 1, Text_2);
	Doc_Show(nDocID);
};

/******************************************************************************************/

instance ItWr_Book_Circle_02(C_Item)
{
	name						= "Der zweite Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_02;

	value						= 100;

	description					= "Der zweiter Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_02()
{
	const string ItWr_Book_Circle_02_1	= "Zweiter Kreis";
	const string ItWr_Book_Circle_02_2	= "Alle Zauber werden durch die magische Energie des Anwenders ausgelöst.Der Anwender wird als Magier bezeichnet.";
	const string ItWr_Book_Circle_02_3	= "Jede Aktivierung eines Zaubers kostet den Magier einen Teil seiner Kraft. diese Kraft wird als Mana bezeichnet.";
	const string ItWr_Book_Circle_02_4	= "Heilung";
	const string ItWr_Book_Circle_02_5	= "Adanos sah, das die Menschen starben und das es der Wille Beliars war.Und er sprach:Stelle ich mich auch nicht gegen den Willen Beliars,gebe ich den Menschen jedoch die Macht der Heilung.";
	const string ItWr_Book_Circle_02_6	= "Dieser Zauber birgt die Macht, den Magier zu heilen.";
	const string ItWr_Book_Circle_02_7	= "Investierungszauber";

	var int nDocID;

	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten, IntToString(SPL_HEALING_HP_PER_MP));

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_02_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_02_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_02_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_02_4);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_02_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_02_6);
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_02_7);
				Doc_PrintLine	(nDocID, 1, Text_1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");

	Doc_Show(nDocID);
};

/******************************************************************************************/
instance ItWr_Book_Circle_03(C_Item)
{
	name						= "Der dritte Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_03;

	value						= 150;

	description					= "Der dritte Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_03()
{
	const string ItWr_Book_Circle_03_1	= "Dritter Kreis";
	const string ItWr_Book_Circle_03_2	= "Manche Zauber können mit einer bestimmten größeren Anzahl von magischer Energie gespeist werden, diese werden auch Aufladungszauber genannt.";
	const string ItWr_Book_Circle_03_3	= "Andere Zauber werden aufrechterhalten, solange der Magier sein Mana in dieses Spruch einfliessen lässt. Solche Zauber heissen Investierungszauber.";
	const string ItWr_Book_Circle_03_4	= "Feuerball";
	const string ItWr_Book_Circle_03_5	= "Das zweite Geschenk Innos an die Kinder des Feuers. Ein Ball aus Feuer, der sein Opfer verbrennt";
	const string ItWr_Book_Circle_03_6	= "Auladbarer Zauber";
	const string ItWr_Book_Circle_03_7	= "Eisblock";
	const string ItWr_Book_Circle_03_8	= "Das Opfer wird in einen Eisblock eingefroren. Ein Zauber aus dem Tempel der Wassermagier";
	const string ItWr_Book_Circle_03_9	= "Kugelblitz";
	const string ItWr_Book_Circle_03_10	= "Eine Kugel, geschaffen aus magischer Energie.";

	var int nDocID;
	var string Text;
	Text = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_FIREBALL));
	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_ICECUBE));
	var string Text_2;
	Text_2 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_THUNDERBALL));
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_03_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_03_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_03_3);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_03_4);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_03_5);
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_03_6);
				Doc_PrintLine	(nDocID, 1, Text);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_03_7);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_03_8);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, Text_1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_03_9);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_03_10);
				Doc_PrintLine	(nDocID, 1, Text_2);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance ItWr_Book_Circle_04(C_Item)
{
	name						= "Der vierte Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_04;

	value						= 200;

	description					= "Der vierte Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_04()
{
	const string ItWr_Book_Circle_04_1	= "Vierter Kreis";
	const string ItWr_Book_Circle_04_2	= "Die Magie ";
	const string ItWr_Book_Circle_04_3	= "der Teleportation";
	const string ItWr_Book_Circle_04_4	= "Das besondere an diesen magischen Formeln ist, das sie, obwohl als Runen geschaffen,von jedem der magische Energie in sich trägt gesprochen werden können.Die Magie die diese Formeln umgibt, kann sofort aktiviert werden. Es gibt keine Einschränkungen für Teleportationszauber.";
	const string ItWr_Book_Circle_04_5	= "Feuersturm	";
	const string ItWr_Book_Circle_04_6	= "Ähnlich dem Feuerball wirkt dieser Zauber auf einen Gegner, springt von dort aus jedoch auf weitere Gegner über.";
	const string ItWr_Book_Circle_04_7	= "Aufladbarer Zauber";
	const string ItWr_Book_Circle_04_8	= "Blitz";
	const string ItWr_Book_Circle_04_9	= "Der Zauber springt auf mehrere Opfer über. Die Kraft des Blitzes ist schwer zu kontrollieren, so das der Magier selbst Opfer werden kann";
	const string ItWr_Book_Circle_04_10	= "Untote vernichten";
	const string ItWr_Book_Circle_04_11	= "Die Geschöpfe der Finsternis werden mit diesem Zauber verbannt.";

	var int nDocID;
	var string Text;
	Text = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_FIRESTORM));
	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten, IntToString(SPL_ZAPPED_DAMAGE_PER_SEC));
	var string Text_2;
	Text_2 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_DESTROYUNDEAD));
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_04_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_04_2);
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_04_3);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_04_4);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)

				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_04_5);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_04_6);
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_04_7);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, Text);
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_04_8);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_04_9);
				Doc_PrintLine	(nDocID, 1, Text_1);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_04_10);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_04_11);
				Doc_PrintLine	(nDocID, 1, Text_2);

	Doc_Show(nDocID);
};

/******************************************************************************************/
instance ItWr_Book_Circle_05(C_Item)
{
	name						= "Der fünfte Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_05;

	value						= 250;

	description					= "Der fünfte Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_05()
{
	const string ItWr_Book_Circle_05_1	= "Fünfter Kreis";
	const string ItWr_Book_Circle_05_2	= "Feuerregen";
	const string ItWr_Book_Circle_05_3	= "Die Macht des göttlichen Feuers trifft jedes Lebewesen im Wirkungsbreich des Magiers.";
	const string ItWr_Book_Circle_05_4	= "Eiswelle	";
	const string ItWr_Book_Circle_05_5	= "Ein Feld aus magischem Eis erstreckt sich über alle Gegner und friert diese für einen kurzen Zeitraum ein. Während dieser Zeit sind die Opfer bewegungsunfähig und erleiden Schaden. ";
	const string ItWr_Book_Circle_05_6	= "Ein Zauber aus dem Tempel der Wassermagier.";

	var int nDocID;
	var string Text_1;
	Text_1 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_FIRERAIN));
	var string Text_2;
	Text_2 = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_ICEWAVE));
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_05_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_05_2);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_05_3);
				Doc_PrintLine	(nDocID, 0, Text_1);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_05_4);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_05_5);
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_05_6);
				Doc_PrintLine	(nDocID, 1, Text_2);
	Doc_Show(nDocID);
};

instance ItWr_Book_Circle_06(C_Item)
{
	name						= "Der sechste Kreis";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Book_Circle_06;

	value						= 300;

	description					= "Sechster Kreis der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Book_Circle_06()
{
	const string ItWr_Book_Circle_06_1	= "Sechster Kreis";
	const string ItWr_Book_Circle_06_2	= "Todeshauch";
	const string ItWr_Book_Circle_06_3	= "Der Atem Beliars. Eine Wolke aus Lebenverschlingendem Nichts, die jedes Wesen augenblicklich töten kann.";
	const string ItWr_Book_Circle_06_4	= "Todesring";
	const string ItWr_Book_Circle_06_5	= "Nicht viel ist überliefert über die Rune mit der Macht von URIZIEL ";
	const string ItWr_Book_Circle_06_6	= "Es ist nur soviel bekannt, als das sie Beliars Mächte in sich birgt.";

	var int nDocID;
	var string Text;
	Text = ConcatStrings(NAME_Manakosten, IntToString(SPL_SENDCAST_BREATHOFDEATH));

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_06_1);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, ItWr_Book_Circle_06_2);
				Doc_PrintLine	(nDocID, 0, "---------------");
				Doc_PrintLines	(nDocID, 0, ItWr_Book_Circle_06_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Text);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, ItWr_Book_Circle_06_4);
				Doc_PrintLine	(nDocID, 1, "---------------");
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_06_5);
				Doc_PrintLines	(nDocID, 1, ItWr_Book_Circle_06_6);
				Doc_PrintLine	(nDocID, 1, "");

	Doc_Show(nDocID);
};

instance Goettergabe(C_Item)
{
	name						= "Göttergabe";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseGoettergabe;

	value						= 100;

	description					= "Die Gabe der Götter";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseGoettergabe()
{
	const string Goettergabe_1	= "Magie";
	const string Goettergabe_2	= "Die Gabe der Götter";
	const string Goettergabe_3	= "Seit Jahrhunderten versucht man das Wesen und den Ursprung der Magie zu ergründen. Doch wo soll man suchen? Wie kann man sie beschreiben? Sie ist die widersprüchlichste Kraft, die wir kennen. Sie kann töten und gleichzeitig heilen, Sie kann formen und zerstören.";
	const string Goettergabe_4	= "Wie sieht eine solche Kraft aus ? Wo kann man diese unsichtbare und doch so mächtige Kraft finden? Die Magie ist das, was sie ist. Das herrlichste und zugleich mächtigste Geschenk der Götter. Dem Nutzer und Wirker dieser Kraft ist damit auch ein göttliches Geschenk gegeben. Eine heilige Kraft, die nur wenige Auserwählte in der Lage sind zu kontrollieren.";
	const string Goettergabe_5	= "Barthos von Laran";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, Goettergabe_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, " ");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, Goettergabe_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Goettergabe_3);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Goettergabe_4);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, Goettergabe_5);
	Doc_Show(nDocID);
};

/******************************************************************************************/

instance Geheimnisse_der_Zauberei(C_Item)
{
	name						= "Geheimnisse der Zauberei";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseGeheimnisse_der_Zauberei;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseGeheimnisse_der_Zauberei()
{
	const string Geheimnisse_der_Zauberei_1	= "Geheimnisse der Zauberei";
	const string Geheimnisse_der_Zauberei_2	= "Dem Magus selbst wohnt wohl keine Magie inne, er ist vielmehr in der Lage sich ihrer zu bedienen. Er selbst hat ausschließlich die Fähigkeit die Magie zu beeinflussen und zu lenken. Der in der Hohen Kunst der Magie eingeweihte Adept muss in der Lage sein, seinen Geist als Werkzeug zu benutzen";
	const string Geheimnisse_der_Zauberei_3	= "Sein Geist ist es, der die allumgebene Arkane Kraft sammelt, sie formt, bündelt und letztendlich in die uns zugängliche Welt entlässt. Während dieser Zeit höchster Konzentration gelingt es dem Magus mit seinem Geist unsere Sphäre zu durchdringen und auf die Andere Seite zu blicken, von dort kommt die Kraft, der Magus selbst ist nur Leiter und Former dieser Kraft.";
	const string Geheimnisse_der_Zauberei_4	= "Barthos von Laran";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Geheimnisse_der_Zauberei_1);

				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Geheimnisse_der_Zauberei_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Geheimnisse_der_Zauberei_3);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, Geheimnisse_der_Zauberei_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Machtvolle_Kunst(C_Item)
{
	name						= "Machtvolle Kunst";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseMachtvolle_Kunst;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseMachtvolle_Kunst()
{
	const string Machtvolle_Kunst_1	= "Machtvolle Kunst";
	const string Machtvolle_Kunst_2	= "Ein Werk für den Eingweihten der Arkanen Kunst";
	const string Machtvolle_Kunst_3	= "Die Fähigkeiten die göttliche Macht zu kanalisieren wächst in dem Magier. Anfangs keimt sie nur wie ein kleiner Schössling auf dem Feld und man muss ihn pflegen, damit er nicht verkümmert. Doch wenn dieser Schössling erst einmal herangewachsen ist, entfaltet er seine volle Pracht";
	const string Machtvolle_Kunst_4	= "Er wächst und wächst und wird stärker mit jedem Tag. So ergeht es auch dem gelehrigen Magus. Seine anfänglich sehr geringen Kräfte wachsen und gedeihen und entfalten mit der Zeit eine Macht, die in ihrer Vollendung nicht absehbar ist. Diese Macht zu ihrer höchsten Vollendung zu führen ist die heilige Pflicht eines jeden Magus, denn dieser Schößling gesät von den Göttern selbst ist das größte Geschenk, welches ein Sterblicher empfangen kann.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Machtvolle_Kunst_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Machtvolle_Kunst_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Machtvolle_Kunst_3);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Machtvolle_Kunst_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Elementare_Arcanei(C_Item)
{
	name						= "Elementare Arcanei";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_04.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseElementare_Arcanei;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseElementare_Arcanei()
{
	const string Elementare_Arcanei_1	= "Elementare Arcanei";
	const string Elementare_Arcanei_2	= "Einordung der Magie in das Gefüge des Irdischen";
	const string Elementare_Arcanei_3	= "Viel wurde geforscht über die Magie und ihrer Stellung zu den Elementen. Man kann mit Fug und Recht behaupten, dass die Magie als das absolute Element angesehen werden kann. Sie hat die Macht alle Elmente zu verändern und zu formen und ist ihnen somit augenscheinlich übergestellt.";
	const string Elementare_Arcanei_4	= "Eine Verbindung von Element und Magie bringt jedes Element in seiner reinsten Form zutage, so gibt es an wenigen Stellen natürliche Vorkommen solcher Verbindungen und sie sind gar sehr begehrt. Auch die Fähigkeiten eines Magus Elemente scheinbar aus dem Nichts zu erschaffen sind Beweis, dass die magische Kraft das reinste und höchste Gut darstellt, das existiert.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Elementare_Arcanei_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Elementare_Arcanei_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Elementare_Arcanei_3);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Elementare_Arcanei_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Wahre_Macht(C_Item)
{
	name						= "Wahre Macht";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseWahre_Macht;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseWahre_Macht()
{
	const string Wahre_Macht_1	= "Wahre Macht";
	const string Wahre_Macht_2	= "Die heilige Pflicht des Kundigen";
	const string Wahre_Macht_3	= "Es ist seine Macht, die den Magus von den normalen Menschen unterscheidet. Er, ausgestattet mit der Fähigkeit göttliche Kraft zu beeinflussen, ist ein Wesen, für welches die normalen Grenzen des Sterblichen nicht gelten müssen. ";
	const string Wahre_Macht_4	= "Hat der Magus erst einmal einen Grad erreicht, der es ihm ermöglicht die Grenzen seines Daseins zu sprengen, so kann er sich selbst auf eine Stufe über der des normalen Sterblichen stellen. Er kann Grenzen von Raum und Zeit durchdringen, selbst das Ende allen Seins, der Tod, ist kein Hindernis auf seinem Weg.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Wahre_Macht_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Wahre_Macht_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Wahre_Macht_3);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Wahre_Macht_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/

instance Das_magische_Erz(C_Item)
{
	name						= "Das magische Erz";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseDas_magische_Erz;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseDas_magische_Erz()
{
	const string Das_magische_Erz_1	= "Vom Erz";
	const string Das_magische_Erz_2	= "Das beste Erz zum Schmieden einer Waffe findet man zweifelsohne in den Erzminen bei Khorinis. Es ist von elementarer Reinheit und durchtränkt von Magie. Es ist von unvergleichlicher Härte und doch so weich, dass es nicht bricht. Eine Waffe geschmiedet aus jenem Stahl, der unter unsagbar hohen Aufwand aus den tiefen Minen gewonnen wird, ist mit keiner Klinge und sei sie aus dem noch so besten Stahl gefertigt, zu vergleichen";
	const string Das_magische_Erz_3	= ". Kein Schild, den sie nicht brechen kann, kein Panzer, den sie nicht durchbohrt. Könige und Helden aus längst vergangen Tagen trugen Waffen aus bestem Khorinisstahl und in ganz Myrtana werden auch heute für solche Waffen die besten Preise erzielt. Doch wird für dieses Erz auch ein hoher Preis verlangt. Um es der Erde abzutrotzen muß großer Aufwand getrieben werden, denn es ist so, als wolle das Erz nicht aus dem Schoße der Erde entfliehen.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, Das_magische_Erz_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Das_magische_Erz_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Das_magische_Erz_3);
	Doc_Show(nDocID);
};

/******************************************************************************************/

/******************************************************************************************/
instance Schlacht_um_Varant1(C_Item)
{
	name						= "Schlacht um Varant";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_04.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseSchlacht_um_Varant1;

	value						= 100;

	description					= name;
	text[0]						= "Band 1";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseSchlacht_um_Varant1()
{
	const string Schlacht_um_Varant1_1	= "... doch Feldherr Rhobar wählte den Angriff. Er versammelte sein Heer und stieß mit geballter Kraft gegen die schlechtgedeckte rechte Flanke des Feindes vor. Er hielt sich nicht lang mit den Geplänkeln auf, sondern stieß wie ein Schwert in die Seite des feindlichen Heeres und zerschnitt sie wie Papier. Immer weiter trieb er seine Mannen voran, immer weiter Richtung der Grenze von Varant. Er wusste, wenn er diese Schlacht gewinnen wollte, musste es ihm gelingen das feindliche Herr zu teilen und verhindern, dass sich Gellon und Lukkor ";
	const string Schlacht_um_Varant1_2	= "  vereinen und ihm den vernichtenden Schlag versetzen. Es musste ihm gelingen ihren Nachschub zu stören, dann war ihm der Sieg nicht mehr zu nehmen ...";
	const string Schlacht_um_Varant1_3	= "...Gellon war tot, seine Armee geschlagen, seine nun führerlosen Mannen auf der Flucht. Doch Rhobar war  gewillt dem Feind keine Chance zu geben sich zu sammeln und  befahl sofort den Aufbruch, um den Feind zu vernichten. Lukkor indes beschließt die Gunst der Stunde zu nutzen und  König Rhobars erschöpften Truppen den Todesstoß zu versetzen...";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Schlacht_um_Varant1_1);

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Schlacht_um_Varant1_2);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Schlacht_um_Varant1_3);

	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Schlacht_um_Varant2(C_Item)
{
	name						= "Schlacht um Varant";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseSchlacht_um_Varant2;

	value						= 100;

	description					= name;
	text[0]						= "Band 2";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseSchlacht_um_Varant2()
{
	const string Schlacht_um_Varant2_1	= "Der Krieg war entschieden. Varant seiner, für die Verorgung der Truppen so wichtigen,  Seehäfen beraubt. König Rhobar weilte schon lange nicht mehr auf den Schlachtfeldern von Varant, sondern überließ es seinen Generälen die letzten feindliche Truppen aufzureiben. Varant besaß nur noch ein größeres Heer, geführt von Lukkor, dem fähigsten Kriegsherrn des Varantener Heeres, mehr als einmal hatte er eine drohende Niederlage in einen Sieg verwandeln können";
	const string Schlacht_um_Varant2_2	= ". Doch nun saß sein Heer in der Falle. Dem Heer des Feindes zwar zahlenmäßig überlegen doch in aussichtloser Position. Lee, der Kriegsheld von Myrtana hatte ihn in eine Falle gelockt. Seine schwere Reiterei konnte auf dem tiefen, sumpfigen Boden des engen Tals nicht kämpfen und die Hügelketten um ihn herum waren von Lee's Soldaten besetzt, die immer wieder zustießen und so sein Herr Mann um Mann dezimierten. Die verzweifelten Ausfälle seiner Mannen waren blutig zurückgeschlagen worden. Er war besiegt.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Schlacht_um_Varant2_1);

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Schlacht_um_Varant2_2);

	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Myrtanas_Lyrik(C_Item)
{
	name						= "Myrtanas Lyrik";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseMyrtanas_Lyrik;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseMyrtanas_Lyrik()
{
	const string Myrtanas_Lyrik_1	= "    Das Lied der";
	const string Myrtanas_Lyrik_2	= "		  Reue";
	const string Myrtanas_Lyrik_3	= "Am Anfang war die Macht, rein und pur,";
	const string Myrtanas_Lyrik_4	= "heute bleibt nur noch das Echo vom alten Schwur.";
	const string Myrtanas_Lyrik_5	= "Die Zeiten der Einheit schon lang dahin,";
	const string Myrtanas_Lyrik_6	= "nach Hab und Gut steht uns nun der Sinn.";
	const string Myrtanas_Lyrik_7	= "Geteilt ist nun, was einst zusammen.";
	const string Myrtanas_Lyrik_8	= "Verflucht der Geist der uns genommen.";
	const string Myrtanas_Lyrik_9	= "Voll Sehnsucht sind der unsren Lieder.";
	const string Myrtanas_Lyrik_10	= "Die Einigkeit kommt niemals wieder.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Myrtanas_Lyrik_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, Myrtanas_Lyrik_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_3);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_4);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_6);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_7);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_8);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_9);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Myrtanas_Lyrik_10);
				Doc_PrintLines	(nDocID, 1, "");
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Lehren_der_Goetter1(C_ITEM)
{
	name						= "Lehren der Götter Band1";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLehren_der_Goetter1;

	value						= 100;

	description					= "Lehren der Götter";
	text[0]						= "Band 1";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseLehren_der_Goetter1()
{
	const string Lehren_der_Goetter1_1	= "Höre die Worte der Götter, denn es ist ihr Wille, dass sie gehört werden. Befolge die Lehren der Götter, denn es ist ihr Wille, dass sie befolgt werden. Achte die Priester der Götter, denn sie sind erwählt.";
	const string Lehren_der_Goetter1_2	= "Die Worte Innos : Und möget ihr nicht verstehen, so zweifelt nicht an den Worten der Priester, ihr Tun ist gerecht und weise. Denn ich bin die aufgehende Sonne, das Licht und das Leben. Und alles was da wider der Sonne, ist wider mir und soll verbannt sein auf immer und ewig in die Schatten.";
	const string Lehren_der_Goetter1_3	= "Die Worte Adanos: Arbeite und lebe, denn der Tag ist gemacht dafür, dass der Mensch arbeite. Suche das Lernen und Wissen, auf dass Du es weitergeben kannst, denn so bist Du geschaffen worden. Wer aber müßig und faul, der soll verbannt werden auf immer und ewig in die Schatten.";
	const string Lehren_der_Goetter1_4	= "Die Worte Beliar: Wer aber handelt unrecht und gegen den Willen der Götter, den will ich strafen, den Körper mit Schmerz , Leid und Tod, den Geist werde ich aber zu mir nehmen auf immer und ewig in die Schatten. ";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Lehren_der_Goetter1_1);
				Doc_PrintLine	(nDocID, 0, "");
	// Absatz
				Doc_PrintLines	(nDocID, 0, Lehren_der_Goetter1_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Lehren_der_Goetter1_3);
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, Lehren_der_Goetter1_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Lehren_der_Goetter2(C_ITEM)
{
	name						= "Lehren der Götter Band2";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLehren_der_Goetter2;

	value						= 100;

	description					= "Lehren der Götter";
	text[0]						= "Band 2";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseLehren_der_Goetter2()
{
	const string Lehren_der_Goetter2_1	= "Vom Anbeginn der Zeit: Es ward noch kein Tag oder Nacht und kein Wesen zog über die Welt. Da erschien der Welt Innos und sein Licht erhellte alles. Und Innos schenkte der Welt das Leben. Da aber kein Wesen im Licht des Innos leben kann, schuf er die Sonne. Das Licht war aber noch zu stark. Da teilte sich Innos und schuf Beliar. Beliar brachte die Nacht. Nun konnten die Menschen sein. Da teilte sich Innos erneut und schuf Adanos. Adanos gab den Menschen die Vielseitigkeit, Wissen, Neugier und Mut. Innos war sehr zufrieden mit sich und seinem Werk.";
	const string Lehren_der_Goetter2_2	= "Und er beschloss die Menschen Adanos ganz zu überlassen, um zu ruhen. Beliar aber wurde von Neid zerfressen, denn die Menschen beteten nicht zu ihm und ruhten des Nachts. Da wurde er zornig und er formte sich einen Menschen. Einen Menschen, der nur ihn anbeten sollte. Der Mensch aber ward genau so wie alle anderen Menschen. Beliar wurde so stark von Zorn erfüllt, dass er den Menschen tötete und sprach: Wenn sie mich nicht anbeten, dann sollen sie mich fürchten. Und er schuf den Tod und nahm den Menschen das Leben.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Lehren_der_Goetter2_1);

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Lehren_der_Goetter2_2);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Lehren_der_Goetter3(C_ITEM)
{
	name						= "Lehren der Götter Band3";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLehren_der_Goetter3;

	value						= 100;

	description					= "Lehren der Götter";
	text[0]						= "Band 3";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseLehren_der_Goetter3()
{
	const string Lehren_der_Goetter3_1	= "Innos gab den Menschen die Macht ihn zu hören und zu ihm zu sprechen. Er gab ihnen die Macht große Wunder zu vollbringen. Und er nannte sie Magie. Mit dieser Macht konnten die Menschen die Welt frei nach ihrem Willen gestalten. Es gab keine Grenzen, die Innos ihnen aufzeigte. Und so hatten die Menschen Teil an der göttlichen Schöpferkraft. Aber die Menschen waren sich alle gleich und das gefiel ihnen nicht. Also nahm er denen die unzufrieden waren, die Kraft. Die wenigen, die sich dankbar zeigten, stellte Innos über alle anderen";
	const string Lehren_der_Goetter3_2	= "Diese Menschen wurden alsbald verehrt und gefürchtet und wurden Priester genannt. Doch auch unter ihnen gab es viele, die bald unzufrieden waren. Und so kam es, dass sie zu Adanos beteten und ihren Ursprung vergassen. Die Riege der Priester war gespalten. Kriege wurden entfesselt und auch der Glaube an die göttliche Allmacht war bald schon nur noch Mythos. So teilten sich die Priester. Die dem Adanos folgten nannte man nun Magier des Wassers, die Geweihten des Innos hießen aber die Magier des Feuers.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Red_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Red_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Lehren_der_Goetter3_1);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Lehren_der_Goetter3_2);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Jagd_und_Beute(C_ITEM)
{
	name						= "Jagd und Beute";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseJagd_und_Beute;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseJagd_und_Beute()
{
	const string Jagd_und_Beute_1	= "Sein Schriftzeugnis hat die Zeiten überdauert und seine Ratschläge gelten als Lehrbuch der Jagdkunst. Nach den großen Schlachten im Norden ist es heute jedem Landsmann geläufig, wie man mit dem Bogen umzugehen hat. Jedoch gibt es bei der Jagd einige Regeln zu befolgen, die über den einfachen Umgang mit der Waffe hinaus gehen! Das Wild ist scheu und unberechenbar.";
	const string Jagd_und_Beute_2	= "Die Kunst der Jagd mit dem Bogen verfügt nicht nur über die älteste Tradition, sondern ist auch die geläufigste aller denkbaren Jagdarten. Die Technik dieser Art der traditionellen Jagd hat sich im Lauf der Jahrtausende kaum verändert und wird sich wohl auch in Zukunft nicht ändern. Welche Umstände bestimmen wirklich den Ablauf der Jagd mit dem Bogen? Diese Gesetzmäßigkeiten erkannt zu haben, ist die eigentliche hohe Kunst der Bogenjagd.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Jagd_und_Beute_1);

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Jagd_und_Beute_2);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Kampfkunst(C_ITEM)
{
	name						= "Kampfkunst";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseKampfkunst;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseKampfkunst()
{
	const string Kampfkunst_1	= "2000 Jahre lang bildeten diese Lehren des Meisters die Pfeiler bei der Entwicklung der Kampfkunst.  ";
	const string Kampfkunst_2	= "Geschult werden dabei die Beweglichkeit des Körpers, Ruhe und Schnelligkeit, Beobachtung und Reaktion. Die Bewegungen müssen gut koordiniert und die Körperhaltung korrekt sein, um die beste Entfaltung deiner Kraft zu erreichen.";
	const string Kampfkunst_3	= "Der Kern der geistigen und körperlichen Lehren des Meisters hat viele Jahre überlebt.  ";
	const string Kampfkunst_4	= "Sein einzigartiger Erfolg hat Generationen beeinflußt. Jahrtausende, in denen zwar die Welt ihr Äußeres schon oft verändert hat, in der aber eines für immer Bestand haben wird: Die Harmonie der inneren Kräfte mit der gezielten äußeren Bewegung des Körpers.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Kampfkunst_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Kampfkunst_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Kampfkunst_3);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Kampfkunst_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Die_Gruft(C_ITEM)
{
	name						= "Die Gruft";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";

	value						= 100;

	description					= "Kampfkunst";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
instance Astronomie(C_ITEM)
{
	name						= "Astronomie";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseAstronomie;

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseAstronomie()
{
	const string Astronomie_1	= "Im Zentrum befindet sich der Morgrad mit seinen vier Elementen Erde, Wasser, Feuer und Luft, der Raum des Vergänglichen, in seinem Inneren die unaussprechliche Dunkelheit des Beliar. Über allem befindet sich die Sphäre des Himmels.";
	const string Astronomie_2	= "In der Hierarchie des Kosmos nimmt der Mensch die Stellung des Empfängers ein. Durch seine Seele hat er Teil am höchsten Sein, dem göttlichen Geist, sein vergänglicher Körper hingegen besteht aus Stoffen des Morgrad. Als kleines Abbild der ganzen Welt.";
	const string Astronomie_3	= "Die synodische Umlaufszeit der Planeten, dh. die Zeitdauer zwischen zwei gleichartigen Stellungen in Bezug zum Morgrad unserer Welt, weicht jedes Jahrhundert um einige Grade ab, so dass wir davon ausgehen können, uns in einer ständigen Bewegung mit dem restlichen Kosmos zu befinden.";
	const string Astronomie_4	= "Bei der Aufstellung eines Kalenders bezogen wir uns Anfangs auf den Mondlauf, um den Anschluß an die tatsächliche Länge des Sonnenjahres zu erhalten.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Astronomie_1);
				Doc_PrintLine	(nDocID, 0, "");
	// Absatz
				Doc_PrintLines	(nDocID, 0, Astronomie_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, Astronomie_3);
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, Astronomie_4);
	Doc_Show(nDocID);
};

/******************************************************************************************/

/******************************************************************************************/
instance Rezepturen(C_ITEM)
{
	name						= "Rezepturen";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_04.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseRezepturen;

	value						= 100;

	description					= name;
	text[0]						= "Band 1";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseRezepturen()
{
	const string Rezepturen_1	= "Das Balsam des Sehens:";
	const string Rezepturen_2	= "Dazu wird ihm Galle auf die Augen gestrichen. Galle ist bitter im Geschmack. Wird dieses Bittere auf das Auge genommen, dh: schauen wir das Bittere an, so erwächst daraus Weisheit. Wir werden sehend! Bitterkeit und Weisheit schliessen einander aus. Sie sind Gegenpole!";
	const string Rezepturen_3	= "Tränen, Leid und Enttäuschung sind bitter, die Weisheit aber ist die Trösterin in jedem seelischen Schmerz. Bitterkeit und Weisheit bilden eine Alternative. Wo Bitterkeit, da fehlt die Weisheit, und wo Weisheit, da gibt es keine Bitterkeit.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Rezepturen_1);
				Doc_PrintLine	(nDocID, 0, "----------------");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Rezepturen_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, Rezepturen_3);
	Doc_Show(nDocID);
};

/******************************************************************************************/
instance Rezepturen2(C_ITEM)
{
	name						= "Rezepturen";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_04.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseRezepturen2;

	value						= 100;

	description					= name;
	text[0]						= "Band 2";										count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseRezepturen2()
{
	const string Rezepturen2_1	= "Der Wein des Vergessens";
	const string Rezepturen2_2	= "Hoch oben an den Hängen des Archolos, gibt es die besten Trauben, die man für diesen Wein finden kann. Die Kunst diesen Wein zu seiner Vollendung reifen zu lassen, besteht darin, ihn unter keinen Umständen jeglicher Bewegung auszusetzen. Die Trauben werden vor der Kellerei mit dem gemeinen Syos-kraut versetzt. ";
	const string Rezepturen2_3	= "Sehet und staunet, wenn der Magister klarstes Brunnenwasser zu vortrefflichen Wein verwandelt. Alle ihm huldigen und sich an seiner Gabe laben. Der Magister seine faulen Lehrlinge zur Strafe in Flaschen sperrt, Feuer sich auf wundersame Weise entzündet und schwarze Schlangen emporwachsen.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Rezepturen2_1);
				Doc_PrintLine	(nDocID, 0, "--------------------");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Rezepturen2_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
	// Absatz
				Doc_PrintLines	(nDocID, 1, Rezepturen2_3);
	Doc_Show(nDocID);
};

/******************************************************************************************/

instance TagebuchOT(C_Item)
{
	name						= "Tagebuch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseTagebuchOT;

	value						= 100;

	description					= name;
	// text[5]					= NAME_Value;
	// count[5]					= value;

	text[0]						= "Ein altes zerschlissenes Buch.";				count[0] = 0;
	text[1]						= "Es fehlen Seiten.";							count[1] = 0;
};

func void UseTagebuchOT()
{
	const string TagebuchOT_1	= "23. Tag";
	const string TagebuchOT_2	= "Ich habe das Zeitgefühl verloren.";
	const string TagebuchOT_3	= "Ich schätze es ist 23 Tage her, seit uns die Orks gefangen genommen und zur Arbeit gezwungen haben.";
	const string TagebuchOT_4	= "Die Arbeit ist hart und die Bastarde haben keine Gnade, wer schwach ist, ist tot!";
	const string TagebuchOT_5	= "Ich will hier abhauen, egal wie!!!";
	const string TagebuchOT_6	= "28. Tag";
	const string TagebuchOT_7	= "Wir mussten die Stollen noch weiter in den Berg hinein treibe.";
	const string TagebuchOT_8	= "Der vordere Bereich ist schon gigantisch, wenn ich nur wüßte für was wir das tun müssen.";
	const string TagebuchOT_9	= "67. Tag";
	const string TagebuchOT_10	= "Ich habe erzählt bekommen, dass diese Priester der Orks keine Herzen mehr hätten, aber wie können sie leben?";
	const string TagebuchOT_11	= "Außerdem habe ich das Schwert gesehen, vor dem sich die Priester so fürchten, hätte ich es nur, ich würde es ihnen in ihren Körper jagen.";
	const string TagebuchOT_12	= "78. Tag";
	const string TagebuchOT_13	= "Das Schwert liegt in einem Raum im vorderen Bereich des Tempels, wird aber von einem Priester bewacht.";
	const string TagebuchOT_14	= "Ich werde flüchten. Mein Tagebuch lasse ich hier liegen, vielleicht hilft es irgendjemanden mal.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite
				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, TagebuchOT_1);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLines	(nDocID, 0, TagebuchOT_2);
				Doc_PrintLines	(nDocID, 0, TagebuchOT_3);
				Doc_PrintLines	(nDocID, 0, TagebuchOT_4);
				Doc_PrintLines	(nDocID, 0, TagebuchOT_5);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, TagebuchOT_6);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLines	(nDocID, 0, TagebuchOT_7);
				Doc_PrintLines	(nDocID, 0, TagebuchOT_8);

	// 1.Seite
				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 1, TagebuchOT_9);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLines	(nDocID, 1, TagebuchOT_10);
				Doc_PrintLines	(nDocID, 1, TagebuchOT_11);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 1, TagebuchOT_12);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLines	(nDocID, 1, TagebuchOT_13);
				Doc_PrintLines	(nDocID, 1, TagebuchOT_14);
	Doc_Show(nDocID);
};

instance ItWr_Bloodfly_01(C_Item)
{
	name						= "Die Blutfliegen";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Book_02_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseItWr_Bloodfly_01;

	value						= 150;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseItWr_Bloodfly_01()
{
	const string ItWr_Bloodfly_01_1	= "Blutfliegen";
	const string ItWr_Bloodfly_01_2	= "Über die Fliegen";
	const string ItWr_Bloodfly_01_3	= "Dort aber , wo das Erdreich feucht und die Luft schwül ist, werden die Fliegen angelockt vom rinnenden Schweiß aller Kreaturen.Mit ihrem Stachel töten sie ihre Opfer und laben sich an ihrem Blut. ";
	const string ItWr_Bloodfly_01_4	= "Den Stachel zu entnehmen ist eine Kunst die von vielen Sumpfjägern beherrscht wird.Schneide tief in den Unterleib, um den Stachel herum mit gezackten Schnitten und entferne vorsichtig den Stachel mitsamt dem umgebenen Gewebe.Lasse ihn ausbluten und streife das ungeniessbare Fleisch ab.";

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, ItWr_Bloodfly_01_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, " ");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, ItWr_Bloodfly_01_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, ItWr_Bloodfly_01_3);
				Doc_PrintLine	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, ItWr_Bloodfly_01_4);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
	Doc_Show(nDocID);

	if (Knows_GetBFSting == FALSE)
	{
		Knows_GetBFSting = TRUE;
		Log_CreateTopic(GE_AnimalTrophies, LOG_NOTE);
		B_LogEntry(GE_AnimalTrophies, GE_AnimalTrophies_Stinger);
		PrintScreen(PRINT_LEARN_Stinger, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);
	};
};
