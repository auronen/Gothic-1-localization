// *****************************
//				EXIT
// *****************************
instance DIA_Grd_264_Exit(C_INFO)
{
	npc				= Grd_264_Gardist;
	nr				= 999;
	condition		= DIA_Grd_264_Exit_Condition;
	information		= DIA_Grd_264_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Grd_264_Exit_Condition()
{
	return TRUE;
};

func void DIA_Grd_264_Exit_Info()
{
	AI_StopProcessInfos(self);
};

/*------------------------------------------------------------------------
//						GARDEAUFNAHME und der andere gardist...
------------------------------------------------------------------------ */
instance Grd_264_Gardist_GARDEAUFNAHME(C_INFO)
{
	npc				= Grd_264_Gardist;
	condition		= Grd_264_Gardist_GARDEAUFNAHME_Condition;
	information		= Grd_264_Gardist_GARDEAUFNAHME_Info;
	important		= TRUE;
};

func int Grd_264_Gardist_GARDEAUFNAHME_Condition()
{
	if ((Npc_HasItems(hero, ItAt_Crawlerqueen) >= 1)
	&& (Npc_GetTrueGuild(hero) == GIL_STT)
	&& (!Npc_KnowsInfo(hero, Grd_260_Drake_GARDEAUFNAHME)))
	{
		return TRUE;
	};
};

func void Grd_264_Gardist_GARDEAUFNAHME_Info()
{
	AI_Output(self, other, "Grd_264_Gardist_GARDEAUFNAHME_Info_07_01"); //Hey, gute Arbeit, das mit den Crawlern! Damit hast du dir deine Aufnahme bei den Gardisten verdient!
	AI_Output(self, other, "Grd_264_Gardist_GARDEAUFNAHME_Info_07_02"); //Geh doch mal zum Alten Lager und sprich mit Thorus darüber!

	Log_CreateTopic(GE_BecomeGuard, LOG_NOTE);
	B_LogEntry(GE_BecomeGuard, GE_BecomeGuard_1);
};
