/*******************************************
* Extremo spielt Dudelsack *
*******************************************/

func void ZS_IEPFEIFFER()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IEPFEIFFER");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};

func int ZS_IEPFEIFFER_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IEPFEIFFER_Loop");

	if (InExtremoPlaying)
	{
		_ = AI_UseMob(self, "MPIPE", 1);

		// Intro
		_ = AI_UseMob(self, "MPIPE", 1); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 2); // 5
		// 6
		// 7
		// 8
		// Verse 1
		_ = AI_UseMob(self, "MPIPE", 1); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 2); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		// Bridge
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		// Verse 2
		_ = AI_UseMob(self, "MPIPE", 5); // 1
		// 2
		_ = AI_UseMob(self, "MPIPE", 4); // 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 5); // 5
		// 6
		_ = AI_UseMob(self, "MPIPE", 4); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		_ = AI_UseMob(self, "MPIPE", 4); // 2

		// Bridge2
		_ = AI_UseMob(self, "MPIPE", 6);
		// Verse 3
		_ = AI_UseMob(self, "MPIPE", 5);
		// 2
		_ = AI_UseMob(self, "MPIPE", 6); // 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 7); // 5
		_ = AI_UseMob(self, "MPIPE", 6); // 6
		_ = AI_UseMob(self, "MPIPE", 7); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 2);
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 2); // 5
		// 6
		// 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MPIPE", 3); // 1
		// 2
		// 3
		// 4
		_ = AI_UseMob(self, "MPIPE", 2); // 5
		// 6

		_ = AI_UseMob(self, "MPIPE", 3);
		_ = AI_UseMob(self, "MPIPE", -1);
	};

	return LOOP_CONTINUE;
};

func void ZS_IEPFEIFFER_End()
{
	_ = AI_UseMob(self, "MPIPE", -1);

	PrintDebugNpc(PD_TA_FRAME, "ZS_IEPFEIFFER_End");
};
