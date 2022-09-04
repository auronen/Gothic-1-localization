// ******************************
//				EXIT
// ******************************
instance ORG_801_Lares_Exit(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 999;
	condition		= ORG_801_Lares_Exit_Condition;
	information		= ORG_801_Lares_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int ORG_801_Lares_Exit_Condition()
{
	return 1;
};

func void ORG_801_Lares_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ******************************
//			Wie hier rein?
// ******************************
var int Lares_vorbeigemogelt;
// ******************************
instance ORG_801_Lares_YouHere(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 1;
	condition		= ORG_801_Lares_YouHere_Condition;
	information		= ORG_801_Lares_YouHere_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int ORG_801_Lares_YouHere_Condition()
{
	var C_Npc Roscoe; Roscoe = Hlp_GetNpc(Org_840_Roscoe);
	if ((Roscoe.aivar[AIV_PASSGATE] == FALSE))
	{
		return 1;
	};
};

func void ORG_801_Lares_YouHere_Info()
{
	var C_Npc Roscoe; Roscoe = Hlp_GetNpc(Org_840_Roscoe);
	if ((Npc_IsInState(Roscoe, ZS_MagicSleep)) || (Npc_GetTempAttitude(Roscoe, other) == ATT_FRIENDLY))
	{
		AI_Output(self, other, "ORG_801_Lares_YouHere_11_00"); //Wie kommst du hier rein? Was ist mit Roscoe?
		AI_Output(other, self, "ORG_801_Lares_YouHere_15_01"); //Er hatte keine Lust, mich aufzuhalten.
		AI_Output(self, other, "ORG_801_Lares_YouHere_11_02"); //Was willst du?
		Roscoe.aivar[AIV_PASSGATE] = TRUE;
		Lares_vorbeigemogelt = TRUE;
		B_GiveXP(XP_CheatedIntoLaresHut);
	}
	else
	{
		Npc_SetTempAttitude(self, ATT_HOSTILE);
		AI_StopProcessInfos(self);
		Npc_SetTarget(self, other);
		AI_StartState(self, ZS_ATTACK, 1, "");
	};
};

// ******************************
//			Wanna Join
// ******************************
instance ORG_801_Lares_WannaJoin(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 1;
	condition		= ORG_801_Lares_WannaJoin_Condition;
	information		= ORG_801_Lares_WannaJoin_Info;
	description		= "Ich will mich eurer Bande anschließen.";
};

func int ORG_801_Lares_WannaJoin_Condition()
{
	if ((Npc_GetTrueGuild(hero) == GIL_NONE)
	&& (Kapitel < 2))
	{
		return 1;
	};
};

func void ORG_801_Lares_WannaJoin_Info()
{
	AI_Output(other, self, "ORG_801_Lares_WannaJoin_15_00"); //Ich will mich eurer Bande anschließen.
	AI_Output(self, other, "ORG_801_Lares_WannaJoin_11_01"); //So? Was hast du denn vorzuweisen?
};

// ******************************
//			Bring List
// ******************************
var int Lares_BringListBack;
// ******************************
instance ORG_801_Lares_BringList(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_BringList_Condition;
	information		= ORG_801_Lares_BringList_Info;
	description		= "Ich habe die Bedarfsliste der Alten Mine bei mir.";
};

func int ORG_801_Lares_BringList_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_801_Lares_WannaJoin)) && (Npc_HasItems(hero, TheList)))
	{
		return 1;
	};
};

