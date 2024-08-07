// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Vlk_4_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Vlk_4 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Vlk_4_EXIT_Condition;
	information		= Info_Mine_Vlk_4_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Vlk_4_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Vlk_4_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Die Mine
// *************************************************************************
instance Info_Mine_Vlk_4_Mine(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Mine_Vlk_4_Mine_Condition;
	information		= Info_Mine_Vlk_4_Mine_Info;
	permanent		= TRUE;
	description		= "Erzähl mir was von der Mine";
};

func int Info_Mine_Vlk_4_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_4_Mine_15_00"); //Erzähl mir was von der Mine
	AI_Output(self, other, "Info_Mine_Vlk_4_Mine_01_01"); //Eine Spitzhacke und Schweiß. Das brauchst du hier drin. Du kommst hier rein und du gehst auch wieder.
	AI_Output(self, other, "Info_Mine_Vlk_4_Mine_01_02"); //Aber, wenn du längst weg bist, werde ich hier immer noch das Erz aus dem Berg schlagen. Das ist meine Aufgabe. Das ist mein Leben.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Vlk_4_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Mine_Vlk_4_WichtigePersonen_Condition;
	information		= Info_Mine_Vlk_4_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier was zu Sagen?";
};

func int Info_Mine_Vlk_4_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_4_WichtigePersonen_15_00"); //Wer hat hier was zu sagen?
	AI_Output(self, other, "Info_Mine_Vlk_4_WichtigePersonen_01_01"); //Santino und Alberto tauschen Waren gegen das Erz, das wir schürfen. Von ihnen bekommen wir unsere täglichen Rationen.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Mine_Vlk_4_Minecrawler(C_INFO)
{
	nr				= 2;
	condition		= Info_Mine_Vlk_4_Minecrawler_Condition;
	information		= Info_Mine_Vlk_4_Minecrawler_Info;
	permanent		= TRUE;
	description		= "Was weißt Du über Minecrawler?";
};

func int Info_Mine_Vlk_4_Minecrawler_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_Minecrawler_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_4_Minecrawler_15_00"); //Was weißt du über Minecrawler?
	AI_Output(self, other, "Info_Mine_Vlk_4_Minecrawler_01_01"); //Wenn eins von den Crawlerviechern ankommt, dann schlag es mit der Spitze zwischen die Augen. Aber du musst beim ersten Mal treffen, eine zweite Chance gibt es nicht.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Vlk_4_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Vlk_4_DieLage_Condition;
	information		= Info_Mine_Vlk_4_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Mine_Vlk_4_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_4_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_4_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Mine_Vlk_4_DieLage_01_01"); //Früher war alles besser.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Vlk_4(var C_Npc slf)
{
	Info_Mine_Vlk_4_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_4_DieLage.npc = Hlp_GetInstanceID(slf);
};
