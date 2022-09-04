// ****************************
// Nahkampf - AI Snapper (18)
// ****************************

/*
const int MOVE_RUN = 1; // Gegner in meinem Fokus + steht wer dazwischen? (G)
const int MOVE_JUMPBACK = 3; // löst t_ParadeJumpB aus (Attacke wird nur pariert, wenn man schnell genug aus der W-Reichweite kommt!
const int MOVE_TURN = 4; // Immer bis Gegner im Fokus (also nie durch neue Aktion unterbrochen, höchstens durch Gegner-Attacke)
const int MOVE_STRAFE = 5; // (Richtung wird vom Programm entschieden)

const int MOVE_ATTACK = 6; // in ComboZone = Combo / im Rennen = Sturmattacke?
const int MOVE_PARADE = 17; // (keine Attacke = oben)

const int MOVE_WAIT = 19; // 200 ms
*/

// W - Waffen-Reichweite (FIGHT_RANGE_FIST * 3)
// G - Gehen-Reichweite (3 * W). Puffer für Fernkämpfer in dem sie zur NK-Waffe wechseln sollten
// FK - Fernkampf-Reichweite (30m)

//////////////////////////////////////////////////
// Meine Reaktionen auf Gegner-Aktionen:
//////////////////////////////////////////////////

// Gegner attackiert mich
instance FA_ENEMY_PREHIT_18(C_FightAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_WAIT;
};

// Gegner macht Sturmattacke
instance FA_ENEMY_STORMPREHIT_18(C_FightAI)
{
// FIXME: Auch wenn ich einfach so auf das Monster zurenne, macht es eine ParadeJumpB!
	move[0] = MOVE_STRAFE;
};

//////////////////////////////////////////////////
// Meine Aktionen wenn Gegner in Waffenreichweite:
//////////////////////////////////////////////////

// was tun, wenn ich gerade auf den Gegner zurenne?
instance FA_MY_W_RUNTO_18(C_FightAI)
{
	move[0] = MOVE_ATTACK;
};

// was tun, wenn ich gerade Strafe?
instance FA_MY_W_STRAFE_18(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_W_FOCUS_18(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};

// was tun, wenn ich den Gegner nicht im Focus habe?
instance FA_MY_W_NOFOCUS_18(C_FightAI)
{
	move[0] = MOVE_TURN;
};

////////////////////////////////////////////////////////////
// Meine Aktionen wenn Gegner Waffenreichweite * 3 entfernt:
////////////////////////////////////////////////////////////

// was tun, wenn ich gerade auf den Gegner zurenne?
instance FA_MY_G_RUNTO_18(C_FightAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_ATTACK;
};

// was tun, wenn ich gerade Strafe?
// FIXME: wenn hier ATTACK eingetragen ist, müsste dann nicht nach jedem Strafe eine Attack kommen??
instance FA_MY_G_STRAFE_18(C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_TURN;
};

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_G_FOCUS_18(C_FightAI)
{
	move[0] = MOVE_RUN;
};

////////////////////////////////////
// Gegner weiter als Waffenreichweite * 3 entfernt
////////////////////////////////////

// was tun, wenn ich den Gegner im Focus habe?
instance FA_MY_FK_FOCUS_18(C_FightAI)
{
	move[0] = MOVE_RUN;
};

// was tun, wenn ich den Gegner nicht im Focus habe? (gilt auch für G-Distanz!)
instance FA_MY_G_FK_NOFOCUS_18(C_FightAI)
{
	move[0] = MOVE_TURN;
};