func void ORG_801_Lares_BringList_Info()
{
	AI_Output(other, self, "ORG_801_Lares_BringList_15_00"); //Ich habe die Bedarfsliste der Alten Mine bei mir.
	AI_Output(self, other, "ORG_801_Lares_BringList_11_01"); //Nein! Das glaub' ich nicht! Du bist mir schon einer, das muss ich ja sagen.
	AI_Output(self, other, "ORG_801_Lares_BringList_11_02"); //Zeig her!
	AI_Output(other, self, "ORG_801_Lares_BringList_15_03"); //Hier ist sie ...
	B_UseFakeScroll();
	AI_Output(self, other, "ORG_801_Lares_BringList_11_04"); //Tatsächlich! Weißt du, was wir jetzt damit machen? Wir schreiben noch ein bisschen was drauf und du bringst die Liste zurück ins Alte Lager!
	AI_Output(self, other, "ORG_801_Lares_BringList_11_05"); //Wenn sie den Krempel dann an die Mine liefern, überfallen wir sie und sacken uns alles ein! Das haben wir gleich ... So! Hier ist die Liste. Du weißt, was du zu tun hast.
	// AI_Output(self, other,"ORG_801_Lares_BringList_11_06"); // Das haben wir gleich ... So! Hier ist die Liste. Du weißt, was du zu tun hast.

	Points_NC = Points_NC + 10;

	Lares_BringListBack = LOG_RUNNING;
	Npc_RemoveInvItem(hero, TheList);
	CreateInvItem(hero, TheListNC);

	if (Npc_GetTrueGuild(hero) == GIL_NONE)
	{
		Log_CreateTopic(CH1_JoinNC, LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC, LOG_RUNNING);
	};

	B_LogEntry(CH1_JoinNC, CH1_JoinNC_3);
	B_GiveXP(XP_GiveListToLares);
};

// ******************************
//		List an Diego!
// ******************************
instance ORG_801_Lares_BringListBack(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_BringListBack_Condition;
	information		= ORG_801_Lares_BringListBack_Info;
	description		= "Ich habe Diego die Liste übergeben.";
};

func int ORG_801_Lares_BringListBack_Condition()
{
	if ((Lares_BringListBack == LOG_RUNNING) && (Diego_BringList == LOG_SUCCESS))
	{
		return 1;
	};
};

func void ORG_801_Lares_BringListBack_Info()
{
	AI_Output(other, self, "ORG_801_Lares_BringListBack_15_00"); //Ich habe Diego die Liste übergeben.
	AI_Output(self, other, "ORG_801_Lares_BringListBack_11_01"); //Gut! Ich habe bereits Leute auf dem Weg zur Alten Mine postiert. In diesem Moment liegen Thorus' Gardisten schon tot im Wald.

	Points_NC = Points_NC + 10;
	Lares_BringListBack = LOG_SUCCESS;

	B_LogEntry(CH1_JoinNC, CH1_JoinNC_4);

	B_GiveXP(XP_ReportListDeliveryToLares);
};

// ******************************
//		Anteil wegen BringList
// ******************************
instance ORG_801_Lares_BringListAnteil(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_BringListAnteil_Condition;
	information		= ORG_801_Lares_BringListAnteil_Info;
	description		= "Sie haben den Konvoi schon überfallen? Was ist mein Anteil bei der Sache?";
};

func int ORG_801_Lares_BringListAnteil_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_801_Lares_BringListBack)))
	{
		return 1;
	};
};

func void ORG_801_Lares_BringListAnteil_Info()
{
	AI_Output(other, self, "ORG_801_Lares_BringListAnteil_15_00"); //Sie haben den Konvoi schon überfallen? Was ist mein Anteil bei der Sache?
	AI_Output(self, other, "ORG_801_Lares_BringListAnteil_11_01"); //Geh zu Gorn. Er wird dir etwas geben.
	var C_Npc gorn; gorn = Hlp_GetNpc(PC_Fighter);
	if (gorn.aivar[AIV_FINDABLE] == TRUE)
	{
		AI_Output(other, self, "ORG_801_Lares_BringListAnteil_15_02"); //Ich kenne Gorn. Er ist kein Mitglied der Bande. Er ist ein Söldner der Magier.
		AI_Output(self, other, "ORG_801_Lares_BringListAnteil_11_03"); //Ja, das ist richtig.
		AI_Output(other, self, "ORG_801_Lares_BringListAnteil_15_04"); //War er an der Sache beteiligt?
		AI_Output(self, other, "ORG_801_Lares_BringListAnteil_11_05"); //Es ist nicht gut für dich, wenn du zu viel weißt. Geh einfach zu ihm und hol dir deinen Anteil ab.
	};

	B_LogEntry(CH1_JoinNC, CH1_JoinNC_5);
	gorn.aivar[AIV_FINDABLE] == TRUE;
};

