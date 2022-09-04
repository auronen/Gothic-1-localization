// ************************ EXIT **************************
instance GRD_271_ULBERT_Exit(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 999;
	condition		= GRD_271_ULBERT_Exit_Condition;
	information		= GRD_271_ULBERT_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int GRD_271_ULBERT_Exit_Condition()
{
	return 1;
};

func void GRD_271_ULBERT_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************** Infos *****************************
instance GRD_271_ULBERT_KEY(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 0;
	condition		= GRD_271_ULBERT_KEY_Condition;
	information		= GRD_271_ULBERT_KEY_Info;
	description		= "Was ist in dem Lagerschuppen?";
};

func int GRD_271_ULBERT_KEY_Condition()
{
	return 1;
};

func void GRD_271_ULBERT_KEY_Info()
{
	AI_Output(other, self, "GRD_271_ULBERT_KEY_Info_15_01"); //Was ist in dem Lagerschuppen?
	AI_Output(self, other, "GRD_271_ULBERT_KEY_Info_07_02"); //Das geht dich nichts an.
};

// ***************** Infos *****************************
instance GRD_271_ULBERT_TRICK(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 0;
	condition		= GRD_271_ULBERT_TRICK_Condition;
	information		= GRD_271_ULBERT_TRICK_Info;
	description		= "So lange herumstehen macht bestimmt durstig";
};

func int GRD_271_ULBERT_TRICK_Condition()
{
	if (Npc_KnowsInfo(hero, GRD_271_ULBERT_KEY))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_TRICK_Info()
{
	AI_Output(other, self, "GRD_271_ULBERT_TRICK_Info_15_01"); //So lange herumstehen macht bestimmt durstig.
	AI_Output(self, other, "GRD_271_ULBERT_TRICK_Info_07_02"); //Und wie! Mann, ich könnte wohl den ein oder anderen Schluck vertragen. Hast du was dabei?

	Log_CreateTopic(CH2_StorageShed, LOG_MISSION);
	Log_SetTopicStatus(CH2_StorageShed, LOG_RUNNING);
	B_LogEntry(CH2_StorageShed, CH2_StorageShed_1);
};

// ***************** Infos *****************************
instance GRD_271_ULBERT_DRINK(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 0;
	condition		= GRD_271_ULBERT_DRINK_Condition;
	information		= GRD_271_ULBERT_DRINK_Info;
	description		= "(Einen ausgeben)";
};

func int GRD_271_ULBERT_DRINK_Condition()
{
	if ((Npc_KnowsInfo(hero, GRD_271_ULBERT_TRICK)) && (Npc_HasItems(hero, ItFobeer) ||
	Npc_HasItems(hero, ItFoWine) ||
	Npc_HasItems(hero, ItFoBooze)))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_DRINK_Info()
{
	AI_Output(other, self, "GRD_271_ULBERT_DRINK_Info_15_01"); //Hier, trink einen auf mein Wohl!
	AI_Output(self, other, "GRD_271_ULBERT_DRINK_Info_07_02"); //Danke.

	if (Npc_HasItems(hero, ItFobeer))
	{
		B_GiveInvItems(hero, self, ItFobeer, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFobeer);
	}
	else if (Npc_HasItems(hero, ItFowine))
	{
		B_GiveInvItems(hero, self, ItFowine, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFoWine);
	}
	else if (Npc_HasItems(hero, ItFoBooze))
	{
		B_GiveInvItems(hero, self, ItFoBooze, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFoBooze);
	};
};

// ***************** Infos *****************************
instance GRD_271_ULBERT_DRUNK(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 0;
	condition		= GRD_271_ULBERT_DRUNK_Condition;
	information		= GRD_271_ULBERT_DRUNK_Info;
	description		= "Gibt es denn JETZT in dem Schuppen etwas besonderes?";
};

func int GRD_271_ULBERT_DRUNK_Condition()
{
	if (Npc_KnowsInfo(hero, GRD_271_ULBERT_DRINK))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_DRUNK_Info()
{
	AI_Output(other, self, "GRD_271_ULBERT_DRUNK_Info_15_01"); //Gibt's denn JETZT in dem Schuppen was Besonderes?
	AI_Output(self, other, "GRD_271_ULBERT_DRUNK_Info_07_02"); //Ein paar Truhen, in denen wir Vorräte lagern. Allerdings ist der Schlüssel verschwunden.
	AI_Output(other, self, "GRD_271_ULBERT_DRUNK_Info_15_03"); //Verschwunden?
	AI_Output(self, other, "GRD_271_ULBERT_DRUNK_Info_07_04"); //Ich wette, Aleph hat da seine Finger im Spiel. Dem Kerl kann man nicht trauen.

	B_LogEntry(CH2_StorageShed, CH2_StorageShed_2);
};

// ***************** Infos *****************************
instance GRD_271_ULBERT_LOCK(C_INFO)
{
	npc				= GRD_271_ULBERT;
	nr				= 0;
	condition		= GRD_271_ULBERT_LOCK_Condition;
	information		= GRD_271_ULBERT_LOCK_Info;
	description		= "(Ulbert weglocken)";
};

func int GRD_271_ULBERT_LOCK_Condition()
{
	if (Npc_KnowsInfo(hero, GRD_271_ULBERT_DRUNK))
	{
		return 1;
	};
};

func void GRD_271_ULBERT_LOCK_Info()
{
	AI_Output(other, self, "GRD_271_ULBERT_LOCK_Info_15_01"); //Hör zu, Ian und die anderen sitzen unten und lassen sich gebratenes Fleisch schmecken.
	AI_Output(self, other, "GRD_271_ULBERT_LOCK_Info_07_02"); //Was? Ohne mich? Na, ich werde mir meinen Anteil schon holen!

	B_LogEntry(CH2_StorageShed, CH2_StorageShed_3);

	Npc_ExchangeRoutine(self, "away");
	AI_StopProcessInfos(self);
};

// ***************** Ulbert ist sauer *****************************
instance GRD_271_ULBERT_ANGRY(C_INFO)
{
	npc				= GRD_271_ULBERT;
	condition		= GRD_271_ULBERT_ANGRY_Condition;
	information		= GRD_271_ULBERT_ANGRY_Info;
	important		= TRUE;
};

func int GRD_271_ULBERT_ANGRY_Condition()
{
	if (Npc_KnowsInfo(hero, GRD_271_ULBERT_LOCK)
	&& (Npc_GetDistToWP(hero, "OM_CAVE1_49") < 600))
	{
		return TRUE;
	};
};

func void GRD_271_ULBERT_ANGRY_Info()
{
	AI_Output(self, other, "GRD_271_ULBERT_ANGRY_Info_07_01"); //Hey du, es gab gar kein gebratenes Fleisch!
	AI_Output(other, self, "GRD_271_ULBERT_ANGRY_Info_15_02"); //Oh ... äh ... ... da muss ich mich wohl geirrt haben! Schönen Tag noch!

	B_GiveXP(XP_LureUlbertAway);

	B_LogEntry(CH2_StorageShed, CH2_StorageShed_4);
	Log_SetTopicStatus(CH2_StorageShed, LOG_SUCCESS);

	Npc_ExchangeRoutine(self, "start");
	AI_StopProcessInfos(self);
};
