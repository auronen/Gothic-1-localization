/*******************************************
* Babe geht ins grosse Himmelbett *
*******************************************/

func void ZS_Babe_Sleep()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_BabeSleep");

// falls noch die Nacktrüstung angezogen ist, ausziehen!
	AI_UnequipArmor(self);

	B_SetBabeDefaultPerceptions();
//	Npc_PercDisable( self, PERC_ASSESSPLAYER);
//	Npc_PercDisable( self, PERC_OBSERVEINTRUDER);

	AI_SetWalkMode(self, NPC_WALK);
	if (!C_BodyStateContains(self, BS_LIE))
	{
		if ((Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == 0))
		{
			AI_GotoWP(self, self.wp);
		};

		_ = AI_UseMob(self, "BABEBED", 1);
	};
};

func void ZS_Babe_Sleep_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_BabeSleep_Loop");
	AI_Wait(self, 1);
};

func void ZS_Babe_Sleep_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_BabeSleep_End");
	_ = AI_UseMob(self, "BABEBED", -1);
};
