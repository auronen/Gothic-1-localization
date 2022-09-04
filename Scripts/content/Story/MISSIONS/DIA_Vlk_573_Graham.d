// ************************************************************
// 			  				   EXIT
// ************************************************************
instance DIA_Graham_EXIT(C_INFO)
{
	npc				= Vlk_573_Graham;
	nr				= 999;
	condition		= Info_Graham_EXIT_Condition;
	information		= Info_Graham_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int Info_Graham_EXIT_Condition()
{
	return 1;
};

func void Info_Graham_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 						Was machst du?
// ************************************************************
instance DIA_Graham_Hello(C_INFO)
{
	npc				= Vlk_573_Graham;
	nr				= 3;
	condition		= DIA_Graham_Hello_Condition;
	information		= DIA_Graham_Hello_Info;
	description		= "Hi! Ich bin neu hier.";
};

func int DIA_Graham_Hello_Condition()
{
	return 1;
};

func void DIA_Graham_Hello_Info()
{
	AI_Output(other, self, "DIA_Graham_Hello_15_00"); //Hi! Ich bin neu hier.
	AI_Output(self, other, "DIA_Graham_Hello_02_01"); //Ich bin Graham. Ich zeichne Karten. Dich hab' ich hier noch nie gesehen ... Was willst du?

	B_LogEntry(GE_TraderOC, GE_TraderOC_9);
};

// ************************************************************
// 						Sell Map
// ************************************************************
var int Graham_OMKarteVerkauft;
var int Graham_OMKarteErpresst;
// ************************************************************
instance DIA_Graham_SellMap(C_INFO)
{
	npc				= Vlk_573_Graham;
	nr				= 3;
	condition		= DIA_Graham_SellMap_Condition;
	information		= DIA_Graham_SellMap_Info;
	permanent		= TRUE;
	description		= "Diego schickt mich. Er sagt, du sollst mir ne Karte geben.";
};

func int DIA_Graham_SellMap_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Graham_Hello) && Npc_KnowsInfo(hero, Info_Diego_MapToOldMine) && (Graham_OMKarteVerkauft == FALSE) && (Graham_OMKarteErpresst == FALSE))
	{
		return 1;
	};
};

func void DIA_Graham_SellMap_Info()
{
	AI_Output(other, self, "DIA_Graham_SellMap_15_00"); //Diego schickt mich. Er sagt, du sollst mir 'ne Karte geben, auf der der Weg zur Alten Mine verzeichnet ist.
	AI_Output(self, other, "DIA_Graham_SellMap_02_01"); //Kein Problem. Für dich nur 20 Erz.
	Info_ClearChoices(DIA_Graham_SellMap);
	Info_AddChoice(DIA_Graham_SellMap, "Ich komme wieder.", DIA_Graham_SellMap_BACK);
	Info_AddChoice(DIA_Graham_SellMap, "Gut - ich werde die Karte bezahlen. Hier, nimm das Erz.", DIA_Graham_SellMap_Pay);
	Info_AddChoice(DIA_Graham_SellMap, "Rück die Karte raus, oder ich polier dir die Fresse!", DIA_Graham_SellMap_AufsMaul);
	Info_AddChoice(DIA_Graham_SellMap, "Moment, Diego sagte, du sollst mir die Karte GEBEN, nicht verkaufen.", DIA_Graham_SellMap_GiveNotSell);
};

func void DIA_Graham_SellMap_BACK()
{
	AI_Output(other, self, "DIA_Graham_SellMap_BACK_15_00"); //Ich komme wieder.
	Info_ClearChoices(DIA_Graham_SellMap);
};

func void DIA_Graham_SellMap_Pay()
{
	AI_Output(other, self, "DIA_Graham_SellMap_Pay_15_00"); //Ich werde die Karte bezahlen. Hier, nimm das Erz.
	if (Npc_HasItems(other, itminugget) >= 20)
	{
		AI_Output(self, other, "DIA_Graham_SellMap_Pay_02_01"); //Gut. So billig kommst du nie wieder an so eine Karte - glaub mir.
		B_GiveInvItems(other, self, itminugget, 20);
		B_GiveInvItems(self, other, ItWrOMmap, 1);
		Graham_OMKarteVerkauft = TRUE;
		Info_ClearChoices(DIA_Graham_SellMap);
	}
	else
	{
		AI_Output(self, other, "DIA_Graham_SellMap_Pay_NoOre_02_00"); //Beschaff dir erst mal ein bisschen Erz. Geh Tiere jagen oder Pilze sammeln - du kannst den Krempel dann hier im Lager zu Erz machen.
	};
};

func void DIA_Graham_SellMap_AufsMaul()
{
	AI_Output(other, self, "DIA_Graham_SellMap_AufsMaul_15_00"); //Rück die Karte raus, oder ich polier dir die Fresse!
	AI_Output(self, other, "DIA_Graham_SellMap_AufsMaul_02_01"); //Mach bloß keinen Mist, Mann. Ich will keinen Ärger. Hier, nimm die verdammte Karte und jetzt lass mich in Ruhe!
	B_GiveInvItems(self, other, ItWrOMmap, 1);
	Info_ClearChoices(DIA_Graham_SellMap);
	Npc_SetPermAttitude(self, ATT_ANGRY);
	Graham_OMKarteErpresst = TRUE;
	AI_StopProcessInfos(self);
};

func void DIA_Graham_SellMap_GiveNotSell()
{
	AI_Output(other, self, "DIA_Graham_SellMap_GiveNotSell_15_00"); //Moment mal, Diego sagte, du sollst mir die Karte GEBEN, nicht verkaufen.
	AI_Output(self, other, "DIA_Graham_SellMap_GiveNotSell_02_01"); //Das interessiert mich aber nicht! Hast du eine Ahnung, wie viel Arbeit es macht, so eine Karte anzufertigen?
	AI_Output(self, other, "DIA_Graham_SellMap_GiveNotSell_02_02"); //20 ist schon mein Spezialpreis für Freunde von Diego. Normalerweise würde ich 50 nehmen.
};
instance DIA_Graham_BuyMaps(C_INFO)
{
	npc				= Vlk_573_Graham;
	nr				= 800;
	condition		= DIA_Graham_BuyMaps_Condition;
	information		= DIA_Graham_BuyMaps_Info;
	permanent		= TRUE;
	trade			= TRUE;
	description		= "Ich würde gerne eine Karte kaufen.";
};

func int DIA_Graham_BuyMaps_Condition()
{
	if (Npc_KnowsInfo(hero, DIA_Graham_Hello))
	{
		return 1;
	};
};

func void DIA_Graham_BuyMaps_Info()
{
	AI_Output(other, self, "DIA_Graham_BuyMaps_15_00"); //Ich würde gerne eine Karte kaufen.
	AI_Output(self, other, "DIA_Graham_BuyMaps_02_01"); //Klar ... Was suchst du? Je mehr drauf zu sehen ist, desto teurer sind die Karten.
};
