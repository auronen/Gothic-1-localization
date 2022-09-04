// *****************************************************************************************
// Mobsi-Fokusnamen
// *****************************************************************************************

	const string MOBNAME_BACKPACK_1				= "";
	const string MOBNAME_CRATE					= "Kiste";
	const string MOBNAME_CHEST					= "Truhe";
	const string MOBNAME_BED					= "Bett";
	const string MOBNAME_DOOR					= "Tür";
	const string MOBNAME_CAMP					= "";
	const string MOBNAME_TORCH					= "";
	const string MOBNAME_TORCHHOLDER			= "";
	const string MOBNAME_BARBQ_SCAV				= "";
	const string MOBNAME_BARRELO_OC				= "";
	const string MOBNAME_BENCH					= "";
	const string MOBNAME_ANVIL					= "Amboss";
	const string MOBNAME_BUCKET					= "Wasser-Eimer";
	const string MOBNAME_FORGE					= "Schmiede-Feuer";
	const string MOBNAME_GRINDSTONE				= "Schleifstein";
	const string MOBNAME_WHEEL					= "Winde";
	const string MOBNAME_LAB					= "";
	const string MOBNAME_BOOK					= "";
	const string MOBNAME_CHAIR					= "";
	const string MOBNAME_CAULDRON				= "Kessel";
	const string MOBNAME_THRONE					= "";
	const string MOBNAME_PAN					= "Pfanne";
	const string MOBNAME_REPAIR					= "";
	const string MOBNAME_WATERPIPE				= "Wasserpfeife";
	const string MOBNAME_LADDER					= "Leiter";
	const string MOBNAME_SWITCH					= "Schalter";
	const string MOBNAME_BARONSTHRONE			= "";
	const string MOBNAME_ORE					= "Erzklumpen";
	const string MOBNAME_ROPEWAY				= "";
	const string MOBNAME_STOMPER				= "";
	const string MOBNAME_BELLOW					= "Blasebalg";
	const string MOBNAME_STONEMILL				= "";
	const string MOBNAME_ORC_MUMMY				= "Mumie";
	const string MOBNAME_PILLAR					= "Säule";
	const string MOBNAME_BASKET_RICE			= "";
	const string MOBNAME_DRUM					= "";
	const string MOBNAME_GROUND_SLOT			= "n/a";
	const string MOBNAME_HERB_PSI				= "Krautstampfer";
	const string MOBNAME_IDOL					= "Statuette";
	const string MOBNAME_LEAN_WALL				= "";
	const string MOBNAME_ORCDRUM				= "";
	const string MOBNAME_TARGETSTONE			= "Zielscheibe";
	const string MOBNAME_SHRINE					= "Orkischer Herzschrein";
	const string MOBNAME_SWORDSTONE				= "Sonderbarer Stein";

// *****************************************************************************************
// Gildennamen
// *****************************************************************************************

const string TXT_GUILDS [GIL_MAX] = {
// - Charakterblatt (Text der Spielergilde)
// - Debuganzeige (Taste "G")
	"(keine)",
	"Erzbaron",
	"Gardist",
	"Schatten",
	"Feuermagier",
	"Buddler",
	"Wassermagier",
	"Söldner",
	"Bandit",
	"Bauer",
	"Schürfer",			// 10
	"Guru",
	"Novize",
	"Templer",
	"Dämonenbeschw.",
	"Babe",
	"",
	"Waran",			// 17
	"Sleeper",
	"Goblin",
	"Troll",
	"Snapper",
	"Minecrawler",
	"Fleischwanze",
	"Scavenger",
	"Dämon",
	"Wolf",
	"Schattenläufer",
	"Bloodfly",
	"Sumpfhai",			// 30
	"Zombie",
	"Zombie	Orc",
	"Skelett",
	"Ork-Hund",
	"Molerat",
	"Golem",
	"Lurker",
	"",					// 38
	"Orc Schamane",
	"Orc Krieger",
	"Orc Späher",
	"Orc Sklave"
};

