// -------------------- Intro ---------------------------
instance DIA_SLD_761_Soeldner_INTRO(C_INFO)
{
	npc				= SLD_761_Soeldner;
	condition		= DIA_SLD_761_Soeldner_INTRO_CONDITION;
	information		= DIA_SLD_761_Soeldner_INTRO_INFO;
	important		= TRUE;
};

func int DIA_SLD_761_Soeldner_INTRO_CONDITION()
{
	if (Npc_GetDistToNpc(self, hero) < 300)
	// && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)== 0))
	{
		return 1;
	};
};

func void DIA_SLD_761_Soeldner_INTRO_INFO()
{
	AI_Output(self, other, "DIA_SLD_761_Soeldner_INTRO_INFO_03_01"); //Was machst du hier an der Mine?
};

// -------------------- Exit 1 -----------------------------
instance DIA_SLD_761_Soeldner_EXIT_1(C_INFO)
{
	npc				= SLD_761_Soeldner;
	nr				= 999;
	condition		= DIA_SLD_761_Soeldner_EXIT_1_CONDITION;
	information		= DIA_SLD_761_Soeldner_EXIT_1_INFO;
	description		= "Ich hab' noch was zu erledigen.";
};

func int DIA_SLD_761_Soeldner_EXIT_1_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_EXIT_1_INFO()
{
	AI_Output(other, self, "DIA_SLD_761_Soeldner_EXIT_1_INFO_15_01"); //Ich hab' noch was zu erledigen.
	AI_Output(self, other, "DIA_SLD_761_Soeldner_EXIT_1_INFO_03_02"); //Das denke ich auch.
	AI_StopProcessInfos(self);
};

// -------------------- Exit 2 -----------------------------
instance DIA_SLD_761_Soeldner_EXIT_2(C_INFO)
{
	npc				= SLD_761_Soeldner;
	nr				= 999;
	condition		= DIA_SLD_761_Soeldner_EXIT_2_CONDITION;
	information		= DIA_SLD_761_Soeldner_EXIT_2_INFO;
	permanent		= TRUE;
	description		= "Ich geh dann mal.";
};

func int DIA_SLD_761_Soeldner_EXIT_2_CONDITION()
{
	if (Npc_KnowsInfo(hero, DIA_SLD_761_Soeldner_EXIT_1))
	{
		return 1;
	};
};

func void DIA_SLD_761_Soeldner_EXIT_2_INFO()
{
	AI_Output(other, self, "DIA_SLD_761_Soeldner_EXIT_2_INFO_15_01"); //Ich geh' dann mal.
	AI_Output(self, other, "DIA_SLD_761_Soeldner_EXIT_2_INFO_03_02"); //Okay.
	AI_StopProcessInfos(self);
};

// --------------------- Umsehen ---------------------------
instance DIA_SLD_761_Soeldner_UMSEHEN(C_INFO)
{
	npc				= SLD_761_Soeldner;
	nr				= 0;
	condition		= DIA_SLD_761_Soeldner_UMSEHEN_CONDITION;
	information		= DIA_SLD_761_Soeldner_UMSEHEN_INFO;
	description		= "Ich wollte mir nur mal das Camp ansehen.";
};

func int DIA_SLD_761_Soeldner_UMSEHEN_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_UMSEHEN_INFO()
{
	AI_Output(other, self, "DIA_SLD_761_Soeldner_UMSEHEN_INFO_15_01"); //Ich wollte mir nur mal das Camp ansehen.
	AI_Output(self, other, "DIA_SLD_761_Soeldner_UMSEHEN_INFO_03_02"); //Dann bist du hier wohl falsch, hier ist der Mineneingang, und der ist tabu für dich.
};

// ----------------------- Will nur mal in die Mine ------------------
instance DIA_SLD_761_Soeldner_INMINE(C_INFO)
{
	npc				= SLD_761_Soeldner;
	nr				= 0;
	condition		= DIA_SLD_761_Soeldner_INMINE_CONDITION;
	information		= DIA_SLD_761_Soeldner_INMINE_INFO;
	description		= "Ich wollte mir nur mal die Mine ansehen.";
};

func int DIA_SLD_761_Soeldner_INMINE_CONDITION()
{
	return 1;
};

func void DIA_SLD_761_Soeldner_INMINE_INFO()
{
	AI_Output(other, self, "DIA_SLD_761_Soeldner_INMINE_INFO_15_01"); //Ich wollte mir nur mal die Mine ansehen.
	AI_Output(self, other, "DIA_SLD_761_Soeldner_INMINE_INFO_03_02"); //Du siehst doch, dass die Mine abgeschlossen ist, also hier gibt´s nichts zu sehen.
};

// ----------------------- Bestechen --------------------------------
instance DIA_SLD_761_Soeldner_Bribe(C_INFO)
{
	npc				= SLD_761_Soeldner;
	nr				= 0;
	condition		= DIA_SLD_761_Soeldner_Bribe_CONDITION;
	information		= DIA_SLD_761_Soeldner_Bribe_INFO;
	description		= "Kann man da gar nichts machen?";
};

func int DIA_SLD_761_Soeldner_Bribe_CONDITION()
{
	if (Npc_KnowsInfo(hero, DIA_SLD_761_Soeldner_INMINE))
	{
		return 1;
	};
};

func void DIA_SLD_761_Soeldner_Bribe_INFO()
{
	AI_Output(other, self, "DIA_SLD_761_Soeldner_Bribe_INFO_15_01"); //Kann man da gar nichts machen?
	AI_Output(self, other, "DIA_SLD_761_Soeldner_Bribe_INFO_03_02"); //Was sollte man da machen können?
	AI_Output(self, other, "DIA_SLD_761_Soeldner_Bribe_INFO_03_03"); //Moment mal, wenn du versucht, mich zu bestechen, dann bist du hier an der falschen Adresse.
	AI_Output(other, self, "DIA_SLD_761_Soeldner_Bribe_INFO_15_04"); //Nein, ich wollte niemanden bestechen, ich dachte nur..
	AI_Output(other, self, "DIA_SLD_761_Soeldner_Bribe_INFO_15_05"); //Ich glaub', ich geh' dann besser.
	AI_StopProcessInfos(self);
};
