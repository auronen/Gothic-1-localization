// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_Sfb_1001_EXIT(C_INFO)
{
	npc				= SFB_1001_Schuerfer;
	nr				= 999;
	condition		= DIA_Sfb_1001_EXIT_Condition;
	information		= DIA_Sfb_1001_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Sfb_1001_EXIT_Condition()
{
	return 1;
};

func void DIA_Sfb_1001_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 							Hallo - PERM
// ************************************************************
instance DIA_Sfb_1001_Hello(C_INFO)
{
	npc				= SFB_1001_Schuerfer;
	nr				= 1;
	condition		= DIA_Sfb_1001_Hello_Condition;
	information		= DIA_Sfb_1001_Hello_Info;
	permanent		= TRUE;
	description		= "Na, wie steht's in der Mine?";
};

func int DIA_Sfb_1001_Hello_Condition()
{
	return 1;
};

func void DIA_Sfb_1001_Hello_Info()
{
	AI_Output(other, self, "DIA_Sfb_1001_Hello_15_00"); //Na, wie steht's in der Mine?
	AI_Output(self, other, "DIA_Sfb_1001_Hello_02_01"); //Wir haben das Meiste hinter uns. Nur noch wenige Wochen, dann haben wir genug.
	AI_StopProcessInfos(self);
};
