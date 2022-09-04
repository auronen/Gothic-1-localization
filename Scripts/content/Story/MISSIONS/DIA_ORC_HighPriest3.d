// *********************** PRIESTER 3 ***********************
instance Info_HighPriest3(C_INFO)
{
	npc				= ORC_Priest_3;
	nr				= 1;
	condition		= Info_HighPriest3_Condition;
	information		= Info_HighPriest3_Info;
	important		= TRUE;
};

func int Info_HighPriest3_Condition()
{
	return 1;
};

func void Info_HighPriest3_Info()
{
	B_SelectWeapon(self, other);
	AI_SetWalkMode(self, NPC_WALK);
	AI_GotoNpc(self, other);

	AI_Output(self, other, "Info_HighPriest3_17_01"); //STEEEEERBLICHEEEEER!!!!!
	AI_Output(self, other, "Info_HighPriest3_17_02"); //DEINEEEEEE REISEEEEE EEEENDET HIIEEER BEI MIIIIR!!
	AI_Output(other, self, "Info_HighPriest3_15_03"); //Erst mal schicke ich dich auf eine neue Reise, verfaultes Madenparadies!

	B_LogEntry(CH4_EnterTemple, CH4_EnterTemple_7);

	AI_StopProcessInfos(self);

	Npc_SetAttitude(self, ATT_HOSTILE);
	Npc_SetTempAttitude(self, ATT_HOSTILE);
};
