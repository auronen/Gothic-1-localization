// -------------------- Intro ---------------------------
instance DIA_SLD_751_Soeldner_INTRO(C_INFO)
{
	npc				= SLD_751_Soeldner;
	condition		= DIA_SLD_751_Soeldner_INTRO_CONDITION;
	information		= DIA_SLD_751_Soeldner_INTRO_INFO;
	important		= TRUE;
};

func int DIA_SLD_751_Soeldner_INTRO_CONDITION()
{
	if (Npc_GetDistToNpc(self, hero) < 300)
	// && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)== 0))
	{
		return 1;
	};
};

func void DIA_SLD_751_Soeldner_INTRO_INFO()
{
	AI_Output(self, other, "DIA_SLD_751_Soeldner_INTRO_INFO_01_01"); //Ah, Besuch! Mach uns keinen Ärger, sonst bekommst du welchen!
};

// -------------------- Exit 1 -----------------------------
instance DIA_SLD_751_Soeldner_EXIT_1(C_INFO)
{
	npc				= SLD_751_Soeldner;
	nr				= 999;
	condition		= DIA_SLD_751_Soeldner_EXIT_1_CONDITION;
	information		= DIA_SLD_751_Soeldner_EXIT_1_INFO;
	description		= "Ich geh dann mal.";
};

func int DIA_SLD_751_Soeldner_EXIT_1_CONDITION()
{
	return 1;
};

func void DIA_SLD_751_Soeldner_EXIT_1_INFO()
{
	AI_Output(other, self, "DIA_SLD_751_Soeldner_EXIT_1_INFO_15_01"); //Ich geh' dann mal.
	AI_Output(self, other, "DIA_SLD_751_Soeldner_EXIT_1_INFO_01_02"); //Ich hoffe, wir verstehen uns.
	AI_StopProcessInfos(self);
};

// -------------------- Exit 2 -----------------------------
instance DIA_SLD_751_Soeldner_EXIT_2(C_INFO)
{
	npc				= SLD_751_Soeldner;
	nr				= 999;
	condition		= DIA_SLD_751_Soeldner_EXIT_2_CONDITION;
	information		= DIA_SLD_751_Soeldner_EXIT_2_INFO;
	permanent		= TRUE;
	description		= "Ich muss weiter.";
};

func int DIA_SLD_751_Soeldner_EXIT_2_CONDITION()
{
	if (Npc_KnowsInfo(hero, DIA_SLD_751_Soeldner_EXIT_1))
	{
		return 1;
	};
};

func void DIA_SLD_751_Soeldner_EXIT_2_INFO()
{
	AI_Output(other, self, "DIA_SLD_751_Soeldner_EXIT_2_INFO_15_01"); //Ich muss weiter.
	AI_Output(self, other, "DIA_SLD_751_Soeldner_EXIT_2_INFO_01_02"); //Dann geh mal.
	AI_StopProcessInfos(self);
};

// --------------------- Umsehen ---------------------------
instance DIA_SLD_751_Soeldner_UMSEHEN(C_INFO)
{
	npc				= SLD_751_Soeldner;
	nr				= 0;
	condition		= DIA_SLD_751_Soeldner_UMSEHEN_CONDITION;
	information		= DIA_SLD_751_Soeldner_UMSEHEN_INFO;
	description		= "Ich will mich hier nur mal umsehen.";
};

func int DIA_SLD_751_Soeldner_UMSEHEN_CONDITION()
{
	return 1;
};

func void DIA_SLD_751_Soeldner_UMSEHEN_INFO()
{
	AI_Output(other, self, "DIA_SLD_751_Soeldner_UMSEHEN_INFO_15_01"); //Ich will mich hier nur mal umsehen.
	AI_Output(self, other, "DIA_SLD_751_Soeldner_UMSEHEN_INFO_01_02"); //Dann pass auf, dass du niemanden auf die Füße trittst.
};

// ----------------------- Will nur mal in die Mine ------------------
instance DIA_SLD_751_Soeldner_INMINE(C_INFO)
{
	npc				= SLD_751_Soeldner;
	nr				= 0;
	condition		= DIA_SLD_751_Soeldner_INMINE_CONDITION;
	information		= DIA_SLD_751_Soeldner_INMINE_INFO;
	description		= "Ich will in die Mine.";
};

func int DIA_SLD_751_Soeldner_INMINE_CONDITION()
{
	return 1;
};

func void DIA_SLD_751_Soeldner_INMINE_INFO()
{
	AI_Output(other, self, "DIA_SLD_751_Soeldner_INMINE_INFO_15_01"); //Ich will in die Mine.
	AI_Output(self, other, "DIA_SLD_751_Soeldner_INMINE_INFO_01_02"); //Ich glaube kaum, dass dir dass gelingen wird. Aber sprich mal mit Okyl.
};
