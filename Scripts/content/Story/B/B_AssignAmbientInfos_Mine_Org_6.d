// *************************************************************************
// 									Kapitel 1
// *************************************************************************

// *************************************************************************
// 									EXIT
// *************************************************************************
instance Info_Mine_Org_6_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Org_6 (s.u.) jeweils gesetzt
	nr				= 999;
	condition		= Info_Mine_Org_6_EXIT_Condition;
	information		= Info_Mine_Org_6_EXIT_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int Info_Mine_Org_6_EXIT_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 								Mine
// *************************************************************************
instance Info_Mine_Org_6_Mine(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Org_6_Mine_Condition;
	information		= Info_Mine_Org_6_Mine_Info;
	permanent		= TRUE;
	description		= "Was läuft in der Mine?";
};

func int Info_Mine_Org_6_Mine_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_Mine_Info()
{
	AI_Output(other, self, "Info_Mine_Org_6_Mine_15_00"); //Was läuft in der Mine?
	AI_Output(self, other, "Info_Mine_Org_6_Mine_06_01"); //In der Mine? Die Typen da drin sind unter sich, es kommt keiner rein und keiner raus.
	AI_Output(self, other, "Info_Mine_Org_6_Mine_06_02"); //Man kann froh sein, dass wir hier draußen sind.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************
instance Info_Mine_Org_6_WichtigePersonen(C_INFO)
{
	nr				= 1;
	condition		= Info_Mine_Org_6_WichtigePersonen_Condition;
	information		= Info_Mine_Org_6_WichtigePersonen_Info;
	permanent		= TRUE;
	description		= "Wer erteilt hier die Befehle?";
};

func int Info_Mine_Org_6_WichtigePersonen_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_WichtigePersonen_Info()
{
	AI_Output(other, self, "Info_Mine_Org_6_WichtigePersonen_15_00"); //Wer erteilt hier die Befehle?
	AI_Output(self, other, "Info_Mine_Org_6_WichtigePersonen_06_01"); //Mir erteilt hier niemand Befehle, aber man muss schon wissen, wie man das anstellt.
	AI_Output(other, self, "Info_Mine_Org_6_WichtigePersonen_15_01"); //Und wie stellt man das an?
	AI_Output(self, other, "Info_Mine_Org_6_WichtigePersonen_06_02"); //Berufsgeheimnis! Aber unter uns, als Bandit ist das gar nicht so schwer.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************
instance Info_Mine_Org_6_DieLage(C_INFO) // E1
{
	nr				= 1;
	condition		= Info_Mine_Org_6_DieLage_Condition;
	information		= Info_Mine_Org_6_DieLage_Info;
	permanent		= TRUE;
	description		= "Scheinst Dich ja nicht gerade zu überarbeiten.";
};

func int Info_Mine_Org_6_DieLage_Condition()
{
	return 1;
};

func void Info_Mine_Org_6_DieLage_Info()
{
	AI_Output(other, self, "Info_Mine_Org_6_DieLage_15_00"); //Scheinst dich ja nicht gerade zu überarbeiten.
	AI_Output(self, other, "Info_Mine_Org_6_DieLage_06_01"); //Ich und arbeiten? Wenn ich arbeiten würde, wäre ich nicht hier in der Kuppel, wenn du verstehst was ich meine.
};

// *************************************************************************
// -------------------------------------------------------------------------

func void B_AssignAmbientInfos_Mine_Org_6(var C_Npc slf)
{
	Info_Mine_Org_6_EXIT.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_Mine.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_WichtigePersonen.npc = Hlp_GetInstanceID(slf);
	Info_Mine_Org_6_DieLage.npc = Hlp_GetInstanceID(slf);
};
