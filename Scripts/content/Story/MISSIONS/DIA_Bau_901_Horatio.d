// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_Horatio_EXIT(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 999;
	condition		= DIA_Horatio_EXIT_Condition;
	information		= DIA_Horatio_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Horatio_EXIT_Condition()
{
	return 1;
};

func void DIA_Horatio_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 			  				   Wasser
// ************************************************************
instance Info_Horatio_Wasser(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 800;
	condition		= Info_Horatio_Wasser_Condition;
	information		= Info_Horatio_Wasser_Info;
	permanent		= TRUE;
	description		= "Lefty schickt mich. Ich hab' Wasser für dich.";
};

func int Info_Horatio_Wasser_Condition()
{
	if (((Lefty_Mission == LOG_RUNNING) || ((Lefty_Mission == LOG_SUCCESS) && Npc_HasItems(other, ItFo_Potion_Water_01)))
	&& (self.aivar[AIV_DEALDAY] <= Wld_GetDay()))
	{
		return 1;
	};
};

func void Info_Horatio_Wasser_Info()
{
	AI_Output(other, self, "Info_Horatio_Wasser_15_00"); //Lefty schickt mich. Ich hab' Wasser für dich.
	if (Npc_HasItems(other, ItFo_Potion_Water_01) >= 1)
	{
		AI_Output(self, other, "Info_Horatio_Wasser_09_01"); //Danke, Mann! Ich war schon kurz davor, den Schlamm zu saufen.
		B_GiveInvItems(other, self, ItFo_Potion_Water_01, 1);
		if (C_BodystateContains(self, BS_SIT))
		{
			AI_StandUp(self);
			AI_TurnToNpc(self, hero);
		};

		AI_UseItem(self, ItFo_Potion_Water_01);
		An_Bauern_verteilt = An_Bauern_verteilt + 1;
		if (An_Bauern_verteilt >= DurstigeBauern)
		{
			Lefty_Mission = LOG_SUCCESS;
		};

		self.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
	}
	else
	{
		AI_Output(self, other, "Info_Horatio_Wasser_NOWATER_09_00"); //Du hast nichts mehr. Ich hol mir von den anderen was.
	};
};

// ************************************************************
// 						Hallo
// ************************************************************
var int horatio_trouble;
// ************************************************************
instance DIA_Horatio_Hello(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 1;
	condition		= DIA_Horatio_Hello_Condition;
	information		= DIA_Horatio_Hello_Info;
	important		= TRUE;
};

func int DIA_Horatio_Hello_Condition()
{
	return 1;
};

func void DIA_Horatio_Hello_Info()
{
	AI_GotoNpc(self, hero);

	AI_Output(self, other, "DIA_Horatio_Hello_09_00"); //Was machst du hier? Willst du Ärger haben?

	Info_ClearChoices(DIA_Horatio_Hello);
	Info_AddChoice(DIA_Horatio_Hello, "Ärger? Von wem? Von einem Bauern?", DIA_Horatio_Hello_PissOff);
	Info_AddChoice(DIA_Horatio_Hello, "Entspann dich! Ich bin neu hier.", DIA_Horatio_Hello_BeCool);
};

func void DIA_Horatio_Hello_BeCool()
{
	AI_Output(other, self, "DIA_Horatio_Hello_BeCool_15_00"); //Entspann dich! Ich bin neu hier.
	AI_Output(self, other, "DIA_Horatio_Hello_BeCool_09_01"); //Hm ... siehst mir ganz in Ordnung aus - hier weiß man nie. Da kommt jeden Tag ein neuer Mistkerl, der's wissen will.
	Info_ClearChoices(DIA_Horatio_Hello);
};

func void DIA_Horatio_Hello_PissOff()
{
	AI_Output(other, self, "DIA_Horatio_Hello_PissOff_15_00"); //Ärger? Von wem? Von einem Bauern?
	AI_Output(self, other, "DIA_Horatio_Hello_PissOff_09_01"); //Nur weil ich auf den Feldern arbeite, heißt das nicht, dass ich mich nicht gegen Typen wie dich wehren kann.
	AI_Output(self, other, "DIA_Horatio_Hello_PissOff_09_02"); //Also komm nur her, wenn du Ärger willst!
	horatio_trouble = TRUE;

	Info_ClearChoices(DIA_Horatio_Hello);
	AI_StopProcessInfos(self);
};

// ************************************************************
// 						SORRY (PERM)
// ************************************************************
instance DIA_Horatio_SORRY(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 1;
	condition		= DIA_Horatio_SORRY_Condition;
	information		= DIA_Horatio_SORRY_Info;
	permanent		= TRUE;
	description		= "Tut mir leid, der Spruch mit dem Bauern.";
};

