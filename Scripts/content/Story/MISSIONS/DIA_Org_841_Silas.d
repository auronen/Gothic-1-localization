// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_Silas_EXIT(C_Info)
{
	npc				= Org_841_Silas;
	nr				= 999;
	condition		= DIA_Silas_EXIT_Condition;
	information		= DIA_Silas_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Silas_EXIT_Condition()
{
	return 1;
};

func void DIA_Silas_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 						Trade
// ************************************************************
instance DIA_Silas_Hehler(C_Info)
{
	npc				= Org_841_Silas;
	nr				= 1;
	condition		= DIA_Silas_Hehler_Condition;
	information		= DIA_Silas_Hehler_Info;
	description		= "Wie läuft's denn so?";
};

func int DIA_Silas_Hehler_Condition()
{
	return 1;
};

func void DIA_Silas_Hehler_Info()
{
	AI_Output(other, self, "DIA_Silas_Hehler_15_00"); //Wie läuft's denn so?
	AI_Output(self, other, "DIA_Silas_Hehler_06_01"); //Gut! Wir verkaufen hier unseren selbstgebrannten Reisschnaps für gutes Erz.
	AI_Output(self, other, "DIA_Silas_Hehler_06_02"); //Kommt ja auch genug rein. Wo sollen die Jungs ihr Erz auch sonst hinbringen?
};

// ************************************************************
// 						Trade
// ************************************************************
instance DIA_Silas_Trade(C_Info)
{
	npc				= Org_841_Silas;
	nr				= 1;
	condition		= DIA_Silas_Trade_Condition;
	information		= DIA_Silas_Trade_Info;
	trade			= TRUE;
	description		= "Ich will was trinken.";
};

func int DIA_Silas_Trade_Condition()
{
	return 1;
};

func void DIA_Silas_Trade_Info()
{
	AI_Output(other, self, "DIA_Silas_Trade_15_00"); //Ich will was trinken.
	AI_Output(self, other, "DIA_Silas_Trade_06_01"); //Dann musst du zahlen.
};
