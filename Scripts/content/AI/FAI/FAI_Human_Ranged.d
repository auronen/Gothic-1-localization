// ****************************
// Nahkampf - AI Human Ranged (29)
// ****************************

/*
const int MOVE_RUN = 1; // Gegner in meinem Fokus + steht wer dazwischen? (G)
const int MOVE_RUNBACK = 2; // Gegner in meinem Fokus
const int MOVE_JUMPBACK = 3; // löst t_ParadeJumpB aus (Attacke wird nur pariert, wenn man schnell genug aus der W-Reichweite kommt!
const int MOVE_TURN = 4; // Immer bis Gegner im Fokus (also nie durch neue Aktion unterbrochen, höchstens durch Gegner-Attacke)
const int MOVE_STRAFE = 5; // (Richtung wird vom Programm entschieden)

const int MOVE_ATTACK = 6; // in ComboZone = Combo / im Rennen = Sturmattacke?
const int MOVE_SIDEATTACK = 7;
const int MOVE_FRONTATTACK = 8;
const int MOVE_TRIPLEATTACK = 9;
const int MOVE_WHIRLATTACK = 10;
const int MOVE_MASTERATTACK = 11;

const int MOVE_PARADE = 17; // (keine Attacke = oben)
const int MOVE_STANDUP = 18;
const int MOVE_WAIT = 19; // 200 ms
*/

// W - Waffen-Reichweite (FIGHT_RANGE_FIST * 3)
// G - Gehen-Reichweite (3 * W). Puffer für Fernkämpfer in dem sie zur NK-Waffe wechseln sollten
// FK - Fernkampf-Reichweite (30m)

//////////////////////////////////////////////////
// Meine Reaktionen auf Gegner-Aktionen:
//////////////////////////////////////////////////

// Gegner attackiert mich
instance FA_ENEMY_PREHIT_29(C_FightAI)
{
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_PARADE;
	move[2] = MOVE_JUMPBACK;
};

// Gegner macht Sturmattacke
instance FA_ENEMY_STORMPREHIT_29(C_FightAI)
{
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_PARADE;
	move[2] = MOVE_JUMPBACK;
};

//////////////////////////////////////////////////
// Meine Aktionen wenn Gegner in Waffenreichweite:
//////////////////////////////////////////////////

// was tun, wenn ich im Combofenster einer Attacke bin?
instance FA_MY_W_COMBO_29(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_FRONTATTACK;
};

// was tun, wenn ich gerade auf den Gegner zurenne?
instance FA_MY_W_RUNTO_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

// was tun, wenn ich gerade Strafe?
instance FA_MY_W_STRAFE_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_W_FOCUS_29(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_ATTACK;
	move[2] = MOVE_TRIPLEATTACK;
	move[3] = MOVE_FRONTATTACK;
	move[4] = MOVE_STRAFE;
};

// was tun, wenn ich den Gegner nicht im Focus habe?
instance FA_MY_W_NOFOCUS_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

////////////////////////////////////////////////////////////
// Meine Aktionen wenn Gegner Waffenreichweite * 3 entfernt:
////////////////////////////////////////////////////////////

instance FA_MY_G_COMBO_29(C_FightAI)
{
	move[0] = MOVE_TURN;
	move[1] = MOVE_ATTACK;
};

// was tun, wenn ich gerade auf den Gegner zurenne?
instance FA_MY_G_RUNTO_29(C_FightAI)
{
	move[0] = MOVE_TURN;
	move[1] = MOVE_ATTACK;
};

// was tun, wenn ich gerade Strafe?
instance FA_MY_G_STRAFE_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_G_FOCUS_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

////////////////////////////////////
// Gegner weiter als Waffenreichweite * 3 entfernt
////////////////////////////////////

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_FK_FOCUS_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

// was tun, wenn ich den Gegner nicht im Focus habe? (gilt auch für G-Distanz!)
instance FA_MY_G_FK_NOFOCUS_29(C_FightAI)
{
	move[0] = MOVE_TURN;
};

// SN 08.10.00: Die neuen Instanzen wenn Gegner in Fernkampfreichweite und der NSC im Fernkampfmodus ist
instance FA_MY_FK_FOCUS_FAR_29(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
	move[2] = MOVE_WAIT;
	move[3] = MOVE_WAIT;
	move[4] = MOVE_WAIT;
	move[5] = MOVE_WAIT;
};

instance FA_MY_FK_NOFOCUS_FAR_29(C_FightAI)
{
	move[0] = MOVE_TURN;
	move[1] = MOVE_WAIT;
};
