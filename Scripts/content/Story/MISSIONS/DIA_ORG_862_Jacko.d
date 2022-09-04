// ************************************************************
// 							EXIT
// ************************************************************
instance Info_Jacko_EXIT(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 999;
	condition		= Info_Jacko_EXIT_Condition;
	information		= Info_Jacko_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Jacko_EXIT_Condition()
{
	return 1;
};

func void Info_Jacko_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************
//							Raus hier!
//******************************************************************
instance ORG_862_Jacko_GoAway(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 1;
	condition		= ORG_862_Jacko_GoAway_Condition;
	information		= ORG_862_Jacko_GoAway_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int ORG_862_Jacko_GoAway_Condition()
{
	if ((Npc_GetDistToWP(hero, "LOCATION_23_CAVE_1_IN") < 500)
	&& (Kalom_DrugMonopol != LOG_RUNNING)
	&& (Kalom_DrugMonopol != LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void ORG_862_Jacko_GoAway_Info()
{
	AI_Output(self, other, "ORG_862_Jacko_GoAway_Info_06_00"); //Was zum Teufel machst du hier?
	AI_StopProcessInfos(self);
	Npc_SetTarget(self, other);
	AI_StartState(self, ZS_ATTACK, 1, "");
};

//******************************************************************
//							Weg mit den Jungs
//******************************************************************
instance ORG_862_Jacko_GUARD(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 1;
	condition		= ORG_862_Jacko_GUARD_Condition;
	information		= ORG_862_Jacko_GUARD_Info;
	important		= TRUE;
};

func int ORG_862_Jacko_GUARD_Condition()
{
	if (Kalom_DrugMonopol == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void ORG_862_Jacko_GUARD_Info()
{
	AI_Output(self, other, "ORG_862_Jacko_GUARD_Info_06_00"); //Na, haben wir uns verlaufen?
	AI_Output(other, self, "ORG_862_Jacko_GUARD_Info_15_01"); //Cor Kalom weiß von eurem kleinen Unternehmen.
	AI_Output(self, other, "ORG_862_Jacko_GUARD_Info_06_02"); //Was? Warum bist du hier?

	B_LogEntry(CH1_DrugMonopol, CH1_DrugMonopol_3);

	Info_ClearChoices(ORG_862_Jacko_GUARD);
	Info_AddChoice(ORG_862_Jacko_GUARD, "Ich will euch warnen. Cor Kalom hat fünf Templer geschickt.", ORG_862_Jacko_GUARD_Templer);
	Info_AddChoice(ORG_862_Jacko_GUARD, "Ich will wissen, was dir diese Information wert ist.", ORG_862_Jacko_GUARD_InfoWert);
	Info_AddChoice(ORG_862_Jacko_GUARD, "Um der Sache hier ein Ende zu bereiten!", ORG_862_Jacko_GUARD_Angriff);
};

func void ORG_862_Jacko_GUARD_Templer()
{
	AI_Output(other, self, "ORG_862_Jacko_GUARD_Templer_Info_15_00"); //Ich will euch warnen. Cor Kalom hat fünf Templer geschickt, die euch den Garaus machen sollen.
	AI_Output(self, other, "ORG_862_Jacko_GUARD_Templer_Info_06_01"); //Ach? Das glaubst du doch selbst nicht!
	AI_Output(other, self, "ORG_862_Jacko_GUARD_Templer_Info_15_02"); //Sie müßten jeden Moment hier sein.
	AI_Output(self, other, "ORG_862_Jacko_GUARD_Templer_Info_06_03"); //Verdammt! Wir müssen weg!

	Info_ClearChoices(ORG_862_Jacko_GUARD);

	B_LogEntry(CH1_DrugMonopol, CH1_DrugMonopol_4);
	B_GiveXP(XP_JackoRetired);

	Npc_ExchangeRoutine(self, "ARBEITSLOS");
	B_ExchangeRoutine(ORG_861_Killian, "ARBEITSLOS");
	B_ExchangeRoutine(ORG_860_Renyu, "ARBEITSLOS");

	Stooges_Fled = TRUE;

	AI_StopProcessInfos(self);
};

func void ORG_862_Jacko_GUARD_InfoWert()
{
	AI_Output(other, self, "ORG_862_Jacko_GUARD_InfoWert_Info_15_00"); //Ich will wissen, was dir diese Information wert ist.
	AI_Output(self, other, "ORG_862_Jacko_GUARD_InfoWert_Info_06_01"); //Ach so ist das... Gut. Eine Hand wäscht die andere. Hier, das ist alles Erz, was ich bei mir habe.
	AI_Output(self, other, "ORG_862_Jacko_GUARD_InfoWert_Info_06_02"); //Wir müssen weg! Und du verschwindest hier auch besser.

	B_GiveInvItems(self, other, itminugget, 95);

	Npc_ExchangeRoutine(self, "ARBEITSLOS");
	B_ExchangeRoutine(ORG_861_Killian, "ARBEITSLOS");
	B_ExchangeRoutine(ORG_860_Renyu, "ARBEITSLOS");

	Stooges_Fled = TRUE;
	B_LogEntry(CH1_DrugMonopol, CH1_DrugMonopol_5);
	B_GiveXP(XP_JackoRetired);

	Info_ClearChoices(ORG_862_Jacko_GUARD);
	AI_StopProcessInfos(self);
};

func void ORG_862_Jacko_GUARD_Angriff()
{
	AI_Output(other, self, "ORG_862_Jacko_GUARD_Angriff_Info_15_00"); //Um der Sache hier ein Ende zu bereiten!
	AI_Output(self, other, "ORG_862_Jacko_GUARD_Angriff_Info_06_01"); //Jungs! Kommt doch mal kurz her!

	Info_ClearChoices(ORG_862_Jacko_GUARD);
	AI_StopProcessInfos(self);

	Npc_SetTarget(self, hero);
	AI_StartState(self, ZS_Attack, 1, "");
	Npc_SetPermAttitude(self, ATT_HOSTILE);
	Npc_SetTempAttitude(self, ATT_HOSTILE);
	var C_Npc Killian;
	Killian = Hlp_GetNpc(ORG_861_Killian);
	Npc_SetTarget(Killian, hero);
	AI_StartState(Killian, ZS_Attack, 0, ""); // 0 ist richtig!
	Npc_SetPermAttitude(Killian, ATT_HOSTILE);
	Npc_SetTempAttitude(Killian, ATT_HOSTILE);
	var C_Npc Renyu;
	Renyu = Hlp_GetNpc(ORG_860_Renyu);
	Npc_SetTarget(Renyu, hero);
	AI_StartState(Renyu, ZS_Attack, 0, ""); // 0 ist richtig!
	Npc_SetPermAttitude(Renyu, ATT_HOSTILE);
	Npc_SetTempAttitude(Renyu, ATT_HOSTILE);
};

//******************************************************************
//							Im Banditencamp
//******************************************************************
instance ORG_862_Jacko_Banditencamp(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 1;
	condition		= ORG_862_Jacko_Banditencamp_Condition;
	information		= ORG_862_Jacko_Banditencamp_Info;
	permanent		= TRUE;
	description		= "Hierher habt ihr euch also verkrümelt.";
};

func int ORG_862_Jacko_Banditencamp_Condition()
{
	if ((Kalom_DrugMonopol == LOG_SUCCESS) && Hlp_StrCmp(Npc_GetNearestWP(self), "LOCATION_11_08"))
	{
		return TRUE;
	};
};

func void ORG_862_Jacko_Banditencamp_Info()
{
	AI_Output(other, self, "ORG_862_Jacko_Banditencamp_15_00"); //Hierher habt ihr euch also verkrümelt.
	AI_Output(self, other, "ORG_862_Jacko_Banditencamp_06_01"); //Es war knapp. Die Templer der Sekte hätten uns bestimmt kaltgemacht.

	AI_StopProcessInfos(self);
};

/*
//******************************************************************
//					SPELER SOLL ABHAUEN
//******************************************************************
instance ORG_862_Jacko_DRUGGUARD(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 0;
	condition		= ORG_862_Jacko_DRUGGUARD_Condition;
	information		= ORG_862_Jacko_DRUGGUARD_Info;
	description		= "Was machst du hier?";
};

func int ORG_862_Jacko_DRUGGUARD_Condition()
{
	return TRUE;
};

func void ORG_862_Jacko_DRUGGUARD_Info()
{
	AI_Output(other, self, "ORG_862_Jacko_DRUGGUARD_Info_15_01"); //Was machst du hier?
	AI_Output(self, other, "ORG_862_Jacko_DRUGGUARD_Info_06_02"); //Gar nichts. Geh weg!
	AI_StopProcessInfos(self);
};

//******************************************************************
//						NORMAL
//******************************************************************
instance ORG_862_Jacko_KALOM(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 0;
	condition		= ORG_862_Jacko_KALOM_Condition;
	information		= ORG_862_Jacko_KALOM_Info;
	description		= "Ich bin im Auftrag der Bruderschaft hier.";
};

func int ORG_862_Jacko_KALOM_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_862_Jacko_DRUGGUARD))
	&& (Kalom_DrugMonopol == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void ORG_862_Jacko_KALOM_Info()
{
	AI_Output(other, self, "ORG_862_Jacko_KALOM_Info_15_01"); //Ich bin im Auftrag der Bruderschaft hier.
	AI_Output(self, other, "ORG_862_Jacko_KALOM_Info_06_02"); //Oh scheisse! Und da schicken die so einen wie dich?
};

//******************************************************************
//				NORMAL
//******************************************************************
instance ORG_862_Jacko_ANGEBOT(C_INFO)
{
	npc				= ORG_862_Jacko;
	nr				= 0;
	condition		= ORG_862_Jacko_ANGEBOT_Condition;
	information		= ORG_862_Jacko_ANGEBOT_Info;
	description		= "Ich will euch ein Angebot machen!";
};

func int ORG_862_Jacko_ANGEBOT_Condition()
{
	if (Npc_KnowsInfo(hero, ORG_862_Jacko_KALOM))
	{
		return TRUE;
	};
};

func void ORG_862_Jacko_ANGEBOT_Info()
{
	AI_Output(other, self, "ORG_862_Jacko_ANGEBOT_Info_15_01"); //Ich will euch ein Angebot machen!
	AI_Output(self, other, "ORG_862_Jacko_ANGEBOT_Info_06_02"); //Was für ein Angebot?
	AI_Output(other, self, "ORG_862_Jacko_ANGEBOT_Info_15_03"); //Das werde ich mit demjenigen bereden,der hier das Sagen hat.
	AI_Output(self, other, "ORG_862_Jacko_ANGEBOT_Info_06_04"); //Na schön,dann rede mit Renyu. Aber keine faulen Tricks, sonst zerschlage ich jeden deiner Knochen einzeln!
	AI_StopProcessInfos(self);
};

*/
