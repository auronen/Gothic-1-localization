// ************************************************************************************************
// Wirkung und Kosten von Tränken
// ************************************************************************************************

// Heilung
const int Value_HpEssenz = 25; const int HP_Essenz = 50;
const int Value_HpExtrakt = 35; const int HP_Extrakt = 70;
const int Value_HpElixier = 50; const int HP_Elixier = 100;

// Mana (Magier)
const int Value_ManaEssenz = 25; const int Mana_Essenz = 30;
const int Value_ManaExtrakt = 45; const int Mana_Extrakt = 50;
const int Value_ManaElixier = 65; const int Mana_Elixier = 70;

// Mana (Bruderschaft)
const int Value_Elixier1 = 95; const int Mana_Elixier1 = 100;

// Permanente Attribut-Steigerungen
// FIXME: sind die zu kaufen (müüsen dann teuer sein) oder zu fnden (dann evtl. billiger)
// FIXME: Textanzeige der Attribut-Änderung bei Benutzung möglich?
const int Value_ElixierEgg = 1; const int ManaMax_ElixierEgg = 10; // FIXME: was wenn der SC das selbst benutzt??

const int Value_StrEssenz = 300; const int STR_Essenz = 3;
const int Value_StrExtrakt = 500; const int STR_Extrakt = 5;
const int Value_StrElixier = 800; const int STR_Elixier = 8;

const int Value_DexEssenz = 300; const int DEX_Essenz = 3;
const int Value_DexExtrakt = 500; const int DEX_Extrakt = 5;
const int Value_DexElixier = 800; const int DEX_Elixier = 8;

// Trank der Macht
const int Value_StrDex_Macht = 800; const int StrDex_Macht = 4;
// Trank der Herrschaft
const int Value_StrDex_Herrschaft = 1200; const int StrDex_Herrschaft = 6;

const int Value_HpMaxEssenz = 500; const int HPMax_Essenz = 5;
const int Value_HpMaxExtrakt = 1000; const int HPMax_Extrakt = 10;
const int Value_HpMaxElixier = 1500; const int HPMax_Elixier = 15;

const int Value_ManaMaxEssenz = 500; const int ManaMax_Essenz = 5;
const int Value_ManaMaxExtrakt = 1000; const int ManaMax_Extrakt = 10;
const int Value_ManaMaxElixier = 1500; const int ManaMax_Elixier = 15;

// Speed-Potions
const int Value_Haste1 = 100; const int Time_Haste1 = 60000; // 1 min.
const int Value_Haste2 = 150; const int Time_Haste2 = 120000; // 2 min.
const int Value_Haste3 = 200; const int Time_Haste3 = 300000; // 5 min.

/******************************************************************************************/
//	MANATRÄNKE //
/******************************************************************************************/
instance ItFo_Potion_Mana_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseManaPotion;

	value						= Value_ManaEssenz;

	description					= "Essenz magischer Energie";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaEssenz;
};

func void UseManaPotion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseManaPotion");
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Essenz);
};

/******************************************************************************************/
instance ItFo_Potion_Mana_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseMana2Potion;

	value						= Value_ManaExtrakt;

	description					= "Extrakt magischer Energie";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaExtrakt;
};

func void UseMana2Potion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseMana2Potion");
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Extrakt);
};

/******************************************************************************************/
instance ItFo_Potion_Mana_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseMana3Potion;

	value						= Value_ManaElixier;

	description					= "Elixier magischer Energie";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaElixier;
};

func void UseMana3Potion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseMana3Potion");
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Elixier);
};

/******************************************************************************************/
// MANA ELIXIERE BRUDERSCHAFT//

instance ItFo_Potion_Elixier(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Elixier.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseElixier;

	value						= Value_Elixier1;

	description					= "Elixier";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Mana;								count[1] = Mana_Elixier1;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_Elixier1;
};

func void UseElixier()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseElixier");
	Npc_ChangeAttribute(self, ATR_MANA, Mana_Elixier1);
};

/******************************************************************************************/
//	HEILTRÄNKE //
/******************************************************************************************/
instance ItFo_Potion_Health_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHealthPotion;

	value						= Value_HpEssenz;

	description					= "Essenz heilender Kraft ";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpEssenz;
};

func void UseHealthPotion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseHealthPotion");
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Essenz);
};

/******************************************************************************************/
instance ItFo_Potion_Health_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHealth2Potion;

	value						= Value_HpExtrakt;

	description					= "Extrakt heilender Kraft ";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpExtrakt;
};

func void UseHealth2Potion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseHealthPotion");
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Extrakt);
};

