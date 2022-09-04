// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Org_7_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Org_7 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Org_7_EXIT_Condition;
	information		= Info_Org_7_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Org_7_EXIT_Condition()
{
	return 1;
};

func void Info_Org_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Org_7_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Org_7_EinerVonEuchWerden_Condition;
	information		= Info_Org_7_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Was muß ich tun, wenn ich mich dem Lager anschließen will?";
};

func int Info_Org_7_EinerVonEuchWerden_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_NONE)
	{
		return TRUE;
	};
};

func void Info_Org_7_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Org_7_EinerVonEuchWerden_15_00"); //Was muss ich tun, wenn ich mich dem Lager anschließen will?
	AI_Output(self, other, "Info_Org_7_EinerVonEuchWerden_07_01"); //Du kannst dich unserer Bande anschließen. Aber dazu musst du beweisen, dass du gegen Gomez bist.
	AI_Output(other, self, "Info_Org_7_EinerVonEuchWerden_15_02"); //Und wie soll ich das machen?
	AI_Output(self, other, "Info_Org_7_EinerVonEuchWerden_07_03"); //Wenn ich du wäre, würde ich Lares irgendwas Wichtiges aus dem Alten Lager oder der Alten Mine bringen.
	var C_Npc Lares; Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Org_7_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Org_7_WichtigePersonen_Condition;
	information		= Info_Org_7_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer ist euer Anführer?";
};

func int Info_Org_7_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Org_7_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Org_7_WichtigePersonen_15_00"); //Wer ist euer Anführer?
	AI_Output(self, other, "Info_Org_7_WichtigePersonen_07_01"); //Lares ist das Oberhaupt der Bande. Die meisten akzeptieren ihn.
	AI_Output(self, other, "Info_Org_7_WichtigePersonen_07_02"); //Aber er sagt uns nicht, was wir machen sollen.
	var C_Npc Lares; Lares = Hlp_GetNpc(Org_801_Lares);
	Lares.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Org_7_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Org_7_DasLager_Condition;
	information		= Info_Org_7_DasLager_Info;
	permanent		= TRUE;
	description		= "Was kannst du mir über dieses Lager sagen?";
};

func int Info_Org_7_DasLager_Condition()
{
	return 1;
};

func void Info_Org_7_DasLager_Info()
{
	AI_Output(other, self, "Info_Org_7_DasLager_15_00"); //Was kannst du mir über dieses Lager sagen?
	AI_Output(self, other, "Info_Org_7_DasLager_07_01"); //Es ist 'ne Art Zweckgemeinschaft, die wir hier haben. Jeder macht im Grunde, was er will, aber wir sind so viele, dass Gomez uns nicht einfach ausrotten kann.
	AI_Output(self, other, "Info_Org_7_DasLager_07_02"); //Obwohl er das sicher am liebsten tun würde.
	AI_Output(other, self, "Info_Org_7_DasLager_15_03"); //Was habt ihr mit Gomez zu schaffen?
	AI_Output(self, other, "Info_Org_7_DasLager_07_04"); //Wir stehlen ihm sein Zeug!
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Org_7_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Org_7_DieLage_Condition;
	information		= Info_Org_7_DieLage_Info;
	permanent		= TRUE;
	description		= "Was läuft denn so?";
};

func int Info_Org_7_DieLage_Condition()
{
	return 1;
};

func void Info_Org_7_DieLage_Info()
{
	AI_Output(other, self, "Info_Org_7_DieLage_15_00"); //Was läuft denn so?
	AI_Output(self, other, "Info_Org_7_DieLage_07_01"); //Du bist wohl noch nicht lange hier, was?
	AI_Output(self, other, "Info_Org_7_DieLage_07_02"); //Die Magier bereiten sich schon seit Jahren auf die Sprengung des Erzhaufens vor. Es heißt, der große Tag ist nicht mehr weit entfernt.
	AI_Output(self, other, "Info_Org_7_DieLage_07_03"); //Zumindest sollte man das annehmen, wenn man sich den Riesenhaufen ansieht, den die Schürfer bis jetzt zusammengekratzt haben.
};

// *************************************************************************
// 									Krautprobe
// *************************************************************************
instance Info_Org_7_Krautprobe(C_INFO) // E1
{
	nr				= 5;
	condition		= Info_Org_7_Krautprobe_Condition;
	information		= Info_Org_7_Krautprobe_Info;
	permanent		= TRUE;
	description		= "Willst du etwas Sumpfkraut?";
};

func int Info_Org_7_Krautprobe_Condition()
{
	if (((BaalKagan_VerteilKraut == LOG_RUNNING) || (BaalKagan_VerteilKraut == LOG_SUCCESS))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return TRUE;
	};
};

func void Info_Org_7_Krautprobe_Info()
{
	AI_Output(other, self, "Info_Org_7_Krautprobe_15_00"); //Willst du etwas Sumpfkraut?

	if ((Npc_HasItems(other, ItMiJoint_1) > 0) || (Npc_HasItems(other, ItMiJoint_2) > 0) || (Npc_HasItems(other, ItMiJoint_3) > 0))
	{
		if (Npc_HasItems(other, ItMiJoint_1))
		{ B_GiveInvItems(other, self, ItMiJoint_1, 1); }

		else if (Npc_HasItems(other, ItMiJoint_2))
		{ B_GiveInvItems(other, self, ItMiJoint_2, 1); }

		else if (Npc_HasItems(other, ItMiJoint_3))
		{ B_GiveInvItems(other, self, ItMiJoint_3, 1); };
		AI_Output(self, other, "Info_Org_7_Krautprobe_07_01"); //Ich geb dir 10 Erz dafür - hier.
		AI_Output(self, other, "Info_Org_7_Krautprobe_07_02"); //Wenn du mal wieder was loswerden willst, komm zu mir.

		CreateInvItems(self, itminugget, 10);
		B_GiveInvItems(self, other, itminugget, 10);
		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
		NC_Joints_verteilt = NC_Joints_verteilt + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Org_7_Krautprobe_No_Joint_07_00"); //Wo? Ich sehe kein Kraut.
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Org_7(var C_Npc slf)
{
	B_AssignFindNpc_NC(slf);

	Info_Org_7_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Org_7_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Org_7_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Org_7_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Org_7_DieLage.npc = Hlp_GetInstanceID(slf);

	Info_Org_7_Krautprobe.npc = Hlp_GetInstanceID(slf);
};
