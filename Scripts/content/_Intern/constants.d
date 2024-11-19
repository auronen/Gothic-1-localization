// *********************
//	  Constants
//	Phoenix V0.67
// *********************

//																			 
//	NPC ATTRIBUTES
//
const int ATR_HITPOINTS = 0; // Lebenspunkte
const int ATR_HITPOINTS_MAX = 1; // Max. Lbenspunkte
const int ATR_MANA = 2; // Mana Mana
const int ATR_MANA_MAX = 3; // Mana Max

const int ATR_STRENGTH = 4; // Stärke
const int ATR_DEXTERITY = 5; // Geschick
const int ATR_REGENERATEHP = 6; // Regenerierung von HP alle x sekunden
const int ATR_REGENERATEMANA = 7; // Regenerierung von Mana alle x sekunden

const int ATR_INDEX_MAX = 8;

//
//	NPC FLAGS
//
const int NPC_FLAG_FRIEND = 1 << 0;
const int NPC_FLAG_IMMORTAL = 1 << 1;

//
//	NPC TYPES
//
// const int NPCTYPE_AMBIENT = 0;
// const int NpcType_Main = 1;
// const int NpcType_Guard = 2;

//
//	FIGHT MODES
//
const int FMODE_NONE = 0;
const int FMODE_FIST = 1;
const int FMODE_MELEE = 2;
const int FMODE_FAR = 5;
const int FMODE_MAGIC = 7;

//
//	WALK MODES
//
const int NPC_RUN = 0;
const int NPC_WALK = 1;
const int NPC_SNEAK = 2;
const int NPC_RUN_WEAPON = 0 + 128;
const int NPC_WALK_WEAPON = 1 + 128;
const int NPC_SNEAK_WEAPON = 2 + 128;

//
//	ARMOR FLAGS
//						 
const int WEAR_TORSO = 1; // Oberkoerper ( Brustpanzer )
const int WEAR_HEAD = 2; // Kopf ( Helm )

//
//	INVENTORY CATEGORIES
//
const int INV_WEAPON = 1;
const int INV_ARMOR = 2;
const int INV_RUNE = 3;
const int INV_MAGIC = 4;
const int INV_FOOD = 5;
const int INV_POTION = 6;
const int INV_DOC = 7;
const int INV_MISC = 8;
const int INV_CAT_MAX = 9;

//
//	INVENTORY CAPACITIES
//
const int INV_MAX_WEAPONS = 6;
const int INV_MAX_ARMORS = 2;
const int INV_MAX_RUNES = 1000; // virtually infinite
const int INV_MAX_FOOD = 15;
const int INV_MAX_DOCS = 1000; // virtually infinite
const int INV_MAX_POTIONS = 1000; // virtually infinite
const int INV_MAX_MAGIC = 1000; // virtually infinite
const int INV_MAX_MISC = 1000;

//
//	ITEM TEXTS
//
const int ITM_TEXT_MAX = 6;

//
//	ITEM CATEGORIES
//
const int ITEM_KAT_NONE = 1 << 0; // Sonstiges
const int ITEM_KAT_NF = 1 << 1; // Alle Nahkampfwaffen
const int ITEM_KAT_FF = 1 << 2; // Alle Fernkampfwaffen
const int ITEM_KAT_MUN = 1 << 3; // Jede Art von Munition (->MultiSlot)
const int ITEM_KAT_ARMOR = 1 << 4; // Rüstungen und Helme
const int ITEM_KAT_FOOD = 1 << 5; // Alle Nahrungsmittel (->MultiSlot)
const int ITEM_KAT_DOCS = 1 << 6; // Alle Dokumente
const int ITEM_KAT_POTIONS = 1 << 7; // Traenke
const int ITEM_KAT_LIGHT = 1 << 8; // Alle Lichtquellen
const int ITEM_KAT_RUNE = 1 << 9; // Runen und Scrolls
const int ITEM_KAT_MAGIC = 1 << 31; // Ringe und Amulette
const int ITEM_KAT_KEYS = ITEM_KAT_NONE;

