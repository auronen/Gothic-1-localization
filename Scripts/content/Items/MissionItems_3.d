// #####################################################################
// ##
// ##
// ## KAPITEL 3
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	1. Pergamenthälfte der Ork-Schriftrolle
// ---------------------------------------------------------------------
instance OrkParchmentOne(C_Item)
{
	name						= "Pergamenthäfte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "ItWr_Scroll_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";

	value						= 3;

	description					= name;
	text[0]						= "ein Teil eines uralten Pergaments";			count[0] = 0;
	text[1]						= "das untere Ende scheint abgerissen";			count[1] = 0;
	text[2]						= "worden zu sein. Diese Schrift ähnelt";		count[2] = 0;
	text[3]						= "den Runen an den Wänden dieser Höhlen sehr";	count[3] = 0;
};

// ---------------------------------------------------------------------
//	2. Pergamenthälfte der Ork-Schriftrolle
// ---------------------------------------------------------------------
instance OrkParchmentTwo(C_Item)
{
	name						= "Pergamenthäfte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "ItWr_Scroll_02.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";

	value						= 3;

	description					= name;
	text[0]						= "ein Teil eines uralten Pergaments";			count[0] = 0;
	text[1]						= "das obere Ende scheint abgerissen";			count[1] = 0;
	text[2]						= "worden zu sein. Diese Schrift ähnelt";		count[2] = 0;
	text[3]						= "den Runen an den Wänden dieser Höhlen sehr";	count[3] = 0;
};

// ---------------------------------------------------------------------
//	Schlüssel zu Kaloms Truhe
// ---------------------------------------------------------------------
instance ITKE_PSI_KALOM_01(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_04.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= "Laborschlüssel";
	text[0]						= "öffnet die Truhe im Alchemielabor";			count[0] = 0;
	text[1]						= "des Sumpflagers";							count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Fokuskarte
// ---------------------------------------------------------------------
instance ItWrFocimap(C_Item)
{
	name						= "Fokuskarte von Saturas";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseFocimap;

	value						= 15;

	description					= name;
	text[0]						= "Die Spitzen des Pentagramms markieren die ";	count[0] = 0;
	text[1]						= "Orte aller fünf Fokussteine, die damals bei";count[1] = 0;
	text[2]						= "der Erschaffung der magischen Barriere";		count[2] = 0;
	text[3]						= "verwendet wurden. Die Karte ist alt und die";count[3] = 0;
	text[4]						= "Steine könnten mittlerweile";				count[4] = 0;
	text[5]						= "an anderen Orten liegen";					count[5] = 0;
};

func void UseFocimap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetLevel(nDocID, "WORLD.ZEN");
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_World_Foki.tga", 1); // 1 -> DO NOT SCALE

	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Tagebuch in Trollschlucht
// ---------------------------------------------------------------------
instance ItWr_Troll_01(C_Item)
{
	name						= "Tagebuch-Seite";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseTroll;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Eine stark verwitterte Seite, deren Schrift man";count[1] = 0;
	text[2]						= "kaum noch entziffern kann.";					count[2] = 0;
	text[3]						= "Der ehemalige Besitzer scheint ein Trolljäger";count[3] = 0;
	text[4]						= "gewesen zu sein.";							count[4] = 0;
};

func void UseTroll()
{
	const string Troll_1	= "169. Tag";
	const string Troll_2	= "Heute werde ich es schaffen. Ich weiß es. Die Götter stehen mir bei. Ich habe alles versucht einen Troll zu töten. Härtester Stahl zeigte keine Wirkung und Pfeile prallten von ihm ab als wäre seine Haut aus Stein.";
	const string Troll_3	= "Nun werde ich mich dieser magischen Spruchrolle bedienen, die mir der Händler in Khorinis verkauft hat. Sie hat mich 50 Goldstücke gekostet, aber der Gewinn, den ich durch die Trophäen bekomme, wird mich reich machen.";
	const string Troll_4	= "Heute werde ich einen Troll töten.";

	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID, 0, Troll_1);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Troll_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Troll_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Troll_4);
	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Fokus 2 - (Trollschlucht)
