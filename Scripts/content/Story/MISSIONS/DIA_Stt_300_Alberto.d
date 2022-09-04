// ************************ EXIT **************************
instance STT_300_Alberto_Exit(C_INFO)
{
	npc				= STT_300_Alberto;
	nr				= 999;
	condition		= STT_300_Alberto_Exit_Condition;
	information		= STT_300_Alberto_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int STT_300_Alberto_Exit_Condition()
{
	return 1;
};

func void STT_300_Alberto_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************** Infos *****************************
instance STT_300_Alberto_BUY(C_INFO)
{
	npc				= STT_300_Alberto;
	nr				= 0;
	condition		= STT_300_Alberto_BUY_Condition;
	information		= STT_300_Alberto_BUY_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= DIALOG_TRADE;
};

func int STT_300_Alberto_BUY_Condition()
{
	return 1;
};

func void STT_300_Alberto_BUY_Info()
{
	AI_Output(other, self, "STT_300_Alberto_BUY_Info_15_01"); //Bei dir kann ich tauschen?
	AI_Output(self, other, "STT_300_Alberto_BUY_Info_12_02"); //Jupp. Alles, was du willst. Wenn du Erz hast.
};