//
//	ITEM FLAGS
//
const int ITEM_BURN = 1 << 10; // Brennbar
const int ITEM_MISSION = 1 << 12; // Missionsgegenstand
const int ITEM_MULTI = 1 << 21;
const int ITEM_TORCH = 1 << 28; // Wie eine Fackel behandeln
const int ITEM_THROW = 1 << 29; // Gegenstand kann geworfen werden

//
//	ITEM WEAPON FLAGS
//
const int ITEM_SWD = 1 << 14; // Waffe wird wie ein Schwert behandelt
const int ITEM_AXE = 1 << 15; // Waffe wird wie eine Axt behandelt
const int ITEM_2HD_SWD = 1 << 16; // Waffe wird wie ein Zweihänder behandelt
const int ITEM_2HD_AXE = 1 << 17; // Waffe wird wie eine Streitaxt behandelt
const int ITEM_BOW = 1 << 19; // Waffe wird wie ein Bogen behandelt
const int ITEM_CROSSBOW = 1 << 20; // Waffe wird wie eine Armbrust behandelt
const int ITEM_AMULET = 1 << 22;
const int ITEM_RING = 1 << 11;

//
//	DAMAGE TYPES v2.0
//
const int DAM_INVALID = 0; // 0 - 0x00 - nur der Vollstandigkeit und Transparenz wegen hier definiert ( _NICHT_ verwenden )
const int DAM_BARRIER = 1; // 1 - 0x01 - nur der Vollstandigkeit und Transparenz wegen hier definiert ( _NICHT_ verwenden )
const int DAM_BLUNT = DAM_BARRIER << 1; // 2 - 0x02 - blunt ist das bit links von barrier
const int DAM_EDGE = DAM_BLUNT << 1; // 4 - 0x04 - edge ist das bit links von blunt
const int DAM_FIRE = DAM_EDGE << 1; // 8 - 0x08 - fire ist das bit links von edge
const int DAM_FLY = DAM_FIRE << 1; // 16 - 0x10 - fly ist das bit links von fire
const int DAM_MAGIC = DAM_FLY << 1; // 32 - 0x20 - magic ist das bit links von fly
const int DAM_POINT = DAM_MAGIC << 1; // 64 - 0x40 - point ist das bit links von magic
const int DAM_FALL = DAM_POINT << 1; // 128 - 0x80 - nur der Vollstandigkeit und Transparenz wegen hier definiert ( _NICHT_ verwenden )

//
//	DAMAGE TYPE ARRAY INDICES ( !!! DAM_XXX = 1 << DAM_INDEX_XXX !!! )
//
const int DAM_INDEX_BARRIER = 0; // nur der Vollstandigkeit und Transparenz wegen hier definiert ( _NICHT_ verwenden )
const int DAM_INDEX_BLUNT = DAM_INDEX_BARRIER + 1;
const int DAM_INDEX_EDGE = DAM_INDEX_BLUNT + 1;
const int DAM_INDEX_FIRE = DAM_INDEX_EDGE + 1;
const int DAM_INDEX_FLY = DAM_INDEX_FIRE + 1;
const int DAM_INDEX_MAGIC = DAM_INDEX_FLY + 1;
const int DAM_INDEX_POINT = DAM_INDEX_MAGIC + 1;
const int DAM_INDEX_FALL = DAM_INDEX_POINT + 1; // nur der Vollstandigkeit und Transparenz wegen hier definiert ( _NICHT_ verwenden )
const int DAM_INDEX_MAX = DAM_INDEX_FALL + 1;

//
//	OTHER DAMAGE CONSTANTS
//
const int NPC_ATTACK_FINISH_DISTANCE = 180;
const int NPC_BURN_TICKS_PER_DAMAGE_POINT = 100;
const int DAM_CRITICAL_MULTIPLIER = 2;

const int BLOOD_SIZE_DIVISOR = 1000;
const int BLOOD_DAMAGE_MAX = 200;

const int DAMAGE_FLY_CM_MAX = 2000;
const int DAMAGE_FLY_CM_MIN = 300;
const int DAMAGE_FLY_CM_PER_POINT = 5;

const int NPC_DAM_DIVE_TIME = 100;