/******************************************************************************************/
instance ItFo_Potion_Health_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHealth3Potion;

	value						= Value_HpElixier;

	description					= "Elixier heilender Kraft ";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HP;								count[1] = HP_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpElixier;
};

func void UseHealth3Potion()
{
	PrintDebugNpc(PD_ITEM_MOBSI, "UseHealthPotion");
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_Elixier);
};

/******************************************************************************************/
// TRÄNKE FÜR PERMANENTE ATTRIBUT-ÄNDERUNGEN!
/******************************************************************************************/

/******************************************************************************************/
instance ItFo_Potion_Elixier_Egg(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Elixier_Egg.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseEggElixier;

	value						= Value_ElixierEgg;

	description					= "Crawler Elixier";
	text[0]						= "ermöglicht Kontakt zum Schläfer";			count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = ManaMax_ElixierEgg;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ElixierEgg;
};

func void UseEggElixier()
{
	B_RaiseAttribute(ATR_MANA_MAX, ManaMax_ElixierEgg);
};

/******************************************************************************************/
// STRENGTH

instance ItFo_Potion_Strength_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Strength_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseStrengthPotion;

	value						= Value_StrEssenz;

	description					= "Essenz der Stärke";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Str;								count[1] = STR_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrEssenz;
};

func void UseStrengthPotion()
{
	B_RaiseAttribute(ATR_STRENGTH, STR_Essenz);
};

/******************************************************************************************/
instance ItFo_Potion_Strength_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Strength_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseStrength2Potion;

	value						= Value_StrExtrakt;

	description					= "Extrakt der Stärke";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Str;								count[1] = STR_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrExtrakt;
};

func void UseStrength2Potion()
{
	B_RaiseAttribute(ATR_STRENGTH, STR_Extrakt);
};

/******************************************************************************************/
instance ItFo_Potion_Strength_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Strength_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseStrength3Potion;

	value						= Value_StrElixier;

	description					= "Elixier der Stärke";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Str;								count[1] = STR_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrElixier;
};

func void UseStrength3Potion()
{
	B_RaiseAttribute(ATR_STRENGTH, STR_Elixier);
};

/******************************************************************************************/
//	DEXTERITY

instance ItFo_Potion_Dex_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Dex_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseDexPotion;

	value						= Value_DexEssenz;

	description					= "Essenz der Geschicklichkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = DEX_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_DexEssenz;
};

func void UseDexPotion()
{
	B_RaiseAttribute(ATR_DEXTERITY, DEX_Essenz);
};

/******************************************************************************************/
instance ItFo_Potion_Dex_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Dex_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseDex2Potion;

	value						= Value_DexExtrakt;

	description					= "Extrakt der Geschicklichkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = DEX_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_DexExtrakt;
};

func void UseDex2Potion()
{
	B_RaiseAttribute(ATR_DEXTERITY, DEX_Extrakt);
};

/******************************************************************************************/
instance ItFo_Potion_Dex_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Dex_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseDex3Potion;

	value						= Value_DexElixier;

	description					= "Elixier der Geschicklichkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = DEX_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_DexElixier;
};

func void UseDex3Potion()
{
	B_RaiseAttribute(ATR_DEXTERITY, DEX_Elixier);
};

/******************************************************************************************/
// STRENGTH & DEX

instance ItFo_Potion_Master_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Master_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseMasterPotion;

	value						= Value_StrDex_Macht;

	description					= "Trank der Macht";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = StrDex_Macht;
	text[2]						= NAME_Bonus_Str;								count[2] = StrDex_Macht;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrDex_Macht;
};

func void UseMasterPotion()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, StrDex_Macht);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, StrDex_Macht);

	var string msg;
	msg = ConcatStrings(NAME_RaiseStrDex, IntToString(StrDex_Macht));
	_ = PrintScreen(msg, -1, -1, "FONT_OLD_20_WHITE.TGA", _TIME_MESSAGE_RAISEATTRIBUTE);
};

/******************************************************************************************/
instance ItFo_Potion_Master_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Master_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseMaster2Potion;

	value						= Value_StrDex_Herrschaft;

	description					= "Trank der Herrschaft";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_Dex;								count[1] = StrDex_Herrschaft;
	text[2]						= NAME_Bonus_Str;								count[2] = StrDex_Herrschaft;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_StrDex_Herrschaft;
};

func void UseMaster2Potion()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, StrDex_Herrschaft);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, StrDex_Herrschaft);

	var string msg;
	msg = ConcatStrings(NAME_RaiseStrDex, IntToString(StrDex_Herrschaft));
	_ = PrintScreen(msg, -1, -1, "FONT_OLD_20_WHITE.TGA", _TIME_MESSAGE_RAISEATTRIBUTE);
};

