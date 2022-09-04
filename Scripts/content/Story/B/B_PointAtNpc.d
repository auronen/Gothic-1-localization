func void B_PointAtNpc(var C_Npc slf, var C_Npc oth, var C_Npc targ)
{
	AI_WaitTillEnd(slf, oth); // MH: funzt nicht
	AI_PointAtNpc(slf, targ);
	B_Say(slf, oth, "$THEREHEIS");
	AI_StopPointAt(slf);
};
