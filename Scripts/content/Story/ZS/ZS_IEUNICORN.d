/*******************************************
* Extremo spielt Laute *
*******************************************/

func void ZS_IEUNICORN()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEUNICORN");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEUNICORN_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IEUNICORN_Loop");

	if (InExtremoPlaying)
	{
		// Intro
		_ = AI_UseMob(self, "MLUTE", 1); // 1
		// 2
		_ = AI_UseMob(self, "MLUTE", 2); // 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 1); // 5
		// 6
		_ = AI_UseMob(self, "MLUTE", 2); // 7
		// 8
		// Verse 1
		_ = AI_UseMob(self, "MLUTE", 1); // 1
		// 2
		_ = AI_UseMob(self, "MLUTE", 2); // 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 1); // 5
		// 6
		_ = AI_UseMob(self, "MLUTE", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MLUTE", 2); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 3); // 5
		// 6
		// 7
		// 8
		// Bridge
		_ = AI_UseMob(self, "MLUTE", 2); // 1
		// 2
		// Verse 2
		_ = AI_UseMob(self, "MLUTE", 1); // 1
		// 2
		_ = AI_UseMob(self, "MLUTE", 2); // 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 1); // 5
		// 6
		_ = AI_UseMob(self, "MLUTE", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MLUTE", 1); // 1
		// 2
		_ = AI_UseMob(self, "MLUTE", 2); // 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 3); // 5
		// 6
		// 7
		// 8
		// Bridge2
		_ = AI_UseMob(self, "MLUTE", 2); // 1
		// 2
		// 3
		// 4
		// Verse 3
		_ = AI_UseMob(self, "MLUTE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 2); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MLUTE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 2); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MLUTE", 1); // 1
		// 2
		_ = AI_UseMob(self, "MLUTE", 2); // 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 1); // 5
		// 6
		_ = AI_UseMob(self, "MLUTE", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MLUTE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MLUTE", 1); // 5
		// 6
		_ = AI_UseMob(self, "MLUTE", 2); // 7
		_ = AI_UseMob(self, "MLUTE", -1);
	};

	return LOOP_CONTINUE;
};

func void ZS_IEUNICORN_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEUNICORN_End");
	_ = AI_UseMob(self, "MLUTE", -1);
};
