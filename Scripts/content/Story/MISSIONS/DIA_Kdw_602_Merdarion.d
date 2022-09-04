// ************************ EXIT **************************
instance Info_Merdarion_EXIT(C_INFO)
{
	npc				= KDW_602_Merdarion;
	nr				= 999;
	condition		= Info_Merdarion_EXIT_Condition;
	information		= Info_Merdarion_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Merdarion_EXIT_Condition()
{
	return TRUE;
};

func void Info_Merdarion_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
