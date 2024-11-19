// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_BaalIsidro_EXIT(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 999;
	condition		= DIA_BaalIsidro_EXIT_Condition;
	information		= DIA_BaalIsidro_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_BaalIsidro_EXIT_Condition()
{
	return 1;
};

func void DIA_BaalIsidro_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 							Hallo
// ************************************************************
instance DIA_BaalIsidro_Hello(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_Hello_Condition;
	information		= DIA_BaalIsidro_Hello_Info;
	description		= "Du siehst nicht sehr glücklich aus.";
};

func int DIA_BaalIsidro_Hello_Condition()
{
	return 1;
};

func void DIA_BaalIsidro_Hello_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_Hello_15_00"); //Du siehst nicht sehr glücklich aus.
	AI_Output(self, other, "DIA_BaalIsidro_Hello_03_01"); //Bin ich auch nicht!
	AI_Output(self, other, "DIA_BaalIsidro_Hello_03_02"); //Ich muss noch 'nen ganzen Berg Kraut loswerden.
	AI_Output(other, self, "DIA_BaalIsidro_Hello_15_03"); //Du bist hier um Waren aus dem Sektenlager zu verkaufen?
	AI_Output(self, other, "DIA_BaalIsidro_Hello_03_04"); //Ja. Aber ich kann mich einfach nicht aufraffen.
};

// ************************************************************
// 					 	TRADE
// ************************************************************
instance DIA_BaalIsidro_TRADE(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 800;
	condition		= DIA_BaalIsidro_TRADE_Condition;
	information		= DIA_BaalIsidro_TRADE_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= "Zeig mir, was du hast.";
};

func int DIA_BaalIsidro_TRADE_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_BaalIsidro_Hello))
	{
		return 1;
	};
};

func void DIA_BaalIsidro_TRADE_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_TRADE_15_00"); //Zeig mir, was du hast.
	AI_Output(self, other, "DIA_BaalIsidro_TRADE_03_01"); //Hier ...
};

// ************************************************************
// 					 Ich verkaufe für dich
// ************************************************************
instance DIA_BaalIsidro_GimmeKraut(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_GimmeKraut_Condition;
	information		= DIA_BaalIsidro_GimmeKraut_Info;
	description		= "Ich könnte das Kraut für dich verkaufen - gegen Beteiligung versteht sich.";
};

func int DIA_BaalIsidro_GimmeKraut_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_BaalIsidro_Hello))
	{
		return 1;
	};
};

func void DIA_BaalIsidro_GimmeKraut_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_GimmeKraut_15_00"); //Ich könnte das Kraut für dich verkaufen - gegen Beteiligung versteht sich.
	AI_Output(self, other, "DIA_BaalIsidro_GimmeKraut_03_01"); //Vergiss es - so besoffen bin ich nun auch wieder nicht. Du brennst doch einfach damit durch.

	Log_CreateTopic(CH1_DealerJob, LOG_MISSION);
	Log_SetTopicStatus(CH1_DealerJob, LOG_RUNNING);
	B_LogEntry(CH1_DealerJob, CH1_DealerJob_1);
};

// ************************************************************
// 					Baal Kagan hat gepetzt
// ************************************************************
instance DIA_BaalIsidro_Problem(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_Problem_Condition;
	information		= DIA_BaalIsidro_Problem_Info;
	description		= "Du hast ein Problem. Baal Kagan will dafür sorgen, dass du ersetzt wirst.";
};

func int DIA_BaalIsidro_Problem_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_BaalKagan_WannaHelp))
	{
		return 1;
	};
};

func void DIA_BaalIsidro_Problem_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_Problem_15_00"); //Ich sag dir was - du hast ein Problem. Baal Kagan will dafür sorgen, dass du ersetzt wirst.
	AI_Output(self, other, "DIA_BaalIsidro_Problem_03_01"); //Was? Beim großen Schläfer. Ich muss das Zeug loswerden ...

	if (BaalIsidro_GotDrink == FALSE)
	{
		B_LogEntry(CH1_DealerJob, CH1_DealerJob_2);
	}
	else
	{
		B_LogEntry(CH1_DealerJob, CH1_DealerJob_3);
	};
};

