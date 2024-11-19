// **************************************************
// 						 EXIT
// **************************************************
instance DIA_Snaf_Exit(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 999;
	condition		= DIA_Snaf_Exit_Condition;
	information		= DIA_Snaf_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Snaf_Exit_Condition()
{
	return 1;
};

func void DIA_Snaf_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************
// 				Erstes Mal aufkreuzen
// **************************************************
instance DIA_Snaf_Hello(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 2;
	condition		= DIA_Snaf_Hello_Condition;
	information		= DIA_Snaf_Hello_Info;
	description		= "Wie steht's?";
};

func int DIA_Snaf_Hello_Condition()
{
	return 1;
};

func void DIA_Snaf_Hello_Info()
{
	AI_Output(other, self, "DIA_Snaf_Hello_15_00"); //Wie steht's?
	AI_Output(self, other, "DIA_Snaf_Hello_01_01"); //Nicht schlecht. Wenn man gut kochen kann, hat man viele Freunde hier.
	AI_Output(self, other, "DIA_Snaf_Hello_01_02"); //Willst du etwas von meinem Reiseintopf? Hier, nimm und lass es dir schmecken.
	AI_Output(other, self, "DIA_Snaf_Hello_15_03"); //Danke.
	AI_Output(self, other, "DIA_Snaf_Hello_01_04"); //Du könntest mir einen Gefallen tun.

	CreateInvItem(self, ItFoRice);
	B_GiveInvItems(self, other, ItFoRice, 1);
};

// **************************************************
// 				Bring Zutaten
// **************************************************
var int Snaf_Zutaten;
var int Snaf_FreeMBRagout;
// **************************************************
instance DIA_Snaf_Zutaten(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 2;
	condition		= DIA_Snaf_Zutaten_Condition;
	information		= DIA_Snaf_Zutaten_Info;
	description		= "Was kann ich für dich tun?";
};

func int DIA_Snaf_Zutaten_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Snaf_Hello))
	{
		return 1;
	};
};

func void DIA_Snaf_Zutaten_Info()
{
	AI_Output(other, self, "DIA_Snaf_Zutaten_15_00"); //Was kann ich für dich tun?
	AI_Output(self, other, "DIA_Snaf_Zutaten_01_01"); //Du bist sicher gutes Essen gewöhnt. Ich hab' da ein neues Rezept: Fleischwanzen-Ragout à la Snaf, mit Reis und Pilzen.
	AI_Output(self, other, "DIA_Snaf_Zutaten_01_02"); //Du kannst haben, so viel du willst, aber ich brauche aber noch 3 Fleischwanzen und einige Höllenpilze - 5 müssten reichen.

	Info_ClearChoices(DIA_Snaf_Zutaten);
	Info_AddChoice(DIA_Snaf_Zutaten, "Willst du, dass ich kotze?", DIA_Snaf_Zutaten_KOTZ);
	Info_AddChoice(DIA_Snaf_Zutaten, "Hört sich gut an.", DIA_Snaf_Zutaten_DoIt);
};

func void DIA_Snaf_Zutaten_KOTZ()
{
	AI_Output(other, self, "DIA_Snaf_Zutaten_KOTZ_15_00"); //Willst du, dass ich kotze?
	AI_Output(self, other, "DIA_Snaf_Zutaten_KOTZ_01_01"); //Du musst es ja nicht essen, aber zumindest probieren solltest du es! Falls du an die Sachen rankommst, denk an mich.
	AI_Output(self, other, "DIA_Snaf_Zutaten_KOTZ_01_02"); //Ich hab' schon jemanden geschickt, aber der kommt einfach nicht wieder - ist bestimmt zum Neuen Lager übergelaufen.
	Snaf_Zutaten = LOG_RUNNING;

	Log_CreateTopic(CH1_SnafsRecipe, LOG_MISSION);
	Log_SetTopicStatus(CH1_SnafsRecipe, LOG_RUNNING);
	B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_1);

	Info_ClearChoices(DIA_Snaf_Zutaten);
};