// *****************************************************************************************
// Attribut-Beschreibungen
// *****************************************************************************************
/* SN: wird laut Bert nicht mehr benötigt. Ich kommentier es erst mal eine Version lang aus
const string TXT_ATTRIBUTE_DESC	[ATR_INDEX_MAX] = {

	"HitpointDesc",
	"",
	"ManaDesc",
	"",
	"StrengthDesc",
	"DexterityDesc",
	"",
	""
};

"TXT_ATTRIBUTE_DESC" - Beschreibung	der	Attribute für CharScreen.
"TXT_FIGHT_TALENTS"	- Namen	der	Kampftalente
"TXT_FIGHT_TALENTS_DESC" - Beschreibung	der	Kampftalente für CharScreen.
"TXT_TALENTS" -	Namen der sonstigen	Talente
"TXT_TALENTS_DESC" - Beschreibung der Talente für CharScreen
"TXT_SPELLS_DESC" -	Beschreibung der Spells	für	CharScreen

Die	Reihenfolge	der	jeweiligen Texte könnt ihr der Konstantenreihenfolge aus
der	"constants.d" entnehmen, die hier auch mit dranhaengt und fuer
fehlerfreies (Test-)parsen benötigt	wird.
*/

// *****************************************************************************************
// Zauberspruchnamen
// *****************************************************************************************

const string TXT_SPELLS [MAX_SPELL] = {
	"Licht",							// SPL_LIGHT			= 0;
	"Feuerball",						// SPL_FIREBALL			= 1;
	"n/a",								// SPL_TRANSFORM		= 2;
	"Angst",							// SPL_FEAR				= 3;
	"Heilung",							// SPL_HEAL				= 4;
	"n/a",								// SPL_LIGHTNING		= 5;
	"Dämon beschwören",					// SPL_SUMMONDEMON		= 6;
	"Skelette beschwören",				// SPL_SUMMONSKELETON	= 7;
	"n/a",								// SPL_FORGET			= 8;
	"Windfaust",						// SPL_WINDFIST			= 9;
	"Telekinese",						// SPL_TELEKINESIS		= 10;
	"Charme",							// SPL_CHARM			= 11;
	"Schlaf",							// SPL_SLEEP			= 12;
	"Pyrokinese",						// SPL_PYROKINESIS		= 13;
	"Todesring",						// SPL_MASSDEATH		= 14;
	"Kontrolle",						// SPL_CONTROL			= 15;
	"Untote vernichten",				// SPL_DESTROYUNDEA		= 16;
	"Feuerpfeil",						// SPL_FIREBOLT			= 17;
	"Feuersturm",						// SPL_FIRESTORM		= 18;
	"Feuerregen",						// SPL_FIRERAIN			= 19;
	"n/a",								// SPL_SPEED			= 20;
	"Teleport Feuermagier",				// SPL_TELEPORT1		= 21;
	"Teleport Wassermagier",			// SPL_TELEPORT2		= 22;
	"Teleport Dämonenbeschwörer",		// SPL_TELEPORT3		= 23;
	"orkischer Teleport",				// SPL_TELEPORT4		= 24;
	"Teleport Sumpflager",				// SPL_TELEPORT5		= 25;
	"Verwandlung Blutfliege",			// SPL_TRF_BLOODFLY		= 26;
	"n/a",								// SPL_TRF_BLOODHOUND	= 27;
	"Verwandlung Minecrawler",			// SPL_TRF_CRAWLER		= 28;
	"Verwandlung Lurker",				// SPL_TRF_LURKER		= 29;
	"Verwandlung Fleischwanze",			// SPL_TRF_MEATBUG		= 30;
	"Verwandlung Molerat",				// SPL_TRF_MOLERAT		= 31;
	"Verwandlung Orc-Hund",				// SPL_TRF_ORCDOG		= 32;
	"n/a",								// SPL_TRF_RAZOR		= 33;
	"Verwandlung Scavenger",			// SPL_TRF_SCAVENGER	= 34;
	"n/a",								// SPL_TRF_SCAVENGER2	= 35;
	"Verwandlung Schattenläufer",		// SPL_TRF_SHADOWBEAST	= 36;
	"Verwandlung Snapper",				// SPL_TRF_SNAPPER		= 37;
	"Verwandlung Waran",				// SPL_TRF_WARAN		= 38;
	"Verwandlung Wolf",					// SPL_TRF_WOLF			= 39;
	"Blitz",							// SPL_CHAINLIGHTNING	= 40;
	"Eispfeil",							// SPL_THUNDERBOLT		= 41;
	"Kugelblitz",						// SPL_THUNDERBALL		= 42;
	"Eisblock",							// SPL_ICECUBE			= 43;
	"Eiswelle",							// SPL_ICEWAVE			= 44;
	"Golem beschwören",					// SPL_SUMMONGOLEM		= 45;
	"Armee der Finsternis",				// SPL_ARMYOFDARKNESS	= 46;
	"Sturmfaust",						// SPL_STORMFIST		= 47;
	"n/a",								// SPL_TELEKINESIS2		= 48;
	"Todeshauch",						// SPL_BREATHOFDEATH	= 49;
	"Schrumpfen",						// SPL_SHRINK			= 50;
	"n/a",								// SPL_UNDRESS			= 51;
	"n/a",								// SPL_DANCE			= 52;
	"Raserei",							// SPL_BERZERK			= 53;
	"Zorn des URIZIEL",					// SPL_NEW1				= 17;
	"New2",								// SPL_NEW2				= 18;
	"New3",								// SPL_NEW3				= 19;
	"New4",								// SPL_NEW4				= 20;
	"New5"								// SPL_NEW5				= 21;
};

