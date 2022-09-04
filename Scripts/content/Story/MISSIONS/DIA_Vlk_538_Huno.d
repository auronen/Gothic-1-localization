// **************************************************
// 						 EXIT
// **************************************************
instance DIA_Huno_Exit(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 999;
	condition		= DIA_Huno_Exit_Condition;
	information		= DIA_Huno_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Huno_Exit_Condition()
{
	return 1;
};

func void DIA_Huno_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************
//	Info YouKnowYourJob
// **************************************************
instance DIA_Huno_YouKnowYourJob(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 2;
	condition		= DIA_Huno_YouKnowYourJob_Condition;
	information		= DIA_Huno_YouKnowYourJob_Info;
	description		= "Wie's aussieht, beherrschst du dein Handwerk.";
};

func int DIA_Huno_YouKnowYourJob_Condition()
{
	return TRUE;
};

func void DIA_Huno_YouKnowYourJob_Info()
{
	AI_Output(other, self, "DIA_Huno_YouKnowYourJob_15_00"); //Wie's aussieht, beherrschst du dein Handwerk.
	AI_Output(self, other, "DIA_Huno_YouKnowYourJob_09_01"); //Bisher hat sich noch niemand beschwert.
	AI_Output(self, other, "DIA_Huno_YouKnowYourJob_09_02"); //Aber das will ich auch keinem raten. Jeder Pisser hier braucht ein Schwert, und das kriegen sie von mir.
};

// **************************************************
//	Info HowLong
// **************************************************
instance DIA_Huno_HowLong(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 2;
	condition		= DIA_Huno_HowLong_Condition;
	information		= DIA_Huno_HowLong_Info;
	description		= "Wie lange brauchst du für eine Klinge?";
};

func int DIA_Huno_HowLong_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Huno_YouKnowYourJob))
	{
		return TRUE;
	};
};

func void DIA_Huno_HowLong_Info()
{
	AI_Output(other, self, "DIA_Huno_HowLong_15_00"); //Wie lange brauchst du für eine Klinge?
	AI_Output(self, other, "DIA_Huno_HowLong_09_01"); //Kommt drauf an. Ein einfaches Schwert mach' ich dir schneller, als deine müden Augen zuschauen können.
	AI_Output(self, other, "DIA_Huno_HowLong_09_02"); //Vorausgesetzt, du motivierst mich mit einer entsprechenden Bezahlung.
	AI_Output(self, other, "DIA_Huno_HowLong_09_03"); //So'n Spinner wie der Whistler muss aber meistens länger auf sein Schmuckstück warten.
	AI_Output(other, self, "DIA_Huno_HowLong_15_04"); //Wieso? Bezahlt er nicht gut?
	AI_Output(self, other, "DIA_Huno_HowLong_09_05"); //Doch, ganz im Gegenteil. Für sein letztes Schwert hat er 150 Erz locker gemacht.
	AI_Output(self, other, "DIA_Huno_HowLong_09_06"); //Irgendwie hat der Typ ein Faible für Ornamente und so 'nen Weiberkram, und das hat natürlich seinen Preis.
	AI_Output(self, other, "DIA_Huno_HowLong_09_07"); //Hey, du bist ganz schön neugierig, Freundchen.
};

// **************************************************
//	Info HowsYourBusiness
// **************************************************
instance DIA_Huno_HowsYourBusiness(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 2;
	condition		= DIA_Huno_HowsYourBusiness_Condition;
	information		= DIA_Huno_HowsYourBusiness_Info;
	permanent		= TRUE;
	description		= "Na, Schmied, wie läuft das Geschäft?";
};

func int DIA_Huno_HowsYourBusiness_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Huno_YouKnowYourJob))
	{
		return TRUE;
	};
};

func void DIA_Huno_HowsYourBusiness_Info()
{
	AI_Output(other, self, "DIA_Huno_HowsYourBusiness_15_00"); //Na, Schmied, wie läuft das Geschäft?
	AI_Output(self, other, "DIA_Huno_HowsYourBusiness_09_01"); //Was geht dich das an?
	AI_Output(other, self, "DIA_Huno_HowsYourBusiness_15_02"); //Vielleicht habe ich einen Auftrag für dich.
	AI_Output(self, other, "DIA_Huno_HowsYourBusiness_09_03"); //Ach ja? Was denn?
	AI_Output(other, self, "DIA_Huno_HowsYourBusiness_15_04"); //Ich überleg's mir.
	AI_Output(self, other, "DIA_Huno_HowsYourBusiness_09_05"); //Komm wieder, wenn du was brauchst, und geh mir nicht auf die Nerven.
};

// **************************************************
//	Info LEARNSMITH
// **************************************************
var int Huno_LearnSmith;
// **************************************************
instance DIA_Huno_LEARNSMITH(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 2;
	condition		= DIA_Huno_LEARNSMITH_Condition;
	information		= DIA_Huno_LEARNSMITH_Info;
	permanent		= TRUE;
	description		= "Ich würde mich selbst gern mal an deiner Schmiede versuchen.";
};

func int DIA_Huno_LEARNSMITH_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Huno_YouKnowYourJob))
	{
		return TRUE;
	};
};

func void DIA_Huno_LEARNSMITH_Info()
{
	AI_Output(other, self, "DIA_Huno_LEARNSMITH_15_00"); //Ich würde mich selbst gern mal an deiner Schmiede versuchen.
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_01"); //So so, aber glaub nur nicht, dass du tolle Klingen herstellen kannst!
	AI_Output(other, self, "DIA_Huno_LEARNSMITH_15_02"); //Was muss ich tun?
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_03"); //Okay, nimm den Rohstahl und halte ihn ins Schmiedefeuer.
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_04"); //Dann musst du den glühenden Stahl am Amboss schmieden.
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_05"); //Stecke dann die glühende Klinge dort drüben in den Wassereimer, um sie zu härten.
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_06"); //Am Ende muss die abgekühlte Klinge noch am Schleifstein geschärft werden.
	AI_Output(other, self, "DIA_Huno_LEARNSMITH_15_07"); //Verstehe.
	AI_Output(self, other, "DIA_Huno_LEARNSMITH_09_08"); //Allerdings brauchst du dafür ein paar Sachen. Ich kann sie dir verkaufen.

	Huno_LearnSmith = TRUE;
};

// **************************************************
//	Info BUYSMITH
// **************************************************
instance DIA_Huno_BUYSMITH(C_INFO)
{
	npc				= Vlk_538_Huno;
	nr				= 2;
	condition		= DIA_Huno_BUYSMITH_Condition;
	information		= DIA_Huno_BUYSMITH_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= "Ich möchte Dinge fürs Schmieden kaufen!";
};

func int DIA_Huno_BUYSMITH_Condition()
{
	if (Huno_LearnSmith == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Huno_BUYSMITH_Info()
{
	AI_Output(other, self, "DIA_Huno_BUYSMITH_15_00"); //Ich möchte Dinge fürs Schmieden kaufen!

	if (Npc_HasItems(self, ItMiSwordRaw) < 5) { CreateInvItems(self, ItMiSwordRaw, 5); };
	if (Npc_HasItems(self, ItMiSwordRawHot) < 5) { CreateInvItems(self, ItMiSwordRawHot, 5); };
	if (Npc_HasItems(self, ItMiSwordBladeHot) < 5) { CreateInvItems(self, ItMiSwordBladeHot, 5); };
	if (Npc_HasItems(self, ItMiSwordBlade) < 5) { CreateInvItems(self, ItMiSwordBlade, 5); };
};
