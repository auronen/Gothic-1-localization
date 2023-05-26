// #####################################################################
// ##
// ##
// ## KAPITEL 4
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	Buch über Golems
// ---------------------------------------------------------------------
instance ItWr_GolemBook1(C_Item)
{
	name						= "Arkanum Golum - Band I";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseGolemBook1;

	value						= 100;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string GolemBook1_1	= "ARKANUM GOLUM - Band I";
const string GolemBook1_2	= "(Magie der Golems)";
const string GolemBook1_3	= "Nur wer schon einmal einem dieser aus den Elementen erschaffenen Kreaturen begegnet ist, wird wirklich verstehen, welchen Respekt diese magieschen Wesen einem abenteuerlustigen Wanderer einflößen können.";
const string GolemBook1_4	= "Steingolem";
const string GolemBook1_5	= "Diese steinernen Kolosse sind im Kampf fast unverwundbar. Schwerter, Äxte und Bögen scheinen diesen Monstren nichts anhaben zu können.";
const string GolemBook1_6	= "Der einzige glaubhafte Bericht von der Bezwingung eines solchen Leviathans stammt von einem Söldner. Er schrieb davon, wie der stumpfe Aufprall seines Kriegshammers Risse in den Golem trieb, bis dieser schlußendlich zerbarst.";

func void UseGolemBook1()
{

	var int nDocID;

	nDocID =
	Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages
	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages

	// 1.Seite
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, GolemBook1_1);
				Doc_PrintLine	(nDocID, 0, "=====================");
				Doc_PrintLines	(nDocID, 0, GolemBook1_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, GolemBook1_3);
				Doc_PrintLine	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, GolemBook1_4);
				Doc_PrintLine	(nDocID, 1, "------------");
				Doc_PrintLines	(nDocID, 1, GolemBook1_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, GolemBook1_6);

	Doc_Show(nDocID);
};

instance ItWr_GolemBook2(C_Item)
{
	name						= "Arkanum Golum - Band II";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_05.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseGolemBook2;

	value						= 100;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string GolemBook2_1	= "ARKANUM GOLUM - Band II";
const string GolemBook2_2	= "Eisgolem";
const string GolemBook2_3	= "Den Steingolems verwandt sind die Eisgolems, deren physische Substanz jedoch völlig aus gefrorenem Wasser zu bestehen scheint. Jede uns bekannte Waffe scheint an der glatten Oberfläche dieser eisigen Wesen abzugleiten.";
const string GolemBook2_4	= "Auch sei der abenteuerlustige Wanderer gewarnt vor dem Eisatem dieser Kreatur, schließt sie doch jeden Ahnungslosen im Nu in einer Säule aus Eis ein.";
const string GolemBook2_5	= "Einst berichtete ein Feuermagier von der Begegnung mit einem solchen Geschöpf, doch schien er keine ernste Bedrohung darin erkannt zu haben.";
const string GolemBook2_6	= "Feuergolem";
const string GolemBook2_7	= "Berichten zufolge können diese feurigen Geschöpfe ihre Opfer mit nur einer Berührung in ein Flammenmeer verwandeln.";
const string GolemBook2_8	= "Erst im letzten Jahr stieß eine Jagdgruppe im Hochland auf solch einen wandelnden Gluthaufen. Der Ausgang ist unklar, doch sollen Blitze und Eis die Höllenkreatur gestoppt haben.";

func void UseGolemBook2()
{

	var int nDocID;

	nDocID =
	Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages

	// 1. Seite
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, GolemBook2_1);
				Doc_PrintLine	(nDocID, 0, "======================");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, GolemBook2_2);
				Doc_PrintLine	(nDocID, 0, "---------");
				Doc_PrintLines	(nDocID, 0, GolemBook2_3);
				Doc_PrintLines	(nDocID, 0, GolemBook2_4);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLines	(nDocID, 1, GolemBook2_5);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, GolemBook2_6);
				Doc_PrintLine	(nDocID, 1, "------------");
				Doc_PrintLines	(nDocID, 1, GolemBook2_7);
				Doc_PrintLines	(nDocID, 1, GolemBook2_8);
	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Karte der Oberwelt (mit Ork-Gebiet)
// ---------------------------------------------------------------------
instance ItWrWorldmap_Orc(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseWorldmap_Orc;

	value						= 250;

	description					= "Karte der Kolonie (ergänzt)";
	text[0]						= "Ur-Shak der Ork-Schamane hat das";			count[0] = 0;
	text[1]						= "Orkgebiet eingezeichnet!";					count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseWorldmap_Orc()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetLevel(nDocID, "WORLD.ZEN");
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_World_Orc.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Schlüssel zur Freien Mine
// ---------------------------------------------------------------------
instance ItKe_Freemine(C_Item)
{
	name						= "Schlüssel zur freien Mine";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Medizin für den verwundeten Orc in der Freien Mine
// ---------------------------------------------------------------------
instance OrcMedicine(C_ITEM)
{
	name						= "Ork-Medizin";

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MISSION;

	visual						= "ITFO_POTION_STRENGTH_01.3DS";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseOrcMedicine;

	value						= 0;

	description					= name;
	text[0]						= "Wirkung: unbekannt";							count[0] = 0;
};

func void UseOrcMedicine()
{
	if (C_NpcIsOrc(self))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	}
	else
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
	};
};

// ---------------------------------------------------------------------
//	Ulu-Mulu (verschafft Zutritt zur Orkstadt)
// ---------------------------------------------------------------------
instance UluMulu(C_Item)
{
	name						= "Ulu-Mulu";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_2HD_AXE | ITEM_MISSION;

	visual						= "ItMi_Amulet_Ulumulu_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 30;

	damageTotal					= 35;
	damageType					= DAM_EDGE;
	range						= 140;

	value						= 1000;

	description					= name;
	text[0]						= "Das Ulu-Mulu ist ein Zeichen großer Stärke und";count[0] = 0;
	text[1]						= "Würde. Der Träger dieser Standarte hat vor";	count[1] = 0;
	text[2]						= "Orks nichts zu befürchten!";					count[2] = 0;
	text[3]						= NAME_Damage;									count[3] = damageTotal;
	text[4]						= NAME_Str_needed;								count[4] = cond_value[2];
	text[5]						= NAME_Value;									count[5] = value;
};
