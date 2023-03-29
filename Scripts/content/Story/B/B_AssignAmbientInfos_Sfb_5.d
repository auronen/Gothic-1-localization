// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									Vor Gespräch
// *************************************************************************
instance Info_SFB_5_Pre(C_INFO)
{
	nr				= 1;
	condition		= Info_SFB_5_Pre_Condition;
	information		= Info_SFB_5_Pre_Info;
	important		= TRUE;
};

func int Info_SFB_5_Pre_Condition()
{
	return 1;
};

func void Info_SFB_5_Pre_Info()
{
	AI_Output(self, other, "Info_SFB_5_EinerVonEuchWerden_02_00"); //Hallo!
};

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_SFB_5_EXIT(C_INFO)
{
	nr				= 999;
	condition		= Info_SFB_5_EXIT_Condition;
	information		= Info_SFB_5_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_SFB_5_EXIT_Condition()
{
	return 1;
};

func void Info_SFB_5_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_SFB_5_EinerVonEuchWerden(C_INFO)
{
	nr				= 4;
	condition		= Info_SFB_5_EinerVonEuchWerden_Condition;
	information		= Info_SFB_5_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Was ist wenn ich hier mitmachen will?";
};

func int Info_SFB_5_EinerVonEuchWerden_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_NONE)
	{
		return TRUE;
	};
};

func void Info_SFB_5_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_SFB_5_EinerVonEuchWerden_15_00"); //Was ist, wenn ich hier mitmachen will?
	AI_Output(self, other, "Info_SFB_5_EinerVonEuchWerden_02_01"); //Hier mitmachen? Als was, Wasserträger?
	AI_Output(other, self, "Info_SFB_5_EinerVonEuchWerden_15_02"); //Nein, als Schürfer?
	AI_Output(self, other, "Info_SFB_5_EinerVonEuchWerden_02_03"); //Pass mal auf, lass dir eins gesagt sein: Niemand wird FREIWILLIG Schürfer.
	AI_Output(self, other, "Info_SFB_5_EinerVonEuchWerden_02_04"); //Aber bitte, wenn du unbedingt willst. Geh mal zu Swiney, der hat bestimmt 'ne Spitzhacke übrig, die er dir gerne zur Verfügung stellt.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_SFB_5_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_SFB_5_WichtigePersonen_Condition;
	information		= Info_SFB_5_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer ist hier wichtig?";
};

func int Info_SFB_5_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_SFB_5_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_SFB_5_WichtigePersonen_15_00"); //Wer ist hier wichtig?
	AI_Output(self, other, "Info_SFB_5_WichtigePersonen_02_01"); //Wer hier wichtig ist? -Ich!
	AI_Output(self, other, "Info_SFB_5_WichtigePersonen_02_02"); //Aber ich glaube, du willst wissen, wer hier das Sagen hat.
	AI_Output(self, other, "Info_SFB_5_WichtigePersonen_02_03"); //Also, ich denke, du solltest dich an die Söldner oder an die Banditen wenden. An die Wassermagier wirst du nicht rankommen.
	AI_Output(self, other, "Info_SFB_5_WichtigePersonen_02_04"); //Der aufgeblasene Swiney tut wichtiger, als er wirklich ist. Er verteilt nur die Spitzhacken und gehorcht ansonsten nur Okyls Befehlen.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_SFB_5_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_SFB_5_DasLager_Condition;
	information		= Info_SFB_5_DasLager_Info;
	permanent		= TRUE;
	description		= "Was gibt es hier im Lager?";
};

func int Info_SFB_5_DasLager_Condition()
{
	return 1;
};

func void Info_SFB_5_DasLager_Info()
{
	AI_Output(other, self, "Info_SFB_5_DasLager_15_00"); //Was gibt es hier im Lager?
	AI_Output(self, other, "Info_SFB_5_DasLager_02_01"); //Kommt drauf an was man draus macht. Für einige nur viel Arbeit, für andere gibt's auch 'ne ganze Menge Spaß.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_SFB_5_DieLage(C_INFO)
{
	nr				= 1;
	condition		= Info_SFB_5_DieLage_Condition;
	information		= Info_SFB_5_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie ist das Leben hier?";
};

func int Info_SFB_5_DieLage_Condition()
{
	return 1;
};

func void Info_SFB_5_DieLage_Info()
{
	AI_Output(other, self, "Info_SFB_5_DieLage_15_00"); //Wie ist das Leben hier?
	AI_Output(self, other, "Info_SFB_5_DieLage_02_01"); //Toll!
	AI_Output(self, other, "Info_SFB_5_DieLage_02_02"); //Und weil es uns so gut geht, versuchen wir möglichst schnell von hier abzuhauen.
	AI_Output(self, other, "Info_SFB_5_DieLage_02_03"); //Was glaubst du wo wir sind? Wir sind im Knast und niemand ist gerne im Knast.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_SFB_5(var C_Npc slf)
{
	Info_SFB_5_Pre.npc = Hlp_GetInstanceID(slf);

	Info_SFB_5_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_SFB_5_DieLage.npc = Hlp_GetInstanceID(slf);
};
