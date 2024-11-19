/*************************************************************************
 * G_CanSteal
 *************************************************************************
 * PRCONDITIONS: self : Burgler
 * other : Victim
 *************************************************************************/
func int G_CanSteal()
{
	if ((other.npcType != NpcType_Friend) && (other.npcType != NpcType_Main))
	{
		return TRUE;
	}
	else
	{
		_ = PrintScreen(_STR_MESSAGE_CANNOTSTEAL, -1, _YPOS_MESSAGE_CANNOTSTEAL, _STR_FONT_ONSCREEN, _TIME_MESSAGE_CANNOTSTEAL);

		return FALSE;
	};
};