func int DIA_Horatio_SORRY_Condition()
{
	if (horatio_trouble == TRUE)
	{
		return 1;
	};
};

func void DIA_Horatio_SORRY_Info()
{
	AI_Output(other, self, "DIA_Horatio_SORRY_15_00"); //Tut mir Leid, der Spruch mit dem Bauern.
	AI_Output(self, other, "DIA_Horatio_SORRY_09_01"); //Das hättest du dir eher überlegen sollen, Junge!
};

// ************************************************************
// 					Horatios Story
// ************************************************************
instance DIA_Horatio_Story(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 1;
	condition		= DIA_Horatio_Story_Condition;
	information		= DIA_Horatio_Story_Info;
	description		= "Was macht ein Kerl wie du bei den Bauern?";
};

func int DIA_Horatio_Story_Condition()
{
	if ((horatio_trouble == FALSE) && (Npc_KnowsInfo(hero, DIA_Horatio_Hello)))
	{
		return 1;
	};
};

func void DIA_Horatio_Story_Info()
{
	AI_Output(other, self, "DIA_Horatio_Story_15_00"); //Was macht ein Kerl wie du bei den Bauern?
	AI_Output(self, other, "DIA_Horatio_Story_09_01"); //Das hat Lee mich auch gefragt, aber ich kämpfe nicht mehr - außer um mich zu verteidigen.
	AI_Output(self, other, "DIA_Horatio_Story_09_02"); //Ich habe einmal getötet, das war einmal zu viel. Deswegen haben sie mich in diese gottverdammte Kolonie geworfen - und das war nur gerecht.
	AI_Output(other, self, "DIA_Horatio_Story_15_03"); //Was ist passiert?
	AI_Output(self, other, "DIA_Horatio_Story_09_04"); //Es war ein einfacher Streit in einer Kneipe. Ich wollte den Mann nicht töten, aber ich habe zu stark zugeschlagen.
	AI_Output(self, other, "DIA_Horatio_Story_09_05"); //Ich habe damals als Schmied gearbeitet. Ich konnte meine Kraft nicht kontrollieren ...
};

// ************************************************************
// 						Warum hier?
// ************************************************************
instance DIA_Horatio_WhyHere(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 1;
	condition		= DIA_Horatio_WhyHere_Condition;
	information		= DIA_Horatio_WhyHere_Info;
	description		= "Warum bist du ausgerechnet in DIESES Lager gegangen?";
};

func int DIA_Horatio_WhyHere_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Horatio_Story))
	{
		return 1;
	};
};

func void DIA_Horatio_WhyHere_Info()
{
	AI_Output(other, self, "DIA_Horatio_WhyHere_15_00"); //Warum bist du ausgerechnet in DIESES Lager gegangen?
	AI_Output(self, other, "DIA_Horatio_WhyHere_09_01"); //Das will ich dir sagen: Die einzig andere Wahl wären die Sektenspinner gewesen, aber ich habe keine Lust, mir von den Gurus den Kopf waschen zu lassen.
	AI_Output(self, other, "DIA_Horatio_WhyHere_09_02"); //Im Alten Lager hätte ich keine Ruhe vor den Gardisten gehabt, aber die Söldner und Banditen haben Respekt.
	AI_Output(other, self, "DIA_Horatio_WhyHere_15_03"); //Sie fürchten dich ...
	AI_Output(self, other, "DIA_Horatio_WhyHere_09_04"); //Kann schon sein. Immerhin habe ICH hier meinen Frieden gefunden. Und das solltest du auch versuchen.
};

// ************************************************************
// 						Bitte STR
// ************************************************************
var int horatio_StrFree;
// ************************************************************
instance DIA_Horatio_PleaseTeachSTR(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 2;
	condition		= DIA_Horatio_PleaseTeachSTR_Condition;
	information		= DIA_Horatio_PleaseTeachSTR_Info;
	description		= "Kannst du mir beibringen, auch so stark zuzuschlagen?";
};

func int DIA_Horatio_PleaseTeachSTR_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Horatio_Story))
	{
		return 1;
	};
};

