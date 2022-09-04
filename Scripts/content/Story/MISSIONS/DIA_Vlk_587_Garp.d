// ************************ EXIT **************************
instance Vlk_587_Garp_Exit(C_INFO)
{
	npc				= Vlk_587_Garp;
	nr				= 0;
	condition		= Vlk_587_Garp_Exit_Condition;
	information		= Vlk_587_Garp_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Vlk_587_Garp_Exit_Condition()
{
	return 1;
};

func void Vlk_587_Garp_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// ***************************** INFOS ****************************************//
instance Vlk_587_Garp_ORK(C_INFO)
{
	npc				= Vlk_587_Garp;
	nr				= 0;
	condition		= Vlk_587_Garp_ORK_Condition;
	information		= Vlk_587_Garp_ORK_Info;
	description		= "Was macht der Ork hier?";
};

func int Vlk_587_Garp_ORK_Condition()
{
	return 1;
};

func void Vlk_587_Garp_ORK_Info()
{
	AI_Output(other, self, "Vlk_587_Garp_ORK_Info_15_01"); //Was macht der Ork hier?
	AI_Output(self, other, "Vlk_587_Garp_ORK_Info_01_02"); //Die Gardisten haben ihn gefangen. Seitdem wird er hier zur Arbeit gezwungen.
	AI_Output(other, self, "Vlk_587_Garp_ORK_Info_15_03"); //Er ist ja noch nicht mal angekettet. Warum haut er nicht einfach ab?
	AI_Output(self, other, "Vlk_587_Garp_ORK_Info_01_04"); //Er hat es einmal versucht. Die Gardisten haben ihm so stark zugesetzt, dass er ein paar Wochen nicht laufen konnte. Seitdem hat er nie wieder versucht zu fliehen.
};
