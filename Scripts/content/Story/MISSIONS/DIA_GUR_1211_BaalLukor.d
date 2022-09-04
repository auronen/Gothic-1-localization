// ************************************************************
// 							EXIT
// ************************************************************
instance Info_BaalLukor_EXIT(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 999;
	condition		= Info_BaalLukor_EXIT_Condition;
	information		= Info_BaalLukor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_BaalLukor_EXIT_Condition()
{
	return 1;
};

func void Info_BaalLukor_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//**************************************************************************
//	Info MEET: Erstes Zusammentreffen mit Baal Lukor
//**************************************************************************
instance Info_BaalLukor_MEET(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_MEET_Condition;
	information		= Info_BaalLukor_MEET_Info;
	important		= TRUE;
};

func int Info_BaalLukor_MEET_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_MEET_Info()
{
	AI_Output(self, other, "Info_BaalLukor_MEET_13_01"); //Danke für deine Hilfe. Du bist wirklich in letzter Sekunde gekommen.

	B_GiveXP(XP_SaveBaalLukor);
};

//**************************************************************************
//	Info DEAD
//**************************************************************************
instance Info_BaalLukor_DEAD(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 20;
	condition		= Info_BaalLukor_DEAD_Condition;
	information		= Info_BaalLukor_DEAD_Info;
	description		= "Ich habe tote Templer auf dem Weg hierher gefunden!";
};

func int Info_BaalLukor_DEAD_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_DEAD_Info()
{
	AI_Output(other, self, "Info_BaalLukor_DEAD_15_01"); //Ich habe tote Templer auf dem Weg hierher gefunden! Was ist passiert?
	AI_Output(self, other, "Info_BaalLukor_DEAD_13_02"); //Meister Cor Angar hat uns hierhin entsandt, um die Höhlen zu erforschen.
	AI_Output(self, other, "Info_BaalLukor_DEAD_13_03"); //Wir hatte nichts als muffige Grabnischen und halbzerfallene Mumien erwartet.
	AI_Output(self, other, "Info_BaalLukor_DEAD_13_04"); //Dann plötzlich bewegte sich die Dunkelheit und überall waren Orks. Ich weiß nicht, was sie hier suchen, aber ihr Auftauchen hier ist mehr als ungewöhnlich!
	AI_Output(other, self, "Info_BaalLukor_DEAD_15_05"); //Wo sind die anderen Templer?
	AI_Output(self, other, "Info_BaalLukor_DEAD_13_06"); //Tot! Ich habe sie unwissend ins Verderben geführt. Ich hoffe, der Schläfer wird mir das verzeihen.

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_5);
};

//**************************************************************************
//	Info SUMMONING
//**************************************************************************
instance Info_BaalLukor_SUMMONING(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 10;
	condition		= Info_BaalLukor_SUMMONING_Condition;
	information		= Info_BaalLukor_SUMMONING_Info;
	description		= "Cor Angar schickt mich!";
};

func int Info_BaalLukor_SUMMONING_Condition()
{
	return TRUE;
};

func void Info_BaalLukor_SUMMONING_Info()
{
	AI_Output(other, self, "Info_BaalLukor_SUMMONING_15_01"); //Cor Angar schickt mich! Habt ihr irgendein Zeichen des Schläfers gefunden?
	AI_Output(self, other, "Info_BaalLukor_SUMMONING_13_02"); //Bisher noch nicht. Aber was ist mit Y'Berion? Ist er wieder zu sich gekommen?
	AI_Output(other, self, "Info_BaalLukor_SUMMONING_15_03"); //Nein, er ist immer noch ohnmächtig.
	AI_Output(self, other, "Info_BaalLukor_SUMMONING_13_04"); //Wir müssen dem Rätsel dieser Höhlen auf den Grund gehen. Nach all den schrecklichen Verlusten kann ich nicht mit leeren Händen zur Gemeinschaft zurückkehren.
	AI_Output(self, other, "Info_BaalLukor_SUMMONING_13_05"); //Doch meine Kampfkünste sind sehr begrenzt und die Orks sprechen nicht auf meine magischen Kräfte an, so wie es die leichtgläubigen Menschen aus dem Alten Lager tun.
	AI_Output(self, other, "Info_BaalLukor_SUMMONING_13_06"); //Wenn dich schon unsere Bruderschaft schickt, vielleicht könntest du mir bei der restlichen Erforschung dieser Gruft helfen.
};

