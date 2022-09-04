/*******************************************
* NSC benutzt Kochkessel *
*******************************************/

func void ZS_MineBellows()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_MineBellows");

	B_SetPerception(self);

	if (!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	{
		AI_SetWalkMode(self, NPC_WALK); // Walkmode für den Zustand
		if ((Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == 0))
		{
			AI_GotoWP(self, self.wp);
		};
	};
};

func void ZS_MineBellows_Loop()
{
	PrintDebugNpc(PD_TA_LOOP, "ZS_MineBellows_Loop");

	AI_UseMob(self, "BELLOW", 1); // Benutze den Mob einmal bis zum angegebenen State
	AI_UseMob(self, "BELLOW", 0); // Verlassen sie bitte ihr Mobsi
};

func void ZS_MineBellows_End()
{
	PrintDebugNpc(PD_TA_FRAME, "ZS_MineBellows_End");

	AI_UseMob(self, "BELLOW", -1); // Verlassen sie bitte ihr Mobsi
};