/******************************************************************************************/
// Hitpoints

instance ItFo_Potion_Health_Perma_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_Perma_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseLifePotion;

	value						= Value_HpMaxEssenz;

	description					= "Essenz des Lebens";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HpMax;								count[1] = HPMax_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpMaxEssenz;
};

func void UseLifePotion()
{
	B_RaiseAttribute(ATR_HITPOINTS_MAX, HPMax_Essenz);
};

/******************************************************************************************/
instance ItFo_Potion_Health_Perma_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_Perma_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseLife2Potion;

	value						= Value_HpMaxExtrakt;

	description					= "Extrakt des Lebens";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HpMax;								count[1] = HPMax_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpMaxExtrakt;
};

func void UseLife2Potion()
{
	B_RaiseAttribute(ATR_HITPOINTS_MAX, HPMax_Extrakt);
};

/******************************************************************************************/
instance ItFo_Potion_Health_Perma_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Health_Perma_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseLife3Potion;

	value						= Value_HpMaxElixier;

	description					= "Elixier des Lebens";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_HpMax;								count[1] = HPMax_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_HpMaxElixier;
};

func void UseLife3Potion()
{
	B_RaiseAttribute(ATR_HITPOINTS_MAX, HPMax_Elixier);
};

/******************************************************************************************/
// MANA

instance ItFo_Potion_Mana_Perma_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_Perma_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseNectarPotion;

	value						= Value_ManaMaxEssenz;

	description					= "Essenz des Geistes";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = ManaMax_Essenz;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaMaxEssenz;
};

func void UseNectarPotion()
{
	B_RaiseAttribute(ATR_MANA_MAX, ManaMax_Essenz);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich trinke Magie");
};

/******************************************************************************************/
instance ItFo_Potion_Mana_Perma_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_Perma_02.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseNectar2Potion;

	value						= Value_ManaMaxExtrakt;

	description					= "Extrakt des Geistes";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = ManaMax_Extrakt;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaMaxExtrakt;
};

func void UseNectar2Potion()
{
	B_RaiseAttribute(ATR_MANA_MAX, ManaMax_Extrakt);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich trinke Magie");
};

/******************************************************************************************/
instance ItFo_Potion_Mana_Perma_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Mana_Perma_03.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseNectar3Potion;

	value						= Value_ManaMaxElixier;

	description					= "Elixier des Geistes";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Bonus_ManaMax;							count[1] = ManaMax_Elixier;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = Value_ManaMaxElixier;
};

func void UseNectar3Potion()
{
	B_RaiseAttribute(ATR_MANA_MAX, ManaMax_Elixier);
	PrintDebugNpc(PD_ITEM_MOBSI, "Ich trinke Magie");
};

/******************************************************************************************/
//	SPEED-POTIONS //
/******************************************************************************************/
instance ItFo_Potion_Haste_01(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Haste_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHastePotion;

	value						= Value_Haste1;

	description					= "Trank der Geschwindigkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Ermöglicht kurzzeitiges Sprinten ";			count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= NAME_Duration;								count[3] = Time_Haste1 / 60000;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseHastePotion()
{
	Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", Time_Haste1);
	PrintDebugNpc(PD_ITEM_MOBSI, "jetzt bin ich schnell");
};

/******************************************************************************************/
instance ItFo_Potion_Haste_02(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Haste_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHastePotion2;

	value						= Value_Haste1;

	description					= "Trank der Schnelligkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Ermöglicht Sprinten ";						count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= NAME_Duration;								count[3] = Time_Haste2 / 60000;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseHastePotion2()
{
	Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", Time_Haste2);
	PrintDebugNpc(PD_ITEM_MOBSI, "jetzt bin ich schnell");
};

/******************************************************************************************/
instance ItFo_Potion_Haste_03(C_Item)
{
	name						= NAME_Trank;

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	visual						= "ItFo_Potion_Haste_01.3ds";
	material					= MAT_GLAS;

	scemeName					= "POTIONFAST";
	on_state[0]					= UseHastePotion3;

	value						= Value_Haste1;

	description					= "Trank der Eile";
	text[0]						= "";											count[0] = 0;
	text[1]						= "Ermöglicht längeres Sprinten ";				count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= NAME_Duration;								count[3] = Time_Haste3 / 60000;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void UseHastePotion3()
{
	Mdl_ApplyOverlayMDSTimed(self, "HUMANS_SPRINT.MDS", Time_Haste3);
	PrintDebugNpc(PD_ITEM_MOBSI, "jetzt bin ich schnell");
};
