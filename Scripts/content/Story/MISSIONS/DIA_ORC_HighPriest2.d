// *********************** PRIESTER 2 ***********************
instance Info_HighPriest2(C_INFO)
{
	npc				= ORC_Priest_2;
	nr				= 1;
	condition		= Info_HighPriest2_Condition;
	information		= Info_HighPriest2_Info;
	important		= TRUE;
};

func int Info_HighPriest2_Condition()
{
	return TRUE;
};

func void Info_HighPriest2_Info()
{
	B_SelectWeapon(self, other);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, other);

	AI_Output(self, other, "Info_HighPriest2_17_01"); //EIN UNGLÄUBIGEEEEER IM HORT DES MEEEISTERS!!!!
	AI_Output(self, other, "Info_HighPriest2_17_02"); //VERDAMMMMMMMNIS ÜBER DIIIICH!
	AI_Output(other, self, "Info_HighPriest2_15_03"); //Verdammt sein wirst DU, stinkender Moderteppich!

	B_LogEntry(CH4_EnterTemple, CH4_EnterTemple_6);

	AI_StopProcessInfos(self);

	Npc_SetAttitude(self, ATT_HOSTILE);
	Npc_SetTempAttitude(self, ATT_HOSTILE);
};
