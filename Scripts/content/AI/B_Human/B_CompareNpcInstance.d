func int B_CompareNpcInstance(var C_Npc first, var C_Npc second)
{
	PrintDebugNpc(PD_ZS_FRAME, "B_CompareNpcInstance");

	var int first_id;
	var int second_id;
	first_id = Hlp_GetInstanceID(first);
	second_id = Hlp_GetInstanceID(second);
	if (first_id == second_id)
	{
		PrintDebugNpc(PD_ZS_CHECK, "B_CompareNpcInstance True");
		return 1;
	}
	else
	{
		PrintDebugNpc(PD_ZS_CHECK, "B_CompareNpcInstance False");
		return 0;
	};
};
