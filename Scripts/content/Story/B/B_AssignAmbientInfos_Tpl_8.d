// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Tpl_8_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Tpl_8 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Tpl_8_EXIT_Condition;
	information		= Info_Tpl_8_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Tpl_8_EXIT_Condition()
{
	return 1;
};

func void Info_Tpl_8_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Tpl_8_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Tpl_8_EinerVonEuchWerden_Condition;
	information		= Info_Tpl_8_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Könnt ihr noch einen guten Mann brauchen?";
};

func int Info_Tpl_8_EinerVonEuchWerden_Condition()
{
	if ((Npc_GetTrueGuild(other) != GIL_TPL)
	&& (!C_NpcBelongsToNewCamp(other))
	&& (!C_NpcBelongsToOldCamp(other)))
	{
		return TRUE;
	};
};

func void Info_Tpl_8_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Tpl_8_EinerVonEuchWerden_15_00"); //Könnt ihr noch einen guten Mann brauchen?
	AI_Output(self, other, "Info_Tpl_8_EinerVonEuchWerden_08_01"); //Gute Leute suchen wir immer. Aber du wirst hart an dir arbeiten müssen. Erst ein fortgeschrittener Novize kann zum Templer befördert werden.
	AI_Output(self, other, "Info_Tpl_8_EinerVonEuchWerden_08_02"); //Es ist die höchste Ehre für einen Anhänger der Bruderschaft des Schläfers.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Tpl_8_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Tpl_8_WichtigePersonen_Condition;
	information		= Info_Tpl_8_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Tpl_8_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Tpl_8_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Tpl_8_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Tpl_8_WichtigePersonen_08_01"); //Wir tun alles, was uns die Gurus sagen. Es ist unsere Pflicht, ihnen zu dienen.
	AI_Output(other, self, "Info_Tpl_8_WichtigePersonen_15_02"); //Wer sind eure Gurus?
	AI_Output(self, other, "Info_Tpl_8_WichtigePersonen_08_03"); //Y'Berion der Erleuchtete ist der Oberste Guru. Unter ihm folgen Cor Kalom und Cor Angar und noch einige weitere.
	var C_Npc YBerion; YBerion = Hlp_GetNpc(Gur_1200_Yberion);
	var C_Npc CorKalom; CorKalom = Hlp_GetNpc(Gur_1201_CorKalom);
	var C_Npc CorAngar; CorAngar = Hlp_GetNpc(Gur_1202_CorAngar);
	YBerion.aivar[AIV_FINDABLE] = TRUE;
	CorKalom.aivar[AIV_FINDABLE] = TRUE;
	CorAngar.aivar[AIV_FINDABLE] = TRUE;
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Tpl_8_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Tpl_8_DasLager_Condition;
	information		= Info_Tpl_8_DasLager_Info;
	permanent		= TRUE;
	description		= "Was kannst du mir über dieses Lager erzählen?";
};

func int Info_Tpl_8_DasLager_Condition()
{
	if (!C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
};

func void Info_Tpl_8_DasLager_Info()
{
	AI_Output(other, self, "Info_Tpl_8_DasLager_15_00"); //Was kannst du mir über dieses Lager erzählen?
	AI_Output(self, other, "Info_Tpl_8_DasLager_08_01"); //Als Neuling darfst du dich fast überall aufhalten. Aber es ist Ungläubigen untersagt, den Tempel des Schläfers zu betreten.
	AI_Output(self, other, "Info_Tpl_8_DasLager_08_02"); //Also halt dich nur da auf, wo es dir gestattet ist. Und störe nicht unsere Meister bei der Meditation.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Tpl_8_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Tpl_8_DieLage_Condition;
	information		= Info_Tpl_8_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie sieht's aus?";
};

func int Info_Tpl_8_DieLage_Condition()
{
	if (!C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
};

func void Info_Tpl_8_DieLage_Info()
{
	AI_Output(other, self, "Info_Tpl_8_DieLage_15_00"); //Wie sieht's aus?
	AI_Output(self, other, "Info_Tpl_8_DieLage_08_01"); //Ich warne dich. Sei nicht respektlos. Du redest mit einem Auserwählten Beschützer der Propheten.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Tpl_8(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);

	Info_Tpl_8_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_8_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_8_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_8_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_8_DieLage.npc = Hlp_GetInstanceID(slf);
};