// ******************************
//		Mordrag schickt mich
// ******************************
instance ORG_801_Lares_MordragSentMe(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_MordragSentMe_Condition;
	information		= ORG_801_Lares_MordragSentMe_Info;
	description		= "Mordrag schickt mich. Er hat mir einen Ring für dich gegeben.";
};

func int ORG_801_Lares_MordragSentMe_Condition()
{
	if (Npc_KnowsInfo(hero, ORG_801_Lares_WannaJoin)
	&& Npc_HasItems(hero, MordragsRing)
	&& (Kapitel < 2))
	{
		return 1;
	};
};

func void ORG_801_Lares_MordragSentMe_Info()
{
	B_GiveInvItems(other, self, MordragsRing, 1);

	AI_Output(other, self, "ORG_801_Lares_MordragSentMe_15_00"); //Mordrag schickt mich. Er hat mir einen Ring für dich gegeben.
	AI_Output(self, other, "ORG_801_Lares_MordragSentMe_11_01"); //Ein wertvolles Stück! Es ist bei uns üblich, einen Teil der Beute mit dem Anführer zu teilen.
	AI_Output(self, other, "ORG_801_Lares_MordragSentMe_11_02"); //Aber dass er DIR den Ring gegeben hat, zeigt, dass er einiges von dir hält.
	AI_Output(self, other, "ORG_801_Lares_MordragSentMe_11_03"); //Ich will, dass du zu ihm gehst und ihm etwas ausrichtest.
	AI_Output(self, other, "ORG_801_Lares_MordragSentMe_11_04"); //Sag ihm, ich will jemanden im Sektenlager haben. Die Bruderschaft plant irgendwas Großes - ich will genau wissen, was da abläuft.

	Lares_InformMordrag = LOG_RUNNING;

	if (Npc_GetTrueGuild(hero) == GIL_NONE)
	{
		Log_CreateTopic(CH1_JoinNC, LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC, LOG_RUNNING);
	};

	B_LogEntry(CH1_JoinNC, CH1_JoinNC_6);
	B_GiveXP(XP_GiveRingToLares);

	Points_NC = Points_NC + 10;
};

// ******************************
//		Immerhin vorbeigemogelt
// ******************************
instance ORG_801_Lares_Vorbeigemogelt(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_Vorbeigemogelt_Condition;
	information		= ORG_801_Lares_Vorbeigemogelt_Info;
	description		= "Ich bin immerhin an deinen Wachen vorbeigekommen.";
};

func int ORG_801_Lares_Vorbeigemogelt_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_801_Lares_WannaJoin)) && (Lares_vorbeigemogelt == TRUE))
	{
		return 1;
	};
};

func void ORG_801_Lares_Vorbeigemogelt_Info()
{
	AI_Output(other, self, "ORG_801_Lares_Vorbeigemogelt_15_00"); //Ich bin immerhin an deinen Wachen vorbeigekommen.
	AI_Output(self, other, "ORG_801_Lares_Vorbeigemogelt_11_01"); //Das ist richtig. Aber das alleine wird noch nicht reichen.

	Points_NC = Points_NC + 10;
};

// ******************************
//		Baal Isidro - Get Kraut
// ******************************
var int Lares_Get400Ore;
// ******************************
instance ORG_801_Lares_GetKraut(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 10;
	condition		= ORG_801_Lares_GetKraut_Condition;
	information		= ORG_801_Lares_GetKraut_Info;
	description		= "Was kann ich noch machen?";
};

func int ORG_801_Lares_GetKraut_Condition()
{
	if (Npc_KnowsInfo(hero, ORG_801_Lares_BringList) || Npc_KnowsInfo(hero, ORG_801_Lares_MordragSentMe) || Npc_KnowsInfo(hero, ORG_801_Lares_Vorbeigemogelt))
	{
		return 1;
	};
};