func void DIA_Snaf_Zutaten_DoIt()
{
	AI_Output(other, self, "DIA_Snaf_Zutaten_DoIt_15_00"); //Hört sich gut an.
	AI_Output(self, other, "DIA_Snaf_Zutaten_DoIt_01_01"); //Dann sieh mal zu, dass du die Sachen besorgst.
	AI_Output(self, other, "DIA_Snaf_Zutaten_DoIt_01_02"); //Der Letzte, den ich losgeschickt hab, kommt einfach nicht wieder - ist bestimmt zum Neuen Lager übergelaufen.
	Snaf_Zutaten = LOG_RUNNING;
	Snaf_FreeMBRagout = TRUE;

	Log_CreateTopic(CH1_SnafsRecipe, LOG_MISSION);
	Log_SetTopicStatus(CH1_SnafsRecipe, LOG_RUNNING);
	B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_2);

	Info_ClearChoices(DIA_Snaf_Zutaten);
};

// **************************************************
// 					SUCCESS
// **************************************************
instance DIA_Snaf_ZutatenSuccess(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 2;
	condition		= DIA_Snaf_ZutatenSuccess_Condition;
	information		= DIA_Snaf_ZutatenSuccess_Info;
	description		= "Ich hab' die Sachen, die du von mir wolltest!";
};

func int DIA_Snaf_ZutatenSuccess_Condition()
{
	if ((Snaf_Zutaten == LOG_RUNNING) && (Npc_HasItems(other, ItFo_Plants_Mushroom_01) >= 5) && (Npc_HasItems(other, ItAt_Meatbug_01) >= 3))
	{
		return 1;
	};
};

func void DIA_Snaf_ZutatenSuccess_Info()
{
	AI_Output(other, self, "DIA_Snaf_ZutatenSuccess_15_00"); //Ich hab' die Sachen, die du von mir wolltest!
	AI_Output(self, other, "DIA_Snaf_ZutatenSuccess_01_01"); //Gut, ich brauch sie nur noch dazuzugeben, dann ist der Eintopf fertig ... warte ...

	CreateInvItems(other, ItFo_Plants_Mushroom_01, 3);
	B_GiveInvItems(other, self, ItFo_Plants_Mushroom_01, 8); // Notwendig zur Anzeige 8 Items übergeben, wird sofort angepasst

	_ = Npc_RemoveInvItems(self, ItFo_Plants_Mushroom_01, 8); // Alle Zutaten weg
	_ = Npc_RemoveInvItems(other, ItAt_MeatBug_01, 3);

	CreateInvItems(self, ItFoMeatbugragout, 3);
	B_GiveInvItems(self, other, ItFoMeatbugragout, 3);

	Snaf_Zutaten = LOG_SUCCESS;

	Log_SetTopicStatus(CH1_SnafsRecipe, LOG_SUCCESS);
	B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_3);

	if (Snaf_FreeMBRagout == TRUE)
	{
		B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_4);
	};

	B_GiveXP(100);

	AI_StopProcessInfos(self);
};

// **************************************************
// 					AFTER SUCCESS
// **************************************************
var int Snaf_RagoutDay;
// **************************************************
instance DIA_Snaf_AfterSuccess(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 2;
	condition		= DIA_Snaf_AfterSuccess_Condition;
	information		= DIA_Snaf_AfterSuccess_Info;
	permanent		= TRUE;
	description		= "Du hast gesagt, ich kann soviel von dem Eintopf haben, wie ich will...";
};

func int DIA_Snaf_AfterSuccess_Condition()
{
	if ((Snaf_Zutaten == LOG_SUCCESS) && (Snaf_FreeMBRagout == TRUE))
	{
		return 1;
	};
};

func void DIA_Snaf_AfterSuccess_Info()
{
	AI_Output(other, self, "DIA_Snaf_AfterSuccess_15_00"); //Du hast gesagt, ich kann so viel von den Eintopf haben, wie ich will ...

	if (Snaf_RagoutDay != Wld_GetDay())
	{
		AI_Output(self, other, "DIA_Snaf_AfterSuccess_01_01"); //Und das stimmt auch. Hier, nimm 3 Portionen!
		CreateInvItems(self, ItFoMeatbugragout, 3);
		B_GiveInvItems(self, other, ItFoMeatbugragout, 3);
		Snaf_RagoutDay = Wld_GetDay();
	}
	else
	{
		AI_Output(self, other, "DIA_Snaf_AfterSuccess_01_02"); //Klar! Heute ist aber alles schon auf. Komm morgen wieder!
	};
};