//
//	PROTECTION TYPES v2.0
//
const int PROT_BARRIER = DAM_INDEX_BARRIER;
const int PROT_BLUNT = DAM_INDEX_BLUNT;
const int PROT_EDGE = DAM_INDEX_EDGE;
const int PROT_FIRE = DAM_INDEX_FIRE;
const int PROT_FLY = DAM_INDEX_FLY;
const int PROT_MAGIC = DAM_INDEX_MAGIC;
const int PROT_POINT = DAM_INDEX_POINT;
const int PROT_FALL = DAM_INDEX_FALL;
const int PROT_INDEX_MAX = DAM_INDEX_MAX;

//
// Talents
//

const int NPC_TALENT_UNKNOWN = 0;
// Skilled Talents
const int NPC_TALENT_1H = 1;
const int NPC_TALENT_2H = 2;
const int NPC_TALENT_BOW = 3;
const int NPC_TALENT_CROSSBOW = 4;
const int NPC_TALENT_PICKLOCK = 5;
const int NPC_TALENT_PICKPOCKET = 6;
const int NPC_TALENT_MAGE = 7;
// Special-Talents
const int NPC_TALENT_SNEAK = 8;
const int NPC_TALENT_REGENERATE = 9;
const int NPC_TALENT_FIREMASTER = 10;
const int NPC_TALENT_ACROBAT = 11;

const int NPC_TALENT_MAX = 12;

/*
Tal_Configure(NPC_TALENT_1H, 1);
Tal_Configure(NPC_TALENT_2H, 1);
Tal_Configure(NPC_TALENT_BOW, 1);
Tal_Configure(NPC_TALENT_CROSSBOW, true);
Tal_Configure(NPC_TALENT_PICKLOCK, 1);
Tal_Configure(NPC_TALENT_PICKPOCKET 1);
Tal_Configure(NPC_TALENT_MAGE, 0);
Tal_Configure(NPC_TALENT_SNEAK, 0);
Tal_Configure(NPC_TALENT_REGENERATE, false);
Tal_Configure(NPC_TALENT_FIREMASTER, 0);
Tal_Configure(NPC_TALENT_ACROBAT, 0);
*/

//
//	PERCEPTIONS ( ACTIVE )
//
const int PERC_ASSESSPLAYER = 1;
const int PERC_ASSESSENEMY = 2;
const int PERC_ASSESSFIGHTER = 3;
const int PERC_ASSESSBODY = 4;
const int PERC_ASSESSITEM = 5;

//
//	SENSES
//
const int SENSE_SEE = 1 << 0;
const int SENSE_HEAR = 1 << 1;
const int SENSE_SMELL = 1 << 2;

//
//	PERCEPTIONS ( PASSIVE )
//
const int PERC_ASSESSMURDER = 6;
const int PERC_ASSESSDEFEAT = 7;
const int PERC_ASSESSDAMAGE = 8;
const int PERC_ASSESSOTHERSDAMAGE = 9;
const int PERC_ASSESSTHREAT = 10;
const int PERC_ASSESSREMOVEWEAPON = 11;
const int PERC_OBSERVEINTRUDER = 12;
const int PERC_ASSESSFIGHTSOUND = 13;
const int PERC_ASSESSQUIETSOUND = 14;
const int PERC_ASSESSWARN = 15;
const int PERC_CATCHTHIEF = 16;
const int PERC_ASSESSTHEFT = 17;
const int PERC_ASSESSCALL = 18;
const int PERC_ASSESSTALK = 19;
const int PERC_ASSESSGIVENITEM = 20;
const int PERC_ASSESSFAKEGUILD = 21;
const int PERC_MOVEMOB = 22;
const int PERC_MOVENPC = 23;
const int PERC_DRAWWEAPON = 24;
const int PERC_OBSERVESUSPECT = 25;
const int PERC_NPCCOMMAND = 26;
const int PERC_ASSESSMAGIC = 27;
const int PERC_ASSESSSTOPMAGIC = 28;
const int PERC_ASSESSCASTER = 29;
const int PERC_ASSESSSURPRISE = 30;
const int PERC_ASSESSENTERROOM = 31;
const int PERC_ASSESSUSEMOB = 32;