func void DIA_Horatio_PleaseTeachSTR_Info()
{
	AI_Output(other, self, "DIA_Horatio_PleaseTeachSTR_15_00"); //Kannst du mir beibringen, auch so stark zuzuschlagen?
	AI_Output(self, other, "DIA_Horatio_PleaseTeachSTR_09_01"); //Selbst wenn - zu WAS würde jemand wie du seine Stärke einsetzen?
	Info_ClearChoices(DIA_Horatio_PleaseTeachSTR);
	var C_Npc ricelord; ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	if (Npc_KnowsInfo(hero, DIA_Jeremiah_Horatio))
	{
		Info_AddChoice(DIA_Horatio_PleaseTeachSTR, "Damit ich Reislord und seine Schläger fertigmachen kann!", DIA_Horatio_PleaseTeachSTR_Ricelord);
	}
	else
	{
		Info_AddChoice(DIA_Horatio_PleaseTeachSTR, "Gute Frage. Ich werde darüber nachdenken...", DIA_Horatio_PleaseTeachSTR_BACK);
	};

	Info_AddChoice(DIA_Horatio_PleaseTeachSTR, "Zur Selbstverteidigung!", DIA_Horatio_PleaseTeachSTR_Defend);
	Info_AddChoice(DIA_Horatio_PleaseTeachSTR, "Um den Mistkerlen hier zu zeigen, wie man mit mir zu sprechen hat!", DIA_Horatio_PleaseTeachSTR_Attack);

	Log_CreateTopic(CH1_HoratiosTeachings, LOG_MISSION);
	Log_SetTopicStatus(CH1_HoratiosTeachings, LOG_RUNNING);
	B_LogEntry(CH1_HoratiosTeachings, CH1_HoratiosTeachings_1);
};

func void DIA_Horatio_PleaseTeachSTR_Attack()
{
	AI_Output(other, self, "DIA_Horatio_PleaseTeachSTR_Attack_15_00"); //Um den Mistkerlen hier zu zeigen, wie man mit mir zu sprechen hat!
	AI_Output(self, other, "DIA_Horatio_PleaseTeachSTR_Attack_09_01"); //Und bevor du dich versiehst, bist du nur ein weiterer Mistkerl mehr ... Nein! Dafür werde ich dir nichts beibringen.
	Info_ClearChoices(DIA_Horatio_PleaseTeachSTR);
};

func void DIA_Horatio_PleaseTeachSTR_Defend()
{
	AI_Output(other, self, "DIA_Horatio_PleaseTeachSTR_Defend_15_00"); //Zur Selbstverteidigung!
	AI_Output(self, other, "DIA_Horatio_PleaseTeachSTR_Defend_09_01"); //Dazu musst du nur schnell sein und nicht stark. Glaubst du, dass Schädel spalten besser ist als seinen Frieden zu finden?
};

func void DIA_Horatio_PleaseTeachSTR_BACK()
{
	AI_Output(other, self, "DIA_Horatio_PleaseTeachSTR_BACK_15_00"); //Gute Frage. Ich werde drüber nachdenken ...
	Info_ClearChoices(DIA_Horatio_PleaseTeachSTR);
};

func void DIA_Horatio_PleaseTeachSTR_Ricelord()
{
	AI_Output(other, self, "DIA_Horatio_PleaseTeachSTR_Ricelord_15_00"); //Damit ich den Reislord und seine Schläger fertig machen kann!
	AI_Output(self, other, "DIA_Horatio_PleaseTeachSTR_Ricelord_09_01"); //Hmm ... Du bist nicht der Erste, der das versucht.
	horatio_StrFree = TRUE;
	Info_ClearChoices(DIA_Horatio_PleaseTeachSTR);
};

// ************************************************************
// 						Nachgedacht (STR)
// ************************************************************
instance DIA_Horatio_ThoughtSTR(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 2;
	condition		= DIA_Horatio_ThoughtSTR_Condition;
	information		= DIA_Horatio_ThoughtSTR_Info;
	permanent		= TRUE;
	description		= "Ich hab' nochmal über die Sache nachgedacht...";
};

func int DIA_Horatio_ThoughtSTR_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Horatio_PleaseTeachSTR) && (horatio_StrFree == FALSE))
	{
		return 1;
	};
};

func void DIA_Horatio_ThoughtSTR_Info()
{
	AI_Output(other, self, "DIA_Horatio_ThoughtSTR_15_00"); //Ich hab' noch einmal über die Sache nachgedacht ...
	AI_Output(self, other, "DIA_Horatio_ThoughtSTR_09_01"); //Und? Ist dir was Besseres eingefallen?

	Info_ClearChoices(DIA_Horatio_ThoughtSTR);
	Info_AddChoice(DIA_Horatio_ThoughtSTR, "Nein.", DIA_Horatio_ThoughtSTR_NoIdea);

	var C_Npc ricelord; ricelord = Hlp_GetNpc(Bau_900_Ricelord);
	if (Npc_KnowsInfo(hero, DIA_Jeremiah_Horatio))
	{
		Info_AddChoice(DIA_Horatio_ThoughtSTR, "Ja. Ich will es mit Ricelord und seinen Schlägern aufnehmen können!", DIA_Horatio_ThoughtSTR_Ricelord);
	};
};