/* SN: wird laut Bert nicht mehr benötigt. Ich kommentier es erst mal eine Version lang aus
const string TXT_SPELLS_DESC [MAX_SPELL] = {
// FIXME: wo werden die benutzt?
	"LichtDescr",						// SPL_LIGHT			= 0;
	"FeuerballDescr",					// SPL_FIREBALL			= 1;
	"VerwandelnDescr",					// SPL_TRANSFORM		= 2;
	"FearDescr",						// SPL_FEAR				= 3;
	"HeilenDescr",						// SPL_HEAL				= 4;
	"BlitzDescr",						// SPL_LIGHTNING		= 5;
	"Dämon beschw.Descr",				// SPL_SUMMONDEMON		= 6;
	"Skelette beschw.Descr",			// SPL_SUMMONSKELETON	= 7;
	"VergessenDescr",					// SPL_FORGET			= 8;
	"WindfaustDescr",					// SPL_WINDFIST			= 9;
	"TelekineseDescr",					// SPL_TELEKINESIS		= 10;
	"CharmDescr",						// SPL_CHARM			= 11;
	"SleepDescr",						// SPL_SLEEP			= 12;
	"PyrokinesisDescr",					// SPL_PYROKINESIS		= 13;
	"MassdeathDescr",					// SPL_MASSDEATH		= 14;
	"KontrolleDescr",					// SPL_CONTROL			= 15;
	"Untote	bannenDescr",				// SPL_DESTROYUNDEAD	= 16;
	"FireboltDescr",					// SPL_FIREBOLT			= 17;
	"FireStormDescr",					// SPL_FIRESTORM		= 18;
	"FireRainDescr",					// SPL_FIRERAIN			= 19;
	"SpeedDescr",						// SPL_SPEED			= 20;
	"Teleport1Descr",					// SPL_TELEPORT1		= 21;
	"Teleport2Descr",					// SPL_TELEPORT2		= 22;
	"Teleport3Descr",					// SPL_TELEPORT3		= 23;
	"Teleport4Descr",					// SPL_TELEPORT4		= 24;
	"Teleport5Descr",					// SPL_TELEPORT5		= 25;
	"Transform BloodflyDescr",			// SPL_TRF_BLOODFLY		= 26;
	"Transform BloodhoundDescr",		// SPL_TRF_BLOODHOUND	= 27;
	"Transform CrawlerDescr",			// SPL_TRF_CRAWLER		= 28;
	"Transform LurkerDescr",			// SPL_TRF_LURKER		= 29;
	"Transform MeatbugDescr",			// SPL_TRF_MEATBUG		= 30;
	"Transform MoleratDescr",			// SPL_TRF_MOLERAT		= 31;
	"Transform OrcDogDescr",			// SPL_TRF_ORCDOG		= 32;
	"Transform RazorDescr",				// SPL_TRF_RAZOR		= 33;
	"Transform ScavengerDescr",			// SPL_TRF_SCAVENGER	= 34;
	"Transform Scavenger2Descr",		// SPL_TRF_SCAVENGER2	= 35;
	"Transform ShadowbeastDescr",		// SPL_TRF_SHADOWBEAST	= 36;
	"Transform SnapperDescr",			// SPL_TRF_SNAPPER		= 37;
	"Transform WaranDescr",				// SPL_TRF_WARAN		= 38;
	"Transform WolfDescr",				// SPL_TRF_WOLF			= 39;
	"ChainlightningDescr",				// SPL_CHAINLIGHTNING	= 40;
	"TunderboltDescr",					// SPL_THUNDERBOLT		= 41;
	"ThunderballDescr",					// SPL_THUNDERBALL		= 42;
	"Ice CubeDescr",					// SPL_ICECUBE			= 43;
	"Ice WaveDescr",					// SPL_ICEWAVE			= 44;
	"Summon	GolemDescr",				// SPL_SUMMONGOLEM		= 45;
	"Army of DarknessDescr",			// SPL_ARMYOFDARKNESS	= 46;
	"StormFistDescr",					// SPL_STORMFIST		= 47;
	"n/a",								// SPL_TELEKINESIS2		= 48;
	"Breath	of DeathDescr",				// SPL_BREATHOFDEATH	= 49;
	"ShrinkDescr",						// SPL_SHRINK			= 50;
	"n/a",								// SPL_UNDRESS			= 51;
	"n/a",								// SPL_DANCE			= 52;
	"BerzerkDescr",						// SPL_BERZERK			= 53;
	"New1Descr",						// SPL_NEW1				= 17;
	"New2Descr",						// SPL_NEW2				= 18;
	"New3Descr",						// SPL_NEW3				= 19;
	"New4Descr",						// SPL_NEW4				= 20;
	"New5Descr"							// SPL_NEW5				= 21;
};
*/

