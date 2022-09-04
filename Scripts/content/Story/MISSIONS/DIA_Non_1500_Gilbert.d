// ********************************
// 				EXIT
// ********************************
instance DIA_Gilbert_EXIT(C_INFO)
{
	npc				= Non_1500_Gilbert;
	nr				= 999;
	condition		= DIA_Gilbert_EXIT_Condition;
	information		= DIA_Gilbert_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Gilbert_EXIT_Condition()
{
	return 1;
};

func void DIA_Gilbert_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ********************************
// 				First
// ********************************
instance DIA_Gilbert_First(C_INFO)
{
	npc				= Non_1500_Gilbert;
	nr				= 1;
	condition		= DIA_Gilbert_First_Condition;
	information		= DIA_Gilbert_First_Info;
	important		= TRUE;
};

func int DIA_Gilbert_First_Condition()
{
	if (Npc_GetDistToNpc(self, other) <= ZivilAnquatschDist)
	{
		return 1;
	};
};

func void DIA_Gilbert_First_Info()
{
	AI_Output(self, other, "DIA_Gilbert_First_04_00"); //Was machst du denn hier? Hab nicht oft Besuch hier oben, hehe!
	AI_Output(self, other, "DIA_Gilbert_First_04_01"); //War ne gute Leistung von dir, mein Versteck zu finden.

	B_GiveXP(XP_GilbertFound);
};

// ********************************
// 				Hallo
// ********************************
instance DIA_Gilbert_Hallo(C_INFO)
{
	npc				= Non_1500_Gilbert;
	nr				= 1;
	condition		= DIA_Gilbert_Hallo_Condition;
	information		= DIA_Gilbert_Hallo_Info;
	permanent		= TRUE;
	description		= "Was machst du hier?";
};

func int DIA_Gilbert_Hallo_Condition()
{
	return 1;
};

func void DIA_Gilbert_Hallo_Info()
{
	AI_Output(other, self, "DIA_Gilbert_Hallo_15_00"); //Was machst du hier?
	AI_Output(self, other, "DIA_Gilbert_Hallo_04_01"); //Ich hatte die Schnauze voll vom alten Lager. Hatte Ärger mit Gomez Leuten. Ist aber schon ne Weile her.
	AI_Output(self, other, "DIA_Gilbert_Hallo_04_02"); //Schätze, jetzt kräht kein Hahn mehr danach. Aber ich bleibe hier. Im alten Lager rennen mir zu viele Schwachköpfe rum.
};
