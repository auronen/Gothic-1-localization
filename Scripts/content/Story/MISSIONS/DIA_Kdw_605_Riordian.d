// ************************ EXIT **************************
instance Info_Riordian_EXIT(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 999;
	condition		= Info_Riordian_EXIT_Condition;
	information		= Info_Riordian_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Riordian_EXIT_Condition()
{
	return TRUE;
};

func void Info_Riordian_EXIT_Info()
{
	AI_StopProcessInfos(self);

	if (!Npc_HasItems(self, ItArRuneThunderball))
	{
		CreateInvItem(self, ItArRuneThunderball);
	};
};

// #####################################################################
// ##
// ##
// ## KAPITEL 3
// ##
// ##
// #####################################################################

//***************************************************************************
//	Info NEWS
//***************************************************************************// Bist du der Wassermagier, der die Tränke braut?
instance Info_Riordian_NEWS(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 0;
	condition		= Info_Riordian_NEWS_Condition;
	information		= Info_Riordian_NEWS_Info;
	description		= "Saturas schickt mich.";
};

func int Info_Riordian_NEWS_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Saturas_OFFER))
	{
		return TRUE;
	};
};

func void Info_Riordian_NEWS_Info()
{
	AI_Output(other, self, "Info_Riordian_NEWS_15_01"); //Saturas schickt mich.
	AI_Output(self, other, "Info_Riordian_NEWS_14_02"); //Ahhh, komm näher. Ich bin bereits informiert.
	AI_Output(self, other, "Info_Riordian_NEWS_14_03"); //Hier nimm diese Tränke, da ist von jedem was dabei.
	AI_Output(self, other, "Info_Riordian_NEWS_14_04"); //Nun geh und bring uns die Fokussteine. Diese Artefakte sind unsere einzige Hoffnung.

	CreateInvItems(self, ItFo_Potion_Health_01, 20);
	B_GiveInvItems(self, hero, ItFo_Potion_Health_01, 20); // Notwendig für die Ausschrift "20 Items übergeben", wird sofort ausgeglichen
	_ = Npc_RemoveInvItems(hero, ItFo_Potion_Health_01, 15);

	CreateInvItems(hero, ItFo_Potion_Mana_01, 5);
	CreateInvItems(hero, ItFo_Potion_Health_02, 2);
	CreateInvItems(hero, ItFo_Potion_Mana_02, 2);
	CreateInvItems(hero, ItFo_Potion_Health_03, 1);
	CreateInvItems(hero, ItFo_Potion_Mana_03, 1);
	CreateInvItems(hero, ItFo_Potion_Haste_02, 2);
	CreateInvItems(hero, ItFo_Potion_Strength_01, 1);
	CreateInvItems(hero, ItFo_Potion_Dex_01, 1);
};

//***************************************************************************
//	Info REWARD
//***************************************************************************
instance Info_Riordian_REWARD(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 0;
	condition		= Info_Riordian_REWARD_Condition;
	information		= Info_Riordian_REWARD_Info;
	description		= "Saturas sagt, du hättest eine Belohnung für mich?";
};

func int Info_Riordian_REWARD_Condition()
{
	if (Saturas_BringFoci == 5)
	{
		return TRUE;
	};
};