func void ORG_801_Lares_GetKraut_Info()
{
	AI_Output(other, self, "ORG_801_Lares_GetKraut_15_00"); //Was kann ich noch machen?
	AI_Output(self, other, "ORG_801_Lares_GetKraut_11_01"); //Baal Isidro aus dem Sektenlager hat Kraut im Wert von mindestens 400 Erz bei sich. Ich will, dass du es ihm abnimmst. Egal, wie.

	if ((BaalIsidro_DealerJob == LOG_RUNNING) || (BaalIsidro_DealerJob == LOG_SUCCESS))
	{
		AI_Output(other, self, "ORG_801_Lares_GetKraut_15_02"); //Wenn du den Riesenhaufen Kraut meinst, den hab' ich mir schon unter den Nagel gerissen
		AI_Output(self, other, "ORG_801_Lares_GetKraut_11_03"); //Du scheinst mir einer von der schnellen Sorte zu sein!
	};

	AI_Output(self, other, "ORG_801_Lares_GetKraut_11_04"); //Wenn du das Kraut hast, verkauf es. Die 400 Erz bringst du zu mir.
	AI_Output(self, other, "ORG_801_Lares_GetKraut_11_05"); //Dann unterhalten wir uns noch mal darüber, ob du in die Bande aufgenommen wirst.
	Lares_Get400Ore = LOG_RUNNING;

	if (Npc_GetTrueGuild(hero) == GIL_NONE)
	{
		Log_CreateTopic(CH1_JoinNC, LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinNC, LOG_RUNNING);
	};

	B_LogEntry(CH1_JoinNC, CH1_JoinNC_7);
};

// ******************************
//			400 Ore
// ******************************
instance ORG_801_Lares_400Ore(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 2;
	condition		= ORG_801_Lares_400Ore_Condition;
	information		= ORG_801_Lares_400Ore_Info;
	permanent		= TRUE;
	description		= "Ich hab' die 400 Erz.";
};

func int ORG_801_Lares_400Ore_Condition()
{
	if ((Lares_Get400Ore == LOG_RUNNING) && ((BaalIsidro_DealerJob == LOG_RUNNING) || (BaalIsidro_DealerJob == LOG_SUCCESS)))
	{
		return 1;
	};
};

func void ORG_801_Lares_400Ore_Info()
{
	AI_Output(other, self, "ORG_801_Lares_400Ore_15_00"); //Ich hab' die 400 Erz.
	if (Npc_HasItems(other, itminugget) >= 400)
	{
		AI_Output(self, other, "ORG_801_Lares_400Ore_11_01"); //Gut! Sehr gut. Ich denke, das reicht jetzt.
		Lares_Get400Ore = LOG_SUCCESS;
		Points_NC = Points_NC + 10;

		B_GiveInvItems(other, self, ItMiNugget, 400);
		B_LogEntry(CH1_JoinNC, CH1_JoinNC_8);
		B_GiveXP(XP_BaalIsidroPayLares);
	}
	else
	{
		AI_Output(self, other, "ORG_801_Lares_400Ore_NOORE_11_00"); //Zähl noch mal nach. Ich hoffe, du hast nicht schon die Hälfte versoffen.
	};
};

// ******************************
//		Reicht das jetzt???
// ******************************
instance ORG_801_Lares_Reicht(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 5;
	condition		= ORG_801_Lares_Reicht_Condition;
	information		= ORG_801_Lares_Reicht_Info;
	permanent		= TRUE;
	description		= "Reicht das, um bei euch aufgenommen zu werden?";
};

func int ORG_801_Lares_Reicht_Condition()
{
	if (Npc_KnowsInfo(hero, ORG_801_Lares_WannaJoin)
	&& (Npc_KnowsInfo(hero, ORG_801_Lares_MordragSentMe) || Npc_KnowsInfo(hero, ORG_801_Lares_BringList))
	&& (Npc_GetTrueGuild(other) == GIL_NONE) && (Kapitel < 2))
	{
		return 1;
	};
};

