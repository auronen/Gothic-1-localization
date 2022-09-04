// **************************************************
//						EXIT
// **************************************************
instance DIA_Ghorim_Exit(C_INFO)
{
	npc				= Nov_1310_Ghorim;
	nr				= 999;
	condition		= DIA_Ghorim_Exit_Condition;
	information		= DIA_Ghorim_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Ghorim_Exit_Condition()
{
	return 1;
};

func void DIA_Ghorim_Exit_Info()
{
	AI_StopProcessInfos(self);
};
instance DIA_Ghorim_MissingHarlok(C_INFO)
{
	npc				= Nov_1310_Ghorim;
	nr				= 1;
	condition		= DIA_Ghorim_MissingHarlok_Condition;
	information		= DIA_Ghorim_MissingHarlok_Info;
	description		= "Hi! Wie sieht's aus?";
};

func int DIA_Ghorim_MissingHarlok_Condition()
{
	return 1;
};

func void DIA_Ghorim_MissingHarlok_Info()
{
	AI_Output(other, self, "DIA_Ghorim_MissingHarlok_15_00"); //Hi! Wie sieht's aus?
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_01"); //Ich bin total fertig, Mann. Ich arbeite jetzt schon seit 2 Tagen ohne Pause.
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_02"); //Harlok sollte mich längst abgelöst haben. Es ist immer dasselbe mir dem Kerl.
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_03"); //Er liegt bestimmt noch in seiner Hütte und pennt!
	AI_Output(other, self, "DIA_Ghorim_MissingHarlok_15_04"); //Wieso gehst du dann nicht zu ihm und trittst ihm ordentlich in den Hintern?
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_05"); //Ich kann hier nicht weg, solange Baal Orun die Aufsicht hat - die Arbeit muss getan werden, so oder so!
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_06"); //Aber du könntest für mich zu ihm gehen - er wohnt unter dem Alchemielabor von Cor Kalom, direkt bei Fortuno.
	AI_Output(self, other, "DIA_Ghorim_MissingHarlok_02_07"); //Sag ihm, er soll seinen Hintern hier rüberschwingen.

	Log_CreateTopic(CH1_GhorimsRelief, LOG_MISSION);
	Log_SetTopicStatus(CH1_GhorimsRelief, LOG_RUNNING);
	B_LogEntry(CH1_GhorimsRelief, CH1_GhorimsRelief_2);

	Ghorim_KickHarlok = LOG_RUNNING;
};

// **************************************************
//					SUCCESS
// **************************************************
instance DIA_Ghorim_SUCCESS(C_INFO)
{
	npc				= Nov_1310_Ghorim;
	nr				= 1;
	condition		= DIA_Ghorim_SUCCESS_Condition;
	information		= DIA_Ghorim_SUCCESS_Info;
	permanent		= TRUE;
	description		= "Na? Endlich abgelöst worden?";
};

func int DIA_Ghorim_SUCCESS_Condition()
{
	if (Ghorim_KickHarlok == LOG_SUCCESS)
	{
		return 1;
	};
};

func void DIA_Ghorim_SUCCESS_Info()
{
	AI_Output(other, self, "DIA_Ghorim_SUCCESS_15_00"); //Na? Endlich abgelöst worden?
	AI_Output(self, other, "DIA_Ghorim_SUCCESS_02_01"); //Ja - jetzt kann ich endlich mal wieder richtig ausschlafen. Danke, Mann!
};
