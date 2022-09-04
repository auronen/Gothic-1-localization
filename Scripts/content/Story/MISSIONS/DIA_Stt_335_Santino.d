// ************************ EXIT **************************
instance STT_335_Santino_Exit(C_INFO)
{
	npc				= STT_335_Santino;
	nr				= 999;
	condition		= STT_335_Santino_Exit_Condition;
	information		= STT_335_Santino_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int STT_335_Santino_Exit_Condition()
{
	return 1;
};

func void STT_335_Santino_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************** Infos *****************************
instance STT_335_Santino_BUY(C_INFO)
{
	npc				= STT_335_Santino;
	nr				= 0;
	condition		= STT_335_Santino_BUY_Condition;
	information		= STT_335_Santino_BUY_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= DIALOG_TRADE;
};

func int STT_335_Santino_BUY_Condition()
{
	return 1;
};

func void STT_335_Santino_BUY_Info()
{
	AI_Output(other, self, "STT_335_Santino_BUY_Info_15_01"); //Bei dir kann ich tauschen?
	AI_Output(self, other, "STT_335_Santino_BUY_Info_07_02"); //Ich habe alles, was du brauchst. Was ich nicht habe, willst du auch nicht.
};
