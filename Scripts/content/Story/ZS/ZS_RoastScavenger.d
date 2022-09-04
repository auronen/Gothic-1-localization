/*******************************************
* NSC dreht Scavengergrill *
*******************************************/

func void ZS_RoastScavenger()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_RoastScavenger");

	B_SetPerception(self);

	if (!(C_BodyStateContains(self, BS_MOBINTERACT)))
	{
		AI_SetWalkMode(self, NPC_WALK); // Walkmode für den Zustand
		B_StartUseMob(self, "BARBQ");
	};
};

func void ZS_RoastScavenger_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_RoastScavenger_Loop"); // Da hier nur eine Ani geloopt wird reicht es diese in Begin und End zu benutzen

	var int randomizer;
	randomizer = Hlp_Random(20);
	if (Npc_GetStateTime(self) >= 100 + randomizer)
	{
		B_InterruptMob("BARBQ");
	};

	AI_Wait(self, 1);
};

func void ZS_RoastScavenger_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_RoastScavenger_End");
	AI_UseMob(self, "BARBQ", -1); // Verlassen sie bitte ihr Mobsi
};
