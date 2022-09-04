// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_ARTO_EXIT(C_INFO)
{
	npc				= Ebr_102_Arto;
	nr				= 999;
	condition		= DIA_ARTO_EXIT_Condition;
	information		= DIA_ARTO_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_ARTO_EXIT_Condition()
{
	return 1;
};

func void DIA_ARTO_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 							Hallo
// ************************************************************
instance DIA_ARTO_Hello(C_INFO)
{
	npc				= Ebr_102_Arto;
	nr				= 3;
	condition		= DIA_ARTO_Hello_Condition;
	information		= DIA_ARTO_Hello_Info;
	description		= "Wer bist du?";
};

func int DIA_ARTO_Hello_Condition()
{
	return 1;
};

func void DIA_ARTO_Hello_Info()
{
	AI_Output(other, self, "DIA_ARTO_Hello_15_00"); //Wer bist du?
	AI_Output(self, other, "DIA_ARTO_Hello_13_01"); //Ich bin Arto.
};

// ************************************************************
// 							What
// ************************************************************
instance DIA_ARTO_What(C_INFO)
{
	npc				= Ebr_102_Arto;
	nr				= 3;
	condition		= DIA_ARTO_What_Condition;
	information		= DIA_ARTO_What_Info;
	description		= "Was machst du so?";
};

func int DIA_ARTO_What_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_ARTO_Hello))
	{
		return 1;
	};
};

func void DIA_ARTO_What_Info()
{
	AI_Output(other, self, "DIA_ARTO_What_15_00"); //Was machst du so?
	AI_Output(self, other, "DIA_ARTO_What_13_01"); //Ich bin Gomez' Leibwächter.
};

// ************************************************************
// 							PERM
// ************************************************************
instance DIA_ARTO_PERM(C_INFO)
{
	npc				= Ebr_102_Arto;
	nr				= 3;
	condition		= DIA_ARTO_PERM_Condition;
	information		= DIA_ARTO_PERM_Info;
	permanent		= TRUE;
	description		= "Du redest nicht viel, was?";
};

func int DIA_ARTO_PERM_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_ARTO_What))
	{
		return 1;
	};
};

func void DIA_ARTO_PERM_Info()
{
	AI_Output(other, self, "DIA_ARTO_PERM_15_00"); //Du redest nicht viel, was?
	AI_Output(self, other, "DIA_ARTO_PERM_13_01"); //Nein.
};
