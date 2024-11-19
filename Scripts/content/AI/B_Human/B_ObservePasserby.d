func void B_ObservePasserby()
{
	if (!C_LookAtNpc(self, other))
	{
		_ = C_StopLookAt(self);
	};
};
