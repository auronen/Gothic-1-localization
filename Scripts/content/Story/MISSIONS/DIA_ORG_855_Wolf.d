//****************************************
//					EXIT
//****************************************
instance DIA_ORG_855_Wolf_Exit(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 999;
	condition		= DIA_ORG_855_Wolf_Exit_Condition;
	information		= DIA_ORG_855_Wolf_Exit_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_ORG_855_Wolf_Exit_Condition()
{
	return 1;
};

func void DIA_ORG_855_Wolf_Exit_Info()
{
	AI_StopProcessInfos(self);
};

//****************************************
//					Hallo
//****************************************
instance DIA_Wolf_Hello(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 1;
	condition		= DIA_Wolf_Hello_Condition;
	information		= DIA_Wolf_Hello_Info;
	description		= "Wer bist du?";
};

func int DIA_Wolf_Hello_Condition()
{
	return 1;
};

func void DIA_Wolf_Hello_Info()
{
	AI_Output(other, self, "DIA_Wolf_Hello_15_00"); //Wer bist du?
	AI_Output(self, other, "DIA_Wolf_Hello_09_01"); //Ich bin Wolf, der Rüstungsbauer.

	B_LogEntry(GE_TraderNC, GE_TraderNC_6);
};

//****************************************
//				Bin ORG!
//****************************************
instance DIA_Wolf_GreetORG(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 1;
	condition		= DIA_Wolf_GreetORG_Condition;
	information		= DIA_Wolf_GreetORG_Info;
	important		= TRUE;
};

func int DIA_Wolf_GreetORG_Condition()
{
	if (Npc_GetTrueGuild(hero) == GIL_ORG)
	{
		return TRUE;
	};
};

func void DIA_Wolf_GreetORG_Info()
{
	AI_Output(self, other, "DIA_Wolf_GreetORG_09_00"); //Hey! Du bist jetzt einer von uns, Kleiner.
};

//****************************************
//				TRADE
//****************************************
instance Org_855_Wolf_TRADE(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 800;
	condition		= Org_855_Wolf_TRADE_Condition;
	information		= Org_855_Wolf_TRADE_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= DIALOG_TRADE;
};

func int Org_855_Wolf_TRADE_Condition()
{
	return 1;
};

func void Org_855_Wolf_TRADE_Info()
{
	AI_Output(other, self, "Org_855_Wolf_TRADE_15_00"); //Handelst du noch mit was anderem?
	AI_Output(self, other, "Org_855_Wolf_TRADE_09_01"); //Ich kaufe Felle und Häute von den Jägern. Wenn du an so was rankommst, kauf' ich dir die Sachen ab.
};

//****************************************
//				Wo Jäger
//****************************************
instance Org_855_Wolf_WhereHunter(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 900;
	condition		= Org_855_Wolf_WhereHunter_Condition;
	information		= Org_855_Wolf_WhereHunter_Info;
	permanent		= TRUE;
	description		= "Wie komme ich an Felle und Häute?";
};

func int Org_855_Wolf_WhereHunter_Condition()
{
	return 1;
};

func void Org_855_Wolf_WhereHunter_Info()
{
	AI_Output(other, self, "Org_855_Wolf_WhereHunter_15_00"); //Wie komme ich an Felle und Häute?
	AI_Output(self, other, "Org_855_Wolf_WhereHunter_09_01"); //Auf dem Weg zum Neuen Lager findest du Aidan. Er kann dir beibringen, wie du Tieren das Fell abziehst.
	AI_Output(self, other, "Org_855_Wolf_WhereHunter_09_02"); //Ratford und Drax treiben sich nördlich vom Alten Lager rum, auf dem Weg zum Austauschplatz.
};

//****************************************
//				Sell Armor
//****************************************
instance DIA_Wolf_SellArmor(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 700;
	condition		= DIA_Wolf_SellArmor_Condition;
	information		= DIA_Wolf_SellArmor_Info;
	permanent		= TRUE;
	description		= "Ich suche eine bessere Rüstung.";
};

func int DIA_Wolf_SellArmor_Condition()
{
	if ((Npc_KnowsInfo(hero, DIA_Wolf_Hello))
	&& (!Npc_KnowsInfo(hero, Info_Wolf_ARMORFINISHED)))
	{
		return 1;
	};
};

func void DIA_Wolf_SellArmor_Info()
{
	AI_Output(other, self, "DIA_Wolf_SellArmor_15_00"); //Ich suche eine bessere Rüstung.

	if ((Npc_GetTrueGuild(other) == GIL_ORG) || (Npc_GetTrueGuild(other) == GIL_SLD))
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_09_01"); //Jetzt, wo du einer von uns bist, kann ich dir eine verkaufen.

		Info_ClearChoices(DIA_Wolf_SellArmor);
		Info_AddChoice(DIA_Wolf_SellArmor, DIALOG_BACK, DIA_Wolf_SellArmor_BACK);
		Info_AddChoice(DIA_Wolf_SellArmor, B_BuildBuyArmorString(NAME_WolfBandits, VALUE_ORG_ARMOR_M), DIA_Wolf_SellArmor_M);
		Info_AddChoice(DIA_Wolf_SellArmor, B_BuildBuyArmorString(NAME_WolfHeavyBandits, VALUE_ORG_ARMOR_H), DIA_Wolf_SellArmor_H);
	}
	else
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_WRONGGUILD_09_00"); //Ich kann dir keine verkaufen. Lares reißt mir den Kopf ab, wenn ich unsere Rüstungen an Fremde verkaufe.
	};
};