//
//	NEWS SPREAD MODE
//
const int NEWS_DONT_SPREAD = 0;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_VICTIM = 1;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_WITNESS = 2;
const int NEWS_SPREAD_NPC_FRIENDLY_TOWARDS_OFFENDER = 3;
const int NEWS_SPREAD_NPC_SAME_GUILD_VICTIM = 4;

//
//	NEWS CONSTANTS
//
const int IMPORTANT = 1;

//
//	INFO STATUS
//
const int INF_TELL = 0;
const int INF_UNKNOWN = 2;

//
//	MISSION STATUS
//
// const int MIS_FREE = 0; // Mission wurde noch nicht vergeben
// const int MIS_REFUSED = 2; // Mission wurde abgelehnt
// const int MIS_RUNNING = 3; // Mission läuft gerade
// const int MIS_SUCCESS = 4; // Mission erfolgreich beendet
// const int MIS_FAILED = 7; // Mission wurde abgebrochen

const int LOG_RUNNING = 1; // Mission läuft gerade
const int LOG_SUCCESS = 2; // Mission erfolgreich beendet
const int LOG_FAILED = 3; // Mission wurde abgebrochen
const int LOG_OBSOLETE = 4; // Mission ist hinfaellig

//
//	ATTITUDES
//
const int ATT_FRIENDLY = 3;
const int ATT_NEUTRAL = 2;
const int ATT_ANGRY = 1;
const int ATT_HOSTILE = 0;

//
//	HUMAN GUILDS
//
const int GIL_NONE = 0; // gildenlose
const int GIL_HUMAN = 1; // Special Guild -> Set Constants for all Human Guilds
const int GIL_EBR = 1; // Erzbarone 6* +3Babes
const int GIL_GRD = 2; // Söldner
const int GIL_STT = 3; // Schatten 10
const int GIL_KDF = 4; // Kreis des Feuers 6
const int GIL_VLK = 5; // Volk/Buddler 10
const int GIL_KDW = 6; // Kreis des Wassers 6
const int GIL_SLD = 7; // Garde 8-9svm
const int GIL_ORG = 8; // Organisatoren 9-10svm
const int GIL_BAU = 9; // Bauern 6 svm
const int GIL_SFB = 10; // Schürferbund 9-10 svm
const int GIL_GUR = 11; // Gurus 5 svm
const int GIL_NOV = 12; // Novizen 10- svm
const int GIL_TPL = 13; // Templer 10 svm
const int GIL_DMB = 14; // Dämonenbeschwörer 1
const int GIL_BAB = 15; // Die Meister
const int GIL_SEPERATOR_HUM = 16;
const int MAX_GUILDS = 16;

//
//	MONSTER GUILDS
//
const int GIL_WARAN = 17; // Waran
const int GIL_SLF = 18; // Schläfer
const int GIL_GOBBO = 19; // Gobbo (Höhlen und Oberwelt)
const int GIL_TROLL = 20; // Troll
const int GIL_SNAPPER = 21; // Snapper (neu)
const int GIL_MINECRAWLER = 22; // Minecrawler & Queen
const int GIL_MEATBUG = 23; // Meatbugs
const int GIL_SCAVENGER = 24; // Attack Chicken
const int GIL_DEMON = 25; // der Geflügel(te) Dämon
const int GIL_WOLF = 26; // Oberwelt Wolf
const int GIL_SHADOWBEAST = 27; // Unsere Miezekatz'
const int GIL_BLOODFLY = 28; // Scorpionlibelle
const int GIL_SWAMPSHARK = 29; // Sumpfhai
const int GIL_ZOMBIE = 30; // "Menschen" Zombies
const int GIL_UNDEADORC = 31; // Untote Orcs (Krieger & Hohepriester)
const int GIL_SKELETON = 32; // "Menschen" Skelette
const int GIL_ORCDOG = 33; // Orc-Wachhund (Zähne auf Beinen)
const int GIL_MOLERAT = 34; // Der Nacktmole
const int GIL_GOLEM = 35; // Lapidor
const int GIL_LURKER = 36;
const int GIL_SEPERATOR_ORC = 37;
const int GIL_ORCSHAMAN = 38;
const int GIL_ORCWARRIOR = 39;
const int GIL_ORCSCOUT = 40;
const int GIL_ORCSLAVE = 41;
const int GIL_MAX = 42;

