// ************************ EXIT **************************
instance Tpl_1437_Templer_Exit(C_INFO)
{
	npc				= Tpl_1437_Templer;
	nr				= 999;
	condition		= Tpl_1437_Templer_Exit_Condition;
	information		= Tpl_1437_Templer_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Tpl_1437_Templer_Exit_Condition()
{
	return TRUE;
};

func void Tpl_1437_Templer_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************************** BESSER NICHT ANSPRECHEN ****************************************//
instance Tpl_1437_Templer_NERV(C_INFO)
{
	npc				= Tpl_1437_Templer;
	nr				= 0;
	condition		= Tpl_1437_Templer_NERV_Condition;
	information		= Tpl_1437_Templer_NERV_Info;
	permanent		= TRUE;
	description		= "Was liegt an?";
};

func int Tpl_1437_Templer_NERV_Condition()
{
	return TRUE;
};

func void Tpl_1437_Templer_NERV_Info()
{
	AI_Output(other, self, "Tpl_1437_Templer_NERV_Info_15_01"); //Was liegt an?
	AI_Output(self, other, "Tpl_1437_Templer_NERV_Info_13_02"); //Hör mal, musst du eigentlich jeden anquatschen, der hier rumläuft?
	AI_StopProcessInfos(self);
};

// ERNEUTES ANSPRECHEN ------------------------------------
instance Tpl_1437_Templer_LEAVE(C_INFO)
{
	npc				= Tpl_1437_Templer;
	nr				= 0;
	condition		= Tpl_1437_Templer_LEAVE_Condition;
	information		= Tpl_1437_Templer_LEAVE_Info;
	description		= "Alles klar bei dir?";
};

func int Tpl_1437_Templer_LEAVE_Condition()
{
	if (Npc_KnowsInfo(hero, Tpl_1437_Templer_NERV))
	{
		return TRUE;
	};
};

func void Tpl_1437_Templer_LEAVE_Info()
{
	AI_Output(other, self, "Tpl_1437_Templer_LEAVE_Info_15_01"); //Alles klar bei dir?
	AI_Output(self, other, "Tpl_1437_Templer_LEAVE_Info_13_02"); //Ich will meine Ruhe haben, verstanden? Also geh einfach weg und mach irgendwas, irgendwas anderes!
	AI_StopProcessInfos(self);
};

// ERNEUTES ANSPRECHEN ------------------------------------
instance Tpl_1437_Templer_LEAVENOW(C_INFO)
{
	npc				= Tpl_1437_Templer;
	nr				= 0;
	condition		= Tpl_1437_Templer_LEAVENOW_Condition;
	information		= Tpl_1437_Templer_LEAVENOW_Info;
	description		= "Nein, ich verstehe dich einfach nicht!";
};

func int Tpl_1437_Templer_LEAVENOW_Condition()
{
	if (Npc_KnowsInfo(hero, Tpl_1437_Templer_LEAVE))
	{
		return TRUE;
	};
};

func void Tpl_1437_Templer_LEAVENOW_Info()
{
	AI_Output(other, self, "Tpl_1437_Templer_LEAVENOW_Info_15_01"); //Nein, ich verstehe dich einfach nicht!
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_02"); //Na gut dann will ich es dir mal deutlich machen.
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_03"); //Verschwinde!
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_04"); //Verlass diese Mine!
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_05"); //Sprich mich NIE wieder an!
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_06"); //Hau ab! lass mich in Ruhe!
	AI_Output(self, other, "Tpl_1437_Templer_LEAVENOW_Info_13_07"); //VERPISS DICH !!!
	AI_StopProcessInfos(self);
};