// *****************************************************************************************
// Kampf-Talente
// *****************************************************************************************

const string TXT_TALENTS [NPC_TALENT_MAX] = {
	"",
	"Einhänder",
	"Zweihänder",
	"Bogen",
	"Armbrust",
	"Schlösser öffnen",
	"Taschendiebstahl",
	"Magie",
	"Schleichen",
	"Regeneration",
	"Meister des Feuers",
	"Akrobatik"
};

/* SN: wird laut Bert nicht mehr benötigt. Ich kommentier es erst mal eine Version lang aus
const string TXT_TALENTS_DESC [NPC_TALENT_MAX] = {
// FIXME: wo werden die benutzt?
	"",
	"NPC_TALENT_1H",
	"NPC_TALENT_2H",
	"NPC_TALENT_BOW",
	"NPC_TALENT_CROSSBOW",
	"NPC_TALENT_PICKLOCK",
	"NPC_TALENT_PICKPOCKET",
	"NPC_TALENT_MAGE",
	"NPC_TALENT_SNEAK",
	"NPC_TALENT_REGENERATE",
	"NPC_TALENT_FIREMASTER",
	"NPC_TALENT_ACROBAT"
};
*/

const string TXT_TALENTS_SKILLS [NPC_TALENT_MAX] = {
	"",
	"ungeübt|ausgebildet|gemeistert",						//NPC_TALENT_1H
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_2H
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_BOW
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_CROSSBOW
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_PICKLOCK
	"ungeübt|ausgebildet|gemeistert",                       //NPC_TALENT_PICKPOCKET
	"nein|1.Kreis|2.Kreis|3.Kreis|4.Kreis|5.Kreis|6.Kreis", //NPC_TALENT_MAGE
	"nein|ja",                                              //NPC_TALENT_SNEAK
	"|",                                      		        //NPC_TALENT_REGENERATE
	"|",                                          		    //NPC_TALENT_FIREMASTER
	"nein|ja"                                               //NPC_TALENT_ACROBAT
};

// *****************************************************************************************
// Inventory-Kategorien
// *****************************************************************************************

const string TXT_INV_CAT [INV_CAT_MAX] = {
	"",
	"Waffen",
	"Rüstungen",
	"Magie",
	"Artefakte",
	"Nahrung",
	"Tränke",
	"Schriften",
	"Verschiedenes"
};

// ***************************************************************************************
// Fokusnamen der Ambient-NSCs
// ***************************************************************************************

	const string NAME_Buddler					= "Buddler";
	const string NAME_Schatten					= "Schatten";
	const string NAME_ConvoiTraeger				= "Konvoi Träger";
	const string NAME_ConvoiWache				= "Konvoi Wache";
	const string NAME_Torwache					= "Torwache";
	const string NAME_Brueckenwache				= "Brückenwache";
	const string NAME_Gardist					= "Gardist";
	const string NAME_Bauer						= "Bauer";
	const string NAME_Schlaeger					= "Schläger";
	const string NAME_Schuerfer					= "Schürfer";
	const string NAME_Organisator				= "Bandit";
	const string NAME_Soeldner					= "Söldner";
	const string NAME_Novize					= "Novize";
	const string NAME_Templer					= "Templer";
	const string NAME_Raeuber					= "Räuber";
	const string NAME_Tuersteher				= "Rausschmeisser";

	const string NAME_MadNovice					= "Bessessener Novize";
	const string NAME_MadTemplar				= "Fanatischer Templer";
	const string NAME_MadTemplar2				= "Apokalyptischer Templer";

	const string NAME_OrcShaman					= "Ur-Shak";
	const string NAME_CuredOrc					= "Tarrok";