func void Info_Riordian_REWARD_Info()
{
	AI_Output(other, self, "Info_Riordian_REWARD_15_01"); //Saturas sagt, du hättest eine Belohnung für mich?
	AI_Output(self, other, "Info_Riordian_REWARD_14_02"); //Ahhhh, komm näher, komm näher.
	AI_Output(self, other, "Info_Riordian_REWARD_14_03"); //Unser spiritueller Führer hat mir von deinen Heldentaten berichtet.
	AI_Output(self, other, "Info_Riordian_REWARD_14_04"); //Wir alle hier im Lager, ja in der ganzen Kolonie sind dir zu großem Dank verpflichtet.
	AI_Output(self, other, "Info_Riordian_REWARD_14_05"); //Nimm dies als einen bescheidenen Ausgleich für all deine Mühen.

	CreateInvItems(self, ItFo_Potion_Health_02, 20);
	B_GiveInvItems(self, hero, ItFo_Potion_Health_02, 20); // Notwenidg für Ausschrift "20 Items übergeben", wird sofort ausgeglichen
	_ = Npc_RemoveInvItems(hero, ItFo_Potion_Health_02, 15);

	CreateInvItems(hero, ItFo_Potion_Mana_02, 5);
	CreateInvItems(hero, ItFo_Potion_Health_03, 2);
	CreateInvItems(hero, ItFo_Potion_Mana_03, 2);
	CreateInvItems(hero, ItFo_Potion_Haste_02, 3);
	CreateInvItems(hero, ItFo_Potion_Master_01, 1);
	CreateInvItems(hero, ItFo_Potion_Health_Perma_02, 1);
	CreateInvItems(hero, ItFo_Potion_Mana_Perma_02, 1);

	B_LogEntry(CH3_BringFoci, CH3_BringFoci_4);
	if (Npc_KnowsInfo(hero, Info_Cronos_REWARD))
	{
		Log_SetTopicStatus(CH3_BringFoci, LOG_SUCCESS);
	};
};

// #####################################################################
// ##
// ##
// ## KAPITEL 4
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	Info MESSAGE
// ---------------------------------------------------------------------
instance Info_Riordian_MESSAGE(C_INFO)
{
	npc				= KDW_605_Riordian;
	condition		= Info_Riordian_MESSAGE_Condition;
	information		= Info_Riordian_MESSAGE_Info;
	important		= TRUE;
};

func int Info_Riordian_MESSAGE_Condition()
{
	if (UrShak_SpokeOfUluMulu
	&& !EnteredFreeMine)
	{
		return TRUE;
	};
};

func void Info_Riordian_MESSAGE_Info()
{
	AI_Output(self, hero, "Info_Riordian_MESSAGE_14_01"); //Gut, dass du kommst! Ich habe schon auf dich gewartet!
};

// ---------------------------------------------------------------------
//	Info MESSAGEWHY
// ---------------------------------------------------------------------
instance Info_Riordian_MESSAGEWHY(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 0;
	condition		= Info_Riordian_MESSAGEWHY_Condition;
	information		= Info_Riordian_MESSAGEWHY_Info;
	description		= "Du hast auf mich gewartet? Warum?";
};

func int Info_Riordian_MESSAGEWHY_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Riordian_MESSAGE))
	{
		return TRUE;
	};
};

func void Info_Riordian_MESSAGEWHY_Info()
{
	AI_Output(hero, self, "Info_Riordian_MESSAGEWHY_15_01"); //Du hast auf mich gewartet? Warum?
	AI_Output(self, hero, "Info_Riordian_MESSAGEWHY_14_02"); //Gorn bat mich, dich bei deinem Auftauchen hier sofort zu ihm zu schicken!
	AI_Output(hero, self, "Info_Riordian_MESSAGEWHY_15_03"); //Was ist los?
	AI_Output(self, hero, "Info_Riordian_MESSAGEWHY_14_04"); //Er hat einen Plan zur Befreiung der besetzten Mine.
	AI_Output(hero, self, "Info_Riordian_MESSAGEWHY_15_05"); //Bewacht er noch den Zugang zur Mine?
	AI_Output(self, hero, "Info_Riordian_MESSAGEWHY_14_06"); //Ja! Bitte suche ihn so schnell wie möglich auf!
};

/*------------------------------------------------------------------------
//							WELCOME //
------------------------------------------------------------------------ */
instance KDW_605_Riordian_WELCOME(C_INFO)
{
	npc				= KDW_605_Riordian;
	condition		= KDW_605_Riordian_WELCOME_Condition;
	information		= KDW_605_Riordian_WELCOME_Info;
	important		= TRUE;
};

func int KDW_605_Riordian_WELCOME_Condition()
{
	if (Npc_GetTrueGuild(hero) == GIL_KDW)
	{
		return TRUE;
	};
};

