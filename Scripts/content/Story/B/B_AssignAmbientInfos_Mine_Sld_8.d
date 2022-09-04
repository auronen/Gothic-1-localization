// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Sld_8_EXIT(C_INFO)
{
	nr				= 999;
	condition		= Info_Mine_Sld_8_EXIT_Condition;
	information		= Info_Mine_Sld_8_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Mine_Sld_8_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Mine_Sld_8_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Mine_Sld_8_EinerVonEuchWerden_Condition;
	information		= Info_Mine_Sld_8_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Wie kann ich diesem Trupp hier beitreten?";
};

func int Info_Mine_Sld_8_EinerVonEuchWerden_Condition()
{
	if ((Npc_GetTrueGuild(other) != GIL_SLD)
	&& (Npc_GetTrueGuild(other) != GIL_KDW)
	&& (!C_NpcBelongsToOldCamp(other))
	&& (!C_NpcBelongsToPsiCamp(other)))
	{
		return TRUE;
	};
};

func void Info_Mine_Sld_8_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Mine_Sld_8_EinerVonEuchWerden_15_00"); //Wie kann ich diesem Trupp hier beitreten?
	AI_Output(self, other, "Info_Mine_Sld_8_EinerVonEuchWerden_08_01"); //Um hier im Kessel zu arbeiten, musst du erst deinen Dienst im neuen Lager unter Beweis stellen.
	AI_Output(self, other, "Info_Mine_Sld_8_EinerVonEuchWerden_08_02"); //Frag dort nach.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Sld_8_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Mine_Sld_8_WichtigePersonen_Condition;
	information		= Info_Mine_Sld_8_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Mine_Sld_8_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Sld_8_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Mine_Sld_8_WichtigePersonen_08_01"); //Hier im Kessel hat Okyl das Kommando. Im Lager hat Lee das Sagen.
	AI_Output(self, other, "Info_Mine_Sld_8_WichtigePersonen_08_02"); //Also wende dich am besten an diese beiden.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Mine_Sld_8_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Mine_Sld_8_DasLager_Condition;
	information		= Info_Mine_Sld_8_DasLager_Info;
	permanent		= TRUE;
	description		= "Was gibt es hier im Camp?";
};

func int Info_Mine_Sld_8_DasLager_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_DasLager_Info()
{
	AI_Output(other, self, "Info_Mine_Sld_8_DasLager_15_00"); //Was gibt es hier im Camp?
	AI_Output(self, other, "Info_Mine_Sld_8_DasLager_08_01"); //Wir bewachen hier den Eingang zur Mine.
	AI_Output(other, self, "Info_Mine_Sld_8_DasLager_08_02"); //Niemand außer unseren Leuten darf dort hinein.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Sld_8_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Sld_8_DieLage_Condition;
	information		= Info_Mine_Sld_8_DieLage_Info;
	permanent		= TRUE;
	description		= "Alles klar?";
};

func int Info_Mine_Sld_8_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Sld_8_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Sld_8_DieLage_15_00"); //Alles klar?
	AI_Output(self, other, "Info_Mine_Sld_8_DieLage_08_01"); //Was soll die Frage? Wir haben alles unter Kontrolle.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Sld_8(var C_Npc slf)
{
	// B_AssignFindNpcInfos(slf);

	Info_Mine_Sld_8_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Sld_8_DieLage.npc = Hlp_GetInstanceID(slf);
};
