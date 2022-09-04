// **************************************************
// 						 EXIT
// **************************************************
instance DIA_Vlk_520_Exit(C_INFO)
{
	npc				= Vlk_520_Buddler;
	nr				= 999;
	condition		= DIA_Vlk_520_Exit_Condition;
	information		= DIA_Vlk_520_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Vlk_520_Exit_Condition()
{
	return 1;
};

func void DIA_Vlk_520_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************
// 				Lass mich in Ruhe!
// **************************************************
instance DIA_Vlk_520_LeaveMe(C_INFO)
{
	npc				= Vlk_520_Buddler;
	nr				= 2;
	condition		= DIA_Vlk_520_LeaveMe_Condition;
	information		= DIA_Vlk_520_LeaveMe_Info;
	permanent		= TRUE;
	description		= "Was machst du hier draußen?";
};

func int DIA_Vlk_520_LeaveMe_Condition()
{
	return 1;
};

func void DIA_Vlk_520_LeaveMe_Info()
{
	AI_Output(other, self, "DIA_Vlk_520_LeaveMe_15_00"); //Was machst du hier draußen?
	AI_Output(self, other, "DIA_Vlk_520_LeaveMe_01_01"); //Ich will meine Ruhe haben - also zisch ab.

	AI_StopProcessInfos(self);
};