func void DIA_Wolf_SellArmor_BACK()
{
	Info_ClearChoices(DIA_Wolf_SellArmor);
};

func void DIA_Wolf_SellArmor_M()
{
	AI_Output(other, self, "DIA_Wolf_SellArmor_M_15_01"); //Ich möchte die mittlere Rüstung haben.

	if (Npc_HasItems(hero, ItMinugget) < VALUE_ORG_ARMOR_M)
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_M_09_02"); //Ohne Erz gibt es auch keine Rüstung.
	}
	else
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_M_09_03"); //Eine gute Rüstung.Noch nicht so gut, wie das, was ich trage, aber sie bietet ausreichend Schutz.

		B_GiveInvItems(hero, self, ItMinugget, VALUE_ORG_ARMOR_M);

		CreateInvItem(hero, ORG_ARMOR_M);

		CreateInvItem(self, ItAmArrow);
		B_GiveInvItems(self, hero, ItAmArrow, 1);
		Npc_RemoveInvItem(hero, ItAmArrow);
	};
};

func void DIA_Wolf_SellArmor_H()
{
	AI_Output(other, self, "DIA_Wolf_SellArmor_H_15_01"); //Kannst du mir eine schwere Rüstung verkaufen?

	if (Npc_HasItems(hero, ItMinugget) < VALUE_ORG_ARMOR_H)
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_H_09_02"); //Ohne Erz gibt es auch keine Rüstung.
	}
	else
	{
		AI_Output(self, other, "DIA_Wolf_SellArmor_H_09_03"); //Diese Rüstung wird dich vor allen Gefahren schützen! Ich trage sie auch und habe bisher überlebt. Nicht zuletzt dank der Rüstung.

		B_GiveInvItems(hero, self, ItMinugget, VALUE_ORG_ARMOR_H);

		CreateInvItem(hero, ORG_ARMOR_H);

		CreateInvItem(self, ItAmArrow);
		B_GiveInvItems(self, hero, ItAmArrow, 1);
		Npc_RemoveInvItem(hero, ItAmArrow);
	};
};

/*------------------------------------------------------------------------
BOGENSCHIESSEN DAS ANGEBOT
------------------------------------------------------------------------ */
instance ORG_855_Wolf_TRAINOFFER(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 100;
	condition		= ORG_855_Wolf_TRAINOFFER_Condition;
	information		= ORG_855_Wolf_TRAINOFFER_Info;
	description		= "Ich möchte den richtigen Umgang mit dem Bogen lernen";
};

