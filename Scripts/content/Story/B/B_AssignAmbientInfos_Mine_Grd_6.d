// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Grd_6_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Grd_6 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Grd_6_EXIT_Condition;
	information		= Info_Mine_Grd_6_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Grd_6_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Grd_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************
instance Info_Mine_Grd_6_Mine(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Grd_6_Mine_Condition;
	information		= Info_Mine_Grd_6_Mine_Info;
	permanent		= TRUE;
	description		= "Was läuft in der Mine?";
};

func int Info_Mine_Grd_6_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_6_Mine_15_00"); //Was läuft in der Mine?
	AI_Output(self, other, "Info_Mine_Grd_6_Mine_06_01"); //Die Buddler schürfen das Erz und wenn sie das nicht tun, dann gibt's was aufs Maul!
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Grd_6_WichtigePersonen(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Grd_6_WichtigePersonen_Condition;
	information		= Info_Mine_Grd_6_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Mine_Grd_6_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_6_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Mine_Grd_6_WichtigePersonen_06_01"); //Asghan ist unser Chef, Ian kümmert sich um die ganze Organisation, Erz und Buddler.
};

// *************************************************************************
// 								Minecrawler
// *************************************************************************
instance Info_Mine_Grd_6_Minecrawler(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Grd_6_Minecrawler_Condition;
	information		= Info_Mine_Grd_6_Minecrawler_Info;
	permanent		= TRUE;
	description		= "Erzähl mir was von den Crawlern";
};

func int Info_Mine_Grd_6_Minecrawler_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_Minecrawler_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_6_Minecrawler_15_00"); //Erzähl mir was von den Crawlern.
	AI_Output(self, other, "Info_Mine_Grd_6_Minecrawler_06_01"); //Die Drecksviecher machen uns das Leben schwer. Ich weiß nicht, wer mehr Arbeit macht, die Viecher oder die Buddler.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Grd_6_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Grd_6_DieLage_Condition;
	information		= Info_Mine_Grd_6_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Mine_Grd_6_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Grd_6_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Grd_6_DieLage_15_00"); //Wie siehts aus?
	AI_Output(self, other, "Info_Mine_Grd_6_DieLage_06_01"); //Ja, was glaubst du?
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_GRD_6(var C_Npc slf)
{
	Info_Mine_Grd_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Grd_6_DieLage.npc = Hlp_GetInstanceID(slf);
};
