// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Sld_11_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Sld_11 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Sld_11_EXIT_Condition;
	information		= Info_Sld_11_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Sld_11_EXIT_Condition()
{
	return 1;
};

func void Info_Sld_11_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Sld_11_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Sld_11_EinerVonEuchWerden_Condition;
	information		= Info_Sld_11_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Ich will ein Söldner der Magier werden.";
};

func int Info_Sld_11_EinerVonEuchWerden_Condition()
{
	if ((Npc_GetTrueGuild(other) != GIL_SLD)
	&& (Npc_GetTrueGuild(other) != GIL_KDW)
	&& (!C_NpcBelongsToOldCamp(other))
	&& (!C_NpcBelongsToPsiCamp(other)))
	{
		return TRUE;
	};
};

func void Info_Sld_11_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Sld_11_EinerVonEuchWerden_15_00"); //Ich will ein Söldner der Magier werden.
	AI_Output(self, other, "Info_Sld_11_EinerVonEuchWerden_11_01"); //Das ist nicht schwer. Wenn du für unsere Sache kämpfen willst, wird Lee dich nehmen.
	AI_Output(self, other, "Info_Sld_11_EinerVonEuchWerden_11_02"); //Aber er nimmt nur Leute, die gut mit dem Schwert umgehen können. Wie sieht's damit bei dir aus?
	AI_Output(other, self, "Info_Sld_11_EinerVonEuchWerden_15_03"); //Nun ...
	AI_Output(self, other, "Info_Sld_11_EinerVonEuchWerden_11_04"); //Dachte ich mir. Wenn es dir wirklich ernst ist, rede mit Gorn. Er hat schon mal einen Frischling ausgebildet.
	AI_Output(self, other, "Info_Sld_11_EinerVonEuchWerden_11_05"); //Vielleicht hast du ja Glück und er macht sich auch bei dir die Mühe.
	var C_Npc Gorn; Gorn = Hlp_GetNpc(PC_Fighter);
	Gorn.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Sld_11_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Sld_11_WichtigePersonen_Condition;
	information		= Info_Sld_11_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Sld_11_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Sld_11_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Sld_11_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Sld_11_WichtigePersonen_11_01"); //Wir tun was die Magier sagen. Aber meistens sagen sie gar nichts. Sie hängen beim Erzhaufen und brüten über ihren Büchern.
	AI_Output(self, other, "Info_Sld_11_WichtigePersonen_11_02"); //Im Grunde regelt Lee alles. Er ist unser Anführer.
	var C_Npc Lee; Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = TRUE;
	var C_Npc Cronos; Cronos = Hlp_GetNpc(KdW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Sld_11_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Sld_11_DasLager_Condition;
	information		= Info_Sld_11_DasLager_Info;
	permanent		= TRUE;
	description		= "Gibt es Probleme hier im Lager?";
};

func int Info_Sld_11_DasLager_Condition()
{
	return 1;
};

func void Info_Sld_11_DasLager_Info()
{
	AI_Output(other, self, "Info_Sld_11_DasLager_15_00"); //Gibt es Probleme hier im Lager?
	AI_Output(self, other, "Info_Sld_11_DasLager_11_01"); //Junge, hier gibt es immer Probleme. Die Banditen machen, was sie wollen und wir Söldner sind damit beschäftigt, die Magier zu decken und die Verteidigung des Lagers aufrecht zu erhalten.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Sld_11_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Sld_11_DieLage_Condition;
	information		= Info_Sld_11_DieLage_Info;
	permanent		= TRUE;
	description		= "Alles klar bei dir?";
};

func int Info_Sld_11_DieLage_Condition()
{
	return 1;
};

func void Info_Sld_11_DieLage_Info()
{
	AI_Output(other, self, "Info_Sld_11_DieLage_15_00"); //Alles klar bei dir?
	AI_Output(self, other, "Info_Sld_11_DieLage_11_01"); //Noch ist alles ruhig ...
	AI_Output(other, self, "Info_Sld_11_DieLage_15_02"); //Noch?
	AI_Output(self, other, "Info_Sld_11_DieLage_11_03"); //Wenn die Banditen weiter Gomez' Konvois überfallen, steht er irgendwann mit seiner Armee hier vor dem Tor.
	AI_Output(self, other, "Info_Sld_11_DieLage_11_04"); //Und das wird bestimmt kein Spaß.
};

// *************************************************************************
// 									Krautprobe
// *************************************************************************
instance Info_Sld_11_Krautprobe(C_INFO) // E1
{
	nr				= 5;
	condition		= Info_Sld_11_Krautprobe_Condition;
	information		= Info_Sld_11_Krautprobe_Info;
	permanent		= TRUE;
	description		= "Willst du etwas Sumpfkraut?";
};

func int Info_Sld_11_Krautprobe_Condition()
{
	if (((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Sld_11_Krautprobe_Info()
{
	AI_Output(other, self, "Info_Sld_11_Krautprobe_15_00"); //Willst du etwas Sumpfkraut?

	if ((Npc_HasItems(other, ItMiJoint_1) > 0) || (Npc_HasItems(other, ItMiJoint_2) > 0) || (Npc_HasItems(other, ItMiJoint_3) > 0))
	{
		if (Npc_HasItems(other, ItMiJoint_1))
		{ B_GiveInvItems(other, self, ItMiJoint_1, 1); }

		else if (Npc_HasItems(other, ItMiJoint_2))
		{ B_GiveInvItems(other, self, ItMiJoint_2, 1); }

		else if (Npc_HasItems(other, ItMiJoint_3))
		{ B_GiveInvItems(other, self, ItMiJoint_3, 1); };
		AI_Output(self, other, "Info_Sld_11_Krautprobe_11_01"); //Gib her. Hier - 10 Erz.
		AI_Output(self, other, "Info_Sld_11_Krautprobe_11_02"); //Wenn du wieder mal was hast - du weißt Bescheid..

		CreateInvItems(self, itminugget, 10);
		B_GiveInvItems(self, other, itminugget, 10);
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Sld_11_Krautprobe_No_Joint_11_00"); //Besorg mir was, dann reden wir weiter.
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Sld_11(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);

	Info_Sld_11_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Sld_11_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Sld_11_Krautprobe.npc = Hlp_GetInstanceID(slf);
};
