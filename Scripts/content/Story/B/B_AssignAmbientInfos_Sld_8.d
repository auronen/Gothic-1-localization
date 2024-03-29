// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Sld_8_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Sld_8 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Sld_8_EXIT_Condition;
	information		= Info_Sld_8_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Sld_8_EXIT_Condition()
{
	return 1;
};

func void Info_Sld_8_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Sld_8_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Sld_8_EinerVonEuchWerden_Condition;
	information		= Info_Sld_8_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Könnt ihr noch einen guten Mann brauchen?";
};

func int Info_Sld_8_EinerVonEuchWerden_Condition()
{
	if ((Npc_GetTrueGuild(other) != GIL_SLD)
	&& (Npc_GetTrueGuild(other) != GIL_KDW)
	&& (!C_NpcBelongsToOldCamp(other))
	&& (!C_NpcBelongsToPsiCamp(other)))
	{
		return TRUE;
	};
};

func void Info_Sld_8_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Sld_8_EinerVonEuchWerden_15_00"); //Könnt ihr noch einen guten Mann brauchen?
	AI_Output(self, other, "Info_Sld_8_EinerVonEuchWerden_08_01"); //Lee wird keine Leute bei den Söldnern zulassen, die nicht schon 'ne Zeit lang hier waren und Erfahrung gesammelt haben.
	AI_Output(self, other, "Info_Sld_8_EinerVonEuchWerden_08_02"); //Wenn du hier im Lager bleiben willst, musst du dich zuerst mit den Banditen rumschlagen.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Sld_8_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Sld_8_WichtigePersonen_Condition;
	information		= Info_Sld_8_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Sld_8_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Sld_8_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Sld_8_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Sld_8_WichtigePersonen_08_01"); //Wir Söldner folgen alle Lee. Er hat den Deal mit den Magiern gemacht - wir beschützen sie, und sie bringen uns hier raus.
	AI_Output(other, self, "Info_Sld_8_WichtigePersonen_15_02"); //Also führen die Magier das Lager?
	AI_Output(self, other, "Info_Sld_8_WichtigePersonen_08_03"); //Nein. Niemand führt das Lager. Die meisten hier sind einfach Männer, die im Alten Lager nicht bleiben konnten oder wollten.
	AI_Output(self, other, "Info_Sld_8_WichtigePersonen_08_04"); //Hier kocht jeder sein eigenes Süppchen. Die Jungs sind sich nur in einem einig: Besser das ganze Erz auf einen Haufen schütten und in die Luft jagen, als es dem verdammten König in den Rachen zu schieben!
	var C_Npc Lee; Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = TRUE;
	var C_Npc Cronos; Cronos = Hlp_GetNpc(KdW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Sld_8_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Sld_8_DasLager_Condition;
	information		= Info_Sld_8_DasLager_Info;
	permanent		= TRUE;
	description		= "Was kannst du mir über dieses Lager erzählen?";
};

func int Info_Sld_8_DasLager_Condition()
{
	if (!C_NpcBelongsToNewCamp(other))
	{
		return 1;
	};
};

func void Info_Sld_8_DasLager_Info()
{
	AI_Output(other, self, "Info_Sld_8_DasLager_15_00"); //Was kannst du mir über dieses Lager erzählen?
	AI_Output(self, other, "Info_Sld_8_DasLager_08_01"); //Pass auf dich auf, während du hier bist. Im Lager sind 'ne Menge Halsabschneider unterwegs.
	AI_Output(self, other, "Info_Sld_8_DasLager_08_02"); //Es gibt 'ne Reihe ungeschriebener Gesetze hier. Erstens: Nur die Söldner kommen in den Bereich der Magier.
	AI_Output(self, other, "Info_Sld_8_DasLager_08_03"); //Zweitens: Wer versucht, an den Erzhaufen ranzukommen, ist ein toter Mann. Drittens: Ich würde nicht versuchen, in die Kneipe auf dem See zu gehen.
	AI_Output(self, other, "Info_Sld_8_DasLager_08_04"); //Die gehört nämlich den Banditen und die sehen es nicht gerne, wenn grüne Jungs wie du da aufkreuzen.
	var C_Npc Cronos; Cronos = Hlp_GetNpc(KdW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Sld_8_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Sld_8_DieLage_Condition;
	information		= Info_Sld_8_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Sld_8_DieLage_Condition()
{
	return 1;
};

func void Info_Sld_8_DieLage_Info()
{
	AI_Output(other, self, "Info_Sld_8_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Sld_8_DieLage_08_01"); //Wie immer - wir passen auf, dass keiner den Magiern und dem Erz zu nahe kommt.
	var C_Npc Cronos; Cronos = Hlp_GetNpc(KdW_604_Cronos);
	Cronos.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 									Krautprobe
// *************************************************************************
instance Info_Sld_8_Krautprobe(C_INFO) // E1
{
	nr				= 5;
	condition		= Info_Sld_8_Krautprobe_Condition;
	information		= Info_Sld_8_Krautprobe_Info;
	permanent		= TRUE;
	description		= "Ich hab Sumpfkraut dabei - willst du was?";
};

func int Info_Sld_8_Krautprobe_Condition()
{
	if (((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Sld_8_Krautprobe_Info()
{
	AI_Output(other, self, "Info_Sld_8_Krautprobe_15_00"); //Ich hab Sumpfkraut dabei - willst du was?

	if ((Npc_HasItems(other, ItMiJoint_1) > 0) || (Npc_HasItems(other, ItMiJoint_2) > 0) || (Npc_HasItems(other, ItMiJoint_3) > 0))
	{
		if (Npc_HasItems(other, ItMiJoint_1))
		{ B_GiveInvItems(other, self, ItMiJoint_1, 1); }

		else if (Npc_HasItems(other, ItMiJoint_2))
		{ B_GiveInvItems(other, self, ItMiJoint_2, 1); }

		else if (Npc_HasItems(other, ItMiJoint_3))
		{ B_GiveInvItems(other, self, ItMiJoint_3, 1); };
		AI_Output(self, other, "Info_Sld_8_Krautprobe_08_01"); //Warum nicht. Gib mir was für 10 Erz.
		AI_Output(self, other, "Info_Sld_8_Krautprobe_08_02"); //Frag mal ein paar von den anderen Jungs, die wollen sicher auch was.

		CreateInvItems(self, itminugget, 10);
		B_GiveInvItems(self, other, itminugget, 10);
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Sld_8_Krautprobe_No_Joint_08_00"); //Ich will erst das Kraut sehen. Du hast doch gar nichts dabei.
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Sld_8(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);

	Info_Sld_8_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Sld_8_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Sld_8_Krautprobe.npc = Hlp_GetInstanceID(slf);
};
