instance KDF_403_Drago_RUNE(C_INFO)
{
	npc				= KDF_403_Drago;
	condition		= KDF_403_Drago_RUNE_Condition;
	information		= KDF_403_Drago_RUNE_Info;
	important		= TRUE;
};

func int KDF_403_Drago_RUNE_Condition()
{
	if (Npc_KnowsInfo(hero, KDF_402_Corristo_ROBE))
	{
		return TRUE;
	};
};

func void KDF_403_Drago_RUNE_Info()
{
	AI_Output(self, other, "KDF_403_Drago_RUNE_Info_13_01"); //Nimm diese Rune als Geschenk von Innos. Sie schütze dich auf deinem Weg.
	CreateInvItem(self, ItArRuneFirebolt);
	B_GiveInvItems(self, other, ItArRuneFirebolt, 1);
	AI_StopProcessInfos(self);
};

// ------------------------------------------------------------------
//						EXIT
// ------------------------------------------------------------------
instance KDF_403_Drago_Exit(C_INFO)
{
	npc				= KDF_403_Drago;
	nr				= 999;
	condition		= KDF_403_Drago_Exit_Condition;
	information		= KDF_403_Drago_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int KDF_403_Drago_Exit_Condition()
{
	return TRUE;
};

func void KDF_403_Drago_Exit_Info()
{
	AI_StopProcessInfos(self);
};