// *************************************************************
// DIALOG OPTIONEN
// *************************************************************

	const string DIALOG_ENDE					= "ENDE";
	const string DIALOG_BACK					= "ZURÜCK";
	const string DIALOG_TRADE					= "(Tauschen)";

// *************************************************************
// FOKUSNAMEN DER ITEMS
// *************************************************************

	const string NAME_Ring						= "Ring";
	const string NAME_Amulett					= "Amulett";
	const string NAME_Trank						= "Trank";
	const string NAME_Rune						= "Rune";
	const string NAME_Spruchrolle				= "Spruchrolle";

// *************************************************************
// TEXTE FÜR ITEM-BESCHREIBUNGEN IM INV.
// *************************************************************

	const string NAME_Value						= "Wert:";

	const string NAME_Mag_Circle				= "Kreis:";
	const string NAME_Manakosten				= "Manakosten:";
	const string NAME_ManakostenMax				= "Manakosten (max.):";
	const string NAME_ManaPerSec				= "Mana pro Sec.";
	const string NAME_Duration					= "Dauer (Minuten)";

	const string NAME_Mana_needed				= "benötigtes Mana:";
	const string NAME_Str_needed				= "benötigte Stärke:";
	const string NAME_Dex_needed				= "benötigte Geschicklichkeit:";

	const string NAME_Spell_Load				= "Aufladbarer Zauber";
	const string NAME_Spell_Invest				= "Aufrechterhaltungs-Zauber";

	const string NAME_Dam_Edge					= "Waffenschaden";
	const string NAME_Dam_Point					= "Pfeilschaden";
	const string NAME_Dam_Fire					= "Feuerschaden";
	const string NAME_Dam_Magic					= "Magieschaden";
	const string NAME_Dam_Fly					= "Wirbelschaden";

	const string NAME_Damage					= "Schaden";
	const string NAME_PerMana					= " (pro Mana)";
	const string NAME_DamagePerSec				= "Schaden pro Sec.";

	const string NAME_Prot_Edge					= "Schutz vor Waffen:";
	const string NAME_Prot_Point				= "Schutz vor Pfeilen:";
	const string NAME_Prot_Fire					= "Schutz vor Feuer:";
	const string NAME_Prot_Magic				= "Schutz vor Magie:";

	const string NAME_Bonus_HP					= "Lebensenergie-Bonus:";
	const string NAME_Bonus_Mana				= "Mana-Bonus:";

	const string NAME_Bonus_HpMax				= "Bonus für maximale Lebensenergie:";
	const string NAME_Bonus_ManaMax				= "Bonus für maximales Mana:";

	const string NAME_Bonus_Dex					= "Geschicklichkeits-Bonus:";
	const string NAME_Bonus_Str					= "Stärke-Bonus:";

	const string NAME_OneHanded					= "Einhandwaffe";
	const string NAME_TwoHanded					= "Zweihandwaffe:";

//----------------- MH: zusätzlich wegen FlexTranslate ---------------------

	const string NAME_HealingPerMana			= "Heilung pro Mana";

	const string NAME_BuyAttributeSTR			= "Stärke + ";
	const string NAME_BuyAttributeDEX			= "Geschicklichkeit + ";
	const string NAME_BuyAttributeMAN			= "Mana + ";

// ***************************************************************************************
// sonstige Bildschirmausgaben
// ***************************************************************************************
	const string NAME_XPGained					= "Erfahrung + ";			// bei jedem Erfahrungsgewinn
	const string NAME_LevelUp					= "Stufe gestiegen!";		// beim Stufenaufstieg

	const string NAME_NewLogEntry				= "neuer Tagebucheintrag";

	const string PRINT_LEARN_Onehanded			= "Lerne: Kampf mit Einhandwaffen";
	const string PRINT_LEARN_Twohanded			= "Lerne: Kampf mit Zweihandwaffen";
	const string PRINT_LEARN_Bow				= "Lerne: Bogenschießen";
	const string PRINT_LEARN_Crossbow			= "Lerne: Armbrustschießen";
	const string PRINT_LEARN_Locks				= "Lerne: Schlösser knacken";
	const string PRINT_LEARN_PickPocket			= "Lerne: Taschendiebstahl";
	const string PRINT_LEARN_MagicCircle		= "Lerne: Nächster Kreis der Magie";
	const string PRINT_LEARN_Acrobatics			= "Lerne: Akrobatik";
	const string PRINT_LEARN_Sneak				= "Lerne: Schleichen";
	const string PRINT_LEARN_MasterOfFire		= "Lerne: Meister des Feuers";
	const string PRINT_LEARN_Stinger			= "Lerne: Stachel entfernen";
	const string PRINT_LEARN_Teeth				= "Lerne: Zähne nehmen";
	const string PRINT_LEARN_Fur				= "Lerne: Fell abziehen";
	const string PRINT_LEARN_Claws				= "Lerne: Krallen abziehen";
	const string PRINT_LEARN_Skin				= "Lerne: Echsen häuten";
	const string PRINT_LEARN_CrawlerPlates		= "Lerne: Panzerplatten herausschneiden";
	const string PRINT_LEARN_CrawlerMandibles1	= "Lerne: Minecrawlerzangen nehmen";
	const string PRINT_LEARN_CrawlerMandibles2	= "Lerne: Minecrawlerzangen rausschneiden";
	const string PRINT_LEARN_Regen				= "Steigere Regenerationsrate";

	const string PRINT_MAX_100					= "Keine Steigerung über Maximum 100!";

	const string PRINT_NotEnoughSkillPoints		= "Zu wenig Lernpunkte!";

	const string PRINT_XP_MAP					= "+1000 Erz";
	const string PRINT_ItMiJoint_3_Bonus		= "Mana +2";
	const string PRINT_HORATIO_STRENGTH_5		= "Stärke + 5";
	const string PRINT_HORATIO_STRENGTH_100		= "Stärke: 100";
	const string PRINT_MES_SLEEP				= "Du hast geschlafen und bist ausgeruht!";

