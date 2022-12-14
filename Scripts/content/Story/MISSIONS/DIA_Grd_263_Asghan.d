// ************************ EXIT **************************
instance Grd_263_Asghan_Exit(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 999;
	condition		= Grd_263_Asghan_Exit_Condition;
	information		= Grd_263_Asghan_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Grd_263_Asghan_Exit_Condition()
{
	return 1;
};

func void Grd_263_Asghan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************** Infos *****************************
instance Grd_263_Asghan_NEST(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 0;
	condition		= Grd_263_Asghan_NEST_Condition;
	information		= Grd_263_Asghan_NEST_Info;
	description		= "Es muss hier irgendwo ein Nest der Minecrawler geben";
};

func int Grd_263_Asghan_NEST_Condition()
{
	if (CorKalom_BringMCQBalls == LOG_RUNNING)
	{
		return 1;
	};
};

func void Grd_263_Asghan_NEST_Info()
{
	AI_Output(other, self, "Grd_263_Asghan_NEST_Info_15_01"); //Es muss hier irgendwo ein Nest der Minecrawler geben.
	AI_Output(self, other, "Grd_263_Asghan_NEST_Info_06_02"); //Dieser ganze verdammte Berg ist ein einziges Nest.
	AI_Output(other, self, "Grd_263_Asghan_NEST_Info_15_03"); //Warum ist dieser Schacht versperrt?
	AI_Output(self, other, "Grd_263_Asghan_NEST_Info_06_04"); //Egal wie viele Crawler wir getötet haben, von dort kamen immer wieder mehr.
	AI_Output(other, self, "Grd_263_Asghan_NEST_Info_15_05"); //Dann wird dort irgendwo ein Nest sein. Lass mich das Tor öffnen!
	AI_Output(self, other, "Grd_263_Asghan_NEST_Info_06_06"); //Nein! Erst wenn Ian die Erlaubnis gibt, wird dieses Tor geöffnet! Vorher geht gar nichts.

	B_LogEntry(CH2_MCEggs, CH2_MCEggs_1);
};

/*------------------------------------------------------------------------
ERLAUBNIS VON IAN GEHOLT
------------------------------------------------------------------------ */
instance Grd_263_Asghan_OPEN(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 0;
	condition		= Grd_263_Asghan_OPEN_Condition;
	information		= Grd_263_Asghan_OPEN_Info;
	description		= "Hey Asghan, du kannst das Tor öffnen";
};

func int Grd_263_Asghan_OPEN_Condition()
{
	if (Npc_KnowsInfo(hero, Grd_263_Asghan_NEST)
	&& Npc_KnowsInfo(hero, STT_301_IAN_GEAR_SUC))
	{
		return TRUE;
	};
};

func void Grd_263_Asghan_OPEN_Info()
{
	AI_Output(other, self, "Grd_263_Asghan_OPEN_Info_15_01"); //Hey Asghan, du kannst das Tor öffnen!
	AI_Output(self, other, "Grd_263_Asghan_OPEN_Info_06_02"); //Ich habe dir schon einmal gesagt, nur wenn Ian...
	AI_Output(other, self, "Grd_263_Asghan_OPEN_Info_15_03"); //Asghan...Alles wird gut... und einen schönen Gruß von Ian.
	AI_Output(self, other, "Grd_263_Asghan_OPEN_Info_06_04"); //Na gut, wenn Ian die Verantwortung übernimmt... aber nur unter einer Bedingung!
	AI_Output(other, self, "Grd_263_Asghan_OPEN_Info_15_05"); //Spuck's aus, was für eine Bedingung?
	AI_Output(self, other, "Grd_263_Asghan_OPEN_Info_06_06"); //Besorge erst mal zwei bis drei Templer zur Verstärkung, ich will nicht alleine hier stehen, falls die Crawler aus dem Schacht kommen!

	B_LogEntry(CH2_MCEggs, CH2_MCEggs_2);

	AI_StopProcessInfos(self);
};

// ***************** Infos *****************************
instance Grd_263_Asghan_OPEN_NOW(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 0;
	condition		= Grd_263_Asghan_OPEN_NOW_Condition;
	information		= Grd_263_Asghan_OPEN_NOW_Info;
	description		= "Alle Vorbereitungen sind getroffen. Das Tor kann geöffnet werden!";
};

func int Grd_263_Asghan_OPEN_NOW_Condition()
{
	if ((Npc_KnowsInfo(hero, Tpl_1400_GorNaBar_SUGGEST)) && (Npc_KnowsInfo(hero, Tpl_1401_GorNaKosh_SUGGEST))
	|| (Npc_KnowsInfo(hero, Tpl_1401_GorNaKosh_SUGGEST)) && (Npc_KnowsInfo(hero, Tpl_1433_GorNaVid_HEALTH_SUC))
	|| (Npc_KnowsInfo(hero, Tpl_1433_GorNaVid_HEALTH_SUC)) && (Npc_KnowsInfo(hero, Tpl_1400_GorNaBar_SUGGEST)))
	{
		return TRUE;
	};
};

func void Grd_263_Asghan_OPEN_NOW_Info()
{
	AI_Output(other, self, "Grd_263_Asghan_OPEN_NOW_Info_15_01"); //Alle Vorbereitungen sind getroffen. Das Tor kann geöffnet werden!
	AI_Output(self, other, "Grd_263_Asghan_OPEN_NOW_Info_06_02"); //In Ordnung, dann öffne du den Schacht. Der Tanz kann beginnen.

	Npc_SetPermAttitude(self, ATT_FRIENDLY);
	Npc_ExchangeRoutine(self, "opengate");

	B_GiveXP(XP_OpenAsghansGate);
	B_LogEntry(CH2_MCEggs, CH2_MCEggs_3);

	AI_StopProcessInfos(self);
};

// ***************** Nest gefunden *****************************
instance Grd_263_Asghan_LAIRFOUND(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 0;
	condition		= Grd_263_Asghan_LAIRFOUND_Condition;
	information		= Grd_263_Asghan_LAIRFOUND_Info;
	description		= "Die Bedrohung durch die Minecrawler dürfte beendet sein!";
};

func int Grd_263_Asghan_LAIRFOUND_Condition()
{
	if ((Npc_HasItems(hero, ItAt_Crawlerqueen) >= 3)
	&& (Npc_GetTrueGuild(hero) == GIL_STT))
	{
		return TRUE;
	};
};

func void Grd_263_Asghan_LAIRFOUND_Info()
{
	AI_Output(other, self, "Grd_263_Asghan_LAIRFOUND_Info_15_01"); //Die Bedrohung durch die Minecrawler dürfte beendet sein!
	AI_Output(self, other, "Grd_263_Asghan_LAIRFOUND_Info_06_02"); //Das ist eine gute Nachricht. Werde gleich einen Boten zu Thorus schicken!

	AI_StopProcessInfos(self);
};

/*------------------------------------------------------------------------
MCQ Hatz läuft noch nicht
------------------------------------------------------------------------ */
instance Grd_263_Asghan_SMALLTALK(C_INFO)
{
	npc				= Grd_263_Asghan;
	nr				= 0;
	condition		= Grd_263_Asghan_SMALLTALK_Condition;
	information		= Grd_263_Asghan_SMALLTALK_Info;
	description		= "Wie siehts aus?";
};

func int Grd_263_Asghan_SMALLTALK_Condition()
{
	if (CorKalom_BringMCQBalls != LOG_RUNNING)
	{
		return TRUE;
	};
};

func void Grd_263_Asghan_SMALLTALK_Info()
{
	AI_Output(other, self, "Grd_263_Asghan_SMALLTALK_Info_15_01"); //Hey, wie siehts aus?
	AI_Output(self, other, "Grd_263_Asghan_SMALLTALK_Info_06_02"); //Noch gut... Solange Niemand auf die Idee kommt, dieses Tor öffnen zu wollen, muss ich auch niemandem wehtun.
	AI_Output(other, self, "Grd_263_Asghan_SMALLTALK_Info_15_03"); //Was ist denn so besonderes hinter dem Tor?
	AI_Output(self, other, "Grd_263_Asghan_SMALLTALK_Info_06_04"); //Minecrawler. Große böse Minecrawler. Und zwar sehr...sehr...sehr viele.
};
