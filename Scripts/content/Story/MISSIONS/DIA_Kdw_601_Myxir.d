// ************************ EXIT **************************
instance Info_Myxir_EXIT(C_INFO)
{
	npc				= KDW_601_Myxir;
	nr				= 999;
	condition		= Info_Myxir_EXIT_Condition;
	information		= Info_Myxir_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Myxir_EXIT_Condition()
{
	return TRUE;
};

func void Info_Myxir_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
