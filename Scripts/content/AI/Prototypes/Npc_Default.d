// ****************
// Neuer NSC
// ****************

prototype Npc_Default(C_NPC)
{
	// -------- primary data --------

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 5;
	attribute[ATR_DEXTERITY]		= 5;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 30;
	attribute[ATR_HITPOINTS]		= 30;

	// -------- protection --------
	protection[PROT_EDGE]			= 0;
	protection[PROT_BLUNT]			= 0;
	protection[PROT_POINT]			= 0;
	protection[PROT_FIRE]			= 0;
	protection[PROT_MAGIC]			= 0;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// Hier noch die Spells anmelden, für ausgrauen (CreateSpell)

	// -------- ai --------
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 2000; // SN: am 30.11.00 von 15m auf 20m erhöht (WICHTIG für Profilings!)

	// -------- talents --------
	Npc_SetTalentValue(self, NPC_TALENT_1H, 0);
	Npc_SetTalentValue(self, NPC_TALENT_2H, 0);
	Npc_SetTalentValue(self, NPC_TALENT_BOW, 0);
	Npc_SetTalentValue(self, NPC_TALENT_CROSSBOW, 0);
	Npc_SetTalentValue(self, NPC_TALENT_PICKLOCK, 90);
	Npc_SetTalentValue(self, NPC_TALENT_PICKPOCKET, 90);

	// -------- inventory --------

	// -------- daily routine --------
};