func int ORG_855_Wolf_TRAINOFFER_Condition()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_BOW) != 2)
	{
		return TRUE;
	};
};

func void ORG_855_Wolf_TRAINOFFER_Info()
{
	AI_Output(other, self, "ORG_855_Wolf_TRAINOFFER_Info_15_01"); //Ich möchte den richtigen Umgang mit dem Bogen lernen.
	AI_Output(self, other, "ORG_855_Wolf_TRAINOFFER_Info_09_02"); //Kann ich dir beibringen. Das ist aber keine Gefälligkeit, denn auch ich muss essen.
	AI_Output(other, self, "ORG_855_Wolf_TRAINOFFER_Info_15_03"); //Wie viel?
	AI_Output(self, other, "ORG_855_Wolf_TRAINOFFER_Info_09_04"); //Alles, was ich dir beibringe, kostet dich 50 Erz. Ich feilsche nicht.

	Log_CreateTopic(GE_TeacherNC, LOG_NOTE);
	B_LogEntry(GE_TeacherNC, GE_TeacherNC_Wolf1);
};

/*------------------------------------------------------------------------
BOGENSCHIESSEN DIE ERSTE LEHRSTUNDE
------------------------------------------------------------------------ */
instance ORG_855_Wolf_TRAIN(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 100;
	condition		= ORG_855_Wolf_TRAIN_Condition;
	information		= ORG_855_Wolf_TRAIN_Info;
	description		= B_BuildLearnString(NAME_LearnBow_1, LPCOST_TALENT_BOW_1, 50);
};

func int ORG_855_Wolf_TRAIN_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_855_Wolf_TRAINOFFER))
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_BOW) == 0))
	{
		return TRUE;
	};
};

func void ORG_855_Wolf_TRAIN_Info()
{
	AI_Output(other, self, "ORG_855_Wolf_TRAIN_Info_15_01"); //Bring mir den Umgang mit dem Bogen bei.
	if (Npc_HasItems(hero, ItMiNugget) >= 50)
	{
		if (B_GiveSkill(hero, NPC_TALENT_BOW, 1, LPCOST_TALENT_BOW_1))
		{
			AI_Output(self, other, "ORG_855_Wolf_TRAIN_Info_09_02"); //Deine Geschicklichkeit ist das Maß für einen Treffer. Je geschickter du wirst, umso genauer werden deine Pfeile ihr Ziel treffen.
			AI_Output(self, other, "ORG_855_Wolf_TRAIN_Info_09_03"); //Dein Talent bestimmt, auf welche Reichweite du dein Ziel noch triffst. Um ein guter Schütze zu werden, solltest du beides zu gleichen Teilen steigern.
			B_GiveInvItems(hero, self, ItMiNugget, 50);
		};
	};
};

/*------------------------------------------------------------------------
BOGENSCHIESSEN DIE ZWEITE LEHRSTUNDE
------------------------------------------------------------------------ */
instance ORG_855_Wolf_TRAINAGAIN(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 100;
	condition		= ORG_855_Wolf_TRAINAGAIN_Condition;
	information		= ORG_855_Wolf_TRAINAGAIN_Info;
	description		= B_BuildLearnString(NAME_LearnBow_2, LPCOST_TALENT_BOW_2, 50);
};

func int ORG_855_Wolf_TRAINAGAIN_Condition()
{
	if ((Npc_KnowsInfo(hero, ORG_855_Wolf_TRAINOFFER))
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_BOW) == 1))
	{
		return TRUE;
	};
};