func void KDW_605_Riordian_WELCOME_Info()
{
	AI_Output(self, other, "KDW_605_Riordian_WELCOME_Info_14_01"); //Gut, dass du uns beigetreten bist.
};

// -----------------------------------------------------------
instance KDW_605_Riordian_HEAL(C_INFO)
{
	npc				= KDW_605_Riordian;
	condition		= KDW_605_Riordian_HEAL_Condition;
	information		= KDW_605_Riordian_HEAL_Info;
	important		= TRUE;
};

func int KDW_605_Riordian_HEAL_Condition()
{
	if ((Npc_GetTrueGuild(hero) == GIL_KDW)
	&& (Npc_KnowsInfo(hero, KDW_605_Riordian_WELCOME)))
	{
		return TRUE;
	};
};

func void KDW_605_Riordian_HEAL_Info()
{
	AI_Output(self, other, "KDW_605_Riordian_HEAL_Info_14_01"); //Wenn du verletzt bist, werde ich dich heilen.
};

// ***************************** INFOS ****************************************//
instance KDW_605_Riordian_HEALINFO(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 100;
	condition		= KDW_605_Riordian_HEALINFO_Condition;
	information		= KDW_605_Riordian_HEALINFO_Info;
	permanent		= TRUE;
	description		= "Ich bin verletzt. Kannst du mich heilen?";
};

func int KDW_605_Riordian_HEALINFO_Condition()
{
	if ((hero.attribute[ATR_HITPOINTS] < (hero.attribute[ATR_HITPOINTS_MAX]))
	&& (Npc_GetTrueGuild(hero) == GIL_KDW))
	{
		return TRUE;
	};
};

func void KDW_605_Riordian_HEALINFO_Info()
{
	AI_Output(other, self, "KDW_605_Riordian_HEALINFO_Info_15_01"); //Ich bin verletzt. Kannst du mich heilen?
	AI_Output(self, other, "KDW_605_Riordian_HEALINFO_Info_14_02"); //Durch mein Wort rufe ich die Kraft der Heilung und lasse diesen Körper und den Geist gesunden!

	hero.attribute [ATR_HITPOINTS] = hero.attribute [ATR_HITPOINTS_MAX];
	Snd_Play("MFX_Heal_Cast");
};

/*------------------------------------------------------------------------
GREET
------------------------------------------------------------------------ */
instance KDW_605_Riordian_GREET(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 0;
	condition		= KDW_605_Riordian_GREET_Condition;
	information		= KDW_605_Riordian_GREET_Info;
	description		= "Ich grüße dich Magier";
};

func int KDW_605_Riordian_GREET_Condition()
{
	return TRUE;
};

func void KDW_605_Riordian_GREET_Info()
{
	AI_Output(other, self, "KDW_605_Riordian_GREET_Info_15_01"); //Ich grüße dich Magier!
	AI_Output(self, other, "KDW_605_Riordian_GREET_Info_14_02"); //Ich bin Riordian, der Alchemist. Du willst bestimmt einen Trank?
	Log_CreateTopic(GE_TraderNC, LOG_NOTE);
	B_LogEntry(GE_TraderNC, GE_TraderNC_1);
};

/*------------------------------------------------------------------------
TRADE
------------------------------------------------------------------------ */
instance KDW_605_Riordian_TRADE(C_INFO)
{
	npc				= KDW_605_Riordian;
	nr				= 0;
	condition		= KDW_605_Riordian_TRADE_Condition;
	information		= KDW_605_Riordian_TRADE_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= "Zeig mir deine Ware";
};

func int KDW_605_Riordian_TRADE_Condition()
{
	if (Npc_KnowsInfo(hero, KDW_605_Riordian_GREET))
	{
		return TRUE;
	};
};

func void KDW_605_Riordian_TRADE_Info()
{
	AI_Output(other, self, "KDW_605_Riordian_TRADE_Info_15_01"); //Zeig mir deine Ware.
};