// ************************************************************
// 					 Trink noch einen
// ************************************************************
var int BaalIsidro_GotDrink;
// ************************************************************
instance DIA_BaalIsidro_Drink(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_Drink_Condition;
	information		= DIA_BaalIsidro_Drink_Info;
	permanent		= TRUE;
	description		= "Hier - trink noch einen auf meine Rechnung.";
};

func int DIA_BaalIsidro_Drink_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_BaalIsidro_GimmeKraut) && (BaalIsidro_GotDrink == FALSE))
	{
		return 1;
	};
};

func void DIA_BaalIsidro_Drink_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_Drink_15_00"); //Hier - trink noch einen auf meine Rechnung.

	if ((Npc_HasItems(other, ItFoBooze) > 0) || (Npc_HasItems(other, ItFoBeer) > 0) || (Npc_HasItems(other, ItFoWine) > 0))
	{
		AI_Output(self, other, "DIA_BaalIsidro_Drink_03_01"); //Danke, Mann. Ich trinke auf dein Wohl!

		if (Npc_HasItems(other, ItFoBooze))
		{
			B_GiveInvItems(other, self, ItFoBooze, 1);
			if (C_BodystateContains(self, BS_SIT))
			{
				AI_StandUp(self);
				AI_TurnToNpc(self, hero);
			};

			AI_UseItem(self, ItFoBooze);
		}
		else if (Npc_HasItems(other, ItFoBeer))
		{
			B_GiveInvItems(other, self, ItFoBeer, 1);
			if (C_BodystateContains(self, BS_SIT))
			{
				AI_StandUp(self);
				AI_TurnToNpc(self, hero);
			};

			AI_UseItem(self, ItFoBeer);
		}
		else if (Npc_HasItems(other, ItFoWine))
		{
			B_GiveInvItems(other, self, ItFoWine, 1);
			if (C_BodystateContains(self, BS_SIT))
			{
				AI_StandUp(self);
				AI_TurnToNpc(self, hero);
			};

			AI_UseItem(self, ItFoWine);
		};

		BaalIsidro_GotDrink = TRUE;

		if (Npc_KnowsInfo(hero, DIA_BaalIsidro_Problem))
		{
			B_LogEntry(CH1_DealerJob, CH1_DealerJob_4);
		}
		else
		{
			B_LogEntry(CH1_DealerJob, CH1_DealerJob_5);
		};
	}
	else
	{
		AI_Output(self, other, "DIA_BaalIsidro_NO_Drink_03_00"); //Was? Wo?
	};
};

// ************************************************************
// 					 Übrleg's dir!
// ************************************************************
var int BaalIsidro_DealerJob;
// ************************************************************
instance DIA_BaalIsidro_ThinkAgain(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_ThinkAgain_Condition;
	information		= DIA_BaalIsidro_ThinkAgain_Info;
	permanent		= TRUE;
	description		= "Überleg's dir - Gib mir das Kraut und wir teilen den Gewinn.";
};

func int DIA_BaalIsidro_ThinkAgain_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_BaalIsidro_GimmeKraut) && ((BaalIsidro_DealerJob != LOG_RUNNING) && (BaalIsidro_DealerJob != LOG_SUCCESS)))
	{
		return 1;
	};
};

