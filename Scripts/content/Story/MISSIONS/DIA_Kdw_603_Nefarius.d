// ****************************
//				EXIT
// ****************************
instance Info_Nefarius_EXIT(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 999;
	condition		= Info_Nefarius_EXIT_Condition;
	information		= Info_Nefarius_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Nefarius_EXIT_Condition()
{
	return 1;
};

func void Info_Nefarius_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ****************************
//			Hallo
// ****************************
instance Info_Nefarius_Hallo(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 1;
	condition		= Info_Nefarius_Hallo_Condition;
	information		= Info_Nefarius_Hallo_Info;
	description		= "Wer bist du?";
};

func int Info_Nefarius_Hallo_Condition()
{
	return 1;
};

func void Info_Nefarius_Hallo_Info()
{
	AI_Output(other, self, "Info_Nefarius_Hallo_15_00"); //Wer bist du?
	AI_Output(self, other, "Info_Nefarius_Hallo_04_01"); //Ich bin Nefarius. Magier vom Kreis des Wassers.
};

// ****************************
//			Wo Saturas
// ****************************
instance Info_Nefarius_WoSaturas(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 2;
	condition		= Info_Nefarius_WoSaturas_Condition;
	information		= Info_Nefarius_WoSaturas_Info;
	description		= "Wo finde ich Saturas?";
};

func int Info_Nefarius_WoSaturas_Condition()
{
	return 1;
};

func void Info_Nefarius_WoSaturas_Info()
{
	AI_Output(other, self, "Info_Nefarius_WoSaturas_15_00"); //Wo finde ich Saturas?
	AI_Output(self, other, "Info_Nefarius_WoSaturas_04_01"); //Geh durch das große runde Tor. Dort wirst du ihn finden.
};

// ****************************
//			WannaMage
// ****************************
instance Info_Nefarius_WannaMage(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 1;
	condition		= Info_Nefarius_WannaMage_Condition;
	information		= Info_Nefarius_WannaMage_Info;
	description		= "Ich will ein Magier vom Kreis des Wassers werden!";
};

func int Info_Nefarius_WannaMage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Nefarius_Hallo))
	{
		return 1;
	};
};

func void Info_Nefarius_WannaMage_Info()
{
	AI_Output(other, self, "Info_Nefarius_WannaMage_15_00"); //Ich will ein Magier vom Kreis des Wassers werden!
	AI_Output(self, other, "Info_Nefarius_WannaMage_04_01"); //(lacht) Nicht so schnell, mein Junge!
	AI_Output(self, other, "Info_Nefarius_WannaMage_04_02"); //Bevor wir einen jungen Mann in unsere Reihen aufnehmen, muss er etwas Großes vollbracht haben.
	AI_Output(self, other, "Info_Nefarius_WannaMage_04_03"); //Und er muss uns eine Zeit lang gedient haben.
	AI_Output(self, other, "Info_Nefarius_WannaMage_04_04"); //Wenn es dir wirklich ernst ist, solltest du zu unseren Söldnern gehen. Dort kannst du uns dienen.
	AI_Output(self, other, "Info_Nefarius_WannaMage_04_05"); //Und vielleicht erhältst du eines Tages die Chance, etwas Großes zu vollbringen.
};

// ****************************
//			NowReady
// ****************************
instance Info_Nefarius_NowReady(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 1;
	condition		= Info_Nefarius_NowReady_Condition;
	information		= Info_Nefarius_NowReady_Info;
	permanent		= TRUE;
	description		= "Bin ich bereit für den Kreis des Wassers?";
};

func int Info_Nefarius_NowReady_Condition()
{
	if (!FMTaken && Npc_KnowsInfo(hero, Info_Nefarius_WannaMage) && (Npc_GetTrueGuild(hero) != GIL_KDW))
	{
		return 1;
	};
};

func void Info_Nefarius_NowReady_Info()
{
	AI_Output(other, self, "Info_Nefarius_NowReady_15_00"); //Bin ich bereit für den Kreis des Wassers?

	if (Npc_GetTrueGuild(hero) != GIL_SLD)
	{
		AI_Output(self, other, "Info_Nefarius_NowReady_04_01"); //Werde einer unserer Söldner, dann sehen wir weiter...
	}
	else
	{
		AI_Output(self, other, "Info_Nefarius_NowReady_04_02"); //Ich sehe, du bist einer unserer Söldner geworden. Sehr gut, sehr gut...
		AI_Output(self, other, "Info_Nefarius_NowReady_04_03"); //Alles Weitere wird sich mit der Zeit zeigen...
	};
};

//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
///////////////		Kapitel 4 //////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

// ****************************
//			OCNews
// ****************************
instance Info_Nefarius_OCNews(C_INFO)
{
	npc				= KDW_603_Nefarius;
	nr				= 1;
	condition		= Info_Nefarius_OCNews_Condition;
	information		= Info_Nefarius_OCNews_Info;
	important		= TRUE;
};

func int Info_Nefarius_OCNews_Condition()
{
	if (FMTaken
	&& !FindXardas)
	{
		return TRUE;
	};
};

func void Info_Nefarius_OCNews_Info()
{
	AI_Output(self, other, "Info_Nefarius_OCNews_04_00"); //Was gibt es Neues von unseren Freunden aus dem alten Lager?
	AI_Output(other, self, "Info_Nefarius_OCNews_15_01"); //Gomez hat alle Feuermagier töten lassen!
	AI_Output(self, other, "Info_Nefarius_OCNews_04_02"); //Nein! Dieser Hund! Ich hatte Corristo gewarnt - ihm war noch nie zu trauen! Du mußt Saturas davon berichten!
	if (Npc_GetTrueGuild(hero) == GIL_SLD)
	{
		AI_Output(self, other, "Info_Nefarius_OCNews_04_03"); //Warte!
		AI_Output(self, other, "Info_Nefarius_OCNews_04_04"); //Du hast große Gefahren auf dich genommen, um uns zu dienen.
		AI_Output(self, other, "Info_Nefarius_OCNews_04_05"); //Ich denke, du bist jetzt bereit, die Robe eines Wassermagiers zu tragen.
		AI_Output(self, other, "Info_Nefarius_OCNews_04_06"); //Aber nun sprich mit Saturas! Beeile dich!
	};

	AI_StopProcessInfos(self);
};
