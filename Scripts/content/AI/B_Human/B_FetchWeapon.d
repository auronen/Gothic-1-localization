func int B_FetchWeapon()
{
	PrintDebugNpc(PD_ZS_FRAME, "B_FetchWeapon");
	Npc_PerceiveAll(self);

	if (Wld_DetectItem(self, ITEM_KAT_FF))
	{
		PrintDebugNpc(PD_ZS_CHECK, "...Fernkampfwaffe gefunden!");
		if (Npc_GetDistToItem(self, item) < PERC_DIST_INTERMEDIAT)
		{
			_ = C_StopLookAt(self);
			AI_SetWalkMode(self, NPC_RUN);
			AI_TakeItem(self, item);
			_ = AI_EquipBestRangedWeapon(self);
			AI_ReadyRangedWeapon(self);
		};

		_ = C_LookAtNpc(self, other);
		return 1;
	};

	if (Wld_DetectItem(self, ITEM_KAT_NF))
	{
		PrintDebugNpc(PD_ZS_CHECK, "...Nahkampfwaffe gefunden!");
		if (Npc_GetDistToItem(self, item) < PERC_DIST_INTERMEDIAT)
		{
			_ = C_StopLookAt(self);
			AI_SetWalkMode(self, NPC_RUN);
			AI_TakeItem(self, item);
			_ = AI_EquipBestMeleeWeapon(self);
			AI_ReadyMeleeWeapon(self);
		};

		_ = C_LookAtNpc(self, other);
		return 1;
	};

	return 0;
};
