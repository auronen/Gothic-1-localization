// ****************************************
// 					Exit
// ****************************************
instance DIA_Shrike_Exit(C_INFO)
{
	npc				= ORG_842_Shrike;
	nr				= 999;
	condition		= DIA_Shrike_Exit_Condition;
	information		= DIA_Shrike_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Shrike_Exit_Condition()
{
	return 1;
};

func void DIA_Shrike_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ****************************************
// 					Hallo
// ****************************************
instance DIA_Shrike_Hello(C_INFO)
{
	npc				= Org_842_Shrike;
	nr				= 1;
	condition		= DIA_Shrike_Hello_Condition;
	information		= DIA_Shrike_Hello_Info;
	description		= "Wie sieht's aus?";
};

func int DIA_Shrike_Hello_Condition()
{
	return 1;
};

func void DIA_Shrike_Hello_Info()
{
	AI_Output(other, self, "DIA_Shrike_Hello_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "DIA_Shrike_Hello_07_01"); //Verpiss dich!

	// FMTaken = TRUE; //******* TEST - Helper für Sld-KdW Aufnahme!!! *********************
	// Kapitel = 4;

	AI_StopProcessInfos(self);
};

// ****************************************
// 					GetLost
// ****************************************
instance DIA_Shrike_GetLost(C_INFO)
{
	npc				= Org_842_Shrike;
	nr				= 1;
	condition		= DIA_Shrike_GetLost_Condition;
	information		= DIA_Shrike_GetLost_Info;
	description		= "Mach, dass du wegkommst.";
};

func int DIA_Shrike_GetLost_Condition()
{
	if (self.aivar[AIV_WASDEFEATEDBYSC])
	{
		return 1;
	};
};

func void DIA_Shrike_GetLost_Info()
{
	AI_Output(other, self, "DIA_Shrike_GetLost_15_00"); //Mach, dass du wegkommst.
	AI_Output(self, other, "DIA_Shrike_GetLost_07_01"); //Wir sprechen uns noch!

	Log_CreateTopic(CH1_ShrikesHut, LOG_MISSION);
	Log_SetTopicStatus(CH1_ShrikesHut, LOG_RUNNING);
	B_LogEntry(CH1_ShrikesHut, CH1_ShrikesHut_1);
	B_GiveXP(XP_KickedShrike);

	AI_StopProcessInfos(self);

	Npc_ExchangeRoutine(self, "start");
};