func void ORG_855_Wolf_TRAINAGAIN_Info()
{
	AI_Output(other, self, "ORG_855_Wolf_TRAINAGAIN_Info_15_01"); //Ich will mein Talent mit dem Bogen verbessern.
	if (Npc_HasItems(hero, ItMiNugget) >= 50)
	{
		if (B_GiveSkill(hero, NPC_TALENT_BOW, 2, LPCOST_TALENT_BOW_2))
		{
			AI_Output(self, other, "ORG_855_Wolf_TRAINAGAIN_Info_09_02"); //Du bist jetzt schon ein guter Jäger. Erfahre nun das letzte Wissen.
			AI_Output(self, other, "ORG_855_Wolf_TRAINAGAIN_Info_09_03"); //Um ein Meisterschütze zu werden, musst du aufhören, einer sein zu wollen.
			AI_Output(self, other, "ORG_855_Wolf_TRAINAGAIN_Info_09_04"); //Erkenne das Gesetz von Auge, Spannkraft, Flugbahn und Ziel. Sei immer auf der Hut, sei immer bereit.
			AI_Output(self, other, "ORG_855_Wolf_TRAINAGAIN_Info_09_05"); //Die Technik beherrschst du schon lange zur Genüge. Geh einfach hin und wende dein Wissen und Können an.

			B_GiveInvItems(hero, self, ItMiNugget, 50);
		};
	};
};

// ---------------------------------------------------------------
//	 					 DEX
// ---------------------------------------------------------------
instance ORG_855_Wolf_Teach(C_INFO)
{
	npc				= ORG_855_Wolf;
	nr				= 100;
	condition		= ORG_855_Wolf_Teach_Condition;
	information		= ORG_855_Wolf_Teach_Info;
	permanent		= TRUE;
	description		= "Kannst du mir was beibringen?";
};

func int ORG_855_Wolf_Teach_Condition()
{
	if (Npc_GetTrueGuild(hero) == GIL_GRD)
	{
		return TRUE;
	};
};

func void ORG_855_Wolf_Teach_Info()
{
	AI_Output(other, self, "ORG_855_Wolf_Teach_15_00"); //Kannst du mir was beibringen?
	AI_Output(self, other, "ORG_855_Wolf_Teach_09_01"); //Deine Geschicklichkeit bestimmt den Jagderfolg.

	if (log_wolftrain == FALSE)
	{
		Log_CreateTopic(GE_TeacherNC, LOG_NOTE);
		B_LogEntry(GE_TeacherNC, GE_TeacherNC_Wolf2);
		log_wolftrain = TRUE;
	};

	Info_ClearChoices(ORG_855_Wolf_Teach);
	Info_AddChoice(ORG_855_Wolf_Teach, DIALOG_BACK, ORG_855_Wolf_Teach_BACK);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_5);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_1);
};

func void ORG_855_Wolf_Teach_BACK()
{
	Info_ClearChoices(ORG_855_Wolf_Teach);
};

func void ORG_855_Wolf_Teach_DEX_1()
{
	B_BuyAttributePoints(other, ATR_DEXTERITY, LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_855_Wolf_Teach);
	Info_AddChoice(ORG_855_Wolf_Teach, DIALOG_BACK, ORG_855_Wolf_Teach_BACK);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_5);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_1);
};

func void ORG_855_Wolf_Teach_DEX_5()
{
	B_BuyAttributePoints(other, ATR_DEXTERITY, 5 * LPCOST_ATTRIBUTE_DEXTERITY);
	Info_ClearChoices(ORG_855_Wolf_Teach);
	Info_AddChoice(ORG_855_Wolf_Teach, DIALOG_BACK, ORG_855_Wolf_Teach_BACK);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_5, 5 * LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_5);
	Info_AddChoice(ORG_855_Wolf_Teach, B_BuildLearnString(NAME_LearnDexterity_1, LPCOST_ATTRIBUTE_DEXTERITY, 0), ORG_855_Wolf_Teach_DEX_1);
};

// #####################################################################
// ##
// ##
// ## KAPITEL 4
// ##
// ##
// #####################################################################

// ---------------------------------------------------------------------
//	Info GOOD
// ---------------------------------------------------------------------
instance Info_Wolf_GOOD(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_GOOD_Condition;
	information		= Info_Wolf_GOOD_Info;
	description		= "Gorn sagt, du wolltest dringend mit mir sprechen?";
};

func int Info_Wolf_GOOD_Condition()
{
	if (Gorn_GotoWolf)
	{
		return TRUE;
	};
};

