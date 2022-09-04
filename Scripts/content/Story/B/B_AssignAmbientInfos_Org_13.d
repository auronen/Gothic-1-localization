// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Org_13_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Org_13 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Org_13_EXIT_Condition;
	information		= Info_Org_13_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Org_13_EXIT_Condition()
{
	return 1;
};

func void Info_Org_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Org_13_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Org_13_EinerVonEuchWerden_Condition;
	information		= Info_Org_13_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Was muß ich tun, wenn ich mich dem Lager anschließen will?";
};

func int Info_Org_13_EinerVonEuchWerden_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_NONE)
	{
		return TRUE;
	};
};

func void Info_Org_13_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Org_13_EinerVonEuchWerden_15_00"); //Was muss ich tun, wenn ich mich dem Lager anschließen will?
	AI_Output(self, other, "Info_Org_13_EinerVonEuchWerden_13_01"); //Geh auf die Felder und hilf den Bauern beim Reispflücken.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Org_13_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Org_13_WichtigePersonen_Condition;
	information		= Info_Org_13_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Org_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Org_13_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Org_13_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Org_13_WichtigePersonen_13_01"); //Lee führt die Söldner an, wenn du DAS wissen wolltest. Aber ich bin kein Söldner und ich lasse mir von den Pennern auch bestimmt nichts sagen!
	var C_Npc Lee; Lee = Hlp_GetNpc(Sld_700_Lee);
	Lee.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Org_13_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Org_13_DasLager_Condition;
	information		= Info_Org_13_DasLager_Info;
	permanent		= TRUE;
	description		= "Ich will mehr über dieses Lager erfahren.";
};

func int Info_Org_13_DasLager_Condition()
{
	return 1;
};

func void Info_Org_13_DasLager_Info()
{
	AI_Output(other, self, "Info_Org_13_DasLager_15_00"); //Ich will mehr über dieses Lager erfahren.
	AI_Output(self, other, "Info_Org_13_DasLager_13_01"); //Dann geh rein und schau es dir an. Solange du nicht einer von Gomez' Leuten bist, wird dich keiner aufhalten.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Org_13_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Org_13_DieLage_Condition;
	information		= Info_Org_13_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Org_13_DieLage_Condition()
{
	return 1;
};

func void Info_Org_13_DieLage_Info()
{
	AI_Output(other, self, "Info_Org_13_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Org_13_DieLage_13_01"); //Was willst DU denn von mir?
};

// *************************************************************************
// 									Krautprobe
// *************************************************************************
instance Info_Org_13_Krautprobe(C_INFO) // E1
{
	nr				= 5;
	condition		= Info_Org_13_Krautprobe_Condition;
	information		= Info_Org_13_Krautprobe_Info;
	permanent		= TRUE;
	description		= "Du siehst aus, als wenn du etwas Sumpfkraut haben wolltest.";
};

func int Info_Org_13_Krautprobe_Condition()
{
	if (((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Org_13_Krautprobe_Info()
{
	AI_Output(other, self, "Info_Org_13_Krautprobe_15_00"); //Du siehst aus, als wenn du etwas Sumpfkraut haben wolltest.

	if ((Npc_HasItems(other, ItMiJoint_1) > 0) || (Npc_HasItems(other, ItMiJoint_2) > 0) || (Npc_HasItems(other, ItMiJoint_3) > 0))
	{
		if (Npc_HasItems(other, ItMiJoint_1))
		{ B_GiveInvItems(other, self, ItMiJoint_1, 1); }

		else if (Npc_HasItems(other, ItMiJoint_2))
		{ B_GiveInvItems(other, self, ItMiJoint_2, 1); }

		else if (Npc_HasItems(other, ItMiJoint_3))
		{ B_GiveInvItems(other, self, ItMiJoint_3, 1); };
		AI_Output(self, other, "Info_Org_13_Krautprobe_13_01"); //Hast du was? Ich nehm einen Stengel für 10 Erz.
		AI_Output(self, other, "Info_Org_13_Krautprobe_13_02"); //Kannst jederzeit wieder kommen, Bruder.

		CreateInvItems(self, itminugget, 10);
		B_GiveInvItems(self, other, itminugget, 10);
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Org_13_Krautprobe_No_Joint_13_00"); //Aber du hast nichts. Mach keine dummen Späße mit mir, klar?
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Org_13(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);

	Info_Org_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Org_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Org_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Org_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Org_13_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Org_13_Krautprobe.npc = Hlp_GetInstanceID(slf);
};
