// #####################################################################
// ##
// ##
// ## KAPITEL 1
// ##
// ##
// #####################################################################

instance MordragsRing(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_MordragsRing;
	on_unequip					= UnEquip_MordragsRing;

	value						= 250;

	description					= "Mordrags Ring";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_MordragsRing()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 5);
};

func void UnEquip_MordragsRing()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -5);
};

// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

instance SpecialJoint(C_Item)
{
	name						= "präparierter Traumruf";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "JOINT";
	on_state[0]					= UseSpecialJoint;

	value						= Value_Joint3 * 10;

	description					= "";
	text[0]						= "Dieses Sumpfkraut hat eine weitaus";			count[0] = 0;
	text[1]						= "stärkere Wirkung als normal.";				count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Es ist für den Guru Baal-Tyon bestimmt!";	count[3] = 0;
	text[4]						= "";											count[4] = Value_Joint3 * 10;
	text[5]						= NAME_Value;									count[5] = 0;
};

func void UseSpecialJoint()
{
	AI_StartState(self, ZS_MagicSleep, 1, "");
};

instance ItAt_DamLurker_01(C_Item)
{
	name						= "Klaue des Dammlurker";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItAt_Lurker_01.3DS";
	material					= MAT_LEATHER;

	value						= Value_Lurkerklaue;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Lurkerklaue * 2;
};

// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

