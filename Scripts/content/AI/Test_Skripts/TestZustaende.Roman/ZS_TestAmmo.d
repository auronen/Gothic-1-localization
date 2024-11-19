func void ZS_TestAmmo()
{
	Print("Arming");
	_ = AI_EquipBestRangedWeapon(self);
	AI_ReadyRangedWeapon(self);
};

func void ZS_TestAmmo_Loop()
{
	Print("Targeting");
	var C_Npc enemy;
	enemy = Hlp_GetNpc(SLD3_Testmodell);
	Npc_SetTarget(self, enemy);

	Print("Attacking");
	AI_Attack(self);
};

func void ZS_TestAmmo_End()
{
};