func void Info_Wolf_GOOD_Info()
{
	AI_Output(hero, self, "Info_Wolf_GOOD_15_01"); //Gorn sagt, du wolltest dringend mit mir sprechen?
	AI_Output(self, hero, "Info_Wolf_GOOD_09_02"); //Gut, dass du vorher noch vorbeikommst!
	if (!Npc_KnowsInfo(hero, Info_Gorn_FMCENTRANCE))
	{
		AI_Output(hero, self, "Info_Wolf_GOOD_15_03"); //Vor was?
		AI_Output(self, hero, "Info_Wolf_GOOD_09_04"); //Vor eurem Besuch in der nicht mehr ganz so Freien Mine.
	};
};

// ---------------------------------------------------------------------
//	Info SPEAK
// ---------------------------------------------------------------------
instance Info_Wolf_SPEAK(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_SPEAK_Condition;
	information		= Info_Wolf_SPEAK_Info;
	description		= "Worum geht es?";
};

func int Info_Wolf_SPEAK_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Wolf_GOOD))
	{
		return TRUE;
	};
};

func void Info_Wolf_SPEAK_Info()
{
	AI_Output(hero, self, "Info_Wolf_SPEAK_15_01"); //Worum geht es?
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_02"); //Ich hatte neulich eine Idee, wie wir völlig neue Rüstungen herstellen können.
	AI_Output(hero, self, "Info_Wolf_SPEAK_15_03"); //Aha, und wie?
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_04"); //Das härteste Material, dass ich kenne, sind die Panzerplatten der Minecrawler.
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_05"); //Nicht etwa die der kleinen, harmlosen Exemplare aus der jetzt verschütteten Mine von Gomez ...
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_06"); //...NEEEEIN. Die nicht. In unserer Mine lebt eine wesentlich gefährlichere Unterart.
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_07"); //Der Panzer dieser Biester ist fast nicht zu durchdringen!
	AI_Output(self, hero, "Info_Wolf_SPEAK_09_08"); //Wenn du mir einige dieser Panzerplatten bringen könntest, würde ich versuchen, daraus eine Rüstung herzustellen.
};

// ---------------------------------------------------------------------
//	Info SKIN
// ---------------------------------------------------------------------
instance Info_Wolf_SKIN(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_SKIN_Condition;
	information		= Info_Wolf_SKIN_Info;
	description		= "Wie bekomme ich diese Platten von den Biestern ab?";
};

func int Info_Wolf_SKIN_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Wolf_SPEAK))
	{
		return TRUE;
	};
};

func void Info_Wolf_SKIN_Info()
{
	AI_Output(hero, self, "Info_Wolf_SKIN_15_01"); //Wie bekomme ich diese Platten von den Biestern ab?
	AI_Output(self, hero, "Info_Wolf_SKIN_09_02"); //Das ist relativ einfach. Die Rückenplatten sind nur an deren Rändern mit dem Körper verwachsen.
	AI_Output(self, hero, "Info_Wolf_SKIN_09_03"); //Nimm einfach ein Rasiermesser und schneide halbschräg an den Rändern entlang.
	AI_Output(hero, self, "Info_Wolf_SKIN_15_04"); //Okay, kapiert! Mal sehen, ob ich solche Panzerplatten finden kann.

	Knows_GetMCPlates = TRUE;
	PrintScreen(PRINT_LEARN_CrawlerPlates, -1, -1, "FONT_OLD_20_WHITE.TGA", 3);

	Log_CreateTopic(CH4_MCPlateArmor, LOG_MISSION);
	Log_SetTopicStatus(CH4_MCPlateArmor, LOG_RUNNING);
	B_LogEntry(CH4_MCPlateArmor, CH4_MCPlateArmor_1);

	Log_CreateTopic(GE_AnimalTrophies, LOG_NOTE);
	B_LogEntry(GE_AnimalTrophies, GE_AnimalTrophies_CrawlerPlates);

	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info PROFIT
// ---------------------------------------------------------------------
instance Info_Wolf_PROFIT(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_PROFIT_Condition;
	information		= Info_Wolf_PROFIT_Info;
	description		= "Und diese Information gibst du mir völlig uneigennützig?";
};

func int Info_Wolf_PROFIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Wolf_SPEAK))
	{
		return TRUE;
	};
};