// ---------------------------------------------------------------------
instance Focus_2(C_Item)
{
	name						= "Fokus aus der Trollschlucht";

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
//	Truhenschlüssel in der Bergfestung
// ---------------------------------------------------------------------
instance ItKe_BERG_01(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Alte Bergfestung";							count[0] = 0;
	text[1]						= "Ein rostiger alter Schlüssel";				count[1] = 0;
	text[2]						= "der zu einer Truhe gehört";					count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Urkunde in der Bergfestung
// ---------------------------------------------------------------------
instance ItWr_Urkunde_01(C_Item)
{
	name						= "Urkunde";

	mainflag					= ITEM_KAT_DOCS;
	flags						= 0;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseUrkunde;

	value						= 15;

	description					= "Besitzurkunde";
	text[0]						= "Berechtigt den Besitzer dazu den";			count[0] = 0;
	text[1]						= "Gebietsanspruch der Bergfestung";			count[1] = 0;
	text[2]						= "geltend zu machen.";							count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "Wert                                   400 Pfund Gold";count[5] = 0;
};

func void UseUrkunde()
{
	const string Urkunde_1	= "Urkunde";
	const string Urkunde_2	= "Ich, Bergmar Burggraf zu Westfeld und meines Herren zu Tymoris Landrichter über das Gut in dem Gebiet um Khorinis gelegen, ... tue kund, ... das ich ... dem Besitzer dieser Urkunde ... und dem Innoshaus daselbst das Lehen auf der Bergfeste (mitsamt weiteren Zehenten und allen dort befindlichen Minen) aufgegeben und verkauft habe um 400 Pfund Gold.";

	var int nDocID;

	nDocID = Doc_Create();
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont(nDocID, -1, "font_15_book.tga");
				Doc_PrintLine	(nDocID, 0, Urkunde_1);
				Doc_SetFont(nDocID, -1, "font_10_book.tga");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, Urkunde_2);
	Doc_Show(nDocID);
};

// ---------------------------------------------------------------------
//	Fakescroll (Bergfestung)
// ---------------------------------------------------------------------
instance Fakescroll(C_Item)
{
	name						= "Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "ItWr_Scroll_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ---------------------------------------------------------------------
//	Fokus 3 - (Bergfestung)
// ---------------------------------------------------------------------
instance Focus_3(C_Item)
{
	name						= "Fokus aus der Bergfestung";

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
//	Schlüssel zum Bonusraum in der Klosterruine
// ---------------------------------------------------------------------
instance ItKe_Focus4(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Dieser Schlüssel stammt aus einer";			count[1] = 0;
	text[2]						= "Höhle vor der Klosterruine";					count[2] = 0;
};

// ---------------------------------------------------------------------
//	Fokus 4 - (Klosterruine)
// ---------------------------------------------------------------------
instance Focus_4(C_Item)
{
	name						= "Fokus aus der Klosterruine";

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
//	OrkTalisman unter Steinkreis
// ---------------------------------------------------------------------
instance ItMi_OrcTalisman(C_Item)
{
	name						= "orkischer Talisman";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	visual						= "ItMi_Amulet_UluMulu_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_OrcTalisman;
	on_unequip					= UnEquip_OrcTalisman;

	value						= 1000;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Fire;								count[2] = 20;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_OrcTalisman()
{
	self.protection [PROT_FIRE] += 20;
};

func void UnEquip_OrcTalisman()
{
	self.protection [PROT_FIRE] -= 20;
};

// ---------------------------------------------------------------------
//	Schlüssel unter dem Steinkreis
// ---------------------------------------------------------------------
instance ItKe_Focus5(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "Dieser Schlüssel stammt aus der";			count[1] = 0;
	text[2]						= "Gruft unter dem Steinkreis";					count[2] = 0;
};

// ---------------------------------------------------------------------
//	Fokus 5 - (Steinkreis)
// ---------------------------------------------------------------------
instance Focus_5(C_Item)
{
	name						= "Fokus unter dem Stonehenge";

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
