// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Stt_12_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Stt_12 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Stt_12_EXIT_Condition;
	information		= Info_Stt_12_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Stt_12_EXIT_Condition()
{
	return 1;
};

func void Info_Stt_12_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Stt_12_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Stt_12_EinerVonEuchWerden_Condition;
	information		= Info_Stt_12_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Ich würde mich gerne den Schatten anschliessen.";
};

func int Info_Stt_12_EinerVonEuchWerden_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_NONE)
	{
		return TRUE;
	};
};

func void Info_Stt_12_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Stt_12_EinerVonEuchWerden_15_00"); //Ich würde mich gerne den Schatten anschließen.
	AI_Output(self, other, "Info_Stt_12_EinerVonEuchWerden_12_01"); //So? Dann solltest du wissen, dass Gomez kein Versagen duldet. Wenn du einer von uns werden willst, musst du für ihn durchs Feuer gehen!
	AI_Output(self, other, "Info_Stt_12_EinerVonEuchWerden_12_02"); //Nur die Hälfte derer, die es versucht haben, sind aufgenommen worden.
	AI_Output(other, self, "Info_Stt_12_EinerVonEuchWerden_15_03"); //Was ist mit dem Rest passiert?
	AI_Output(self, other, "Info_Stt_12_EinerVonEuchWerden_12_04"); //Vermutlich sitzen die im Neuen Lager und fressen Reis. He he he.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Stt_12_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Stt_12_WichtigePersonen_Condition;
	information		= Info_Stt_12_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer ist hier der Boss?";
};

func int Info_Stt_12_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Stt_12_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Stt_12_WichtigePersonen_15_00"); //Wer ist hier der Boss?
	AI_Output(self, other, "Info_Stt_12_WichtigePersonen_12_01"); //Diego ist unter den Schatten so was wie der Anführer. Aber Thorus entscheidet, wer zu Gomez vorgelassen wird.

	var C_Npc Diego; Diego = Hlp_GetNpc(PC_Thief);
	Diego.aivar[AIV_FINDABLE] = TRUE;
	var C_Npc Thorus; Thorus = Hlp_GetNpc(GRD_200_Thorus);
	Thorus.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Stt_12_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Stt_12_DasLager_Condition;
	information		= Info_Stt_12_DasLager_Info;
	permanent		= TRUE;
	description		= "Ich will wissen, was es hier im Lager alles gibt.";
};

func int Info_Stt_12_DasLager_Condition()
{
	return 1;
};

func void Info_Stt_12_DasLager_Info()
{
	AI_Output(other, self, "Info_Stt_12_DasLager_15_00"); //Ich will wissen, was es hier im Lager alles gibt.
	AI_Output(self, other, "Info_Stt_12_DasLager_12_01"); //Frag am besten die Buddler. Die haben sowieso den ganzen Tag nichts zu tun.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Stt_12_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Stt_12_DieLage_Condition;
	information		= Info_Stt_12_DieLage_Info;
	permanent		= TRUE;
	description		= "Na, wie steht's?";
};

func int Info_Stt_12_DieLage_Condition()
{
	return 1;
};

func void Info_Stt_12_DieLage_Info()
{
	AI_Output(other, self, "Info_Stt_12_DieLage_15_00"); //Na, wie steht's?
	AI_Output(self, other, "Info_Stt_12_DieLage_12_01"); //Was genau willst du von mir?
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Stt_12(var C_Npc slf)
{
	B_AssignFindNpc_OC(slf);

	Info_Stt_12_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Stt_12_DieLage.npc = Hlp_GetInstanceID(slf);
};
