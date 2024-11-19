/*******************************************
* Extremo spielt Drumscheit *
*******************************************/

func void ZS_IELUTTER()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_IELUTTER");

	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoWP(self, self.wp);
	AI_AlignToWP(self);
};

func int ZS_IELUTTER_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_IELUTTER_Loop");

	if (InExtremoPlaying)
	{
		// Intro
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 7
		// 8
		// Verse 1
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 7
		// 8
		// Bridge
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 1
		// 2
		// Verse 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 7
		// 8
		// Bridge2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 3
		// 4
		// Verse 3
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 1); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 7
		// 8
		// Refrain
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 1
		// 2
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 3
		// 4
		_ = AI_UseMob(self, "MDRUMSCHEIT", 2); // 5
		// 6
		_ = AI_UseMob(self, "MDRUMSCHEIT", 3); // 7
		_ = AI_UseMob(self, "MDRUMSCHEIT", -1); // ENDE
	};

	return LOOP_CONTINUE;
};

func void ZS_IELUTTER_End()
{
	_ = AI_UseMob(self, "MDRUMSCHEIT", -1); // ENDE
	PrintDebugNpc(PD_TA_FRAME, "ZS_IELUTTER_End");
};
