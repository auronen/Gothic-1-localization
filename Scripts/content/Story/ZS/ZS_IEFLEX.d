/*******************************************
* Extremo spielt Dudelsack *
*******************************************/

func void ZS_IEFLEX()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEFLEX");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	_ = AI_UseMob(self, "MPIPE", 1);
};

func int ZS_IEFLEX_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IEFLEX_Loop");

	if (InExtremoPlaying)
	{
		// Intro
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 2); // 5
		// 6
		// 7
		// 8
		// Verse 1
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 4); // 5
		// 6
		_ = AI_UseMob(self, "MPIPE", 5); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		_ = AI_UseMob(self, "MPIPE", 7); // 2
		_ = AI_UseMob(self, "MPIPE", 6); // 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 5); // 5
		// 6
		_ = AI_UseMob(self, "MPIPE", 4); // 7
		// 8
		// Bridge
		_ = AI_UseMob(self, "MPIPE", 5); // 1
		// 2
		// Verse 2
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 4); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		// 2
		// 3
		_ = AI_UseMob(self, "MPIPE", 8); // 4
		// 5
		_ = AI_UseMob(self, "MPIPE", 7); // 6
		_ = AI_UseMob(self, "MPIPE", 6); // 7
		_ = AI_UseMob(self, "MPIPE", 7); // 8
		// Bridge2
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		_ = AI_UseMob(self, "MPIPE", 7); // 2
		_ = AI_UseMob(self, "MPIPE", 6); // 3
		// 4
		// Verse 3
		_ = AI_UseMob(self, "MPIPE", 5); // 1
		// 2
		_ = AI_UseMob(self, "MPIPE", 6); // 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 5); // 5
		// 6
		// 7
		// 8
		// Refrain
		// 1
		_ = AI_UseMob(self, "MPIPE", 3); // 2
		_ = AI_UseMob(self, "MPIPE", 4); // 3
		_ = AI_UseMob(self, "MPIPE", 3); // 4
		_ = AI_UseMob(self, "MPIPE", 4); // 5
		// 6
		_ = AI_UseMob(self, "MPIPE", 5); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 4); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 6); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 4); // 5
		// 6
		_ = AI_UseMob(self, "MPIPE", 5); // 7
		_ = AI_UseMob(self, "MPIPE", -1);
	};

	return LOOP_CONTINUE;
};

func void ZS_IEFLEX_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEFLEX_End");
	_ = AI_UseMob(self, "MPIPE", -1);
};
