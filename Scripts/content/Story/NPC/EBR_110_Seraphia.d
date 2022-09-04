instance EBR_110_Seraphia(Npc_Default)
{
	// -------- primary data --------
	name							= "Seraphia";
	npctype							= NpcType_Main;
	guild							= GIL_BAB;
	level							= 1;
	flags							= NPC_FLAG_IMMORTAL; // wichtig, weil man sie nicht finishen kann!

	voice							= 16;
	id								= 110;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 20;
	attribute[ATR_DEXTERITY]		= 20;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "Babe.MDS");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Bab_body_Naked0",		2,		1,			"Bab_Head_Hair1",	2,			DEFAULT,	-1);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------

	// -------- inventory --------
	CreateInvItem(self, ItMiBrush);
	CreateInvItem(self, ItMiWedel);

	// -------- daily routine --------
	daily_routine = Rtn_start_110;
};

func void Rtn_start_110()
{
	TA_Babe_Sweep(00, 01, 08, 30, "OCC_BARONS_GREATHALL_CENTER_LEFT");
	TA_Babe_Fan(08, 30, 00, 01, "OCC_BARONS_GREATHALL_BERATER");
};