//***************************************************************************************
// Stringkonstanten aus den G_FUNCTIONS
//***************************************************************************************
	const string _STR_INVALID					= "(Unbekannt)-";

	const string _STR_ATTRIBUTE_HITPOINTS		= "Lebens-";
	const string _STR_ATTRIBUTE_HITPOINTS_MAX	= "maximale Lebens-";
	const string _STR_ATTRIBUTE_MANA			= "Mana-";
	const string _STR_ATTRIBUTE_MANA_MAX		= "maximale Mana-";
	const string _STR_ATTRIBUTE_STRENGTH		= "Stärke-";
	const string _STR_ATTRIBUTE_DEXTERITY		= "Geschicklichkeits-";
	const string _STR_ATTRIBUTE_MAGIC_CIRCLE	= "magische Zauber-";

// Bildschirmausgabe, falls der Spieler eine Waffe anlegen will, für die ihm Attributspunkte fehlen
	const string _STR_CANNOTUSE_PRE_PLAYER		= "es fehlen ";
	const string _STR_CANNOTUSE_POINTS			= "Punkte";
	const string _STR_CANNOTUSE_LEVELS			= "Stufen";
	const string _STR_CANNOTUSE_POST			= ", um diesen Gegenstand anzulegen";

// Bildschirmausgabe, falls ein NSC zu wenig Attributspunkte, für das Anlegen von Waffen hat (nur Debugzwecke!)
	const string _STR_CANNOTUSE_PRE_NPC			= " (";
	const string _STR_CANNOTUSE_POST_NPC		= ") fehlen ";

// Bidschrimausgabe zum Thema Schloß öffnen/knacken
	const string _STR_MESSAGE_INTERACT_NO_KEY	= "kein Dietrich oder passender Schlüssel";
	const string _STR_MESSAGE_PICKLOCK_SUCCESS	= "das hörte sich gut an";
	const string _STR_MESSAGE_PICKLOCK_UNLOCK	= "das Schloß ist geknackt";
	const string _STR_MESSAGE_PICKLOCK_FAILURE	= "Mist.. wieder von vorne";
	const string _STR_MESSAGE_PICKLOCK_BROKEN	= "der Dietrich ist abgebrochen";

// Bidschrimausgabe zum Thema Hebel/Winden
	const string _STR_MESSAGE_OCLEVER_STUCKS	= "der Hebel bewegt sich kein Haarbreit";
	const string _STR_MESSAGE_OCLEVER_MOVES		= "die Statuette bewegt den Hebel";
	const string _STR_MESSAGE_WHEEL_STUCKS		= "die Winde klemmt";

// Bidschrimausgabe beim storybedingten Transfer von Items
	const string _STR_MESSAGE_ITEM_GIVEN		= " Gegenstand gegeben";	//SPACE davor wichtig, weil Trennzeichen
	const string _STR_MESSAGE_ITEM_TAKEN		= " Gegenstand erhalten";
	const string _STR_MESSAGE_ITEMS_GIVEN		= " Gegenstände gegeben";
	const string _STR_MESSAGE_ITEMS_TAKEN		= " Gegenstände erhalten";
	const string _STR_MESSAGE_ORE_GIVEN			= " Erz gegeben";
	const string _STR_MESSAGE_ORE_TAKEN			= " Erz erhalten";

