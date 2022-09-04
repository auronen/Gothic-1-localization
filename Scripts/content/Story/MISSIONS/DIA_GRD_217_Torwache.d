// **************************************************
// 						 EXIT
// **************************************************
instance DIA_Grd_217_Exit(C_INFO)
{
	npc				= Grd_217_Torwache;
	nr				= 999;
	condition		= DIA_Grd_217_Exit_Condition;
	information		= DIA_Grd_217_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Grd_217_Exit_Condition()
{
	return 1;
};

func void DIA_Grd_217_Exit_Info()
{
	AI_StopProcessInfos(self);
};

// **************************************************
// 					Hallo
// **************************************************
instance DIA_Grd_217_First(C_INFO)
{
	npc				= Grd_217_Torwache;
	nr				= 1;
	condition		= DIA_Grd_217_First_Condition;
	information		= DIA_Grd_217_First_Info;
	permanent		= TRUE;
	description		= "Hi!";
};

func int DIA_Grd_217_First_Condition()
{
	return 1;
};

func void DIA_Grd_217_First_Info()
{
	AI_Output(other, self, "DIA_Grd_217_First_15_00"); //Hi!
	AI_Output(self, other, "DIA_Grd_217_First_06_01"); //Beweg deinen Arsch! Rein oder raus - ist mir egal. Hauptsache du stehst mir nicht vor der Nase rum.
	AI_StopProcessInfos(self);
};