func void ORG_801_Lares_Reicht_Info()
{
	AI_Output(other, self, "ORG_801_Lares_Reicht_15_00"); //Reicht das, um bei euch aufgenommen zu werden?

	if ((Points_NC >= 30) && (hero.level >= 5))
	{
		AI_Output(self, other, "ORG_801_Lares_Reicht_AUFNAHME_11_00"); //Das will ich meinen!
		AI_Output(self, other, "ORG_801_Lares_Reicht_AUFNAHME_11_01"); //Und ich habe sogar ein Geschenk für dich. Eine bessere Rüstung. Nicht viel, aber du hast sie dir verdient.

		hero.guild = GIL_ORG;
		Npc_SetTrueGuild(hero, GIL_ORG);
		CreateInvItem(hero, ORG_ARMOR_L);

		CreateInvItem(self, ItAmArrow);
		B_GiveInvItems(self, hero, ItAmArrow, 1);
		Npc_RemoveInvItem(hero, ItAmArrow);

		AI_EquipBestArmor(hero);
		B_GiveXP(XP_BecomeBandit);

		B_LogEntry(CH1_JoinNC, CH1_JoinNC_9);
		Log_SetTopicStatus(CH1_JoinNC, LOG_SUCCESS);

		// Canceln der anderen Aufnahmen
		Log_CreateTopic(CH1_JoinOC, LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinOC, LOG_FAILED);
		B_LogEntry(CH1_JoinOC, CH1_JoinOC_9);

		Log_CreateTopic(CH1_JoinPsi, LOG_MISSION);
		Log_SetTopicStatus(CH1_JoinPsi, LOG_FAILED);
		B_LogEntry(CH1_JoinPsi, CH1_JoinPsi_16);

		Log_SetTopicStatus(CH1_LostNek, LOG_FAILED);
		Log_SetTopicStatus(CH1_FiskNewDealer, LOG_FAILED);
		Log_SetTopicStatus(CH1_KalomsRecipe, LOG_FAILED);
		Log_SetTopicStatus(CH1_BringList, LOG_FAILED);
		Log_SetTopicStatus(CH1_MordragKO, LOG_FAILED);
	}
	else
	{
		if (Npc_KnowsInfo(Hero, ORG_801_Lares_MordragSentMe))
		{
			AI_Output(self, other, "ORG_801_Lares_Reicht_11_02"); //Mordrag hat sich für dich eingesetzt.
		};

		if (Npc_KnowsInfo(Hero, ORG_801_Lares_BringList))
		{
			AI_Output(self, other, "ORG_801_Lares_Reicht_11_03"); //Die Liste hier hinzubringen, hat dir einiges Ansehen gebracht.
		};

		AI_Output(self, other, "ORG_801_Lares_Reicht_11_04"); //Aber du bist noch nicht bereit. Erledige deine Aufgaben.

		B_PrintGuildCondition(5);
	};
};

// ******************************
//			Goto Kalom
// ******************************
instance ORG_801_Lares_GotoKalom(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 10;
	condition		= ORG_801_Lares_GotoKalom_Condition;
	information		= ORG_801_Lares_GotoKalom_Info;
	description		= "Und was soll ich jetzt machen?";
};

func int ORG_801_Lares_GotoKalom_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_ORG)
	{
		return 1;
	};
};

func void ORG_801_Lares_GotoKalom_Info()
{
	AI_Output(other, self, "ORG_801_Lares_GotoKalom_15_00"); //Und was soll ich jetzt machen?
	AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_01"); //Du bist jetzt ein Mitglied unserer Bande. Es steht dir frei zu tun, was du willst.

	Log_CreateTopic(CH1_GotoPsiCamp, LOG_MISSION);
	Log_SetTopicStatus(CH1_GotoPsiCamp, LOG_RUNNING);
	B_LogEntry(CH1_GotoPsiCamp, CH1_GotoPsiCamp_2);

	if (Lares_InformMordrag == LOG_RUNNING)
	{
		AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_02"); //Wenn du dich nützlich machen willst, geh zu Mordrag und unterstütz ihn bei der Sektensache.
		B_LogEntry(CH1_GotoPsiCamp, CH1_GotoPsiCamp_3);
	}
	else
	{
		var C_Npc Mordrag; Mordrag = Hlp_GetNpc(Org_826_Mordrag);
		if (Npc_IsDead(Mordrag))
		{
			AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_03"); //Mordrag, einer unserer Leute vom Alten Lager, wurde umgebracht. Bevor er starb, hat er uns die Nachricht übermittelt, dass im Lager der Sekte eine große Sache läuft.
			AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_04"); //Geh zum Lager der Bruderschaft und finde heraus, was los ist.
			B_LogEntry(CH1_GotoPsiCamp, CH1_GotoPsiCamp_4);
		}
		else
		{
			AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_05"); //Mordrag, einer unserer Leute aus dem Alten Lager, ist zurückgekehrt.
			AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_06"); //Geh zu ihm. Sag ihm, ich will jemanden im Sektenlager haben. Die Bruderschaft plant irgendwas Großes - ich will genau wissen, was da abläuft.
			AI_Output(self, other, "ORG_801_Lares_GotoKalom_11_07"); //Hilf ihm bei der Sache.
			B_LogEntry(CH1_GotoPsiCamp, CH1_GotoPsiCamp_5);

			B_ExchangeRoutine(Org_826_Mordrag, "START");
			Lares_InformMordrag = LOG_RUNNING;
		};
	};
};