func void Info_Wolf_PROFIT_Info()
{
	AI_Output(hero, self, "Info_Wolf_PROFIT_15_01"); //Und diese Information gibst du mir völlig uneigennützig?
	AI_Output(self, hero, "Info_Wolf_PROFIT_09_02"); //Nicht ganz ... Wenn es mir gelingt, aus solchen Platten eine gute Rüstung zu zimmern, werde ich sehr schnell ... sehr viel ... Ach, lassen wird das!
};

// ---------------------------------------------------------------------
//	Info MCPLATESFEW
// ---------------------------------------------------------------------
instance Info_Wolf_MCPLATESFEW(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_MCPLATESFEW_Condition;
	information		= Info_Wolf_MCPLATESFEW_Info;
	description		= "Ich habe einige der Minecrawler-Panzerplatten eingesammelt!";
};

func int Info_Wolf_MCPLATESFEW_Condition()
{
	if ((Knows_GetMCPlates)
	&& (Npc_HasItems(hero, ItAt_Crawler_02) > 0)
	&& (Npc_HasItems(hero, ItAt_Crawler_02) < 15))
	{
		return TRUE;
	};
};

func void Info_Wolf_MCPLATESFEW_Info()
{
	AI_Output(hero, self, "Info_Wolf_MCPLATESFEW_15_01"); //Ich habe einige der Minecrawler-Panzerplatten eingesammelt!
	AI_Output(self, hero, "Info_Wolf_MCPLATESFEW_09_02"); //Zu wenig! Das reicht nicht für eine ganze Rüstung!
	AI_Output(self, hero, "Info_Wolf_MCPLATESFEW_09_03"); //Bring mir mehr von diesen Platten!
};

// ---------------------------------------------------------------------
//	Info MCPLATESENOUGH
// ---------------------------------------------------------------------
instance Info_Wolf_MCPLATESENOUGH(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_MCPLATESENOUGH_Condition;
	information		= Info_Wolf_MCPLATESENOUGH_Info;
	description		= "Ich habe jede Menge dieser Minecrawler-Panzerplatten eingesammelt!";
};

func int Info_Wolf_MCPLATESENOUGH_Condition()
{
	if ((Knows_GetMCPlates)
	&& (Npc_HasItems(hero, ItAt_Crawler_02) >= 15))
	{
		return TRUE;
	};
};

