// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Org_7_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Org_7 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Org_7_EXIT_Condition;
	information		= Info_Mine_Org_7_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Org_7_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Org_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 							Mine
// *************************************************************************
instance Info_Mine_Org_7_Mine(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Org_7_Mine_Condition;
	information		= Info_Mine_Org_7_Mine_Info;
	permanent		= TRUE;
	description		= "Erzähl mir mal was über das Camp hier.";
};

func int Info_Mine_Org_7_Mine_Condition()
{
	return 1;
};

func void Info_Mine_Org_7_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Org_7_Mine_15_00"); //Erzähl mir mal was über das Camp hier.
	AI_Output(self, other, "Info_Mine_Org_7_Mine_07_01"); //Das Camp? Du meinst den Kessel. Ist nicht so schlecht hier. Die Schürfer bauen Erz ab, die Söldner passen auf, und wir Banditen behalten hier die Übersicht
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Org_7_WichtigePersonen(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Org_7_WichtigePersonen_Condition;
	information		= Info_Mine_Org_7_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat den hier das Kommando?";
};

func int Info_Mine_Org_7_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Org_7_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Org_7_WichtigePersonen_15_00"); //Wer hat den hier das Kommando?
	AI_Output(self, other, "Info_Mine_Org_7_WichtigePersonen_07_01"); //Das kommt drauf an, von wem du dir was sagen lässt.
	AI_Output(self, other, "Info_Mine_Org_7_WichtigePersonen_07_02"); //Wenn Okyl etwas von dir will, solltest du allerdings nicht widersprechen. Er kann nämlich ziemlich ungemütlich werden.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Org_7_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Org_7_DieLage_Condition;
	information		= Info_Mine_Org_7_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie steht's?";
};

func int Info_Mine_Org_7_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Org_7_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Org_7_DieLage_15_00"); //Wie steht's?
	AI_Output(self, other, "Info_Mine_Org_7_DieLage_07_01"); //Mann, geh mir nicht auf den Sack!
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Org_7(var C_Npc slf)
{
	Info_Mine_Org_7_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_7_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_7_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_7_DieLage.npc = Hlp_GetInstanceID(slf);
};