// **************************************************
// 					Wo Fleischwanzen
// **************************************************
instance DIA_Snaf_WhereMeatbugs(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 3;
	condition		= DIA_Snaf_WhereMeatbugs_Condition;
	information		= DIA_Snaf_WhereMeatbugs_Info;
	description		= "Wo finde ich Fleischwanzen?";
};

func int DIA_Snaf_WhereMeatbugs_Condition()
{
	if ((Snaf_Zutaten == LOG_RUNNING))
	{
		return 1;
	};
};

func void DIA_Snaf_WhereMeatbugs_Info()
{
	AI_Output(other, self, "DIA_Snaf_WhereMeatbugs_15_00"); //Wo finde ich Fleischwanzen?
	AI_Output(self, other, "DIA_Snaf_WhereMeatbugs_01_01"); //Überall da, wo Müll rumliegt. An der Burgmauer gibt es einige verlassene Hütten, da solltest du welche finden.
	AI_Output(self, other, "DIA_Snaf_WhereMeatbugs_01_02"); //Lass dich von ihrem fiesen Aussehen nicht täuschen. Gekocht sind sie lecker.

	B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_5);
};

// **************************************************
// 					Where Mushrooms
// **************************************************
instance DIA_Snaf_WhereMushrooms(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 4;
	condition		= DIA_Snaf_WhereMushrooms_Condition;
	information		= DIA_Snaf_WhereMushrooms_Info;
	description		= "Wo finde ich Höllenpilze?";
};

func int DIA_Snaf_WhereMushrooms_Condition()
{
	if ((Snaf_Zutaten == LOG_RUNNING))
	{
		return 1;
	};
};

func void DIA_Snaf_WhereMushrooms_Info()
{
	AI_Output(other, self, "DIA_Snaf_WhereMushrooms_15_00"); //Wo finde ich Höllenpilze?
	AI_Output(self, other, "DIA_Snaf_WhereMushrooms_01_01"); //Wenn du aus dem Südtor rausgehst - das ist der umgestürzte Turm - findest du direkt vor dir eine Ebene, auf der Pilze wachsen.

	B_LogEntry(CH1_SnafsRecipe, CH1_SnafsRecipe_6);
};

// **************************************************
// 					Where Nek
// **************************************************
instance DIA_Snaf_WhereNek(C_INFO)
{
	npc				= Vlk_581_Snaf;
	nr				= 5;
	condition		= DIA_Snaf_WhereNek_Condition;
	information		= DIA_Snaf_WhereNek_Info;
	description		= "Wer war der Typ, den du vor mir losgeschickt hast?";
};

func int DIA_Snaf_WhereNek_Condition()
{
	if ((Snaf_Zutaten == LOG_RUNNING))
	{
		return 1;
	};
};

func void DIA_Snaf_WhereNek_Info()
{
	AI_Output(other, self, "DIA_Snaf_WhereNek_15_00"); //Wer war der Typ, den du vor mir losgeschickt hast?
	AI_Output(self, other, "DIA_Snaf_WhereNek_01_01"); //Sein Name war Nek. Er war ziemlich unzufrieden hier - ich denke, er ist jetzt im Neuen Lager.
	AI_Output(self, other, "DIA_Snaf_WhereNek_01_02"); //Hab ihn Pilze suchen geschickt - aber er kam nicht wieder ...

	if ((Sly_LostNek != LOG_SUCCESS)
	&& (Npc_GetTrueGuild(hero) == GIL_NONE))
	{
		Log_CreateTopic(CH1_LostNek, LOG_MISSION);
		Log_SetTopicStatus(CH1_LostNek, LOG_RUNNING);
	};

	B_LogEntry(CH1_LostNek, CH1_LostNek_6);
};
