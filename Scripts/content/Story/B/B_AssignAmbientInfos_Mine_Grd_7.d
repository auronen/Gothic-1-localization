// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Grd_7_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_grd_7 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Grd_7_EXIT_Condition;
	information		= Info_Mine_Grd_7_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Grd_7_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Grd_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 							Mine
// *************************************************************************
instance Info_Mine_Grd_7_Mine(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Grd_7_Mine_Condition;
	information		= Info_Mine_Grd_7_Mine_Info;
	permanent		= TRUE;
	description		= "Erzähl mir von der Mine";
};

func int Info_Mine_Grd_7_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_7_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_7_Mine_15_00"); //Erzähl mir von der Mine
	AI_Output(self, other, "Info_Mine_Grd_7_Mine_07_01"); //Die Buddler schürfen das Erz und wir beschützen sie vor den Crawlern.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Grd_7_WichtigePersonen(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Grd_7_WichtigePersonen_Condition;
	information		= Info_Mine_Grd_7_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Mine_Grd_7_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_7_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_7_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Mine_Grd_7_WichtigePersonen_07_01"); //Ian und Asghan. Wende dich an sie, wenn du was willst.
};

// *************************************************************************
// 								Minecrawler
// *************************************************************************
instance Info_Mine_Grd_7_Minecrawler(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Grd_7_Minecrawler_Condition;
	information		= Info_Mine_Grd_7_Minecrawler_Info;
	permanent		= TRUE;
	description		= "Weißt Du was über die Crawler?";
};

func int Info_Mine_Grd_7_Minecrawler_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_7_Minecrawler_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_7_Minecrawler_15_00"); //Weißt du was über die Crawler?
	AI_Output(self, other, "Info_Mine_Grd_7_Minecrawler_07_01"); //Die ganze Brut sollte man ausrotten!
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Grd_7_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Grd_7_DieLage_Condition;
	information		= Info_Mine_Grd_7_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie steht's?";
};

func int Info_Mine_Grd_7_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_7_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_7_DieLage_15_00"); //Wie steht's?
	AI_Output(self, other, "Info_Mine_Grd_7_DieLage_07_01"); //Mann, geh mir nicht auf den Sack!
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_grd_7(var C_Npc slf)
{
	Info_Mine_Grd_7_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_7_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_7_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_7_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_7_DieLage.npc = Hlp_GetInstanceID(slf);
};
