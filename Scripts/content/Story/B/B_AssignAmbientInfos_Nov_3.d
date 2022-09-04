// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Nov_3_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Nov_3 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Nov_3_EXIT_Condition;
	information		= Info_Nov_3_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Nov_3_EXIT_Condition()
{
	return 1;
};

func void Info_Nov_3_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Nov_3_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Nov_3_EinerVonEuchWerden_Condition;
	information		= Info_Nov_3_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Wie kann ich mich diesem Lager anschliessen?";
};

func int Info_Nov_3_EinerVonEuchWerden_Condition()
{
	if (Npc_GetTrueGuild(other) == GIL_NONE)
	{
		return TRUE;
	};
};

func void Info_Nov_3_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Nov_3_EinerVonEuchWerden_15_00"); //Wie kann ich mich diesem Lager anschließen?
	AI_Output(self, other, "Info_Nov_3_EinerVonEuchWerden_03_01"); //Das ist ganz einfach. Du musst einfach loslassen, Mann.
	AI_Output(self, other, "Info_Nov_3_EinerVonEuchWerden_03_02"); //Sprich mit den Gurus, sie werden dich leiten!
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Nov_3_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Nov_3_WichtigePersonen_Condition;
	information		= Info_Nov_3_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer ist hier der Boss?";
};

func int Info_Nov_3_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Nov_3_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Nov_3_WichtigePersonen_15_00"); //Wer ist hier der Boss?
	AI_Output(self, other, "Info_Nov_3_WichtigePersonen_03_01"); //Y'Berion! Der Schläfer sei gepriesen! Er hat uns an diesen wunderbaren Ort gebracht.
	AI_Output(self, other, "Info_Nov_3_WichtigePersonen_03_02"); //Durch seine Visionen ist das alles hier entstanden.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Nov_3_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Nov_3_DasLager_Condition;
	information		= Info_Nov_3_DasLager_Info;
	permanent		= TRUE;
	description		= "Was gibt es hier für wichtige Orte?";
};

func int Info_Nov_3_DasLager_Condition()
{
	return 1;
};

func void Info_Nov_3_DasLager_Info()
{
	AI_Output(other, self, "Info_Nov_3_DasLager_15_00"); //Was gibt es hier für wichtige Orte?
	AI_Output(self, other, "Info_Nov_3_DasLager_03_01"); //Es gibt Fortuno, er verteilt freies Sumpfkraut für alle Anhänger der Sekte.
	AI_Output(self, other, "Info_Nov_3_DasLager_03_02"); //Du findest ihn unter Cor Kaloms Alchemielabor.

	var C_Npc CorKalom; CorKalom = Hlp_GetNpc(Gur_1201_CorKalom);
	CorKalom.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Nov_3_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Nov_3_DieLage_Condition;
	information		= Info_Nov_3_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie steht's?";
};

func int Info_Nov_3_DieLage_Condition()
{
	return 1;
};

func void Info_Nov_3_DieLage_Info()
{
	AI_Output(other, self, "Info_Nov_3_DieLage_15_00"); //Wie steht's?
	AI_Output(self, other, "Info_Nov_3_DieLage_03_01"); //Ich bin total high, Mann!
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Nov_3(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);

	Info_Nov_3_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Nov_3_DieLage.npc = Hlp_GetInstanceID(slf);
};