//**************************************************************************
//	Info HELP
//**************************************************************************
instance Info_BaalLukor_HELP(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_HELP_Condition;
	information		= Info_BaalLukor_HELP_Info;
	description		= "Ich werde dir helfen";
};

func int Info_BaalLukor_HELP_Condition()
{
	return Npc_KnowsInfo(hero, Info_BaalLukor_SUMMONING);
};

func void Info_BaalLukor_HELP_Info()
{
	AI_Output(other, self, "Info_BaalLukor_HELP_15_01"); //Ich werde dir helfen.
	AI_Output(self, other, "Info_BaalLukor_HELP_13_02"); //Gut. Sehr gut. Aus dieser Halle führen drei Stollen. Wir sollten sie alle durchsuchen.
	AI_Output(self, other, "Info_BaalLukor_HELP_13_03"); //Geh voraus. Ich folge dir!

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_6);

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "Follow");
};

//**************************************************************************
//	Info FOUNDNONE
//**************************************************************************
instance Info_BaalLukor_FOUNDNONE(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_FOUNDNONE_Condition;
	information		= Info_BaalLukor_FOUNDNONE_Info;
	permanent		= TRUE;
	description		= "Ich kann keinen Hinweis finden!";
};

func int Info_BaalLukor_FOUNDNONE_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& (BaalLukor_BringParchment == 0)
	&& !Npc_HasItems(hero, OrkParchmentOne)
	&& !Npc_HasItems(hero, OrkParchmentTwo))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_FOUNDNONE_Info()
{
	AI_Output(other, self, "Info_BaalLukor_FOUNDNONE_15_01"); //Ich kann keinen Hinweis finden!
	AI_Output(self, other, "Info_BaalLukor_FOUNDNONE_13_02"); //Wir müssen die drei Stollen durchsuchen.

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info FOUNDONE
//**************************************************************************
instance Info_BaalLukor_FOUNDONE(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_FOUNDONE_Condition;
	information		= Info_BaalLukor_FOUNDONE_Info;
	permanent		= TRUE;
	description		= "Es scheint hier keine andere Pergamenthälfte zu geben!";
};

func int Info_BaalLukor_FOUNDONE_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& (((BaalLukor_BringParchment == 1) && !Npc_HasItems(hero, OrkParchmentTwo)) || ((BaalLukor_BringParchment == 2) && !Npc_HasItems(hero, OrkParchmentOne))))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_FOUNDONE_Info()
{
	AI_Output(other, self, "Info_BaalLukor_FOUNDONE_15_01"); //Es scheint hier keine andere Pergamenthälfte zu geben!
	AI_Output(self, other, "Info_BaalLukor_FOUNDONE_13_02"); //Es muss eine zweite Hälfte geben. Wir sollten alle drei Stollen gründlich durchsuchen!

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info FIRSTWAIT
//**************************************************************************
instance Info_BaalLukor_FIRSTWAIT(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_FIRSTWAIT_Condition;
	information		= Info_BaalLukor_FIRSTWAIT_Info;
	important		= TRUE;
};

func int Info_BaalLukor_FIRSTWAIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& (Npc_GetDistToWP(self, "GRYD_040") < 500))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_FIRSTWAIT_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_FIRSTWAIT_13_01"); //Hier geht es nicht weiter! Vielleicht bergen die Nischen hier Hinweise.

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "WaitInSideTunnelOne");
};

//**************************************************************************
//	Info FIRSTSCROLL
//**************************************************************************
instance Info_BaalLukor_FIRSTSCROLL(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_FIRSTSCROLL_Condition;
	information		= Info_BaalLukor_FIRSTSCROLL_Info;
	description		= "Ich habe dieses Stück Pergament hier gefunden!";
};

func int Info_BaalLukor_FIRSTSCROLL_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& Npc_HasItems(hero, OrkParchmentOne))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_FIRSTSCROLL_Info()
{
	AI_Output(other, self, "Info_BaalLukor_FIRSTSCROLL_15_01"); //Ich habe dieses Stück Pergament hier gefunden!
	B_GiveInvItems(hero, self, OrkParchmentOne, 1); // Pergament1 übergeben
	if (BaalLukor_BringParchment == 2)
	{
		AI_Output(self, other, "Info_BaalLukor_FIRSTSCROLL_13_02"); //Sehr gut! Dies ist die andere Hälfte der orkischen Spruchrolle.
		BaalLukor_BringParchment = 3;
	}
	else
	{
		AI_Output(self, other, "Info_BaalLukor_FIRSTSCROLL_13_03"); //Das sieht aus wie eine orkische Zauberspruchrolle, aber sie ist mittendurch gerissen.
		AI_Output(self, other, "Info_BaalLukor_FIRSTSCROLL_13_04"); //Es muss noch eine andere Hälfte davon geben.
		AI_StopProcessInfos(self);
		BaalLukor_BringParchment = 1;
	};

	Npc_ExchangeRoutine(self, "Follow");
};

