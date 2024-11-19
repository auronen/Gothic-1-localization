/*******************************************
* Extremo spielt Pauke *
*******************************************/

func void ZS_IEFLAIL()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEFLAIL");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEFLAIL_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IEFLAIL_Loop");

	if (InExtremoPlaying)
	{
		// Intro
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 0); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 0); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 0); // 8
		// Verse,1
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 0); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 0); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 0); // 8
		// Refrain
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 2); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 2); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 2); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 2); // 8
		// Bridge
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		// Verse,2
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 0); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 0); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 0); // 8
		// Refrain
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 2); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 2); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 2); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 2); // 8
		// Bridge,2
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 0); // 4
		// Verse 3
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 0); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 0); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 0); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 0); // 8
		// Refrain
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 2); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 2); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 2); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 2); // 8
		// Refrain
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 2); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 2); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 2); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 2); // 8
		// Refrain
		_ = AI_UseMob(self, "PAUKE", 1); //,1
		_ = AI_UseMob(self, "PAUKE", 2); //,2
		_ = AI_UseMob(self, "PAUKE", 1); // 3
		_ = AI_UseMob(self, "PAUKE", 2); // 4
		_ = AI_UseMob(self, "PAUKE", 1); // 5
		_ = AI_UseMob(self, "PAUKE", 2); // 6
		_ = AI_UseMob(self, "PAUKE", 1); // 7
		_ = AI_UseMob(self, "PAUKE", 2); // 8
		_ = AI_UseMob(self, "PAUKE", -1);
	};

	return LOOP_CONTINUE;
};

func void ZS_IEFLAIL_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEFLAIL_End");
	_ = AI_UseMob(self, "PAUKE", -1);
};