// Bidschrimausgabe fürs Tausch-Fenster
	const string _STR_MESSAGE_TRADE_FAILURE		= "der Wert deiner Tauschware ist nicht hoch genug";

// GILDENAUFNAHMEBEDINGUNG (für die Funktion "B_PrintGuildCondition()" )
	const string _STR_MESSAGE_Joincamp			= "Voraussetzung für die Aufnahme: Stufe ";

// nicht beklaubare NSCs
	const string _STR_MESSAGE_CANNOTSTEAL		= "kann nicht beklaut werden";

// ***************************************************************************************
// Relative Y-Koordinaten für die Bildschirmausgabe (in % der aktuellen Bildhöhe)
// ***************************************************************************************
	const int _YPOS_MESSAGE_GIVEN				= 37;
	const int _YPOS_MESSAGE_TAKEN				= 40;
	const int _YPOS_MESSAGE_LOGENTRY			= 45;
	const int _YPOS_MESSAGE_XPGAINED			= 50;
	const int _YPOS_MESSAGE_LEVELUP				= 55;
	const int _YPOS_MESSAGE_Joincamp			= 50;
	const int _YPOS_MESSAGE_PICKLOCK_SUCCESS	= 6;
	const int _YPOS_MESSAGE_PICKLOCK_UNLOCK		= 9;
	const int _YPOS_MESSAGE_PICKLOCK_FAILURE	= 12;
	const int _YPOS_MESSAGE_PICKLOCK_BROKEN		= 15;
	const int _YPOS_MESSAGE_CANNOTSTEAL			= 6;

// ***************************************************************************************
// Zeitdauer der Bildschirmausgabe (in Sekunden)
// ***************************************************************************************
	const int _TIME_MESSAGE_GIVEN				= 4;
	const int _TIME_MESSAGE_TAKEN				= 4;
	const int _TIME_MESSAGE_LOGENTRY			= 4;
	const int _TIME_MESSAGE_XPGAINED			= 3;
	const int _TIME_MESSAGE_LEVELUP				= 5;
	const int _TIME_MESSAGE_RAISEATTRIBUTE		= 4;
	const int _TIME_MESSAGE_Joincamp			= 5;
	const int _TIME_MESSAGE_PICKLOCK			= 3;
	const int _TIME_MESSAGE_CANNOTSTEAL			= 2;

// ***************************************************************************************
// Zusammenbauen von Info_AddChoice()-Strings beim Kaufen/Lernen
// ***************************************************************************************
	const string NAME_BuyArmorPrefix			= " (";
	const string NAME_BuyArmorPostfix			= " Erz)";
	const string NAME_LearnPrefix				= " (";
	const string NAME_LearnMidfix				= " Erz, ";
	const string NAME_LearnPostfixS				= " Lernpunkt)";
	const string NAME_LearnPostfixP				= " Lernpunkte)";

	const string NAME_LearnStrength_1			= "Stärke +1";
	const string NAME_LearnStrength_5			= "Stärke +5";
	const string NAME_LearnStrength_10			= "Stärke +10";
	const string NAME_LearnStrength_20			= "Stärke +20";

	const string NAME_LearnDexterity_1			= "Geschick +1";
	const string NAME_LearnDexterity_5			= "Geschick +5";
	const string NAME_LearnDexterity_10			= "Geschick +10";
	const string NAME_LearnDexterity_20			= "Geschick +20";

	const string NAME_LearnMana_1				= "Mana +1";
	const string NAME_LearnMana_5				= "Mana +5";
	const string NAME_LearnMana_10				= "Mana +10";
	const string NAME_LearnMana_20				= "Mana +20";

	const string NAME_Learn1h_1					= "Einhänder Stufe 1";
	const string NAME_Learn1h_2					= "Einhänder Stufe 2";
	const string NAME_Learn2h_1					= "Zweihänder Stufe 1";
	const string NAME_Learn2h_2					= "Zweihänder Stufe 2";

	const string NAME_LearnBow_1				= "Bogen Stufe 1";
	const string NAME_LearnBow_2				= "Bogen Stufe 2";
	const string NAME_LearnCrossbow_1			= "Armbrust Stufe 1";
	const string NAME_LearnCrossbow_2			= "Armbrust Stufe 2";

	const string NAME_LearnMage_1				= "1. Kreis der Magie";
	const string NAME_LearnMage_2				= "2. Kreis der Magie";
	const string NAME_LearnMage_3				= "3. Kreis der Magie";
	const string NAME_LearnMage_4				= "4. Kreis der Magie";
	const string NAME_LearnMage_5				= "5. Kreis der Magie";
	const string NAME_LearnMage_6				= "6. Kreis der Magie";

	const string NAME_LearnPickpocket_1			= "Taschendiebstahl Stufe 1";
	const string NAME_LearnPickpocket_2			= "Taschendiebstahl Stufe 2";
	const string NAME_LearnPicklock_1			= "Schlösser öffnen Stufe 1";
	const string NAME_LearnPicklock_2			= "Schlösser öffnen Stufe 2";

	const string NAME_LearnAcrobat				= "Akrobatik";
	const string NAME_LearnSneak				= "Schleichen";

	const string NAME_RaiseStrength				= "Stärke +";
	const string NAME_RaiseDexterity			= "Geschick +";
	const string NAME_RaiseStrDex				= "Stärke und Geschick +";
	const string NAME_RaiseManaMax				= "maximale Mana +";
	const string NAME_RaiseHealthMax			= "maximale Lebensenergie +";

