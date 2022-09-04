instance Info_Orc_17_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Orc_17 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Orc_17_EXIT_Condition;
	information		= Info_Orc_17_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Orc_17_EXIT_Condition()
{
	return 1;
};

func void Info_Orc_17_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

func void B_AssignAmbientInfos_Orc_17(var C_Npc slf)
{
	Info_Orc_17_EXIT.npc = Hlp_GetInstanceID(slf);
};
