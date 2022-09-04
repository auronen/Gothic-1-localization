// ************************************************************
// 			  				   EXIT
// ************************************************************
instance Info_ORG_830_EXIT(C_INFO)
{
	npc				= ORG_830_Organisator;
	nr				= 999;
	condition		= Info_ORG_830_EXIT_Condition;
	information		= Info_ORG_830_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_ORG_830_EXIT_Condition()
{
	return 1;
};

func void Info_ORG_830_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 						Hallo
// ************************************************************
instance Info_ORG_830_Hello(C_INFO)
{
	npc				= ORG_830_Organisator;
	nr				= 1;
	condition		= Info_ORG_830_Hello_Condition;
	information		= Info_ORG_830_Hello_Info;
	description		= "Hi! Ich bin neu hier.";
};

func int Info_ORG_830_Hello_Condition()
{
	return 1;
};

func void Info_ORG_830_Hello_Info()
{
	AI_Output(other, self, "Info_ORG_830_Hello_15_00"); //Hi! Ich bin neu hier.
	AI_Output(self, other, "Info_ORG_830_Hello_13_01"); //Und?
};

// ************************************************************
// 						Was machst du hier?
// ************************************************************
instance Info_ORG_830_What(C_INFO)
{
	npc				= ORG_830_Organisator;
	nr				= 1;
	condition		= Info_ORG_830_What_Condition;
	information		= Info_ORG_830_What_Info;
	description		= "Was machst du hier?";
};

func int Info_ORG_830_What_Condition()
{
	if (Npc_KnowsInfo(hero, Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_What_Info()
{
	AI_Output(other, self, "Info_ORG_830_What_15_00"); //Was machst du hier?
	AI_Output(self, other, "Info_ORG_830_What_13_01"); //Wonach sieht's denn aus? Ich rauche mir einen.
	AI_Output(self, other, "Info_ORG_830_What_13_02"); //Wenn du denkst, ich lass dich mal ziehen, vergiss es!
};

// ************************************************************
// 						Aufhalten
// ************************************************************
instance Info_ORG_830_Aufhalten(C_INFO)
{
	npc				= ORG_830_Organisator;
	nr				= 2;
	condition		= Info_ORG_830_Aufhalten_Condition;
	information		= Info_ORG_830_Aufhalten_Info;
	description		= "Willst du mich nicht aufhalten? Mich fragen, was ich hier will oder so?";
};

func int Info_ORG_830_Aufhalten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_Aufhalten_Info()
{
	AI_Output(other, self, "Info_ORG_830_Aufhalten_15_00"); //Willst du mich nicht aufhalten? Mich fragen, was ich hier will oder so?
	AI_Output(self, other, "Info_ORG_830_Aufhalten_13_01"); //Nein. Ist mir zu viel Stress. Außerdem kann einer wie du sowieso nicht viel Schaden da drin anrichten.
};

// ************************************************************
// 							PERM
// ************************************************************
instance Info_ORG_830_Perm(C_INFO)
{
	npc				= ORG_830_Organisator;
	nr				= 3;
	condition		= Info_ORG_830_Perm_Condition;
	information		= Info_ORG_830_Perm_Info;
	permanent		= TRUE;
	description		= "Wie sieht's drinnen aus?";
};

func int Info_ORG_830_Perm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_ORG_830_Hello))
	{
		return 1;
	};
};

func void Info_ORG_830_Perm_Info()
{
	AI_Output(other, self, "Info_ORG_830_Perm_15_00"); //Wie sieht's drinnen aus?
	AI_Output(self, other, "Info_ORG_830_Perm_13_01"); //Das Übliche - ruhig bis auf ein paar kleine Schlägereien.
};