//---------------- MH: für B_BuildBuyArmorString ----------------------------

	const string NAME_CorristoHighRobe			= "Meister, ich möchte die hohe Robe des Feuers tragen.";
	const string NAME_SaturasHighRobe			= "Hohe Robe";
	const string NAME_DiegoHeavyShadows			= "Schwere Schattenrüstung. Schutz: Waffen 40, Pfeile 5, Feuer 20";
	const string NAME_StoneHeavyGuards			= "Schwere Garderüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
	const string NAME_StoneGuards				= "Garderüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
	const string NAME_WolfBandits				= "Banditenrüstung. Schutz: Waffen 35, Pfeile 5, Feuer 15";
	const string NAME_WolfHeavyBandits			= "Schwere Banditenrüstung. Schutz: Waffen 40, Pfeile 5, Feuer 20";
	const string NAME_LeeMercs					= "Söldnerrüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
	const string NAME_LeeHeavyMercs				= "Schwere Söldnerrüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
	const string NAME_FiskLightDiggers			= "Leichte Buddlerhosen. Schutz: Waffen 10, Feuer 5";
	const string NAME_FiskDiggers				= "Buddlerhosen. Schutz: Waffen 15, Feuer 5";
	const string NAME_GorNaTothHeavyTpl			= "Schwere Templerrüstung. Schutz: Waffen 70, Pfeile 10, Feuer 35";
	const string NAME_GorNaTothTpl				= "Templerrüstung. Schutz: Waffen 55, Pfeile 10, Feuer 25";
	const string NAME_TorwachenPsiRock			= "Rock. Schutz: Waffen 15, Feuer 10";

// ***************************************************************************************
// Menuetext-Konstanten
// ***************************************************************************************
// Text, der erscheint, wenn eine Menueoption noch ein APPLY benoetigt (Aufloesung).
// Vermutlich kein Text notwendig, da durch Menuestruktur deutlich gemacht
	const string MENU_TEXT_NEEDS_APPLY			= "";

// Text, der erscheint, wenn ein Restart des Spiels notwendig ist (Grafikkartebauswahl).
// Maximal ca. 60 Zeichen, da nur eine Zeile Platz!
	const string MENU_TEXT_NEEDS_RESTART		= "Einige Einstellungen werden erst nach einem Neustart aktiv";

//
//	TRADE MANAGER
//
	const string STR_INFO_TRADE_ACCEPT			= "Annehmen";
	const string STR_INFO_TRADE_RESET			= "Ablehnen";
	const string STR_INFO_TRADE_EXIT			= "Zurück";

	const string STR_BADENIXE					= "Badenixe";

// ****************
// B_Kapitelwechsel
// ****************

	const string KapWechsel_1					= "Kapitel 1";
	const string KapWechsel_1_Text				= "Die Welt der Verurteilten";
	const string KapWechsel_2					= "Kapitel 2";
	const string KapWechsel_2_Text				= "Das Nest der Minecrawler";
	const string KapWechsel_3					= "Kapitel 3";
	const string KapWechsel_3_Text				= "Artefakte von uralter Macht";
	const string KapWechsel_4					= "Kapitel 4";
	const string KapWechsel_4_Text				= "Xardas";
	const string KapWechsel_5					= "Kapitel 5";
	const string KapWechsel_5_Text				= "Die Hüter des Portals";
	const string KapWechsel_6					= "Kapitel 6";
	const string KapWechsel_6_Text				= "Die Hallen des Schläfers";
