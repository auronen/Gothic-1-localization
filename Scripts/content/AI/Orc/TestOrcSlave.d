prototype ORCSLAVE_TESTTYPE(C_NPC)
{
	// -------- primary data --------
	name							= "OrcSlave Prototype";
	guild							= GIL_ORCSLAVE;
	level							= 1;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 8;
	attribute[ATR_DEXTERITY]		= 8;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 90;
	attribute[ATR_HITPOINTS]		= 90;

	// -------- protection --------
	protection[PROT_EDGE]			= 5;
	protection[PROT_BLUNT]			= 5;
	protection[PROT_POINT]			= 5;
	protection[PROT_FIRE]			= 5;
	protection[PROT_MAGIC]			= 5;

	// -------- visuals --------
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor

	// -------- ai --------
	// 	senses
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = 2000;

	// -------- talents --------
	// Npc_LearnTalent (self,TAL_SNEAK);
	// Npc_LearnTalent (self,TAL_STEAL);
	// Npc_LearnTalent (self,TAL_PICKLOCK);
	// Npc_LearnTalent (self,TAL_ACROBAT);
	// Npc_LearnTalent (self,TAL_MUSHROOMS);
	// Npc_LearnTalent (self,TAL_HEAL);
	// Npc_LearnTalent (self,TAL_MANA);
	// Npc_LearnTalent (self,TAL_IRONWILL);

	// -------- inventory --------

	// -------- daily routine --------
};

// ##########################################
instance Slave0(ORCSLAVE_TESTTYPE)
{
	// -------- primary data --------
	name							= "Slave0";
	guild							= GIL_ORCSLAVE;
	level							= 10;

	voice							= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyWarrior",		DEFAULT,DEFAULT,	"Orc_Head",			DEFAULT,	DEFAULT,	-1);

	B_Scale(self);

	// -------- ai --------
	fight_tactic = FAI_ORC;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_OrcSlaveA;
};

// ##########################################
instance Slave1(ORCSLAVE_TESTTYPE)
{
	// -------- primary data --------
	name							= "Slave1";
	guild							= GIL_ORCSLAVE;
	level							= 10;

	voice							= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyWarrior",		DEFAULT,DEFAULT,	"Orc_Head",			DEFAULT,	DEFAULT,	-1);

	B_Scale(self);

	// -------- ai --------
	fight_tactic = FAI_ORC;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_OrcSlaveB;
};

// ##########################################
instance Slave2(ORCSLAVE_TESTTYPE)
{
	// -------- primary data --------
	name							= "Slave1";
	guild							= GIL_ORCSLAVE;
	level							= 10;

	voice							= 0;

	// -------- abilities --------
	attribute[ATR_STRENGTH]			= 10;
	attribute[ATR_DEXTERITY]		= 10;
	attribute[ATR_MANA_MAX]			= 0;
	attribute[ATR_MANA]				= 0;
	attribute[ATR_HITPOINTS_MAX]	= 40;
	attribute[ATR_HITPOINTS]		= 40;

	// -------- protection --------

	// -------- visuals --------
	Mdl_SetVisual(self, "orc.mds");
	//						body mesh,				bdytex,	skin,		head mesh,			headtex,	teethtex,	armor
	Mdl_SetVisualBody(self,	"Orc_BodyWarrior",		DEFAULT,DEFAULT,	"Orc_Head",			DEFAULT,	DEFAULT,	-1);

	B_Scale(self);

	// -------- ai --------
	fight_tactic = FAI_ORC;

	// -------- talents --------

	// -------- inventory --------

	// -------- daily routine --------
	daily_routine = Rtn_OrcSlaveA;
};

func void Rtn_OrcSlaveA()
{
	OrcSlavePerc();

	TA_Orc_SitOnFloor(22, 30, 05, 00, "ORC_WAY_SIT_01");
	TA_Orc_Stonemill(05, 00, 12, 00, "ORC_WAY_09");
	TA_Orc_Eat(12, 00, 12, 30, "ORC_WAY_09");
	TA_Orc_Stonemill(12, 30, 20, 00, "ORC_WAY_09");
	TA_Orc_Eat(20, 00, 20, 30, "ORC_WAY_09");
	TA_Orc_Stonemill(20, 30, 22, 30, "ORC_WAY_09");
};

func void Rtn_OrcSlaveB()
{
	OrcSlavePerc();

	TA_Orc_SitOnFloor(22, 30, 05, 00, "ORC_WAY_LISTEN_01");
	TA_Orc_Stomper(05, 00, 12, 00, "ORC_WAY_08");
	TA_Orc_Eat(12, 00, 12, 30, "ORC_WAY_08");
	TA_Orc_Stomper(12, 30, 20, 00, "ORC_WAY_08");
	TA_Orc_Eat(20, 00, 20, 30, "ORC_WAY_08");
	TA_Orc_Stomper(20, 30, 22, 30, "ORC_WAY_08");
};
