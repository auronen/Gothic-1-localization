func void B_Story_UrizielLoaded()
{
	// -------- Missionsgegenstände --------

	// -------- Tagebucheinträge --------
	B_LogEntry(CH5_Uriziel, CH5_Uriziel_4);

	if (Npc_GetTrueGuild(hero) != GIL_KDW)
	{
		Log_SetTopicStatus(CH5_Uriziel, LOG_SUCCESS);
	}
	else
	{
		B_LogEntry(CH5_Uriziel, CH5_Uriziel_5);
	};

	// -------- Erfahrung --------
	B_GiveXP(XP_LoadedUriziel);

	// -------- Wassermagier sauer machen --------
	B_SetPermAttitude(Kdw_600_Saturas, ATT_HOSTILE);
	B_SetPermAttitude(Kdw_601_Myxir, ATT_HOSTILE);
	B_SetPermAttitude(Kdw_602_Merdarion, ATT_HOSTILE);
	B_SetPermAttitude(Kdw_603_Nefarius, ATT_HOSTILE);
	B_SetPermAttitude(Kdw_604_Cronos, ATT_HOSTILE);
	B_SetPermAttitude(Kdw_605_Riordian, ATT_HOSTILE);

	B_ClearImmortal(Kdw_600_Saturas);
	B_ClearImmortal(Kdw_601_Myxir);
	B_ClearImmortal(Kdw_602_Merdarion);
	B_ClearImmortal(Kdw_603_Nefarius);
	B_ClearImmortal(Kdw_604_Cronos);
	B_ClearImmortal(Kdw_605_Riordian);

	B_SetNpcType(Kdw_600_Saturas, NpcType_Main);
	B_SetNpcType(Kdw_601_Myxir, NpcType_Main);
	B_SetNpcType(Kdw_602_Merdarion, NpcType_Main);
	B_SetNpcType(Kdw_603_Nefarius, NpcType_Main);
	B_SetNpcType(Kdw_604_Cronos, NpcType_Main);
	B_SetNpcType(Kdw_605_Riordian, NpcType_Main);
};
