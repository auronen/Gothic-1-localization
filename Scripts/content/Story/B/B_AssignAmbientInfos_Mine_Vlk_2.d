// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Vlk_2_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Vlk_2 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Vlk_2_EXIT_Condition;
	information		= Info_Mine_Vlk_2_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Mine_Vlk_2_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Vlk_2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************
instance Info_Mine_Vlk_2_Mine(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Mine_Vlk_2_Mine_Condition;
	information		= Info_Mine_Vlk_2_Mine_Info;
	permanent		= TRUE;
	description		= "Erzähl mir was von der Mine";
};

func int Info_Mine_Vlk_2_Mine_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_2_Mine_15_00"); //Erzähl mir was von der Mine
	AI_Output(self, other, "Info_Mine_Vlk_2_Mine_01_01"); //Es gibt einen ganzen Haufen Höhlen, in denen auch noch Erz zu holen ist. Aber die Crawler, machen die Arbeit darin unmöglich.
	AI_Output(self, other, "Info_Mine_Vlk_2_Mine_01_02"); //Zu viele Angriffe, zu viele Verluste.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Vlk_2_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Mine_Vlk_2_WichtigePersonen_Condition;
	information		= Info_Mine_Vlk_2_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier was zu Sagen?";
};

func int Info_Mine_Vlk_2_WichtigePersonen_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_2_WichtigePersonen_15_00"); //Wer hat hier was zu sagen?
	AI_Output(self, other, "Info_Mine_Vlk_2_WichtigePersonen_01_01"); //Viper ist der Schmelzer. Er kennt sich mit dem Ofen aus. Er hat einen Körper aus Stahl. Ihm macht die Hitze nichts aus. Den ganzen Tag schmilzt er das Erz ein.
};

// *************************************************************************
// 								Minecrawler
// *************************************************************************
instance Info_Mine_Vlk_2_Minecrawler(C_INFO)
{
	nr				= 2;
	condition		= Info_Mine_Vlk_2_Minecrawler_Condition;
	information		= Info_Mine_Vlk_2_Minecrawler_Info;
	permanent		= TRUE;
	description		= "Was weißt Du über Minecrawler?";
};

func int Info_Mine_Vlk_2_Minecrawler_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_Minecrawler_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_2_Minecrawler_15_00"); //Was weißt du über Minecrawler?
	AI_Output(self, other, "Info_Mine_Vlk_2_Minecrawler_01_01"); //Wir haben den großen Schacht ganz unten zugemacht. Da gibt's zu viele Minecrawler.
	AI_Output(self, other, "Info_Mine_Vlk_2_Minecrawler_01_02"); //Hier gibt's überall Minecrawler. Hörst du sie? Ich kann sie hören!
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Vlk_2_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Vlk_2_DieLage_Condition;
	information		= Info_Mine_Vlk_2_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Mine_Vlk_2_DieLage_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

func void Info_Mine_Vlk_2_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Vlk_2_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Mine_Vlk_2_DieLage_01_01"); //Ich muss arbeiten. Wenn die Gardisten sehen, dass ich rede, dann kürzen sie meine Ration.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Vlk_2(var C_Npc slf)
{
	Info_Mine_Vlk_2_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Minecrawler.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Vlk_2_DieLage.npc = Hlp_GetInstanceID(slf);
};
