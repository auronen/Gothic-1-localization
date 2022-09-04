// *******************************
// Kampf AI Klasse und Konstanten
// *******************************

// Reaktionen von NSCs können sein :
const int MOVE_RUN = 1; // Gegner in meinem Fokus + steht wer dazwischen? (G)
const int MOVE_RUNBACK = 2; // Gegner in meinem Fokus
const int MOVE_JUMPBACK = 3;
const int MOVE_TURN = 4; // Immer bis Gegner im Fokus (also nie durch neue Aktion unterbrochen, höchstens durch Gegner-Attacke)
const int MOVE_STRAFE = 5; // (Richtung wird vom Programm entschieden)
const int MOVE_ATTACK = 6; // in ComboZone = Combo / im Rennen = Sturmattacke?
const int MOVE_SIDEATTACK = 7;
const int MOVE_FRONTATTACK = 8;
const int MOVE_TRIPLEATTACK = 9;
const int MOVE_WHIRLATTACK = 10;
const int MOVE_MASTERATTACK = 11;
const int MOVE_TURNTOHIT = 15; // Version > 0.92 => No Effect
const int MOVE_PARADE = 17; // (keine Attacke = oben)
const int MOVE_STANDUP = 18;
const int MOVE_WAIT = 19;

const int MAX_MOVE = 6;

const int MAX_FIGHTAI = 30; // Anzahl vorhandener Fight-AIs

class C_FightAI
{
	var int move[MAX_MOVE];
};
