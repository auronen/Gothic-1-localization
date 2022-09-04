// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Tpl_13_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Tpl_13 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Tpl_13_EXIT_Condition;
	information		= Info_Tpl_13_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Tpl_13_EXIT_Condition()
{
	return 1;
};

func void Info_Tpl_13_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************
instance Info_Tpl_13_EinerVonEuchWerden(C_INFO) // E1
{
	nr				= 4;
	condition		= Info_Tpl_13_EinerVonEuchWerden_Condition;
	information		= Info_Tpl_13_EinerVonEuchWerden_Info;
	permanent		= TRUE;
	description		= "Ich will ein Templer werden - so wie du.";
};

func int Info_Tpl_13_EinerVonEuchWerden_Condition()
{
	if ((Npc_GetTrueGuild(other) != GIL_TPL)
	&& (!C_NpcBelongsToNewCamp(other))
	&& (!C_NpcBelongsToOldCamp(other)))
	{
		return TRUE;
	};
};

func void Info_Tpl_13_EinerVonEuchWerden_Info()
{
	AI_Output(other, self, "Info_Tpl_13_EinerVonEuchWerden_15_00"); //Ich will ein Templer werden - so wie du.
	AI_Output(self, other, "Info_Tpl_13_EinerVonEuchWerden_13_01"); //Hast du eine Ahnung wie viele Entbehrungen ich auf mich nehmen musste, um den Auserwählten des Schläfers als Tempelwächter dienen zu dürfen?
	AI_Output(self, other, "Info_Tpl_13_EinerVonEuchWerden_13_02"); //Glaub bloß nicht, du kannst hier einfach reinspazieren und bekommst so mir nichts dir nichts die höchsten Auszeichnungen.
	AI_Output(self, other, "Info_Tpl_13_EinerVonEuchWerden_13_03"); //Bevor du überhaupt darüber nachdenkst, solltest du dich mit der Lehre des Schläfers vertraut machen.
	AI_Output(self, other, "Info_Tpl_13_EinerVonEuchWerden_13_04"); //Das wird einige Zeit in Anspruch nehmen und es wird dir auch sicher die Flausen aus dem Kopf treiben.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Tpl_13_WichtigePersonen(C_INFO)
{
	nr				= 3;
	condition		= Info_Tpl_13_WichtigePersonen_Condition;
	information		= Info_Tpl_13_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer hat hier das Sagen?";
};

func int Info_Tpl_13_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Tpl_13_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Tpl_13_WichtigePersonen_15_00"); //Wer hat hier das Sagen?
	AI_Output(self, other, "Info_Tpl_13_WichtigePersonen_13_01"); //Unsere Gurus sind die Auserwählten des Schläfers! Der Schläfer bestimmt unser Schicksal und die Gurus verkünden es uns.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************
instance Info_Tpl_13_DasLager(C_INFO)
{
	nr				= 2;
	condition		= Info_Tpl_13_DasLager_Condition;
	information		= Info_Tpl_13_DasLager_Info;
	permanent		= TRUE;
	description		= "Ich würde gerne mal in den Tempel des Schläfers gehen...";
};

func int Info_Tpl_13_DasLager_Condition()
{
	if (Kapitel <= 1)
	{
		return 1;
	};
};

func void Info_Tpl_13_DasLager_Info()
{
	AI_Output(other, self, "Info_Tpl_13_DasLager_15_00"); //Ich würde gerne mal in den Tempel des Schläfers gehen ...
	AI_Output(self, other, "Info_Tpl_13_DasLager_13_01"); //Undenkbar! Ein Ungläubiger im Tempel! Bevor du dich nicht in den Dienst des Schläfers gestellt hast, wird dir der Zutritt zum Tempel verwehrt bleiben!
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Tpl_13_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Tpl_13_DieLage_Condition;
	information		= Info_Tpl_13_DieLage_Info;
	permanent		= TRUE;
	description		= "Wie läuft's?";
};

func int Info_Tpl_13_DieLage_Condition()
{
	if (!C_NpcBelongsToPsiCamp(other))
	{
		return 1;
	};
};

func void Info_Tpl_13_DieLage_Info()
{
	AI_Output(other, self, "Info_Tpl_13_DieLage_15_00"); //Wie läuft's?
	AI_Output(self, other, "Info_Tpl_13_DieLage_13_01"); //Seit ich ein auserwählter Beschützer des Glaubens bin, fühle ich mich besser als je zuvor in meinem Leben.
	AI_Output(other, self, "Info_Tpl_13_DieLage_15_02"); //Hört sich wichtig an ...
	AI_Output(self, other, "Info_Tpl_13_DieLage_13_03"); //Du bist ein Ungläubiger. Du verstehst davon nichts.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Tpl_13(var C_Npc slf)
{
	B_AssignFindNpc_ST(slf);

	Info_Tpl_13_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_EinerVonEuchWerden.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DasLager.npc = Hlp_GetInstanceID(slf);
	Info_Tpl_13_DieLage.npc = Hlp_GetInstanceID(slf);
};
