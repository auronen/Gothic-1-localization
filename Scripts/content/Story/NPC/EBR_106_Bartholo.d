instance EBR_106_Bartholo(Npc_Default)
{
	// -------- primary data --------
	name							= "Bartholo";
	npctype							= NpcType_Main;
	guild							= GIL_EBR;
	level							= 70;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 12;
	id								= 106;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 65;
	attribute[ATR_DEXTERITY]		= 60;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 388;
	attribute[ATR_HITPOINTS]		= 388;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_FatBald",	11,			3,			EBR_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, 0);

	// -------- ai --------
	aivar[AIV_IMPORTANT]			= TRUE;

	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;

	// -------- talents --------
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
	Npc_SetTalentSkill(self, NPC_TALENT_BOW, 2);

	// -------- inventory --------
	CreateInvItem(self, ItFo_Potion_Health_03);
	CreateInvItem(self, ItKe_Storage_01);
	EquipItem(self, Prankenhieb);

	// -------- daily routine --------
	daily_routine = Rtn_start_106;
};

func void Rtn_start_106()
{
	TA_Sleep(01, 00, 08, 00, "OCC_BARONS_UPSTAIRS_RIGHT_BACK_ROOM_RIGHT");
	TA_Stand(08, 00, 15, 55, "OCC_BARONS_RIGHT_ROOM_BACK");
	TA_PlayTune(15, 55, 22, 00, "OCC_BARONS_GREATHALL_RIGHT_BACK");
	TA_StandAround(22, 00, 01, 00, "OCC_BARONS_GREATHALL_LEFT_BACK");
};

func void Rtn_OT_106()
{
	TA_Guard(10, 00, 22, 00, "OCC_CHAPEL_STAIRCASE_TOP");
	TA_Guard(22, 00, 10, 00, "OCC_CHAPEL_STAIRCASE_TOP");
};