// ******************************
//			Wo lernen?
// ******************************
instance ORG_801_Lares_WhereLearn(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 20;
	condition		= ORG_801_Lares_WhereLearn_Condition;
	information		= ORG_801_Lares_WhereLearn_Info;
	description		= "Wo kann ich hier was lernen?";
};

func int ORG_801_Lares_WhereLearn_Condition()
{
	return TRUE;
};

func void ORG_801_Lares_WhereLearn_Info()
{
	AI_Output(other, self, "ORG_801_Lares_WhereLearn_Info_15_01"); //Wo kann ich hier was lernen?
	AI_Output(self, other, "ORG_801_Lares_WhereLearn_Info_11_02"); //Bei mir. Ich kann dir beibringen, deine Geschicklichkeit und Stärke zu verbessern.
	Log_CreateTopic(GE_TeacherNC, LOG_NOTE);
	B_LogEntry(GE_TeacherNC, GE_TeacherNC_Lares);
};

// ******************************
// 		STR + DEX LERNEN
// ******************************
instance ORG_801_Lares_Teach(C_INFO)
{
	npc				= ORG_801_Lares;
	nr				= 20;
	condition		= ORG_801_Lares_Teach_Condition;
	information		= ORG_801_Lares_Teach_Info;
	permanent		= TRUE;
	description		= "Ich will mich verbessern";
};

func int ORG_801_Lares_Teach_Condition()
{
	if (Npc_KnowsInfo(hero, ORG_801_Lares_WhereLearn))
	{
		return TRUE;
	};
};

func void ORG_801_Lares_Teach_Info()
{
	AI_Output(other, self, "ORG_801_Lares_Teach_15_00"); //Ich will mich verbessern.

	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach, DIALOG_BACK, ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_5, 5 * LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_1, LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_BACK()
{
	Info_ClearChoices(ORG_801_Lares_Teach);
};

func void ORG_801_Lares_Teach_STR_1()
{
	B_BuyAttributePoints(other, ATR_STRENGTH, LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach, DIALOG_BACK, ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_5, 5 * LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_1, LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_STR_5()
{
	B_BuyAttributePoints(other, ATR_STRENGTH, 5 * LPCOST_ATTRIBUTE_STRENGTH);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach, DIALOG_BACK, ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_5, 5 * LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_1, LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_DEX_1()
{
	B_BuyAttributePoints(other, ATR_DEXTERITY, LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach, DIALOG_BACK, ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_5, 5 * LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_1, LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_1);
};

func void ORG_801_Lares_Teach_DEX_5()
{
	B_BuyAttributePoints(other, ATR_DEXTERITY, 5 * LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_801_Lares_Teach);
	Info_AddChoice(ORG_801_Lares_Teach, DIALOG_BACK, ORG_801_Lares_Teach_BACK);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_5, 5 * LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnStrength_1, LPCOST_ATTRIBUTE_STRENGTH, 0), ORG_801_Lares_Teach_STR_1);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_5);
	Info_AddChoice(ORG_801_Lares_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_801_Lares_Teach_DEX_1);
};