//
//	GUILDS DESCRIPTION
//
class C_GILVALUES
{
	var int WATER_DEPTH_KNEE [GIL_MAX];
	var int WATER_DEPTH_CHEST [GIL_MAX];
	var int JUMPUP_HEIGHT [GIL_MAX]; // DEFAULT = 200;
//	VAR INT JUMPUP_FORCE [GIL_MAX];
	var int SWIM_TIME [GIL_MAX];
	var int DIVE_TIME [GIL_MAX];
	var int STEP_HEIGHT [GIL_MAX];
	var int JUMPLOW_HEIGHT [GIL_MAX];
	var int JUMPMID_HEIGHT [GIL_MAX];
	var int SLIDE_ANGLE [GIL_MAX];
	var int SLIDE_ANGLE2 [GIL_MAX];
	var int DISABLE_AUTOROLL [GIL_MAX]; // DEFAULT = 0; 0 = Autoroll enabled / 1 = Autoroll disabled
	var int SURFACE_ALIGN [GIL_MAX]; // DEFAULT = 0; 0 = Alignment disabled / 1 = Alignment enabled
	var int CLIMB_HEADING_ANGLE [GIL_MAX];
	var int CLIMB_HORIZ_ANGLE [GIL_MAX];
	var int CLIMB_GROUND_ANGLE [GIL_MAX];
	var int FIGHT_RANGE_BASE [GIL_MAX];
	var int FIGHT_RANGE_FIST [GIL_MAX];
	var int FIGHT_RANGE_1HS [GIL_MAX];
	var int FIGHT_RANGE_1HA [GIL_MAX];
	var int FIGHT_RANGE_2HS [GIL_MAX];
	var int FIGHT_RANGE_2HA [GIL_MAX];
	var int FALLDOWN_HEIGHT [GIL_MAX]; // Wie tief Fallen ohne Schaden ?
	var int FALLDOWN_DAMAGE [GIL_MAX]; // Schaden für jeden weiteren angefangenen Meter.
	var int BLOOD_DISABLED [GIL_MAX]; // DEFAULT = 0; Blut ganz ausschalten (z.B. bei Sekletten) ?
	var int BLOOD_MAX_DISTANCE [GIL_MAX]; // DEFAULT = 1000; Wie weit spritzt das Blut (in cm) ?
	var int BLOOD_AMOUNT [GIL_MAX]; // DEFAULT = 10; Wie viel Blut ?
	var int BLOOD_FLOW [GIL_MAX]; // DEFAULT = 0; Soll es sich langsam ausbreiten ?
	var string BLOOD_EMITTER [GIL_MAX]; // DEFAULT = "PFX_BLOOD"; Welcher Partikel-Emitter ?
	var string BLOOD_TEXTURE [GIL_MAX]; // DEFAULT = "ZBLOODSPLAT2.TGA"; Welche Textur ?
	var int TURN_SPEED [GIL_MAX]; // DEFAULT = 150;
};

//
//	SOUND TYPES
//
const int NPC_SOUND_DROPTAKE = 1;
const int NPC_SOUND_SPEAK = 3;
const int NPC_SOUND_STEPS = 4;
const int NPC_SOUND_THROWCOLL = 5;
const int NPC_SOUND_DRAWWEAPON = 6;
const int NPC_SOUND_SCREAM = 7;
const int NPC_SOUND_FIGHT = 8;

//
//	MATERIAL TYPES
//
const int MAT_WOOD = 0;
const int MAT_STONE = 1;
const int MAT_METAL = 2;
const int MAT_LEATHER = 3;
const int MAT_CLAY = 4;
const int MAT_GLAS = 5; // ??

//
//	LOG
//
const int LOG_MISSION = 0;
const int LOG_NOTE = 1;

//
//	OTHER CONSTANTS
//
const int TIME_INFINITE = - 1000000 / 1000;
const int NPC_VOICE_VARIATION_MAX = 10;

const int _ = 0;