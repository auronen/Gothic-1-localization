// ************************************************************************************************
// Wert von Kram
// ************************************************************************************************

// Items für Objektbenutzung und Item-Interaktion...
// z.B. Krautstampfer, Hammer, Kochöffel, Laborflasche, Roheisen (Schmiede)
const int Value_MobsiItem = 3;

// mit 80% kann bei einem kompletten Durchgang ca. 10 Erz verdient werden
const int Value_SwordBlade = (Value_1H_Sword_01 * 8) / 10; // 80% des Fertigen Schwerts
const int Value_SwordBladeHot = (Value_SwordBlade * 8) / 10; // 80% der geschliffenen Klinge
const int Value_SwordRawHot = (Value_SwordBladeHot * 8) / 10; // 80% der geschmiedeten Klinge
const int Value_SwordRaw = (Value_SwordRawHot * 8) / 10; // 80% des erhitzen Rohstahls

const int Value_Dietrich = 10;
const int Value_Schluessel = 3;

const int Value_Joint1 = 8;
const int Value_Joint2 = 15;
const int Value_Joint3 = 20;
const int Value_Laute = 10;

const int Value_Erzbrocken = 1; // UNBEDINGT SO LASSEN!!! M.F.
const int Value_Fackel = 2;

const int Value_Sumpfkraut = 8;
const int Value_Pfeife = 10;
const int Value_Rasiermesser = 5; // EX 25 NIEDRIGER WERT WEIL ES VIEL DAVON GIBT!!!
const int Value_Muenze = 0; // BITTE AUF 0 LASSEN, DAFÜR IST SIE DA, FÜR SONST NIX!!!!! M.F.
const int Value_Schuessel = 4;
const int Value_Kerzenstaender = 10;
const int Value_Becher = 4;
const int Value_Pokal = 50;
const int Value_Besteck = 15;
const int Value_Pfanne = 10;
const int Value_Krug = 10; // 35
const int Value_Amphore = 15; // EX 45
const int Value_Statue = 15;

// Alchemie-Ingredienzien
// FIXME: noch benutzen? // NEin, aber liegen überall ind er Welt, von daher als Ambient Items drinlassen!M.F.
const int Value_Schwefel = 20;
const int Value_Quecksilber = 25;
const int Value_Salz = 10;
const int Value_Oil = 15;
const int Value_Moleratfett = 5;
const int Value_Alcohol = 18;

/*******************************************************************************************
** Items für Mobsi - Benutzung **
*******************************************************************************************/

/******************************************************************************************/
//	Dietrich
instance ItKeLockpick(C_Item)
{
	name						= "Dietrich";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItKe_Lockpick_01.3ds";
	material					= MAT_METAL;

	value						= Value_Dietrich;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Dietrich;
};

/******************************************************************************************/
//	Schlüssel