func void Info_Wolf_MCPLATESENOUGH_Info()
{
	AI_Output(hero, self, "Info_Wolf_MCPLATESENOUGH_15_01"); //Ich habe jede Menge dieser Minecrawler-Panzerplatten eingesammelt!
	AI_Output(self, hero, "Info_Wolf_MCPLATESENOUGH_09_02"); //Fantastisch!!! Ich werde mich gleich an die Arbeit machen!
	AI_Output(hero, self, "Info_Wolf_MCPLATESENOUGH_15_03"); //Wie lange wirst du dafür brauchen?
	AI_Output(self, hero, "Info_Wolf_MCPLATESENOUGH_09_04"); //Ich habe nicht die geringste Ahnung. Das ist eine komplette Neuentwicklung, Mann!
	AI_Output(self, hero, "Info_Wolf_MCPLATESENOUGH_09_05"); //Schau einfach ab und zu bei mir rein, wenn du in der Nähe bist!

	MCPlatesDelivered = TRUE;

	B_LogEntry(CH4_MCPlateArmor, CH4_MCPlateArmor_2);
	B_GiveXP(XP_DeliveredMCPlates);

	B_GiveInvItems(hero, self, ItAt_Crawler_02, 15);
	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info ARMORINWORK
// ---------------------------------------------------------------------
instance Info_Wolf_ARMORINWORK(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_ARMORINWORK_Condition;
	information		= Info_Wolf_ARMORINWORK_Info;
	permanent		= TRUE;
	description		= "Wie weit bist du mit der Rüstung?";
};

func int Info_Wolf_ARMORINWORK_Condition()
{
	if ((MCPlatesDelivered == TRUE)
	&& (FreemineOrc_LookingUlumulu != LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void Info_Wolf_ARMORINWORK_Info()
{
	AI_Output(hero, self, "Info_Wolf_ARMORINWORK_15_01"); //Wie weit bist du mit der Rüstung?
	AI_Output(self, hero, "Info_Wolf_ARMORINWORK_09_02"); //Dauert noch, Mann! Diese Platten sind verdammt harter Tobak. Ich habe noch keinen Weg gefunden, sie aneinander zu befestigen!
	AI_Output(self, hero, "Info_Wolf_ARMORINWORK_09_03"); //Gib mir noch etwas Zeit, ich bekomme das schon hin!
	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info ARMORFINISHED
// ---------------------------------------------------------------------
instance Info_Wolf_ARMORFINISHED(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Info_Wolf_ARMORFINISHED_Condition;
	information		= Info_Wolf_ARMORFINISHED_Info;
	description		= "Wie weit bist du mit der Rüstung? ";
};

func int Info_Wolf_ARMORFINISHED_Condition()
{
	if ((MCPlatesDelivered == TRUE)
	&& (FreemineOrc_LookingUlumulu == LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void Info_Wolf_ARMORFINISHED_Info()
{
	AI_Output(hero, self, "Info_Wolf_ARMORFINISHED_15_01"); //Wie weit bist du mit der Rüstung?
	AI_Output(self, hero, "Info_Wolf_ARMORFINISHED_09_02"); //Ich habe endlich einen Weg gefunden, diese üblen Panzerplatten aneinander zu befestigen!
	AI_Output(hero, self, "Info_Wolf_ARMORFINISHED_15_03"); //Das heißt, die Rüstung ist fertig?
	AI_Output(self, hero, "Info_Wolf_ARMORFINISHED_09_04"); //Ja, Mann. Hier ist sie. Scheint tatsächlich noch härter zu sein als alles, was in unserem Lager so getragen wird.
	AI_Output(hero, self, "Info_Wolf_ARMORFINISHED_15_05"); //Danke, du hast was gut bei mir!
	AI_Output(self, hero, "Info_Wolf_ARMORFINISHED_09_06"); //Ach, ist schon in Ordnung! Ich komme schon auf meine Kosten!

	B_LogEntry(CH4_MCPlateArmor, CH4_MCPlateArmor_3);
	Log_SetTopicStatus(CH4_MCPlateArmor, LOG_SUCCESS);

	B_GiveXP(XP_GorMCPlateArmor);

	CreateInvItem(self, CRW_ARMOR_H);
	B_GiveInvItems(self, hero, CRW_ARMOR_H, 1);
};

/*------------------------------------------------------------------------
BOGEN KAUFEN
------------------------------------------------------------------------ */
instance Org_855_Wolf_SELLBOW(C_INFO)
{
	npc				= Org_855_Wolf;
	nr				= 0;
	condition		= Org_855_Wolf_SELLBOW_Condition;
	information		= Org_855_Wolf_SELLBOW_Info;
	description		= "Wo kann ich denn hier einen Bogen bekommen?";
};

func int Org_855_Wolf_SELLBOW_Condition()
{
	return TRUE;
};

func void Org_855_Wolf_SELLBOW_Info()
{
	AI_Output(other, self, "Org_855_Wolf_SELLBOW_Info_15_01"); //Wo kann ich denn hier einen Bogen bekommen?
	AI_Output(self, other, "Org_855_Wolf_SELLBOW_Info_09_02"); //Da bist du bei mir genau richtig. Für gutes Erz bekommst du gute Ware.
	Log_CreateTopic(GE_TraderNC, LOG_NOTE);
	B_LogEntry(GE_TraderNC, GE_TraderNC_7);
};