//**************************************************************************
//	Info SECONDWAIT
//**************************************************************************
instance Info_BaalLukor_SECONDWAIT(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_SECONDWAIT_Condition;
	information		= Info_BaalLukor_SECONDWAIT_Info;
	important		= TRUE;
};

func int Info_BaalLukor_SECONDWAIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& (Npc_GetDistToWP(self, "GRYD_047") < 500))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_SECONDWAIT_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_SECONDWAIT_13_01"); //Hmmm ... Dieser Stollen ist eine Sackgasse! Vielleicht findest du hier irgendwelche Hinweise, die uns weiterhelfen.

	if (!Npc_HasItems(hero, OrkParchmentTwo))
	{
		AI_StopProcessInfos(self);
		Npc_ExchangeRoutine(self, "WaitInSideTunnelTwo");
	};
};

//**************************************************************************
//	Info SECONDSCROLL
//**************************************************************************
instance Info_BaalLukor_SECONDSCROLL(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_SECONDSCROLL_Condition;
	information		= Info_BaalLukor_SECONDSCROLL_Info;
	description		= "Hier ist ein zerrissenes Stück Pergament!";
};

func int Info_BaalLukor_SECONDSCROLL_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& Npc_HasItems(hero, OrkParchmentTwo))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_SECONDSCROLL_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self, hero);

	AI_Output(other, self, "Info_BaalLukor_SECONDSCROLL_15_01"); //Hier ist ein zerrissenes Stück Pergament!
	B_GiveInvItems(hero, self, OrkParchmentTwo, 1); // Pergament2 übergeben
	if (BaalLukor_BringParchment == 1)
	{
		AI_Output(self, other, "Info_BaalLukor_SECONDSCROLL_13_02"); //Sehr gut! Dies ist die andere Hälfte der orkischen Spruchrolle.
		BaalLukor_BringParchment = 3;
	}
	else
	{
		AI_Output(self, other, "Info_BaalLukor_SECONDSCROLL_13_03"); //Das sieht aus wie eine orkische Zauberspruchrolle, aber sie ist mittendurch gerissen.
		AI_Output(self, other, "Info_BaalLukor_SECONDSCROLL_13_04"); //Es muss noch eine andere Hälfte davon geben.
		AI_StopProcessInfos(self);
		BaalLukor_BringParchment = 2;
	};

	Npc_ExchangeRoutine(self, "Follow");
};

//**************************************************************************
//	Info BOTHSCROLLS
//**************************************************************************
instance Info_BaalLukor_BOTHSCROLLS(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_BOTHSCROLLS_Condition;
	information		= Info_BaalLukor_BOTHSCROLLS_Info;
	description		= "Was fangen wir jetzt mit den beiden Stücken an?";
};

func int Info_BaalLukor_BOTHSCROLLS_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HELP)
	&& (BaalLukor_BringParchment == 3))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_BOTHSCROLLS_Info()
{
	AI_Output(other, self, "Info_BaalLukor_BOTHSCROLLS_15_01"); //Was fangen wir jetzt mit diesen beiden Stücken an?
	AI_Output(self, other, "Info_BaalLukor_BOTHSCROLLS_13_02"); //Die beiden Hälften passen zusammen. Doch ich kann die orkischen Zeichen nicht übersetzen.

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_7);

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info RUNES
//**************************************************************************
instance Info_BaalLukor_RUNES(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_RUNES_Condition;
	information		= Info_BaalLukor_RUNES_Info;
	important		= TRUE;
};

