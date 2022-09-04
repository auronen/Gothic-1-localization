instance EBR_100_Gomez(Npc_Default)
{
	// -------- primary data --------
	name							= "Gomez";
	npctype							= NpcType_Main;
	guild							= GIL_EBR;
	level							= 100;
	flags							= NPC_FLAG_IMMORTAL;

	voice							= 11;
	id								= 100;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 95;
	attribute[ATR_DEXTERITY]		= 80;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 400;
	attribute[ATR_HITPOINTS]		= 400;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Arrogance.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"hum_body_Naked0",		0,		1,			"Hum_Head_Bald",	85,			4,			EBR_ARMOR_H);

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
	CreateInvItem(self, ItKe_Gomez_01);
	EquipItem(self, Innos_Zorn);
	EquipItem(self, Amulett_der_Macht);
	EquipItem(self, Schutzring_Total2);

	// -------- daily routine --------
	daily_routine = Rtn_PreStart_100;
};

func void Rtn_PreStart_100()
{
	TA_Ebr_HangAround(00, 00, 08, 00, "OCC_BARONS_GREATHALL_THRONE");
	TA_Ebr_HangAround(08, 00, 00, 00, "OCC_BARONS_GREATHALL_THRONE");
};

func void Rtn_start_100()
{
	TA_SitAround(00, 00, 08, 00, "OCC_BARONS_UPSTAIRS_LEFT_BACK_ROOM_LEFT_FRONT");
	TA_Ebr_HangAround(08, 00, 00, 00, "OCC_BARONS_GREATHALL_THRONE");
};

func void Rtn_OT_100()
{
	TA_Ebr_HangAround(07, 00, 20, 00, "OCC_BARONS_GREATHALL_THRONE");
	TA_Ebr_HangAround(20, 00, 07, 00, "OCC_BARONS_GREATHALL_THRONE");
};
