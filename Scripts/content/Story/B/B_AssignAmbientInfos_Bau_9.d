// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Bau_9_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Bau_9 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Bau_9_EXIT_Condition;
	information		= Info_Bau_9_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Bau_9_EXIT_Condition()
{
	return 1;
};

func void Info_Bau_9_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Bau_9_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Bau_9_WichtigePersonen_Condition;
	information		= Info_Bau_9_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer kümmert sich darum, daß hier auf den Feldern alles glatt geht?";
};

func int Info_Bau_9_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Bau_9_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Bau_9_WichtigePersonen_15_00"); //Wer kümmert sich darum, dass hier auf den Feldern alles glatt geht?
	AI_Output(self, other, "Info_Bau_9_WichtigePersonen_09_01"); //Na, wir alle! Der Reislord überwacht zwar alles, aber ich glaube, er sitzt den ganzen Tag in seinem Bunker und zählt die Säcke.
	AI_Output(self, other, "Info_Bau_9_WichtigePersonen_09_02"); //Na, immerhin hat er zusammen mit Homer die ganze Anlage hier gebaut ...
	var C_Npc Ricelord; Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Bau_9_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Bau_9_DasLager_Condition;
	information		= Info_Bau_9_DasLager_Info;
	permanent		= TRUE;
	description		= "Erzähl mir was über dieses Lager.";
};

func int Info_Bau_9_DasLager_Condition()
{
	return 1;
};

func void Info_Bau_9_DasLager_Info()
{
	AI_Output(other, self, "Info_Bau_9_DasLager_15_00"); //Erzähl mir was über dieses Lager.
	AI_Output(self, other, "Info_Bau_9_DasLager_09_01"); //Es ist randvoll mit Arschlöchern. Wenn's nach mir ginge, sollten die Söldner alle Banditen einfach aus dem Lager werfen.
	AI_Output(self, other, "Info_Bau_9_DasLager_09_02"); //Die tun gar nichts für uns. Machen nur Ärger.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Bau_9_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Bau_9_DieLage_Condition;
	information		= Info_Bau_9_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie steht's?";
};

func int Info_Bau_9_DieLage_Condition()
{
	return 1;
};

func void Info_Bau_9_DieLage_Info()
{
	AI_Output(other, self, "Info_Bau_9_DieLage_15_00"); //Wie steht's?
	AI_Output(self, other, "Info_Bau_9_DieLage_09_01"); //Wir arbeiten uns den Arsch ab, damit hier alle was zu futtern kriegen!
};

// *************************************************************************
// 									WASSER
// *************************************************************************
instance Info_Bau_9_Wasser(C_INFO) // E1
{
	nr				= 800;
	condition		= Info_Bau_9_Wasser_Condition;
	information		= Info_Bau_9_Wasser_Info;
	permanent		= TRUE;
	description		= "Lefty schickt mich. Ich hab Wasser für dich.";
};

func int Info_Bau_9_Wasser_Condition()
{
	if (((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other, ItFo_Potion_Water_01)))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return 1;
	};
};

func void Info_Bau_9_Wasser_Info()
{
	AI_Output(other, self, "Info_Bau_9_Wasser_15_00"); //Lefty schickt mich. Ich hab' Wasser für dich.
	if (Npc_HasItems(other, ItFo_Potion_Water_01) >= 1)
	{
		B_GiveInvItems(other, self, ItFo_Potion_Water_01, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFo_Potion_Water_01);

		AI_Output(self, other, "Info_Bau_9_Wasser_09_01"); //Danke, Mann! Ich war schon kurz davor, den Schlamm zu saufen.

		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if (An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};

		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Bau_9_Wasser_NOWATER_09_00"); //Du hast nichts mehr. Ich hol' mir von den anderen was.
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Bau_9(var C_Npc slf)
{
	Info_Bau_9_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Bau_9_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Bau_9_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Bau_9_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Bau_9_Wasser.npc = Hlp_GetInstanceID(slf);
};
