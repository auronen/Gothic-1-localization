// *********************** PRIESTER 1 ***********************
instance Info_HighPriest1(C_INFO)
{
	npc				= ORC_Priest_1;
	nr				= 1;
	condition		= Info_HighPriest1_Condition;
	information		= Info_HighPriest1_Info;
	important		= TRUE;
};

func int Info_HighPriest1_Condition()
{
	return TRUE;
};

func void Info_HighPriest1_Info()
{
	B_SelectWeapon(self, other);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, other);

	AI_Output(self, other, "Info_HighPriest1_17_01"); //STEEERBLICHEEERRRR!!!!
	AI_Output(self, other, "Info_HighPriest1_17_02"); //DU WAAAGST ES, MEINE RUUHHE ZU STÖÖÖREN!
	AI_Output(self, other, "Info_HighPriest1_17_03"); //BEREEEITE DIIICH AUF DAS EEEENDE VOOOR!
	AI_Output(other, self, "Info_HighPriest1_15_04"); //Fragt sich, nur wessen Ende, du wurmzerfressener Fleischklops!

	B_LogEntry(CH4_EnterTemple, CH4_EnterTemple_5);

	AI_StopProcessInfos(self);

	Npc_SetAttitude(self, ATT_HOSTILE);
	Npc_SetTempAttitude(self, ATT_HOSTILE);
};
