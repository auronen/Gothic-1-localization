//***************************************************************************
//	Info EXIT
//***************************************************************************
instance Info_GornFM_EXIT(C_INFO)
{
	npc				= PC_FighterFM;
	nr				= 999;
	condition		= Info_GornFM_EXIT_Condition;
	information		= Info_GornFM_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_GornFM_EXIT_Condition()
{
	return 1;
};

func void Info_GornFM_EXIT_Info()
{
	if (self.aivar[AIV_PARTYMEMBER])
	{
		AI_Output(self, other, "Info_GornFM_EXIT_09_01"); //Auf in den Kampf!
	}
	else
	{
		AI_Output(self, other, "Info_GornFM_EXIT_09_02"); //Bis später.
	};

	AI_StopProcessInfos(self);
};

// #####################################################################
// ##
// ##
// ## KAPITEL 4
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	Info WAIT
// ---------------------------------------------------------------------
instance Info_GornFM_WAIT(C_INFO)
{
	npc				= PC_FighterFM;
	nr				= 0;
	condition		= Info_GornFM_WAIT_Condition;
	information		= Info_GornFM_WAIT_Info;
	permanent		= TRUE;
	description		= "Halt die Stellung, ich werde erst mal die Lage prüfen!";
};

func int Info_GornFM_WAIT_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return TRUE;
	};
};

func void Info_GornFM_WAIT_Info()
{
	AI_Output(hero, self, "Info_GornFM_WAIT_15_01"); //Halt die Stellung, ich werde erst mal die Lage prüfen!
	AI_Output(self, hero, "Info_GornFM_WAIT_09_02"); //Ist gut. Ich warte am Mineneingang und sorge dafür, dass dir niemand in den Rücken fällt!

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Npc_ExchangeRoutine(self, "wait");
};

// ---------------------------------------------------------------------
//	Info FOLLOW
// ---------------------------------------------------------------------
instance Info_GornFM_FOLLOW(C_INFO)
{
	npc				= PC_FighterFM;
	nr				= 0;
	condition		= Info_GornFM_FOLLOW_Condition;
	information		= Info_GornFM_FOLLOW_Info;
	permanent		= TRUE;
	description		= "Komm mit, ich brauche deine Unterstützung!";
};

func int Info_GornFM_FOLLOW_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == FALSE)
	{
		return TRUE;
	};
};

func void Info_GornFM_FOLLOW_Info()
{
	AI_Output(hero, self, "Info_GornFM_FOLLOW_15_01"); //Komm mit, ich brauche deine Unterstützung!
	AI_Output(self, hero, "Info_GornFM_FOLLOW_09_02"); //Endlich geht es weiter! Geh voraus, ich folge dir!

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Npc_ExchangeRoutine(self, "follow");
};
