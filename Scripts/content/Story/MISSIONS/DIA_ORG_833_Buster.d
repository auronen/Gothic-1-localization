instance DIA_ORG_833_Buster(C_INFO)
{
	npc				= ORG_833_Buster;
	condition		= DIA_ORG_833_Buster_Condition;
	information		= DIA_ORG_833_Buster_Info;
	important		= TRUE;
};

func int DIA_ORG_833_Buster_Condition()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_ACROBAT) == 0)
	{
		return TRUE;
	};
};

func void DIA_ORG_833_Buster_Info()
{
	AI_Output(self, other, "DIA_ORG_833_Buster_02_01"); //Du siehst ganz schön ungelenkig aus, ich könnte dir helfen.
};

// ************************ EXIT **************************
instance DIA_ORG_833_Buster_Exit(C_INFO)
{
	npc				= ORG_833_Buster;
	nr				= 999;
	condition		= DIA_ORG_833_Buster_Exit_Condition;
	information		= DIA_ORG_833_Buster_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_ORG_833_Buster_Exit_Condition()
{
	return 1;
};

func void DIA_ORG_833_Buster_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// *********** Talent lernen *******************
instance DIA_ORG_833_Buster3(C_INFO)
{
	npc				= ORG_833_Buster;
	nr				= 0;
	condition		= DIA_ORG_833_Buster3_Condition;
	information		= DIA_ORG_833_Buster3_Info;
	permanent		= TRUE;
	description		= "Wie kannst du mir helfen?";
};

func int DIA_ORG_833_Buster3_Condition()
{
	return Npc_KnowsInfo(hero, DIA_ORG_833_Buster);
};

func void DIA_ORG_833_Buster3_Info()
{
	AI_Output(self, other, "DIA_ORG_833_Buster3_02_01"); //Ich kann dir die hohe Kunst der Körperbeherrschung zeigen. AKROBATIK.

	Info_ClearChoices(DIA_ORG_833_Buster3);
	Info_AddChoice(DIA_ORG_833_Buster3, DIALOG_BACK, DIA_ORG_833_Buster_Back);
	Info_AddChoice(DIA_ORG_833_Buster3, B_BuildLearnString(NAME_LearnAcrobat, LPCOST_TALENT_ACROBAT, 0), DIA_ORG_833_Buster_Train1);

	Log_CreateTopic(GE_TeacherNC, LOG_NOTE);
	B_LogEntry(GE_TeacherNC, GE_TeacherNC_Buster);
};

// ************* Talent lernen **********************
func void DIA_ORG_833_Buster_Train1()
{
	Info_ClearChoices(DIA_ORG_833_Buster3);

	if (B_GiveSkill(other, NPC_TALENT_ACROBAT, 1, LPCOST_TALENT_ACROBAT))
	{
		AI_Output(self, other, "DIA_ORG_833_Buster3_02_02"); //Wenn du deinen Körper beherrscht, bist du in der Lage viel weiter zu springen.
		AI_Output(self, other, "DIA_ORG_833_Buster3_02_03"); //Du lernst dich richtig abzurollen und aus dem Fall heraus richtig zu landen. Aber denk daran, du bist nicht unsterblich!
		AI_Output(self, other, "DIA_ORG_833_Buster3_02_04"); //Auch im Kampf ist Akrobatik sehr hilfreich. Du kannst deinen Abstand zum Gegner sehr schnell verändern. Viel Glück!
	};
};

// **************** Back ************************
func void DIA_ORG_833_Buster_Back()
{
	Info_ClearChoices(DIA_ORG_833_Buster3);
};