func void DIA_Horatio_ThoughtSTR_NoIdea()
{
	AI_Output(other, self, "DIA_Horatio_ThoughtSTR_NoIdea_15_00"); //Nein.
	AI_Output(self, other, "DIA_Horatio_ThoughtSTR_NoIdea_09_01"); //Dachte ich mir.
	Info_ClearChoices(DIA_Horatio_ThoughtSTR);
};

func void DIA_Horatio_ThoughtSTR_Ricelord()
{
	AI_Output(other, self, "DIA_Horatio_ThoughtSTR_Ricelord_15_00"); //Ja. Ich will es mit dem Reislord und seinen Schlägern aufnehmen können!
	AI_Output(self, other, "DIA_Horatio_ThoughtSTR_Ricelord_09_01"); //Hmm ... Du bist nicht der Erste, der das versucht.
	horatio_StrFree = TRUE;

	Info_ClearChoices(DIA_Horatio_ThoughtSTR);
};

// ************************************************************
//					Will Ricelord köpfen
// ************************************************************

func void DIA_Horatio_HelpSTR_LEARN_NOW()
{
	if (other.attribute[ATR_STRENGTH] <= (100 - 5))
	{
		other.attribute[ATR_STRENGTH] = other.attribute[ATR_STRENGTH] + 5;
		_ = PrintScreen(PRINT_HORATIO_STRENGTH_5, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);
	}
	else
	{
		other.attribute[ATR_STRENGTH] = 100;
		_ = PrintScreen(PRINT_HORATIO_STRENGTH_100, -1, -1, "FONT_OLD_20_WHITE.TGA", 2);
	};

	AI_Output(self, other, "DIA_Horatio_HelpSTR_LEARN_NOW_09_00"); //Wenn du stark zuschlagen willst, kommt es auf die richtige Technik an. Das ist das Erste, was du beim Schmieden lernst.
	AI_Output(self, other, "DIA_Horatio_HelpSTR_LEARN_NOW_09_01"); //Lerne jeden Teil deines Arms, von der Schulter bis zum Handgelenk, gleichzeitig nach vorne schnellen zu lassen.
	AI_Output(self, other, "DIA_Horatio_HelpSTR_LEARN_NOW_09_02"); //Je besser die Technik, umso härter der Schlag. Du wirst es schnell raushaben.
};

// --------------------------------------------------------------
instance DIA_Horatio_HelpSTR(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 2;
	condition		= DIA_Horatio_HelpSTR_Condition;
	information		= DIA_Horatio_HelpSTR_Info;
	description		= "Ich WERDE den Reislord fertig machen - wenn du mir dabei hilfst!";
};

func int DIA_Horatio_HelpSTR_Condition()
{
	if (horatio_StrFree == TRUE)
	{
		return 1;
	};
};

func void DIA_Horatio_HelpSTR_Info()
{
	AI_Output(other, self, "DIA_Horatio_HelpSTR_15_00"); //Ich WERDE den Reislord und seine Schläger fertig machen - wenn du mir dabei hilfst!
	AI_Output(self, other, "DIA_Horatio_HelpSTR_09_01"); //Gut! Ich habe geschworen, nie wieder jemanden anzugreifen, aber NICHT, es niemandem beizubringen.
	AI_Output(other, self, "DIA_Horatio_HelpSTR_15_02"); //Ich bin ganz Ohr!
	DIA_Horatio_HelpSTR_LEARN_NOW();

	Log_SetTopicStatus(CH1_HoratiosTeachings, LOG_SUCCESS);
	B_LogEntry(CH1_HoratiosTeachings, CH1_HoratiosTeachings_2);
};

// ************************************************************
// 							Thanks (PERM)
// ************************************************************
instance DIA_Horatio_Thanks(C_INFO)
{
	npc				= Bau_901_Horatio;
	nr				= 2;
	condition		= DIA_Horatio_Thanks_Condition;
	information		= DIA_Horatio_Thanks_Info;
	permanent		= TRUE;
	description		= "Danke für deine Hilfe!";
};

func int DIA_Horatio_Thanks_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Horatio_HelpSTR))
	{
		return 1;
	};
};

func void DIA_Horatio_Thanks_Info()
{
	AI_Output(other, self, "DIA_Horatio_Thanks_15_00"); //Danke für deine Hilfe!
	AI_Output(self, other, "DIA_Horatio_Thanks_09_01"); //Nutze dein Wissen für die gerechte Sache! Und NUR DAFÜR.
};
