// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Bau_4_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Bau_4 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Bau_4_EXIT_Condition;
	information		= Info_Bau_4_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Bau_4_EXIT_Condition()
{
	return 1;
};

func void Info_Bau_4_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Bau_4_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Bau_4_WichtigePersonen_Condition;
	information		= Info_Bau_4_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Habt ihr einen Anführer?";
};

func int Info_Bau_4_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Bau_4_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Bau_4_WichtigePersonen_15_00"); //Habt ihr einen Anführer?
	AI_Output(self, other, "Info_Bau_4_WichtigePersonen_04_01"); //Der Reislord ist so was wie unser Anführer. Aber die meisten arbeiten nur aus Angst vor ihm und seinen Schlägern.
	AI_Output(self, other, "Info_Bau_4_WichtigePersonen_04_02"); //Bei mir sieht das anders aus. Ich hab' schon ein paar Jahre auf dem Buckel und keine Lust mehr, mich mit den Banditen im Lager rumzuschlagen ... Die Reisfelder sind genau das Richtige für mich.
	var C_Npc Ricelord; Ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	Ricelord.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Bau_4_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Bau_4_DasLager_Condition;
	information		= Info_Bau_4_DasLager_Info;
	permanent		= TRUE;
	description		= "Was muß ich über diesen Ort wissen?";
};

func int Info_Bau_4_DasLager_Condition()
{
	return 1;
};

func void Info_Bau_4_DasLager_Info()
{
	AI_Output(other, self, "Info_Bau_4_DasLager_15_00"); //Was muss ich über diesen Ort wissen?
	AI_Output(self, other, "Info_Bau_4_DasLager_04_01"); //Sei vorsichtig, wenn du ins Lager gehst, Junge! Da laufen so einige Halsabschneider rum, die einem Neuen wie dir an die Kehle wollen.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Bau_4_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Bau_4_DieLage_Condition;
	information		= Info_Bau_4_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie läuft's denn so?";
};

func int Info_Bau_4_DieLage_Condition()
{
	return 1;
};

func void Info_Bau_4_DieLage_Info()
{
	AI_Output(other, self, "Info_Bau_4_DieLage_15_00"); //Wie läuft's denn so?
	AI_Output(self, other, "Info_Bau_4_DieLage_04_01"); //Gibt 'ne Menge zu tun. Wir brauchen viel Reis, um die Leute hier alle ernähren zu können.
};

// *************************************************************************
// 									WASSER
// *************************************************************************
instance Info_Bau_4_Wasser(C_INFO) // E1
{
	nr				= 800;
	condition		= Info_Bau_4_Wasser_Condition;
	information		= Info_Bau_4_Wasser_Info;
	permanent		= TRUE;
	description		= "Lefty schickt mich. Ich hab Wasser für dich.";
};

func int Info_Bau_4_Wasser_Condition()
{
	if (((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other, ItFo_Potion_Water_01)))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return 1;
	};
};

func void Info_Bau_4_Wasser_Info()
{
	AI_Output(other, self, "Info_Bau_4_Wasser_15_00"); //Lefty schickt mich. Ich hab' Wasser für dich.
	if (Npc_HasItems(other, ItFo_Potion_Water_01) >= 1)
	{
		B_GiveInvItems(other, self, ItFo_Potion_Water_01, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFo_Potion_Water_01);

		AI_Output(self, other, "Info_Bau_4_Wasser_04_01"); //Danke, Junge! Das hab' ich gebraucht!

		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if (An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};

		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Bau_4_Wasser_NOWATER_04_00"); //Aber du hast nichts mehr. Ist schon gut, Junge. Ich werd mich an die andern halten.
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Bau_4(var C_Npc slf)
{
	Info_Bau_4_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Bau_4_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Bau_4_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Bau_4_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Bau_4_Wasser.npc = Hlp_GetInstanceID(slf);
};
