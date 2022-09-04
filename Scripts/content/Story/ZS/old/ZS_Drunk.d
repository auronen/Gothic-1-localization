/*******************************************
* NSC wird besoffen *
*******************************************/

func void ZS_Drunk()
// Hier noch RemoveOverlayMds
{
	PrintDebugNpc(PD_ZS_FRAME, "ZS_Drunk");
	Npc_PercEnable(self, PERC_ASSESSTALK, B_RefuseTalk);
	Mdl_ApplyOverlayMDS(self, "HUMANS_DRUNKEN.MDS");
	AI_GotoWP(self, self.wp);
};

func int ZS_Drunk_Loop()
{
	PrintDebugNpc(PD_ZS_LOOP, "ZS_Drunk_Loop");
	if (Npc_GetStateTime(self) > 20)
	{
		return 1;
	};

	AI_Wait(self, 1);
};

func void ZS_Drunk_End()
{
	PrintDebugNpc(PD_ZS_FRAME, "ZS_Drunk_End");
	Mdl_RemoveOverlayMDS(self, "HUMANS_DRUNKEN.MDS");
};