instance ItWrOMMap(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseOMmap;

	value						= 30;

	description					= "Karte zur Alten Mine";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseOMmap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetLevel(nDocID, "WORLD.ZEN");
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_OldMine.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

/************************************************
** Missionsitems für Introparcours in der VM **
************************************************/

instance AltesSchwertVM(C_Item)
{
	name						= "Altes Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "ItMw_1H_Sword_Old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 12;
	damageType					= DAM_EDGE;

	value						= 12;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance AltesSchwert(C_Item)
{
	name						= "Altes Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD | ITEM_MISSION;

	visual						= "ItMw_1H_Sword_Old_01.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 10;

	damageTotal					= 12;
	damageType					= DAM_EDGE;

	value						= 12;

	// description				= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/************************************************
** Sit_1_OC_Dexter_SellSword **
************************************************/

instance JackalsSword(C_Item)
{
	name						= "Jackals Schwert";

	mainflag					= ITEM_KAT_NF;
	flags						= ITEM_SWD;

	owner						= GRD_201_Jackal;
	visual						= "ItMw_1H_Sword_Short_05.3DS";
	material					= MAT_METAL;

	cond_atr[2]					= ATR_STRENGTH;
	cond_value[2]				= 20;

	damageTotal					= 3;
	damageType					= DAM_EDGE;

	value						= 27;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Damage;									count[2] = damageTotal;
	text[3]						= NAME_Str_needed;								count[3] = cond_value[2];
	text[4]						= NAME_OneHanded;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/****************************************************
** KdW - Botenamulett **
****************************************************/

instance KdW_Amulett(C_Item)
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	visual						= "ItMi_Amulet_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	// on_equip					= Equip_Schutzamulett_Nek;
	// on_unequip				= UnEquip_Schutzamulett_Nek;

	value						= 100;

	description					= "Botenamulett der Wassermagier";
	// text[2]					= NAME_Prot_Edge;
	// count[2]					= 5;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

//************* Cronos Brief *****************

instance Cronos_Brief(C_Item)
{
	name						= "Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseCronosBrief;

	value						= 0;

	description					= "Cronos Brief an die Feuermagier";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

const string CronosBrief_1	= "Hochgeschätzter Meister Corristo,";
const string CronosBrief_2	= "Saturas, ehrwürdiger Meister der Magier vom Keis des Wassers, möchte Euch ersuchen, gemeinsam mit uns dafür Sorge zu tragen, daß die Spannungen zwischen dem alten und dem neuen Lager in einem Rahmen gehalten werden, der für beide Seiten zuträglich ist. Da Ihr dafür Sorge tragt, daß der König seine monatliche Erzlieferung erhält, ist es in Eurem Interesse, daß die Aktivitäten der Banditen aus dem Neuen Lager eingeschränkt werden. Desweiteren ist es in unserem Interesse, daß seitens des Alten Lagers keine Schritte unternommen werden, die unser Vorhaben, die magische Barriere wieder zu öffnen in Gefahr bringen könnten.";
const string CronosBrief_3	= "In Erwartung Eurer baldigen Antwort";
const string CronosBrief_4	= "            Cronos, Hüter des Erzes";

func void UseCronosBrief()
{
	
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, " ");
				Doc_PrintLine	(nDocID, 0, CronosBrief_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLines	(nDocID, 0, CronosBrief_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, CronosBrief_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, CronosBrief_4);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

/****************************************************
** SLY: LOST NEK(Neks Amulett) **
****************************************************/

instance Neks_Amulett(C_Item)
{
	name						= NAME_Amulett;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_AMULET | ITEM_MISSION;

	visual						= "ItMi_Amulet_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzamulett_Nek;
	on_unequip					= UnEquip_Schutzamulett_Nek;

	value						= 50;

	description					= "Amulett des toten Gardisten"; // Nek's Amulett
	text[0]						= "";											count[0] = 0;
	text[1]						= "der Name NEK ist auf der Rückseite eingraviert";count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzamulett_Nek()
{
	self.protection [PROT_EDGE] += 5;
	self.protection [PROT_BLUNT] += 5;
};

func void UnEquip_Schutzamulett_Nek()
{
	self.protection [PROT_EDGE] -= 5;
	self.protection [PROT_BLUNT] -= 5;
};

/*************************************************
** Missionsitems für Mis_1_Psi_RecruitBuddler **
*************************************************/
instance RecruitJoint(C_Item)
{
	name						= "Sumpfkraut für Buddler";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	hp							= 10;
	hp_max						= 10;
	weight						= 1;

	visual						= "ItMiJoint.3ds";
	material					= MAT_WOOD;

	scemeName					= "JOINT";

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/**************************************************
** Missionsitems für Mis_3_Psi_BringMedicine **
**************************************************/

instance HealthWater(C_Item)
{
	name						= "Heiltrank für YBerion";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	// hp						= 1;
	// hp_max					= 1;
	// weight					= 1;

	visual						= "ItFo_Potion_Health_01.3ds";
	material					= MAT_GLAS;

	// change_atr[0]			= ATR_HITPOINTS;
	// change_value[0]			= 5;

	// scemeName				= "POTION";
	// on_state[0]				= UseAlcohol;

	value						= 10;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/************************************************
** Missionsitems für Mis_1_OC_BringList **
************************************************/
instance TheList(C_Item)
{
	name						= "Bedarfsliste";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "ItWr_Scroll_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseTheList;

	description					= name;
	text[0]						= "Ian, der Boss der Alten Mine hat auf dieser";count[0] = 0;
	text[1]						= "Liste seinen Bedarf an Vorräten aufgeführt.";count[1] = 0;
};

const string TheList_1	= "Bedarfsliste";
const string TheList_2	= "20 Laib  Brot - diesmal  aber nicht  das Verschimmelte!";
const string TheList_3	= "25-30  Äpfel";
const string TheList_4	= "10  Käse";
const string TheList_5	= "1 Suppenkelle";
const string TheList_6	= "1 Bürste";
const string TheList_7	= "5   Spitzhacken   + 3  Hämmer";
const string TheList_8	= "Und  reichlich  Sumpfkraut - weißt  ja erste  Lieferung im   Monat! ";
const string TheList_9	= "Die Lieferung   sollte  übermorgen da sein.";
const string TheList_10	= "IAN";

func void UseTheList()
{

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels

				Doc_PrintLine	(nDocID, 0, TheList_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, TheList_2);
				Doc_PrintLine	(nDocID, 0, TheList_3);
				Doc_PrintLine	(nDocID, 0, TheList_4);
				Doc_PrintLine	(nDocID, 0, TheList_5);
				Doc_PrintLine	(nDocID, 0, TheList_6);
				Doc_PrintLine	(nDocID, 0, TheList_7);
				Doc_PrintLines	(nDocID, 0, TheList_8);
				Doc_PrintLine	(nDocID, 0, TheList_9);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, TheList_10);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

instance TheListNC(C_Item)
{
	name						= "Bedarfsliste (erweitert)";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "ItWr_Scroll_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseTheListNC;

	description					= name;
	text[0]						= "Ian, der Boss der Alten Mine hat auf dieser";count[0] = 0;
	text[1]						= "Liste seinen Bedarf an Vorräten aufgeführt.";count[1] = 0;
	text[2]						= "(Lares hat einige Punkte hinzugefügt. Eine";	count[2] = 0;
	text[3]						= "wirklich meisterhafte Fälschung!)";			count[3] = 0;
};

const string TheListNC_11	= "Was mir gerade noch einfällt:";
const string TheListNC_12	= "30 Flaschen Bier";
const string TheListNC_13	= "5 Flaschen Wein";
const string TheListNC_14	= "25 gebratene Scavangerkeulen";
const string TheListNC_15	= "ein halbes Duzend Ersatzwaffen";

func void UseTheListNC()
{

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels

				Doc_PrintLine	(nDocID, 0, TheList_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, TheList_2);
				Doc_PrintLine	(nDocID, 0, TheList_3);
				Doc_PrintLine	(nDocID, 0, TheList_4);
				Doc_PrintLine	(nDocID, 0, TheList_5);
				Doc_PrintLine	(nDocID, 0, TheList_6);
				Doc_PrintLine	(nDocID, 0, TheList_7);
				Doc_PrintLines	(nDocID, 0, TheList_8);
				Doc_PrintLine	(nDocID, 0, TheList_9);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, TheList_10);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, TheListNC_11);
				Doc_PrintLine	(nDocID, 0, TheListNC_12);
				Doc_PrintLine	(nDocID, 0, TheListNC_13);
				Doc_PrintLine	(nDocID, 0, TheListNC_14);
				Doc_PrintLine	(nDocID, 0, TheListNC_15);
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

/*********************************************
** Missionsitems für Lares Find Ring **
*********************************************/

instance Lares_Ring(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING || ITEM_MISSION;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Lares_Ring;
	on_unequip					= UnEquip_Lares_Ring;

	value						= 50;

	description					= "Ring von Lares";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = 3;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Lares_Ring()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, 3);
};

func void UnEquip_Lares_Ring()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, -3);
};

/*********************************************
** Missionsitems für Lares Get Potion **
*********************************************/
instance Heiltrank(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI || ITEM_MISSION;

	visual						= "ItFo_Potion_Health_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseHeiltrank;

	value						= 100;

	description					= "Trank der schnellen Heilung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = 30;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseHeiltrank()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseHealthPotion");
	Npc_ChangeAttribute(self, ATR_HITPOINTS, 30);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich trinke meinen Heiltrank");
};

/*********************************************
** Missionsitems für Mordrag **
*********************************************/

instance SpecialWater(C_Item)
{
	name						= "Zauberwasser";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MISSION;

	visual						= "ItFoFlaskHealth.3ds";
	material					= MAT_GLAS;

	// change_atr[0]			= ATR_HITPOINTS;
	// change_value[0]			= 5;

	scemeName					= "POTION";
	// on_state[0]				= UseSpecialWater;

	value						= 10;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************
** Missionsitems für Dexter / Kalom **
*********************************************/
instance KalomsRecipe(C_Item)
{
	name						= "Kalom's Rezept";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_KalomsRecipe;

	value						= 100;

	description					= name;
	text[0]						= "Das Rezept für einen Heiltrank";				count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ----------------------------------
const string KalomsRecipe_1	= "Lifrun ak Gharak";
const string KalomsRecipe_2	= "Gharak Or Nach bin thu. Lifrun mar Orag chtah. Shrunk esp Horinth.";
const string KalomsRecipe_3	= "Wenn man es rückwärts liest, scheint es einen Sinn zu geben";
const string KalomsRecipe_4	= "          - Kalom";

func void Use_KalomsRecipe()
{
	
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Brown_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Brown_R.tga", 0);

	// 1.Seite

				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, KalomsRecipe_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, KalomsRecipe_2);

	// 2.Seite

				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, KalomsRecipe_3);
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, KalomsRecipe_4);

	Doc_Show(nDocID);
};

/*********************************************
** Missionsitems für Mis_1_PSI_DrugMonopol **
*********************************************/
/*
instance SalmAmulett(C_Item)
{
	name						= "Salms Amulett";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	hp							= 1;
	hp_max						= 1;
	weight						= 1;

	visual						= "ItKeKey1.3ds"; // Dummie Objekt
	material					= MAT_METAL;

	// scemeName				= "HORN";

	value						= 1;

	description					= "";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

*/

/*********************************************
** Karte der Kolonie(ohne Orc - Gebiet) **
*********************************************/

instance ItWrWorldmap(C_Item)
{
	name						= "Karte der Kolonie";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseWorldmap;

	value						= 50;

	description					= name;
	text[0]						= "Leider fehlt darauf ein großes Gebiet";		count[0] = 0;
	text[1]						= "im Südwesten.";								count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseWorldmap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
	Doc_SetLevel(nDocID, "WORLD.ZEN");
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_World.tga", 1); // 1 -> DO NOT SCALE

/* Doc_SetFont( nDocID, 0, "font_15_book.TGA" ); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 120, 80, 10, 10, 1); // 0 -> Textrahmen (von den Ränder des TGAs aus, links-oben,rechts-unten)
				Doc_PrintLine	(nDocID, 0, "Karte der");
				Doc_PrintLine	(nDocID, 0, "Kolonie");

// FIXME: mehrere Texte an verschiedenen Stellen für Location-Beschriftung funzen nicht.
				Doc_SetFont(nDocID, 0, "font_10_book.TGA");
				Doc_SetMargins(nDocID, 0, 110, 300, 10, 10, 1);
				Doc_PrintLine	(nDocID, 0, "Neues Lager");

				Doc_SetMargins(nDocID, 0, 350, 200, 10, 10, 1);
				Doc_PrintLine	(nDocID, 0, "Altes Lager");

				Doc_SetMargins(nDocID, 0, 200, 420, 10, 10, 1);
				Doc_PrintLine	(nDocID, 0, "Dämonenbeschwörer");

				Doc_SetMargins(nDocID, 0, 510, 340, 10, 10, 1);
				Doc_PrintLine	(nDocID, 0, "Sekten-Lager");
*/

	Doc_Show(nDocID);
};

/*********************************************
** Karte Altes Lager **
*********************************************/

instance ItWrOCmap(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseOCmap;

	value						= 40;

	description					= "Übersicht Altes Lager";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseOCmap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
//					Doc_SetLevel( nDocID, "WORLD.ZEN" ); Kein Positionsanzeiger möglich!
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_OldCamp.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

/*********************************************
** Karte Neues Lager **
*********************************************/

instance ItWrNCmap(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseNCmap;

	value						= 40;

	description					= "Übersicht Neues Lager";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseNCmap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
//					Doc_SetLevel( nDocID, "WORLD.ZEN" ); Kein Positionsanzeiger möglich!
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_NewCamp.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

/*********************************************
** Karte PSI - Lager **
*********************************************/

instance ItWrPSImap(C_Item)
{
	name						= "Karte";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePSImap;

	value						= 40;

	description					= "Übersicht Sumpflager";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UsePSImap()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
//					Doc_SetLevel( nDocID, "WORLD.ZEN" ); Kein Positionsanzeiger möglich!
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_PSICamp.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

/*********************************************
** PinUp Zeichnung **
*********************************************/

instance ItWrPinup(C_Item)
{
	name						= "Skizze";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UsePinUp;

	value						= 60;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UsePinUp()
{
	var int nDocID;

	nDocID = Doc_CreateMap(); // DocManager
//					Doc_SetLevel( nDocID, "WORLD.ZEN" ); Kein Positionsanzeiger möglich!
	Doc_SetPages(nDocID, 1);
	Doc_SetPage(nDocID, 0, "Map_PinUp.tga", 1); // 1 -> DO NOT SCALE
	Doc_Show(nDocID);
};

/********************************************************************************/
instance ItWrDieVerurteilten(C_Item)
{
	name						= "Die Verurteilten";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItWrBook.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";

	value						= 100;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************************************/
//				BRIEF AN FEUERMAGIER
/*********************************************************************************/
instance ItWr_Fire_Letter_01(C_Item)
{
	name						= "Versiegelter Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_02.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= UseFireletter;

	value						= 0;

	description					= "Brief an Feuermagier";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Das Siegel darf nicht geöffnet werden!";		count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string fireletter_1	= "Hochgeschätzter Meister";
const string fireletter_2	= "eure letzte Nachricht erhielten wir mit großer Sorge.Wir haben uns beraten und lassen Euch durch diesen Brief unsere Entscheidung wissen.Die  Bruderschaft bedeutet eine Gefahr. Eine Gefahr für die weiteren Abläufe unseres Handelsabkommen und damit für den König, das gesamte Königreich und auch für Euer Leben. Deshalb solltet Ihr zunächst Kundschafter aussenden und herausfinden, auf welchen Göttern und auf welchem Wissen ihre magische Macht beruht. Wenn Ihr das herausgefunden habt, werden wir die Priester mit Euren Erkenntnissen vertraut machen, auf das wir gemeinsam diesem Spuk ein Ende bereiten werden. Schon in diesem Augenblick studieren die Gelehrten die alten Bücher. Über alle neuen Erkenntnisse berichten wir Euch umgehend auf gewohntem Weg.";
const string fireletter_3	= "Möge Innos uns schützen";

func void Usefireletter()
{
	CreateInvItem(hero, ItWr_Fire_Letter_02);



	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, " ");
				Doc_PrintLine	(nDocID, 0, fireletter_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLines	(nDocID, 0, fireletter_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, fireletter_3);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				// Doc_PrintLine	(nDocID, 0, "Rigaldo Marschall des Königs");
	Doc_Show(nDocID);
};

/********************************************************************************/
instance ItWr_Fire_Letter_02(C_Item)
{
	name						= "Geöffneter Brief";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseFireletter2;

	value						= 0;

	description					= "Brief an Feuermagier";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string fireletter2_1	= "Hochgeschätzter Meister Xardas,";
const string fireletter2_2	= "Eure letzte Nachricht erhielten wir mit großer Sorge. Wir haben uns beraten und lassen Euch durch diesen Brief unsere Entscheidung wissen. Die Bruderschaft bedeutet eine Gefahr. Eine Gefahr für die weiteren Abläufe unseres Handelsabkommen und damit für den König, das gesamte Königreich und auch für Euer Leben. Deshalb solltet Ihr zunächst Kundschafter aussenden und herausfinden, auf welchen Göttern und auf welchem Wissen ihre magische Macht beruht. Es ist unsere Pflicht, diese Sekte zu zerschlagen und ihr Wissen an uns zu bringen, auf das niemand damit Unheil zu stiften vermag. Sobald uns Eure Antwirt erreicht, werden wir Innos Priester mit Euren Erkenntnissen vertraut machen. Schon in diesem Augenblick studieren die Gelehrten die alten Bücher. Über alle neuen Erkenntnisse berichten wir Euch umgehend auf gewohntem Weg.";
const string fireletter2_3	= "Möge Innos uns schützen";

func void Usefireletter2()
{

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, -1, "font_10_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, " ");
				Doc_PrintLine	(nDocID, 0, fireletter2_1);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLines	(nDocID, 0, fireletter2_2);
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, fireletter2_3);
				Doc_PrintLine	(nDocID, 0, "");
				// Doc_PrintLine	(nDocID, 0, "            Rigaldo, Marschall des Königs");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetMargins(nDocID, -1, 200, 50, 50, 50, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus

	Doc_Show(nDocID);
};

/********************************************************************************/
// SCHLÜSSEL
/*********************************************************************************/
// GOMEZ SCHLÜSSEL
instance ItKe_Gomez_01(C_Item)
{
	name						= "Gomez' Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_04.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Öffnet Gomez Truhen";						count[0] = 0;
	text[1]						= "Öffnet Lagerraumtüren im Keller der Erzbarone";count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************/
// RICELORDS SCHLÜSSEL
instance ItKey_RB_01(C_Item)
{
	name						= "Reislord's Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Öffnet Reislord's Truhe";					count[0] = 0;
};

/*********************************************************************************/
// SCHMIEDESCHLÜSSEL ERZBARONE
instance ItKe_OB_Smith_01(C_Item)
{
	name						= "Eisenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Öffnet die Tür des Schmiedelagers";			count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*********************************************************************************/
//
instance ItKe_Storage_01(C_Item)
{
	name						= "Lagerschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Öffnet Haupttür der Lagerräume ";			count[0] = 0;
	text[1]						= "im Keller der Erzbarone";					count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/********************************************************/
//			SCHLÜSSEL IN DER ALTEN MINE
/********************************************************/

/********************************************************/
instance ItKe_OM_01(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Santinos Lager ";							count[0] = 0;
	text[1]						= "Oberer Warentauschplatz";					count[1] = 0;
	text[2]						= "Alte Mine";									count[2] = 0;
};

/********************************************************/
instance ItKe_OM_02(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "öffnet Aarons Truhe";						count[0] = 0;
	text[1]						= "in der Alten Mine.";							count[1] = 0;
};

/********************************************************/
instance ItKe_OM_03(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "öffnet die Truhen";							count[0] = 0;
	text[1]						= "im Lagerschuppen der Alten Mine.";			count[1] = 0;
};

/********************************************************/
instance ItKe_OM_04(C_Item)
{
	name						= "Truhenschlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_04.3ds";
	material					= MAT_METAL;

	value						= 0;

	description					= name;
	text[0]						= "Albertos Lager";								count[0] = 0;
	text[1]						= "Unterer Warentauschplatz";					count[1] = 0;
};

/********************************GESCHENK VON IAN *********************************************/
instance ItFo_OM_Beer_01(C_Item)
{
	name						= "Starkbier";

	mainflag					= ITEM_KAT_FOOD;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Beer_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTION";
	on_state[0]					= UseStarkBeer;

	value						= 30;

	description					= name;
	// text[2]					= "Bonus";

	text[0]						= NAME_Bonus_HP;								count[0] = 6;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseStarkBeer()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, 6);
};

//***********************************************************************************************************
//** Das Rätsel des Nebelturms Björn **
//***********************************************************************************************************

//*******Effekt nur beim ersten benutzen des Buches

var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;

instance theriddle1(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle1;

	value						= 50;

	description					= "Chromanin";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle1_1	= "Chromanin";
const string theriddle1_2	= "Der, der gewillt ist allen irdischen Lastern zu entsagen und auf den Pfaden der Rechtschaffenen wandelt, soll wissen wo der Quell meiner Macht verborgen liegt. Auf daß er es nutzen möge die Ketten dieser Welt zu sprengen und sich als würdig zu erweisen, Chromanin zu empfangen.";
const string theriddle1_3	= "Der Weise verschafft sich großen Überblick, bevor er sich der nächsten Aufgabe widmet.";

func void Usetheriddle1()
{

	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite
				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle1_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, theriddle1_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, theriddle1_3);
	Doc_Show(nDocID);

	if (riddle1 == FALSE)
	{
		Log_CreateTopic(theriddle_log, LOG_MISSION);
		Log_SetTopicStatus(theriddle_log, LOG_RUNNING);
		B_LogEntry(theriddle_log, theriddle_log_1);
		Wld_InsertItem(theriddle2, "CASTLE_TOWER_TOP");

		riddle1 = TRUE;
	};
};

instance theriddle2(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle2;

	value						= 50;

	description					= "Chromanin 2";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle2_1	= "Chromanin";
const string theriddle2_2	= "Getragen von den Gezeiten, haben Chromanins Visionen der Zukunft mir die Augen geöffnet. Kein Preis ist hoch genug, den Glauben daran wieder aufzugeben. Viel zu stark hat es mich bewegt.";
const string theriddle2_3	= "Was geteilt, wird wieder vereint, wenn auch nur kurz massiv voneinander getrennt.";

func void Usetheriddle2()
{

	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle2_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, theriddle2_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, theriddle2_3);
	Doc_Show(nDocID);

	if (riddle2 == FALSE)
	{
		B_GiveXP(300);
		B_LogEntry(theriddle_log, theriddle_log_2);
		Snd_Play("FoundRiddlersBook");
		Wld_InsertItem(theriddle3, "FP_SLEEP_OW_BLOODFLY_01_02");

		riddle2 = TRUE;
	};
};

instance theriddle3(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle3;

	value						= 50;

	description					= "Chromanin 3";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle3_1	= "Chromanin";
const string theriddle3_2	= "Oh, ihr Götter der alten Zeiten. Kann es sein, das ein Mensch, wie ich, der nur einfach gestrickt und unwürdig, solch´ großes Vermächtnis erlangen darf. Die Angst ist groß, alles zu verlieren durch ein kleines Wort des Schwankens.";
const string theriddle3_3	= "Der kluge Fischer, versucht sein Glück auch mal auf der anderen Seite des Sees.";

func void Usetheriddle3()
{

	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle3_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, theriddle3_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, theriddle3_3);
	Doc_Show(nDocID);

	if (riddle3 == FALSE)
	{
		B_GiveXP(500);
		B_LogEntry(theriddle_log, theriddle_log_3);
		Snd_Play("FoundRiddlersBook");
		Wld_InsertItem(theriddle4, "FP_SLEEP_OW_LURKER_NC_LAKE_02");

		riddle3 = TRUE;
	};
};

instance theriddle4(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle4;

	value						= 50;

	description					= "Chromanin 4";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle4_1	= "Chromanin";
const string theriddle4_2	= "Ich wage nicht zu hoffen eines Tages Chromanin selbst zu erleben. Vorbei sind die Tage der Verschwendung und des Klangens. So leicht wird es sein, die völlige Vollendung zu erreichen. Ich bin nicht mehr weit davon entfernt.";
const string theriddle4_3	= "Vergessen sind die Taten jener, die sich einst an Bord befanden.";

func void Usetheriddle4()
{

	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle4_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, theriddle4_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, theriddle4_3);
	Doc_Show(nDocID);

	if (riddle4 == FALSE)
	{
		B_GiveXP(700);
		B_LogEntry(theriddle_log, theriddle_log_4);
		Snd_Play("FoundRiddlersBook");
		Wld_InsertItem(theriddle5, "LOCATION_25_01");

		riddle4 = TRUE;
	};
};

instance theriddle5(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle5;

	value						= 50;

	description					= "Chromanin 5";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle5_1	= "Chromanin";
const string theriddle5_2	= "Doch soll ich nicht alleine diesen Weg beschreiten. Diese Ehre sei mir vergönnt. Ich muß mich fügen und die Kraft, die in mir wohnt, muß ich teilen mit den Würdigen, die da kommen werden, mich zu finden. Hoffentlich kommen sie bald...";
const string theriddle5_3	= "Dort, wo alles begann, sollst du mich finden.";

func void Usetheriddle5()
{

	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle5_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, theriddle5_2);

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLines	(nDocID, 1, theriddle5_3);
	Doc_Show(nDocID);

	if (riddle5 == FALSE)
	{
		B_GiveXP(850);
		B_LogEntry(theriddle_log, theriddle_log_5);
		Snd_Play("FoundRiddlersBook");
		Wld_InsertNpc(Bau_940_Riddler, "");
		var C_Npc riddler; riddler = Hlp_GetNpc(Bau_940_Riddler);
		Npc_ChangeAttribute(riddler, ATR_HITPOINTS, -riddler.attribute[ATR_HITPOINTS_MAX]);

		riddle5 = TRUE;
	};
};

instance theriddle6(C_Item)
{
	name						= "Altes Buch";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Book_02_03.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Usetheriddle6;

	value						= 50;

	description					= "Chromanin 6";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

const string theriddle6_1	= "Chromanin";

func void Usetheriddle6()
{
	var int nDocID;
	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 2); // wieviel Pages

	Doc_SetPage(nDocID, 0, "Book_Mage_L.tga", 0);
	Doc_SetPage(nDocID, 1, "Book_Mage_R.tga", 0);

	// 1.Seite

				Doc_SetFont(nDocID, -1, "font_15_book.tga"); // -1 -> all pages
				Doc_SetMargins(nDocID, 0, 275, 20, 30, 20, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, theriddle6_1);
				Doc_PrintLine	(nDocID, 0, "-----------");
				Doc_SetFont(nDocID, -1, "font_10_book.TGA"); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");

	// 2.Seite
				Doc_SetMargins(nDocID, -1, 30, 20, 275, 20, 1); // 0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
				Doc_PrintLine	(nDocID, 1, "");
	Doc_Show(nDocID);

	if (riddle6 == FALSE)
	{
		B_GiveXP(1000);
		B_LogEntry(theriddle_log, theriddle_log_6);
		Log_SetTopicStatus(theriddle_log, LOG_SUCCESS);
		Snd_Play("FoundRiddler");
		Wld_InsertNpc(SkeletonMage, "OW_FOGDUNGEON_36_MOVEMENT");
		Wld_InsertNpc(Skeleton, "OW_FOGDUNGEON_36_MOVEMENT");
		Wld_InsertNpc(SkeletonWarrior, "OW_FOGDUNGEON_36_MOVEMENT");
		Wld_InsertNpc(Skeleton, "OW_FOGDUNGEON_36_MOVEMENT2");
		Wld_InsertNpc(SkeletonScout, "OW_FOGDUNGEON_36_MOVEMENT2");
		Wld_InsertNpc(SkeletonWarrior, "OW_FOGDUNGEON_37");
		Wld_InsertNpc(SkeletonMage, "OW_FOGDUNGEON_37");

		riddle6 = TRUE;
	};
};
