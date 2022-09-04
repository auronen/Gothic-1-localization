// *******************************
// 				EXIT
// *******************************
instance DIA_GorNaRan_Exit(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	nr				= 999;
	condition		= DIA_GorNaRan_Exit_Condition;
	information		= DIA_GorNaRan_Exit_Info;
	permanent		= TRUE;
	description		= "ENDE";
};

func int DIA_GorNaRan_Exit_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// *******************************
// 				Wache
// *******************************
instance DIA_GorNaRan_Wache(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	nr				= 1;
	condition		= DIA_GorNaRan_Wache_Condition;
	information		= DIA_GorNaRan_Wache_Info;
	permanent		= TRUE;
	description		= "Was machst du hier?";
};

func int DIA_GorNaRan_Wache_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Wache_Info()
{
	AI_Output(other, self, "DIA_GorNaRan_Wache_15_00"); //Was machst du hier?
	AI_Output(self, other, "DIA_GorNaRan_Wache_13_01"); //Ich passe auf, das kein Sumpfhai zu nah ans Lager gerät.
	AI_Output(self, other, "DIA_GorNaRan_Wache_13_02"); //Wenn ich du wäre, würde ich 'nen weiten Bogen um die Viecher machen. Du hast keine Chance gegen sie.
	AI_Output(self, other, "DIA_GorNaRan_Wache_13_03"); //Jetzt stör' mich nicht weiter, ich muss die Augen aufhalten.
	AI_StopProcessInfos(self);
};
instance Info_TPL_1405_GorNaRan(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	condition		= Info_TPL_1405_GorNaRan_Condition;
	information		= Info_TPL_1405_GorNaRan_Info;
	important		= TRUE;
};

func int Info_TPL_1405_GorNaRan_Condition()
{
	if (Kapitel == 6)
	{
		return TRUE;
	};
};

func void Info_TPL_1405_GorNaRan_Info()
{
	AI_Output(self, other, "Info_TPL_1405_GorNaRan_Info_13_01"); //Wo willst DU hin, hier darf niemand durch!
};

// ****************** ANGRIFF *********************
instance Info_TPL_1405_GorNaRan2(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	nr				= 1;
	condition		= Info_TPL_1405_GorNaRan2_Condition;
	information		= Info_TPL_1405_GorNaRan2_Info;
	permanent		= TRUE;
	description		= "Was ist hier eigentlich los?";
};

func int Info_TPL_1405_GorNaRan2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan2_Info()
{
	AI_Output(other, self, "Info_TPL_1405_GorNaRan_Info_15_02"); //Was ist hier eigentlich los?
	AI_Output(self, other, "Info_TPL_1405_GorNaRan_Info_13_03"); //Du fragst mich, was hier los ist? Wirf dich in den Staub und huldige dem Schläfer, denn just in diesem Moment erwacht er und wird alle Ungläubigen vom Antlitz dieser Welt verbannen.
};

// ****************** ANGRIFF *********************
instance Info_TPL_1405_GorNaRan3(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	nr				= 1;
	condition		= Info_TPL_1405_GorNaRan3_Condition;
	information		= Info_TPL_1405_GorNaRan3_Info;
	permanent		= TRUE;
	description		= "Wollte mich nur umsehen";
};

func int Info_TPL_1405_GorNaRan3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan3_Info()
{
	AI_Output(other, self, "Info_TPL_1405_GorNaRan_Info_15_04"); //Wollte mich nur umsehen.
	AI_Output(self, other, "Info_TPL_1405_GorNaRan_Info_13_05"); //Du Wurm, du und deinesgleichen haben hier nichts zu suchen, wenn der Schläfer erwacht! Ich werde dich aus dem Weg räumen müssen.

	AI_StopProcessInfos(self);

	Npc_SetTarget(self, hero);
	AI_StartState(self, ZS_Attack, 1, "");
};
instance Info_TPL_1405_GorNaRan4(C_INFO)
{
	npc				= TPL_1405_GorNaRan;
	nr				= 1;
	condition		= Info_TPL_1405_GorNaRan4_Condition;
	information		= Info_TPL_1405_GorNaRan4_Info;
	description		= "Du kannst mich nicht aufhalten!";
};

func int Info_TPL_1405_GorNaRan4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan4_Info()
{
	AI_Output(other, self, "Info_TPL_1405_GorNaRan_Info_15_06"); //Du kannst mich nicht aufhalten!
	AI_Output(self, other, "Info_TPL_1405_GorNaRan_Info_13_07"); //Wie du meinst, Junge, für den Schläfer!

	AI_StopProcessInfos(self);

	Npc_SetTarget(self, hero);
	AI_StartState(self, ZS_Attack, 1, "");
};