func int Info_BaalLukor_RUNES_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_BOTHSCROLLS)
	&& ((Npc_GetDistToWP(hero, "GRYD_025") < 600) || (Npc_GetDistToWP(hero, "GRYD_048") < 600)))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_RUNES_Info()
{
	B_FullStop(hero);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_RUNES_13_01"); //Warte mal! Das ist interessant ...
	AI_Output(other, self, "Info_BaalLukor_RUNES_15_02"); //Also ich kann diesem Ort beim besten Willen nichts Interessantes abgewinnen.
	AI_Output(self, other, "Info_BaalLukor_RUNES_13_03"); //Schweig und betrachte die Runenornamente in dieser Höhle hier.
	AI_Output(self, other, "Info_BaalLukor_RUNES_13_04"); //Das sollte ausreichend Material geben, um die geteilten Pergamenthälften zu übersetzen.
	B_UseFakeScroll();
	// AI_Output(self, other,"Info_BaalLukor_RUNES_13_05"); // ...(murmel)...(murmel)...(murmel)...
	AI_Output(self, other, "Info_BaalLukor_RUNES_13_06"); //Das ist es! Es handelt sich um einen Teleportzauber. Er scheint aber nur an einem gewissen Ort seine Kraft entfalten zu können.
	AI_Output(self, other, "Info_BaalLukor_RUNES_13_07"); //Seltsam!

	Npc_RemoveInvItems(self, OrkParchmentOne, 1); // Pergament 1 entfernen
	Npc_RemoveInvItems(self, OrkParchmentTwo, 1); // Pergament 2 entfernen
	// Hier Teleport-Übergabe entfernt --> erst wenn vor wand!

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_8);

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info WHATNOW
//**************************************************************************
instance Info_BaalLukor_WHATNOW(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	nr				= 0;
	condition		= Info_BaalLukor_WHATNOW_Condition;
	information		= Info_BaalLukor_WHATNOW_Info;
	permanent		= TRUE;
	description		= "Was für ein 'gewisser' Ort!";
};

func int Info_BaalLukor_WHATNOW_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_RUNES)
	&& Npc_KnowsInfo(hero, Info_BaalLukor_HALLWITHOUT)
	&& !Npc_KnowsInfo(hero, Info_BaalLukor_HALLWITH))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_WHATNOW_Info()
{
	AI_Output(other, self, "Info_BaalLukor_WHATNOW_15_01"); //Was für ein 'gewisser' Ort!
	AI_Output(self, other, "Info_BaalLukor_WHATNOW_13_02"); //Die große Halle vorhin, kam mir sehr ... seltsam ... vor. Lass uns noch mal dorthin zurück!

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info HALLWITHOUT
//**************************************************************************
instance Info_BaalLukor_HALLWITHOUT(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_HALLWITHOUT_Condition;
	information		= Info_BaalLukor_HALLWITHOUT_Info;
	important		= TRUE;
};

func int Info_BaalLukor_HALLWITHOUT_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_BaalLukor_RUNES)
	&& (Npc_GetDistToWP(hero, "GRYD_055") < 500))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_HALLWITHOUT_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_HALLWITHOUT_13_01"); //Dieser Ort ... ich kann es nicht erklären, aber dieser Ort hier ...
	AI_Output(self, other, "Info_BaalLukor_HALLWITHOUT_13_02"); //Ach vergiss es. Es ist bestimmt nur Einbildung.

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_9);

	Npc_ExchangeRoutine(self, "Follow"); // Björn: Patch2
};

//**************************************************************************
//	Info HALLWITH
//**************************************************************************
instance Info_BaalLukor_HALLWITH(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_HALLWITH_Condition;
	information		= Info_BaalLukor_HALLWITH_Info;
	important		= TRUE;
};

func int Info_BaalLukor_HALLWITH_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_RUNES)
	&& Npc_GetDistToWP(hero, "GRYD_055") < 500)
	{
		return TRUE;
	};
};

func void Info_BaalLukor_HALLWITH_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_HALLWITH_13_01"); //Dieser Ort hat eine besondere Ausstrahlung ... Die Ausstrahlung des Verborgenen.
	AI_Output(other, self, "Info_BaalLukor_HALLWITH_15_02"); //Diese Halle erinnert mich an das Bild aus der Vision.
	AI_Output(self, other, "Info_BaalLukor_HALLWITH_13_03"); //Die Vision ... Wir sind unserem Ziel sehr nahe ...

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_10);

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "DOOR");
};

//**************************************************************************
//	Info DOOR
//**************************************************************************
instance Info_BaalLukor_DOOR(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_DOOR_Condition;
	information		= Info_BaalLukor_DOOR_Info;
	important		= TRUE;
};

func int Info_BaalLukor_DOOR_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_HALLWITH)
	&& Npc_GetDistToWP(hero, "GRYD_060") < 500)
	{
		return TRUE;
	};
};

func void Info_BaalLukor_DOOR_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_DOOR_13_01"); //Hinter dieser Wand ... Das muss es sein!
	AI_Output(self, other, "Info_BaalLukor_DOOR_13_02"); //Meine magische Kraft ist noch immer geschwächt.
	AI_Output(self, other, "Info_BaalLukor_DOOR_13_03"); //Benutze den orkischen Teleportzauber hier vor dieser Wand.

	CreateInvItem(self, ItArScrollTeleport4); // Teleport erschaffen
	B_GiveInvItems(self, hero, ItArScrollTeleport4, 1); // Teleport übergeben

	AI_StopProcessInfos(self);
};

