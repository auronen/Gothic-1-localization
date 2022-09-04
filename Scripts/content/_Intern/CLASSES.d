
//////////////////////////////////////
// 	class - Definitions
//	Global Instances
//	Phoenix V0.76
//////////////////////////////////////

const int MAX_CHAPTER = 5;
const int MAX_MISSIONS = 5;

class C_NPC
{
	var int id; // absolute ID des NPCs
	var string name [5]; // Namen des NPC
	var string slot;
	var int npcType;
	var int flags;
	var int attribute [ATR_INDEX_MAX];
	var int protection [PROT_INDEX_MAX];
	var int damage [DAM_INDEX_MAX];
	var int damagetype;
	var int guild, level;

	var func mission [MAX_MISSIONS];
	var int fight_tactic;
	var int weapon;

	var int voice;
	var int voicePitch;
	var int bodymass;

	var func daily_routine; // Tagesablauf
	var func start_aistate; // Zustandsgesteuert

	// **********************
	// Spawn
	// **********************
	var string spawnPoint; // Beim Tod, wo respawnen ?
	var int spawnDelay; // Mit Delay in (Echtzeit)-Sekunden

	// **********************
	// SENSES
	// **********************
	var int senses; // Sinne
	var int senses_range; // Reichweite der Sinne in cm

	// **********************
	// Feel free to use
	// **********************
	var int aivar [50];
	var string wp;

	// **********************
	// Experience dependant
	// **********************
	var int exp; // EXerience Points
	var int exp_next; // EXerience Points needed to advance to next level
	var int lp; // Learn Points
};

class C_Mission
{
	var string name; // Name des Auftrages
	var string description;
	var int duration; // Max. Dauer in Tageszeiten
	var int important;

	var func offerConditions;
	var func offer;
	var func successConditions;
	var func success;
	var func failureConditions;
	var func failure;
	var func obsoleteConditions;
	var func obsolete;
	var func running;
};

class C_Item
{
	// Für alle Items
	var int id;
	var string name, nameID;
	var int hp, hp_max;

	var int mainflag, flags; // Hauptflag und weitere Flags
	var int weight, value;

	// Für Waffen
	var int damageType; // Welche Schadensarten
	var int damageTotal;
	var int damage [DAM_INDEX_MAX];

	// Für Rüstungen
	var int wear;
	var int protection [PROT_INDEX_MAX];

	// Für Nahrung
	var int nutrition; // HP-Steigerung bei Nahrung

	// Benötigte Attribute zum Benutzen des Items
	var int cond_atr [3];
	var int cond_value [3];

	// Attribute, die bei anlegen des Items verändert werden
	var int change_atr [3];
	var int change_value [3];

	// Parserfunktionen
	var func magic; // Parserfunktion zum "Magie Header"
	var func on_equip; // Parserfunktion, wenn Item equipped wird.
	var func on_unequip; // Parserfunktion, wenn Item unequipped wird.
	var func on_state [4];

	// Besitzer
	var func owner; // Besitzer : Instanz-Name
	var int ownerGuild; // Besitzer : Gilde
	var int disguiseGuild; // Zur Schau getragene Gilde durch Verkleidung

	// Die 3DS-Datei
	var string visual;

	// Veränderung des NSC-Meshes beim Anlegen dieses Gegenstandes
	var string visual_change; // ASC - File
	var int visual_skin;

	var string scemeName;
	var int material;
	// VAR STRING pfx; // Magic Weapon PFX
	var int munition; // instance of Munition

	var int spell;
	var int range;

	var int mag_circle;

	var string description;
	var string text [ITM_TEXT_MAX];
	var int count [ITM_TEXT_MAX];
};

class C_Focus
{
	/// für NSCs
	var float npc_longrange; // Zurufweite ( 20 m )
	var float npc_range1, npc_range2; // Reichweite
	var float npc_azi; // Azimuth ( Seitenwinkel )
	var float npc_elevdo, npc_elevup; // Elevation ( Höhenwinkel )
	var int npc_prio; // Priorität

	/// für ITEMs
	var float item_range1, item_range2; // Reichweite
	var float item_azi; // Azimuth ( Seitenwinkel )
	var float item_elevdo, item_elevup; // Elevation ( Höhenwinkel )
	var int item_prio; // Priorität

	/// für MOBs
	var float mob_range1, mob_range2; // Reichweite
	var float mob_azi; // Azimuth ( Seitenwinkel )
	var float mob_elevdo, mob_elevup; // Elevation ( Höhenwinkel )
	var int mob_prio; // Priorität
};

class C_INFO
{
	var int npc;
	var int nr;
	var int important; // Wichtig Flag -> ansprechen
	var func condition;
	var func information;
	var string description;
	var int trade;
	var int permanent;
};

class C_ITEMREACT
{
	var int npc;
	var int trade_item;
	var int trade_amount;
	var int requested_cat;
	var int requested_item;
	var int requested_amount;
	var func reaction;
};

// ************************************************************
// Globale Klasseninstanzen
// ************************************************************

// Aktueller Npc und der SC
instance self, other(C_NPC);

// Opfer bei "witness"-Aktionen
instance victim(C_NPC);

// aktuelles Item
instance item(C_Item);

// Und der Player immer als globale Instanz
instance hero(C_NPC);
