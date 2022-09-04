/*******************************************************************************************
** Feuermagier(Runensteine und Scrolls) **
*******************************************************************************************/

// Light (Scrolls und Runen)
instance ItArRuneLight(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_42.3ds";
	material					= MAT_STONE;

	spell						= SPL_LIGHT;
	mag_circle					= 1;

	value						= 300;

	description					= "Licht";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_LIGHT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollLight(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_32.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_LIGHT;
	spell						= SPL_LIGHT;

	value						= 5;

	description					= "Licht";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_LIGHT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Firebolt alias MagicMissile (Scrolls und Runen)

instance ItArRuneFirebolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_23.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIREBOLT;
	mag_circle					= 1;

	value						= 300;

	description					= "Feuerpfeil";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_FIREBOLT;
	text[2]						= NAME_Dam_Fire;								count[2] = SPL_DAMAGE_FIREBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollFirebolt(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_35.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_FIREBOLT;
	spell						= SPL_FIREBOLT;

	value						= 30;

	description					= "Feuerpfeil";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_FIREBOLT;
	text[2]						= NAME_Dam_Fire;								count[2] = SPL_DAMAGE_FIREBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Fireball (Scrolls und Runen)

instance ItArRuneFireball(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_26.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIREBALL;
	mag_circle					= 3;

	value						= 700;

	description					= "Feuerball";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_FIREBALL;
	text[2]						= ConcatStrings(NAME_Dam_Fire, NAME_PerMana);	count[2] = SPL_DAMAGE_FIREBALL;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollFireball(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_27.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_FIREBALL;
	spell						= SPL_FIREBALL;

	value						= 70;

	description					= "Feuerball";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_FIREBALL;
	text[2]						= ConcatStrings(NAME_Dam_Fire, NAME_PerMana);	count[2] = SPL_DAMAGE_FIREBALL;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Firestorm (Scrolls und Runen)

instance ItArRuneFirestorm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_24.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIRESTORM;
	mag_circle					= 4;

	value						= 1100;

	description					= "Feuersturm";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_FIRESTORM;
	text[2]						= ConcatStrings(NAME_Dam_Fire, NAME_PerMana);	count[2] = SPL_DAMAGE_FIRESTORM;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollFirestorm(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_28.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_FIRESTORM;
	spell						= SPL_FIRESTORM;

	value						= 110;

	description					= "Feuersturm";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_FIRESTORM;
	text[2]						= ConcatStrings(NAME_Dam_Fire, NAME_PerMana);	count[2] = SPL_DAMAGE_FIRESTORM;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// FireRain (Scrolls und Runen)

instance ItArRuneFireRain(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_25.3ds";
	material					= MAT_STONE;

	spell						= SPL_FIRERAIN;
	mag_circle					= 5;

	value						= 1300;

	description					= "Feuerregen";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_FIRERAIN;
	text[2]						= NAME_Dam_Fire;								count[2] = SPL_DAMAGE_FIRERAIN;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollFireRain(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_36.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_FIRERAIN;
	spell						= SPL_FIRERAIN;

	value						= 130;

	description					= "Feuerregen";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_FIRERAIN;
	text[2]						= NAME_Dam_Fire;								count[2] = SPL_DAMAGE_FIRERAIN;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Teleport1 (Scrolls und Runen)

instance ItArRuneTeleport1(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_38.3ds"; // rote Rune
	material					= MAT_STONE;

	spell						= SPL_TELEPORT1;
	// mag_circle				= 4; // SN: Teleport-Spells müssen auch ohne Circle sprechbar sein!

	description					= "Teleport zu den Feuermagiern";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport1(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_38.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TELEPORT;
	spell						= SPL_TELEPORT1;

	description					= "Teleport zu den Feuermagiern";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

/*******************************************************************************************/
// Teleport2 (Scrolls und Runen)

instance ItArRuneTeleport2(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_40.3ds"; // blaue Rune
	material					= MAT_STONE;

	spell						= SPL_TELEPORT2;
	// mag_circle				= 4; // SN: Teleport-Spells müssen auch ohne Circle sprechbar sein!

	description					= "Teleport zu den Wassermagiern";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport2(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_37.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TELEPORT;
	spell						= SPL_TELEPORT2;

	description					= "Teleport zu den Wassermagiern";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

/*******************************************************************************************/
// Teleport3 (Scrolls und Runen)

instance ItArRuneTeleport3(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_41.3ds"; // lila Rune
	material					= MAT_STONE;

	spell						= SPL_TELEPORT3;
	// mag_circle				= 4; // SN: Teleport-Spells müssen auch ohne Circle sprechbar sein!

	description					= "Teleport zum Dämonenbeschwörer"; // blaue Rune
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport3(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_40.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TELEPORT;
	spell						= SPL_TELEPORT3;

	description					= "Teleport zum Dämonenbeschwörer";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

/*******************************************************************************************/
// Teleport4 (nur Scrolls)

instance ItArScrollTeleport4(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_39.3DS"; // lila Punkt + gelber Punkt
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TELEPORT;
	spell						= SPL_TELEPORT4;

	description					= "orkischer Teleportzauber";
	// text[0]					= NAME_Mag_Circle;								count[0] = 0;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

/*******************************************************************************************/
// Teleport5 (Scrolls und Runen)

instance ItArRuneTeleport5(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_39.3ds"; // grüne Rune
	material					= MAT_STONE;

	spell						= SPL_TELEPORT5;
	// mag_circle				= 4; // SN: Teleport-Spells müssen auch ohne Circle sprechbar sein!

	description					= "Teleport zum Sumpflager"; // lila Rune
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

instance ItArScrollTeleport5(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_39.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TELEPORT;
	spell						= SPL_TELEPORT5;

	description					= "Teleport zum Sumpflager";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TELEPORT;
};

/*******************************************************************************************
** Wassermagier(Runensteine und Scrolls) **
*******************************************************************************************/

// Heal (Scrolls und Runen)

instance ItArRuneHeal(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_27.3ds";
	material					= MAT_STONE;

	spell						= SPL_HEAL;
	mag_circle					= 2;

	value						= 500;

	description					= "Heilung";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_HealingPerMana;							count[1] = SPL_HEALING_HP_PER_MP;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollHeal(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_01.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_HEALING_HP_PER_MP;
	spell						= SPL_HEAL;

	value						= 50;

	description					= "Heilung";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_HealingPerMana;							count[1] = SPL_HEALING_HP_PER_MP;
	text[2]						= NAME_Mana_needed;								count[2] = SPL_HEALING_HP_PER_MP;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/

// Verwandlung (nur Scrolls)

instance ItArScrollTrfBloodfly(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_01.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_BLOODFLY;
	spell						= SPL_TRF_BLOODFLY;

	value						= 100;

	description					= "Verwandlung Bloodfly";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_BLOODFLY;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfCrawler(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_04.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_CRAWLER;
	spell						= SPL_TRF_CRAWLER;

	value						= 100;

	description					= "Verwandlung Crawler";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_CRAWLER;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfLurker(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_02.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_LURKER;
	spell						= SPL_TRF_LURKER;

	value						= 100;

	description					= "Verwandlung Lurker";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_LURKER;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfMeatbug(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_03.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_MEATBUG;
	spell						= SPL_TRF_MEATBUG;

	value						= 100;

	description					= "Verwandlung Fleischwanze";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_MEATBUG;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfMolerat(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_05.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_MOLERAT;
	spell						= SPL_TRF_MOLERAT;

	value						= 100;

	description					= "Verwandlung Molerat";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_MOLERAT;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfOrcdog(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_11.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_ORCDOG;
	spell						= SPL_TRF_ORCDOG;

	value						= 200;

	description					= "Verwandlung Orcdog";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_ORCDOG;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfScavenger(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_07.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_SCAVENGER;
	spell						= SPL_TRF_SCAVENGER;

	value						= 100;

	description					= "Verwandlung Scavenger";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_SCAVENGER;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfShadowbeast(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_06.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_SHADOWBEAST;
	spell						= SPL_TRF_SHADOWBEAST;

	value						= 200;

	description					= "Verwandlung Schattenläufer";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_SHADOWBEAST;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfSnapper(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_01.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_SNAPPER;
	spell						= SPL_TRF_SNAPPER;

	value						= 150;

	description					= "Verwandlung Snapper";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_SNAPPER;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfWaran(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_10.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_WARAN;
	spell						= SPL_TRF_WARAN;

	value						= 100;

	description					= "Verwandlung Waran";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_WARAN;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTrfWolf(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_09.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_TRF_WOLF;
	spell						= SPL_TRF_WOLF;

	value						= 100;

	description					= "Verwandlung Wolf";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_TRF_WOLF;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Chain-Lightning (Scrolls und Runen)

instance ItArRuneChainLightning(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_18.3ds";
	material					= MAT_STONE;

	spell						= SPL_CHAINLIGHTNING;
	mag_circle					= 4;

	value						= 700;

	description					= "Blitz";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_DamagePerSec;							count[1] = SPL_ZAPPED_DAMAGE_PER_SEC;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollChainLightning(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_20.3DS";
	material					= MAT_STONE;

	spell						= SPL_CHAINLIGHTNING;
	// mag_circle				= 3;

	value						= 70;

	description					= "Blitz";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_DamagePerSec;							count[1] = SPL_ZAPPED_DAMAGE_PER_SEC;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Thunderbolt (Scrolls und Runen)

instance ItArRuneThunderbolt(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_19.3ds";
	material					= MAT_STONE;

	spell						= SPL_THUNDERBOLT;
	mag_circle					= 1;

	value						= 500;

	// FIXME: kann man die DAMAGE_PER_LEVEL-Werte der Spells aus der Spells_Params hier für Manakosten einsetzen??
	description					= "Eispfeil";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_THUNDERBOLT;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_THUNDERBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollThunderbolt(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_41.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_THUNDERBOLT;
	spell						= SPL_THUNDERBOLT;

	value						= 50;

	description					= "Eispfeil";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_THUNDERBOLT;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_THUNDERBOLT;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Thunderball (Scrolls und Runen)

instance ItArRuneThunderball(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_20.3ds";
	material					= MAT_STONE;

	spell						= SPL_THUNDERBALL;
	mag_circle					= 3; // SN: von 4 auf 3 geändert!

	value						= 900;

	description					= "Kugelblitz";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_THUNDERBALL;
	text[2]						= ConcatStrings(NAME_Dam_Magic, NAME_PerMana);	count[2] = SPL_DAMAGE_THUNDERBALL;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollThunderball(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_01.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_THUNDERBALL;
	spell						= SPL_THUNDERBALL;

	value						= 90;

	description					= "Kugelblitz";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_THUNDERBALL;
	text[2]						= ConcatStrings(NAME_Dam_Magic, NAME_PerMana);	count[2] = SPL_DAMAGE_THUNDERBALL;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// IceCube (Scrolls und Runen)

instance ItArRuneIceCube(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_21.3ds";
	material					= MAT_STONE;

	spell						= SPL_ICECUBE;
	mag_circle					= 3;

	value						= 700;

	description					= "Eisblock";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_ICECUBE;
	text[2]						= NAME_Damage;									count[2] = SPL_FREEZE_DAMAGE;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollIceCube(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_25.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_ICECUBE;
	spell						= SPL_ICECUBE;

	value						= 70;

	description					= "Eisblock";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_ICECUBE;
	text[2]						= NAME_Damage;									count[2] = SPL_FREEZE_DAMAGE;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// IceWave (Scrolls und Runen)

instance ItArRuneIceWave(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_22.3ds";
	material					= MAT_STONE;

	spell						= SPL_ICEWAVE;
	mag_circle					= 5;

	value						= 1100;

	description					= "Eiswelle";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_ICEWAVE;
	text[2]						= NAME_Damage;									count[2] = SPL_FREEZE_DAMAGE;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollIceWave(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_30.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_ICEWAVE;
	spell						= SPL_ICEWAVE;

	value						= 110;

	description					= "Eiswelle";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_ICEWAVE;
	text[2]						= NAME_Damage;									count[2] = SPL_FREEZE_DAMAGE;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************
** Dämonenbeschwörer(Runensteine und Scrolls) **
*******************************************************************************************/

// Summon Demon (Scrolls)

instance ItArScrollSummonDemon(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_18.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_SUMMONDEMON;
	spell						= SPL_SUMMONDEMON;

	value						= 550;

	description					= "Dämon beschwören";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SUMMONDEMON;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Summon Skeletons (Scrolls)

instance ItArScrollSummonSkeletons(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_23.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_SUMMONSKELETON;
	spell						= SPL_SUMMONSKELETON;

	value						= 350;

	description					= "Skelette beschwören";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SUMMONSKELETON;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Summon Golem (Scrolls)

instance ItArScrollSummonGolem(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_23.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_SUMMONGOLEM;
	spell						= SPL_SUMMONGOLEM;

	value						= 450;

	description					= "Golem beschwören";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SUMMONGOLEM;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Army of Darkness (Scrolls)

instance ItArScrollArmyOfDarkness(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_29.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_ARMYOFDARKNESS;
	spell						= SPL_ARMYOFDARKNESS;

	value						= 666;

	description					= "Armee der Finsternis";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_ARMYOFDARKNESS;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Destroy Undead (Scrolls und Runen)

instance ItArRuneDestroyUndead(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_15.3ds";
	material					= MAT_STONE;

	spell						= SPL_DESTROYUNDEAD;
	mag_circle					= 4;

	value						= 1100;

	description					= "Untote vernichten";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_DESTROYUNDEAD;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollDestroyUndead(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_26.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_DESTROYUNDEAD;
	spell						= SPL_DESTROYUNDEAD;

	value						= 110;

	description					= "Untote vernichten";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_DESTROYUNDEAD;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_DESTROYUNDEAD;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************
** PSI - Sprüche(Runen und Scrolls) **
*******************************************************************************************/

// Windfist (Scrolls und Runen)

instance ItArRuneWindfist(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_06.3ds";
	material					= MAT_STONE;

	spell						= SPL_WINDFIST;
	mag_circle					= 2;

	value						= 500;

	description					= "Windfaust";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_WINDFIST;
	text[2]						= ConcatStrings(NAME_Dam_Fly, NAME_PerMana);	count[2] = SPL_DAMAGE_WINDFIST;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollWindfist(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_12.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_WINDFIST;
	spell						= SPL_WINDFIST;

	value						= 50;

	description					= "Windfaust";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_WINDFIST;
	text[2]						= ConcatStrings(NAME_Dam_Fly, NAME_PerMana);	count[2] = SPL_DAMAGE_WINDFIST;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Stormfist (Scrolls und Runen)

instance ItArRuneStormfist(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_07.3ds";
	material					= MAT_STONE;

	spell						= SPL_STORMFIST;
	mag_circle					= 4;

	value						= 900;

	description					= "Sturmfaust";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_STORMFIST;
	text[2]						= ConcatStrings(NAME_Dam_Fly, NAME_PerMana);	count[2] = SPL_DAMAGE_STORMFIST;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollStormfist(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_17.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_STORMFIST;
	spell						= SPL_STORMFIST;

	value						= 90;

	description					= "Sturmfaust";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManakostenMax;							count[1] = SPL_SENDCAST_STORMFIST;
	text[2]						= ConcatStrings(NAME_Dam_Fly, NAME_PerMana);	count[2] = SPL_DAMAGE_STORMFIST;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Load;								count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Telekinesis (Scrolls und Runen)

instance ItArRuneTelekinesis(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_05.3ds";
	material					= MAT_STONE;

	spell						= SPL_TELEKINESIS;
	mag_circle					= 3;

	value						= 700;

	description					= "Telekinese";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_ManaPerSec;								count[1] = 1;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollTelekinesis(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_13.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= 10;
	spell						= SPL_TELEKINESIS;

	value						= 70;

	description					= "Telekinese";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_ManaPerSec;								count[1] = 1;
	text[2]						= NAME_Mana_needed;								count[2] = cond_value[2];
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Charm (Scrolls und Runen)

instance ItArRuneCharm(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_10.3ds";
	material					= MAT_STONE;

	spell						= SPL_CHARM;
	mag_circle					= 3;

	value						= 700;

	description					= "Freundlich stimmen";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_CHARM;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollCharm(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_19.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_CHARM;
	spell						= SPL_CHARM;

	value						= 70;

	description					= "Freundlich stimmen";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_CHARM;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Sleep (Scrolls)

instance ItArRuneSleep(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_09.3ds";
	material					= MAT_STONE;

	spell						= SPL_SLEEP;
	mag_circle					= 2;

	value						= 500;

	description					= "Schlaf";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SLEEP;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollSleep(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_16.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_SLEEP;
	spell						= SPL_SLEEP;

	value						= 50;

	description					= "Schlaf";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SLEEP;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Pyrokinesis (Scrolls und Runen)

instance ItArRunePyrokinesis(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_04.3ds";
	material					= MAT_STONE;

	spell						= SPL_PYROKINESIS;
	mag_circle					= 3;

	value						= 700;

	description					= "Pyrokinese";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_DamagePerSec;							count[1] = SPL_PYRO_DAMAGE_PER_SEC;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollPyrokinesis(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_33.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= 10;
	spell						= SPL_PYROKINESIS;

	value						= 70;

	description					= "Pyrokinese";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_DamagePerSec;							count[1] = SPL_PYRO_DAMAGE_PER_SEC;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= NAME_Spell_Invest;							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Control (Scrolls und Runen)

instance ItArRuneControl(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_02.3ds";
	material					= MAT_STONE;

	spell						= SPL_CONTROL;
	mag_circle					= 4;

	value						= 900;

	description					= "Kontrolle";
	// text[1]					= NAME_Manakosten;								count[1] = SPL_SENDCAST_SLEEP;

	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItArScrollControl(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_08.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= 30;
	spell						= SPL_CONTROL;

	value						= 90;

	description					= "Kontrolle";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;
	// text[1]					= NAME_Manakosten;								count[1] = ;

	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Fear (nur Scrolls )

instance ItArScrollFear(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_34.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_FEAR;
	spell						= SPL_FEAR;

	value						= 250;

	description					= "Angst";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_FEAR;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/******************************************************************************************/
// Berzerk (nur Scrolls )

instance ItArScrollBerzerk(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_22.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_BERZERK;
	spell						= SPL_BERZERK;

	value						= 200;

	description					= "Raserei";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_BERZERK;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Breath of Death (nur Rune )

instance ItArRuneBreathOfDeath(C_Item)
{
	name						= NAME_Rune;

	mainflag					= ITEM_KAT_RUNE;
	flags						= 0;

	visual						= "ItAr_Rune_21.3ds";
	material					= MAT_STONE;

	spell						= SPL_BREATHOFDEATH;
	mag_circle					= 6;

	value						= 1500;

	description					= "Todeshauch";
	text[0]						= NAME_Mag_Circle;								count[0] = mag_circle;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_BREATHOFDEATH;
	text[2]						= NAME_Dam_Magic;								count[2] = SPL_DAMAGE_BREATHOFDEATH;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
// Shrink (nur Scrolls )

instance ItArScrollShrink(C_Item)
{
	name						= NAME_Spruchrolle;

	mainflag					= ITEM_KAT_RUNE;
	flags						= ITEM_MULTI;

	visual						= "ItAr_Scroll_15.3DS";
	material					= MAT_STONE;

	cond_atr[2]					= ATR_MANA_MAX;
	cond_value[2]				= SPL_SENDCAST_SHRINK;
	spell						= SPL_SHRINK;

	value						= 1000;

	description					= "Monster Schrumpfen";
	// text[0]					= NAME_Mag_Circle;								count[0] = mag_circle;

	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Manakosten;								count[1] = SPL_SENDCAST_SHRINK;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

/*******************************************************************************************/