//**************************************************************************
//	Info TELEPORT
//**************************************************************************
instance Info_BaalLukor_TELEPORT(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_TELEPORT_Condition;
	information		= Info_BaalLukor_TELEPORT_Info;
	important		= TRUE;
};

func int Info_BaalLukor_TELEPORT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_DOOR)
	&& Npc_CanSeeNpcFreeLOS(self, hero)
	&& Npc_GetDistToWP(hero, "GRYD_072") < 550)
	{
		return TRUE;
	};
};

func void Info_BaalLukor_TELEPORT_Info()
{
	B_FullStop(hero);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "Info_BaalLukor_TELEPORT_13_01"); //Du hast den verborgenen Ort gefunden. Meine Instinkte haben mich nicht getäuscht.
	AI_Output(other, self, "Info_BaalLukor_TELEPORT_15_02"); //Und hier liegt die Antwort auf die rätselhafte Anrufung des Schläfers???
	AI_Output(other, self, "Info_BaalLukor_TELEPORT_15_03"); //Sieht mir eher nach einer weiteren Grabkammer aus.
	AI_Output(self, other, "Info_BaalLukor_TELEPORT_13_04"); //Wir müssen weiter.
	AI_Output(self, other, "Info_BaalLukor_HELP_13_03"); //Geh voraus. Ich folge dir!

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_11);

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "TELEPORT");
};

//**************************************************************************
//	Info ALTAR
//**************************************************************************
instance Info_BaalLukor_ALTAR(C_INFO)
{
	npc				= GUR_1211_BaalLukor;
	condition		= Info_BaalLukor_ALTAR_Condition;
	information		= Info_BaalLukor_ALTAR_Info;
	important		= TRUE;
};

func int Info_BaalLukor_ALTAR_Condition()
{
	if (Npc_KnowsInfo(hero, Info_BaalLukor_TELEPORT)
	&& Npc_GetDistToWP(hero, "GRYD_082") < 400
	&& Npc_CanSeeNpcFreeLOS(self, hero))
	{
		return TRUE;
	};
};

func void Info_BaalLukor_ALTAR_Info()
{
	B_FullStop(hero);
	AI_GotoWP(hero, "GRYD_081");
	AI_AlignToWP(hero);

	AI_GotoNpc(self, hero);
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_01"); //NEIN! Das darf nicht wahr sein! Hier gibt es nichts außer ... außer Staub und ... und Gebeinen.

	AI_SetWalkMode(self, NPC_RUN);
	AI_GotoWP(self, "GRYD_082");

	AI_PlayAniBS(self, "T_STAND_2_PRAY", BS_SIT);
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_02"); //NEIN!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_03"); //MEISTER, SPRICH ZU MIR!!!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_04"); //SCHLÄFER, OFFENBARE DICH!!!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_05"); //NEEEEEIIIIIINNNNN!!!

	AI_Output(hero, self, "Info_BaalLukor_ALTAR_15_06"); //Das war's. Jetzt ist er völlig übergeschnappt!

	AI_StandUp(self);
	B_WhirlAround(self, hero);
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_07"); //Das ist alles nur deine Schuld. Deine unheilige Präsenz hat den allmächtigen Schläfer erzürnt!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_08"); //Jetzt muss ich für dein frevelhaftes Verhalten büßen!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_09"); //Ich werde unserem Meister ein Opfer darbringen. Ein MENSCHENOPFER!!!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_10"); //Bestimmt wird er mich dann erleuchten und zu seiner rechten Hand machen.
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_11"); //STIRB, UNGLÄUBIGER!!!!
	AI_Output(self, hero, "Info_BaalLukor_ALTAR_13_12"); //AIIIEEEEHHHHHH!!!!!!

	self.flags = 0;
	self.npctype = NpcType_Main;
	BaalLukor_BringParchment = 4;
	Npc_SetTempAttitude(self, ATT_HOSTILE);
	Npc_SetPermAttitude(self, ATT_HOSTILE);
	// CreateInvItems(self, ItArScrollPyrokinesis, 3);

	B_LogEntry(CH3_OrcGraveyard, CH3_OrcGraveyard_12);

	AI_StopProcessInfos(self);

	AI_StartState(self, ZS_Attack, 1, "");
};
