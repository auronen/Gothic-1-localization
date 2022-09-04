// ************************ EXIT **************************
instance Tpl_1400_GorNaBar_Exit(C_INFO)
{
	npc				= Tpl_1400_GorNaBar;
	nr				= 999;
	condition		= Tpl_1400_GorNaBar_Exit_Condition;
	information		= Tpl_1400_GorNaBar_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Tpl_1400_GorNaBar_Exit_Condition()
{
	return 1;
};

func void Tpl_1400_GorNaBar_Exit_Info()
{
	AI_Output(self, other, "Tpl_1400_GorNaBar_Exit_Info_09_02"); //Möge der Schläfer dich schützen!
	AI_StopProcessInfos(self);
};

// ***************** TEMPLER SAMMELN *****************************
instance Tpl_1400_GorNaBar_SUGGEST(C_INFO)
{
	npc				= Tpl_1400_GorNaBar;
	nr				= 0;
	condition		= Tpl_1400_GorNaBar_SUGGEST_Condition;
	information		= Tpl_1400_GorNaBar_SUGGEST_Info;
	description		= "Ich brauche deine Hilfe";
};

func int Tpl_1400_GorNaBar_SUGGEST_Condition()
{
	if (Npc_KnowsInfo(hero, Grd_263_Asghan_OPEN)
	&& !Npc_KnowsInfo(hero, Grd_263_Asghan_OPEN_NOW))
	{
		return TRUE;
	};
};

func void Tpl_1400_GorNaBar_SUGGEST_Info()
{
	AI_Output(other, self, "Tpl_1400_GorNaBar_SUGGEST_Info_15_01"); //Ich brauche deine Hilfe
	AI_Output(other, self, "Tpl_1400_GorNaBar_SUGGEST_Info_15_02"); //Ich bin auf der Suche nach Sekret für Kalom und glaube zu wissen, wo das Nest der Crawler ist.
	AI_Output(other, self, "Tpl_1400_GorNaBar_SUGGEST_Info_15_03"); //Wenn der Durchgang geöffnet wird, bist du dabei?
	AI_Output(self, other, "Tpl_1400_GorNaBar_SUGGEST_Info_09_04"); //Das Nest der Crawler! Endlich. Mein Schwert kämpft für dich!

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine(self, "GATE");
	Npc_SetPermAttitude(self, ATT_FRIENDLY);
	B_GiveXP(XP_HireGorNaBar);

	B_LogEntry(CH2_MCEggs, CH2_MCEggs_9);
};

// ***************** Infos *****************************
instance Tpl_1400_GorNaBar_INFO(C_INFO)
{
	npc				= Tpl_1400_GorNaBar;
	nr				= 0;
	condition		= Tpl_1400_GorNaBar_INFO_Condition;
	information		= Tpl_1400_GorNaBar_INFO_Info;
	permanent		= TRUE;
	description		= "Was weißt du über die Minecrawler?";
};

func int Tpl_1400_GorNaBar_INFO_Condition()
{
	if (!(Npc_KnowsInfo(hero, Grd_263_Asghan_NEST)))
	{
		return 1;
	};
};

func void Tpl_1400_GorNaBar_INFO_Info()
{
	AI_Output(other, self, "Tpl_1400_GorNaBar_INFO_Info_15_01"); //Was weißt du über die Minecrawler?
	AI_Output(self, other, "Tpl_1400_GorNaBar_INFO_Info_09_02"); //Die Crawler müssen irgendwo ein Nest haben. Wenn wir nur wüssten, wo es ist, dann würden wir die ganze Brut ausrotten!
};

// EIER AM START
instance Tpl_1400_GorNaBar_VICTORY(C_INFO)
{
	npc				= Tpl_1400_GorNaBar;
	nr				= 0;
	condition		= Tpl_1400_GorNaBar_VICTORY_Condition;
	information		= Tpl_1400_GorNaBar_VICTORY_Info;
	description		= "Ich habe das Nest der Königin gefunden!";
};

func int Tpl_1400_GorNaBar_VICTORY_Condition()
{
	if (Npc_HasItems(hero, ItAt_Crawlerqueen) >= 1)
	{
		return TRUE;
	};
};

func void Tpl_1400_GorNaBar_VICTORY_Info()
{
	AI_Output(other, self, "Tpl_1400_GorNaBar_VICTORY_Info_15_01"); //Ich habe das Nest der Königin gefunden!
	AI_Output(self, other, "Tpl_1400_GorNaBar_VICTORY_Info_09_02"); //Du hast Mut und Kampfgeist bewiesen. Solche Leute können wir gebrauchen!

	Log_CreateTopic(GE_BecomeTemplar, LOG_NOTE);
	B_LogEntry(GE_BecomeTemplar, GE_BecomeTemplar_2);
};
