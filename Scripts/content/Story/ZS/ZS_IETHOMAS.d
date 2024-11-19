/*******************************************
* Extremo spielt Cello *
*******************************************/

func void ZS_IETHOMAS()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IETHOMAS");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};

func int ZS_IETHOMAS_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IETHOMAS_Loop");

	if (InExtremoPlaying)
	{
		// AI_PlayAni(self, "T_STAND_2_IECELLO");

		_ = AI_UseMob(self, "MCELLO", 1);

		// Intro
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 1); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 2); // 5
		// 6
		_ = AI_UseMob(self, "MCELLO", 1); // 7
		// 8
		// Verse 1
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 1); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 2); // 5
		// 6
		_ = AI_UseMob(self, "MCELLO", 1); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		_ = AI_UseMob(self, "MCELLO", 3); // 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		_ = AI_UseMob(self, "MCELLO", 3); // 4
		_ = AI_UseMob(self, "MCELLO", 2); // 5
		_ = AI_UseMob(self, "MCELLO", 3); // 6
		_ = AI_UseMob(self, "MCELLO", 2); // 7
		_ = AI_UseMob(self, "MCELLO", 3); // 8
		// Bridge
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		_ = AI_UseMob(self, "MCELLO", 3); // 2
		// Verse 2
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 1); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 2); // 5
		// 6
		_ = AI_UseMob(self, "MCELLO", 1); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		_ = AI_UseMob(self, "MCELLO", 3); // 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		_ = AI_UseMob(self, "MCELLO", 3); // 4
		_ = AI_UseMob(self, "MCELLO", 2); // 5
		_ = AI_UseMob(self, "MCELLO", 3); // 6
		_ = AI_UseMob(self, "MCELLO", 2); // 7
		_ = AI_UseMob(self, "MCELLO", 3); // 8
		// Bridge2
		_ = AI_UseMob(self, "MCELLO", 2); // 1
		_ = AI_UseMob(self, "MCELLO", 3); // 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		// 4
		// Verse 3
		_ = AI_UseMob(self, "MCELLO", 1); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 1); // 5
		// 6
		_ = AI_UseMob(self, "MCELLO", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MCELLO", 1); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 1); // 5
		// 6
		_ = AI_UseMob(self, "MCELLO", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MCELLO", 3); // 1
		_ = AI_UseMob(self, "MCELLO", 2); // 2
		_ = AI_UseMob(self, "MCELLO", 3); // 3
		_ = AI_UseMob(self, "MCELLO", 2); // 4
		_ = AI_UseMob(self, "MCELLO", 3); // 5
		_ = AI_UseMob(self, "MCELLO", 2); // 6
		_ = AI_UseMob(self, "MCELLO", 3); // 7
		_ = AI_UseMob(self, "MCELLO", 2); // 8
		// Refrain
		_ = AI_UseMob(self, "MCELLO", 1); // 1
		// 2
		_ = AI_UseMob(self, "MCELLO", 2); // 3
		// 4
		_ = AI_UseMob(self, "MCELLO", 3); // 5
		_ = AI_UseMob(self, "MCELLO", 2); // 6
		_ = AI_UseMob(self, "MCELLO", 3); // 7
		_ = AI_UseMob(self, "MCELLO", 2); // 8

		_ = AI_UseMob(self, "MCELLO", -1);
	};

	return LOOP_CONTINUE;
};

func void ZS_IETHOMAS_End()
{
	_ = AI_UseMob(self, "MCELLO", -1);

	PrintDebugNpc(PD_TA_FRAME, "ZS_IETHOMAS_End");
};
