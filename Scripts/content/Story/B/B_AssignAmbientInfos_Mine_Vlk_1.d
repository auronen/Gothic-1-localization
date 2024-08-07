// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Vlk_1_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Vlk_1 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Vlk_1_EXIT_Condition;
	information		= Info_Mine_Vlk_1_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Vlk_1_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Vlk_1_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************
instance Info_Mine_Vlk_1_Mine(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Mine_Vlk_1_Mine_Condition;
	information		= Info_Mine_Vlk_1_Mine_Info;
	permanent		= TRUE;
	description		= "Erzähl mir was von der Mine";
};

func int Info_Mine_Vlk_1_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_1_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_1_Mine_15_00"); //Erzähl mir was von der Mine
	AI_Output(self, other, "Info_Mine_Vlk_1_Mine_01_01"); //In Höhlen wachsen Pilze und Kraut. Das Zeug ist ganz gut verträglich. Macht aber nicht so satt wie ein anständiges Stück Fleisch.
	AI_Output(self, other, "Info_Mine_Vlk_1_Mine_01_02"); //Die Crawler sind auch ungenießbar. Was für ein Mist.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Vlk_1_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Mine_Vlk_1_WichtigePersonen_Condition;
	information		= Info_Mine_Vlk_1_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier was zu Sagen?";
};

func int Info_Mine_Vlk_1_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_1_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_1_WichtigePersonen_15_00"); //Wer hat hier was zu Sagen?
	AI_Output(self, other, "Info_Mine_Vlk_1_WichtigePersonen_01_01"); //Ian ist der Chef der Mine. Er organisiert die Arbeit und den Warenaustausch mit dem Lager. Wenn du also irgendwas willst, wende dich an ihn.
};

// *************************************************************************
// 								Minecrawler
// *************************************************************************
instance Info_Mine_Vlk_1_Minecrawler(C_INFO)
{
	nr				= 2;
	condition		= Info_Mine_Vlk_1_Minecrawler_Condition;
	information		= Info_Mine_Vlk_1_Minecrawler_Info;
	permanent		= TRUE;
	description		= "Was weißt Du über Minecrawler?";
};

func int Info_Mine_Vlk_1_Minecrawler_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_1_Minecrawler_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_1_Minecrawler_15_00"); //Was weißt du über Minecrawler?
	AI_Output(self, other, "Info_Mine_Vlk_1_Minecrawler_01_01"); //Die Templer haben ein Geschäft mit Gomez gemacht. Sie töten die Crawler und dafür kriegen sie die Zangen der Viecher.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Vlk_1_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Vlk_1_DieLage_Condition;
	information		= Info_Mine_Vlk_1_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Mine_Vlk_1_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_1_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_1_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Mine_Vlk_1_DieLage_01_01"); //Viel Arbeit, wenig Ruhe. Also stell deine Fragen schnell. Ich hab' zu tun.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Vlk_1(var C_Npc slf)
{
	Info_Mine_Vlk_1_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_1_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_1_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_1_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_1_DieLage.npc = Hlp_GetInstanceID(slf);
};