// FIXME: aussagekräftigere Schlüsselnamen?
instance ItKeKey1(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_01.3ds";
	material					= MAT_METAL;

	value						= Value_Schluessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

/******************************************************************************************/
instance ItKeKey2(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_02.3ds";
	material					= MAT_METAL;

	value						= Value_Schluessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

/******************************************************************************************/
instance ItKeKey3(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_03.3ds";
	material					= MAT_METAL;

	value						= Value_Schluessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

/******************************************************************************************/
instance ItKeKey4(C_Item)
{
	name						= "Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_04.3ds";
	material					= MAT_METAL;

	value						= Value_Schluessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

/******************************************************************************************/
instance ItKeCavalorn01(C_Item)
{
	name						= "Cavalorns Schlüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= 0;

	visual						= "ItKe_Key_04.3ds";
	material					= MAT_METAL;

	value						= Value_Schluessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

/******************************************************************************************/
// Krautstampfen
instance ItMiStomper(C_Item)
{
	name						= "Krautstampfer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stomper_01.3DS";
	material					= MAT_METAL;

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_MobsiItem;
};

/******************************************************************************************/
// Reparieren
instance ItMiHammer(C_Item)
{
	name						= "Hammer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Hammer_01.3DS";
	material					= MAT_WOOD;

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_MobsiItem;
};

/******************************************************************************************/
// im Topf rühren
instance ItMiScoop(C_Item)
{
	name						= "Kochlöffel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Scoop_01.3DS";
	material					= MAT_WOOD;

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_MobsiItem;
};

/******************************************************************************************/
// Labor benutzen
// Fixme: wird dabei ein anderes Item generiert?
instance ItMiFlask(C_Item)
{
	name						= "Laborflasche";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_02.3ds";
	material					= MAT_GLAS;

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_MobsiItem;
};

/******************************************************************************************/
//	Items für Schmiede **

instance ItMiSwordraw(C_Item)
{
	name						= "Rohstahl";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_SmithSword_Raw_01.3DS";
	material					= MAT_METAL;

	value						= Value_Swordraw;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMiSwordrawhot(C_Item)
{
	name						= "Glühender Stahl";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_SmithSword_Rawhot_01.3DS";
	material					= MAT_METAL;

	value						= Value_Swordrawhot;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMiSwordbladehot(C_Item)
{
	name						= "Glühende Klinge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_SmithSword_Bladehot_01.3DS";
	material					= MAT_METAL;

	value						= Value_Swordbladehot;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMiSwordblade(C_Item)
{
	name						= "Klinge";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_SmithSword_Blade_01.3DS";
	material					= MAT_METAL;

	value						= Value_Swordblade;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/*******************************************************************************************
** Items für Item - Interaktionen(ohne Mobsi benutzbar) **
*******************************************************************************************/

// für Feuerspucker
instance ItLsTorchFirespit(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_BURN | ITEM_TORCH;

	visual						= "ITLSTORCHBURNING.ZEN";
	material					= MAT_WOOD;

	scemeName					= "FIRESPIT";

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
// zum Rumklimpern
instance ItMiLute(C_Item)
{
	name						= "Laute";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Lute_01.3DS";
	material					= MAT_WOOD;

	scemeName					= "LUTE";
	on_state[0]					= UseLute;

	value						= Value_Laute;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

func void UseLute()
{
	if ((Play_Lute == FALSE)
	&& Npc_IsPlayer(self))
	{
		B_GiveXP(10);
		Play_Lute = TRUE;
	};
};

/******************************************************************************************/
// Für Babe-Luftzufächeln
instance ItMiWedel(C_Item)
{
	name						= "Palmwedel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Wedel_01.3ds";
	material					= MAT_LEATHER;

	scemeName					= "COOLAIR";

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
// Für Babe-Putzen
instance ItMiBrush(C_Item)
{
	name						= "Bürste";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Brush_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "BRUSH";

	value						= Value_MobsiItem;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMiJoint_1(C_Item)
{
	name						= "Grüner Novize";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "JOINT";
	on_state[0]					= UseItMiJoint_1;

	value						= Value_Joint1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

func void UseItMiJoint_1()
{
	if ((Firstjoint == FALSE)
	&& Npc_IsPlayer(self))
	{
		B_GiveXP(5);
		Firstjoint = TRUE;
	};
};

/******************************************************************************************/
instance ItMiJoint_2(C_Item)
{
	name						= "Schwarzer Weiser";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "JOINT";
	on_state[0]					= UseItMiJoint_2;

	value						= Value_Joint2;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

func void UseItMiJoint_2()
{
	if ((Secondjoint == FALSE)
	&& Npc_IsPlayer(self))
	{
		B_GiveXP(10);
		Secondjoint = TRUE;
	};
};

/******************************************************************************************/
instance ItMiJoint_3(C_Item)
{
	name						= "Traumruf";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_01.3ds";
	material					= MAT_WOOD;

	scemeName					= "JOINT";
	on_state[0]					= UseItMiJoint_3;

	value						= Value_Joint3;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

func void UseItMiJoint_3()
{
	if ((Thirdjoint == FALSE)
	&& Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA_MAX, 2);
		PrintScreen(PRINT_ItMiJoint_3_Bonus, -1, -1, "FONT_OLD_20_WHITE.TGA", 3);
		Thirdjoint = TRUE;
	};
};

/******************************************************************************************/
instance ItMiNugget(C_Item)
{
	name						= "Erzbrocken";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Nugget_01.3ds";
	material					= MAT_METAL;

	value						= Value_Erzbrocken;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
//	Fackel **

instance ItLsTorch(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_BURN | ITEM_TORCH | ITEM_MULTI;

	visual						= "ItLs_Torch_01.3ds";
	material					= MAT_WOOD;

	value						= Value_Fackel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItLsTorchburning(C_Item)
{
	name						= "Brennende Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_BURN | ITEM_TORCH;

	visual						= "ITLSTORCHBURNING.ZEN";
	material					= MAT_WOOD;

	value						= 0;

	description					= name;
	//	text[4]					= NAME_Value;									count[4] = Value_Schluessel;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

/******************************************************************************************/
instance ItLsTorchburned(C_Item)
{
	name						= "Fackel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_BURN | ITEM_TORCH | ITEM_MULTI;

	visual						= "ItLs_Torchburned_01.3ds";
	material					= MAT_WOOD;

	value						= 0;

	description					= name;
	//	text[4]					= NAME_Value;									count[4] = Value_Schluessel;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

/******************************************************************************************/
// STUFF//
/******************************************************************************************/

// Sumpfkraut (für Joints)
instance ItMi_Plants_Swampherb_01(C_Item)
{
	name						= "Sumpfkraut";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Plants_Swampherb_01.3ds";
	material					= MAT_WOOD;

	value						= Value_Sumpfkraut;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Pipe_01(C_Item)
{
	name						= "Pfeife";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Pipe_01.3DS";
	material					= MAT_WOOD;

	value						= Value_Pfeife;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Barbknife_01(C_Item)
{
	name						= "Rasiermesser";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Barbknife_01.3DS";
	material					= MAT_METAL;

	value						= Value_Rasiermesser;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_OldCoin_01(C_Item)
{
	name						= "Münze";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_OldCoin_01.3DS";
	material					= MAT_METAL;

	value						= Value_Muenze;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

//	Münze mit Mission Flag um tote liegenzulassen
instance ItMi_Stuff_OldCoin_02(C_Item)
{
	name						= "Münze";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_Stuff_OldCoin_01.3DS";
	material					= MAT_METAL;

	value						= Value_Muenze;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Plate_01(C_Item)
{
	name						= "Schüssel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Plate_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Schuessel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Candel_01(C_Item)
{
	name						= "Kerzenständer";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Candel_01.3DS";
	material					= MAT_METAL;

	value						= Value_Kerzenstaender;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Cup_01(C_Item)
{
	name						= "Becher";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Cup_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Becher;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Cup_02(C_Item)
{
	name						= "Pokal";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Cup_02.3DS";
	material					= MAT_METAL;

	value						= Value_Pokal;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Silverware_01(C_Item)
{
	name						= "Besteck";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Silverware_01.3DS";
	material					= MAT_METAL;

	value						= Value_Besteck;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Pan_01(C_Item)
{
	name						= "Pfanne";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Pan_01.3DS";
	material					= MAT_METAL;

	value						= Value_Pfanne;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Mug_01(C_Item)
{
	name						= "Krug";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Mug_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Krug;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Amphore_01(C_Item)
{
	name						= "Amphore";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Amphore_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Amphore;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Stuff_Idol_Ogront_01(C_Item)
{
	name						= "Statue";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Stuff_Idol_Ogront_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Statue;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
// ALCHIMIE//
/******************************************************************************************/
instance ItMi_Alchemy_Sulphur_01(C_Item)
{
	name						= "Schwefel";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Sulphur_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Schwefel;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Alchemy_Quicksilver_01(C_Item)
{
	name						= "Quecksilber";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Quicksilver_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Quecksilber;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Alchemy_Salt_01(C_Item)
{
	name						= "Salz";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Salt_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Salz;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Alchemy_Syrianoil_01(C_Item)
{
	name						= "Syrianisches Öl";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Syrianoil_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Oil;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Alchemy_Moleratlubric_01(C_Item)
{
	name						= "Moleratfett";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Moleratlubric_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Moleratfett;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/******************************************************************************************/
instance ItMi_Alchemy_Alcohol_01(C_Item)
{
	name						= "Reiner Alkohol";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Alchemy_Alcohol_01.3DS";
	material					= MAT_CLAY;

	value						= Value_Alcohol;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = value;
};

/*******************************************************************************************
** Musikinstrumente InExtremo **
*******************************************************************************************/

// Werden nicht gebraucht, wenn den Jungs die Instrumente in der Hand "kleben"!
/*
instance ItMiLuteIE(C_Item)
{
	name						= "Laute";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Lute_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiBluepipe(C_Item)
{
	name						= "Dudelsack";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Bagpipe_Blue_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiYellowpipe(C_Item)
{
	name						= "Dudelsack";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Bagpipe_Yellow_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiDrumscheit(C_Item)
{
	name						= "Drumscheit";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Drumscheit_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiDrumstick(C_Item)
{
	name						= "Trommelstöcke";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Drumstick_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiCello(C_Item)
{
	name						= "Cello";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Cello_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiCellobow(C_Item)
{
	name						= "Cello Bogen";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Cellobow_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

instance ItMiHarp(C_Item)
{
	name						= "Harfe";

	mainflag					= ITEM_KAT_NONE;

	visual						= "ItMi_Harp_01.3DS";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Value;									count[4] = Value_Schluessel;
};

*/