func void DIA_BaalIsidro_ThinkAgain_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_ThinkAgain_15_00"); //Überleg's dir - Gib mir das Kraut und wir teilen den Gewinn.

	if ((BaalIsidro_GotDrink == TRUE) && Npc_KnowsInfo(hero, DIA_BaalIsidro_Problem))
	{
		AI_Output(self, other, "DIA_BaalIsidro_ThinkAgain_03_01"); //Oh Mann, ich muss das Zeug loswerden. Du willst mich doch nicht über's Ohr hauen, oder?
		AI_Output(other, self, "DIA_BaalIsidro_ThinkAgain_15_02"); //Ich geb' dir mein Wort.
		AI_Output(self, other, "DIA_BaalIsidro_ThinkAgain_03_03"); //Gut, hier ist das Zeug... Du müsstest mindestens 400 Erz dafür kriegen. Also 200 für jeden. Ich bin die ganze Zeit hier. Wenn du das Erz hast, komm zurück.
		AI_Output(other, self, "DIA_BaalIsidro_ThinkAgain_15_04"); //Weißt du, wer hier größere Mengen abnimmt?
		AI_Output(self, other, "DIA_BaalIsidro_ThinkAgain_03_05"); //Wenn ich das wüsste, wär' ich selber losgegangen.
		AI_Output(self, other, "DIA_BaalIsidro_ThinkAgain_03_06"); //Jetzt, wo ich das Zeug los bin, fühle ich mich schon viel besser.

		BaalIsidro_DealerJob = LOG_RUNNING;
		B_LogEntry(CH1_DealerJob, CH1_DealerJob_6);

		// Itemübergabe
		CreateInvItems(self, itmijoint_1, 40);
		B_GiveInvItems(self, other, itmijoint_1, 50); // Notwendig zur Textausgabe "50 Items übergeben", wird sofort ausgeglichen
		_ = Npc_RemoveInvItems(self, itmijoint_2, 20);
		_ = Npc_RemoveInvItems(self, itmijoint_3, 20);
		_ = Npc_RemoveInvItems(other, itmijoint_1, 40);
		CreateInvItems(other, itmijoint_2, 20);
		CreateInvItems(other, itmijoint_3, 20);

		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self, other, "DIA_BaalIsidro_REFUSE_ThinkAgain_03_00"); //Nee, Mann. Ich schaff das schon noch ...
	};
};

// ************************************************************
// 					RUNNING / SUCCESS
// ************************************************************
instance DIA_BaalIsidro_RUNNING(C_INFO)
{
	npc				= Nov_1333_BaalIsidro;
	nr				= 1;
	condition		= DIA_BaalIsidro_RUNNING_Condition;
	information		= DIA_BaalIsidro_RUNNING_Info;
	description		= "Ich hab' das Kraut verkauft. Hier sind deine 200 Erz.";
};

func int DIA_BaalIsidro_RUNNING_Condition()
{
	if (BaalIsidro_DealerJob == LOG_RUNNING)
	{
		return 1;
	};
};

func void DIA_BaalIsidro_RUNNING_Info()
{
	AI_Output(other, self, "DIA_BaalIsidro_RUNNING_15_00"); //Ich hab' das Kraut verkauft.
	AI_Output(self, other, "DIA_BaalIsidro_RUNNING_03_01"); //Meine 200?

	if (Npc_HasItems(other, itminugget) >= 200)
	{
		AI_Output(other, self, "DIA_BaalIsidro_RUNNING_15_02"); //Hier sind sie.
		AI_Output(self, other, "DIA_BaalIsidro_RUNNING_03_03"); //Gut ... Jetzt kann mich Baal Kagan mal. (lacht dreckig)
		AI_Output(self, other, "DIA_BaalIsidro_RUNNING_03_04"); //War ne gute Idee, mit dir Geschäfte zu machen.

		B_GiveInvItems(hero, self, ItMiNugget, 200);
		BaalIsidro_DealerJob = LOG_SUCCESS;

		Log_SetTopicStatus(CH1_DealerJob, LOG_SUCCESS);
		B_LogEntry(CH1_DealerJob, CH1_DealerJob_7);
		B_GiveXP(XP_BaalIsidroPayShare);
	}
	else
	{
		AI_Output(other, self, "DIA_BaalIsidro_RUNNING_NoOre_15_05"); //Hab ich nicht bei mir.
		AI_Output(self, other, "DIA_BaalIsidro_RUNNING_NoOre_03_06"); //Dann schaff sie ran!
		AI_StopProcessInfos(self);
	};
};
