instance EBR_105_Raven(Npc_Default)
{
	// -------- primary data --------
	name							= "Raven";
	npctype							= NpcType_Main;
	guild							= GIL_EBR;
	level							= 80;

	voice							= 10;
	id								= 105;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 70;
	attribute[ATR_DEXTERITY]		= 75;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 388;
	attribute[ATR_HITPOINTS]		= 388;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Thief",	6,			2,			EBR_ARMOR_H2);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 2);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Health_03);
	EquipItem(self, Rabenrecht);

	// -------- daily routine --------
	daily_routine = rtn_PreStart_105;
};

func void Rtn_PreStart_105()
{
	TA_Stand(09, 00, 22, 00, "OCC_BARONS_HALLWAY_FRONT");
	TA_Stand(22, 00, 09, 00, "OCC_BARONS_HALLWAY_FRONT");
};

func void Rtn_Guide_105()
{
	TA_GuidePC(08, 00, 20, 00, "OCC_BARONS_GREATHALL_CENTER_MOVEMENT");
	TA_GuidePC(20, 00, 08, 00, "OCC_BARONS_GREATHALL_CENTER_MOVEMENT");
};

func void Rtn_start_105()
{
	TA_Sleep(02, 00, 09, 00, "OCC_BARONS_UPSTAIRS_LEFT_FRONT_ROOM_FRONT");
	TA_Stand(09, 00, 22, 00, "OCC_BARONS_GREATHALL_RIGHT_FRONT");
	TA_StandAround(22, 00, 02, 00, "OCC_BARONS_GREATHALL_LEFT_BACK");
};

func void Rtn_OT_105()
{
	TA_Guard(07, 00, 20, 00, "OCC_CENTER_1");
	TA_Guard(20, 00, 07, 00, "OCC_CENTER_1");
};
