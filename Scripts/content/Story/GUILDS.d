///////////////////////////////////////////////////////////////////////////////////////////
// Gilden
// Aufnahmebedingungen
// Lernprogramme
///////////////////////////////////////////////////////////////////////////////////////////

// ********************************************************************************************************************
// Gruppenattitüden
// ********************************************************************************************************************

const int TAB_ANZAHL = 16 * 16;

const int GIL_ATTITUDES [TAB_ANZAHL] = // AL und NL verärgert (Magier zueinander freundlich) ST neutral zu AL und NL (Magier verärgert zu ST)
{
//		NON				EBR				GRD				STT				KDF				VLK						KDW				SLD				ORG				BAU				SFB						GUR				NOV				TPL						DMB				BAB
/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*EBR*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*EBR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*EBR*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*EBR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*GRD*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*GRD*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*STT*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*STT*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*KDF*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*KDF*/ ATT_FRIENDLY,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDF*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDF*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*VLK*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*VLK*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*KDW*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*SLD*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*SLD*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*SLD*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SLD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*ORG*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*BAU*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*BAU*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SFB*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*SFB*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*GUR*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	/*GUR*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GUR*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*GUR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*NOV*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	/*NOV*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NOV*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*NOV*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	/*TPL*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*TPL*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_FRIENDLY
};

const int GIL_ATTITUDES_FMTAKEN [TAB_ANZAHL] = // AL und NL feindlich
{
//		NON				EBR				GRD				STT				KDF				VLK						KDW				SLD				ORG				BAU				SFB						GUR				NOV				TPL						DMB				BAB
/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*EBR*/ ATT_HOSTILE,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_HOSTILE,	ATT_FRIENDLY,	/*EBR*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*EBR*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*EBR*/ ATT_HOSTILE,	ATT_NEUTRAL,
/*GRD*/ ATT_HOSTILE,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_HOSTILE,	ATT_FRIENDLY,	/*GRD*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*GRD*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*GRD*/ ATT_HOSTILE,	ATT_NEUTRAL,
/*STT*/ ATT_HOSTILE,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_HOSTILE,	ATT_NEUTRAL,	/*STT*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*STT*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*STT*/ ATT_HOSTILE,	ATT_NEUTRAL,
/*KDF*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*KDF*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*KDF*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*KDF*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*VLK*/ ATT_HOSTILE,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*VLK*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*VLK*/ ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*VLK*/ ATT_HOSTILE,	ATT_NEUTRAL,

/*KDW*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_HOSTILE,	/*KDW*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*KDW*/ ATT_FRIENDLY,	ATT_FRIENDLY,
/*SLD*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_HOSTILE,	/*SLD*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*SLD*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*SLD*/ ATT_FRIENDLY,	ATT_FRIENDLY,
/*ORG*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_HOSTILE,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*ORG*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*ORG*/ ATT_FRIENDLY,	ATT_FRIENDLY,
/*BAU*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_HOSTILE,	/*BAU*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SFB*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_HOSTILE,	/*SFB*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*GUR*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*GUR*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GUR*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*GUR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*NOV*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*NOV*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NOV*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*NOV*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*TPL*/ ATT_FRIENDLY,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*TPL*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*TPL*/ ATT_FRIENDLY,	ATT_FRIENDLY,	ATT_FRIENDLY,	/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_FRIENDLY
};

// #################################
//
//	SN 09.01.01: Alter Kram
//
// #################################

const int GIL_ATTITUDES_ORCASSAULT [TAB_ANZAHL] = // von Steffen (so gelassen)
{
//		NON				EBR				GRD				STT				KDF				VLK						KDW				SLD				ORG				BAU				SFB						GUR				NOV				TPL						DMB				BAB
/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*EBR*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*EBR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*EBR*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*EBR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GRD*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*STT*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*KDF*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*KDF*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDF*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDF*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SLD*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	/*SLD*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SLD*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SLD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*ORG*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*BAU*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SFB*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*GUR*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GUR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		/*GUR*/ ATT_FRIENDLY,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*GUR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*NOV*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*NOV*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		/*NOV*/ ATT_NEUTRAL,	ATT_FRIENDLY,	ATT_NEUTRAL,	/*NOV*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*TPL*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*TPL*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_FRIENDLY,	/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*DMB*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_NEUTRAL,	ATT_FRIENDLY
};

const int GIL_ATTITUDES_NEMESIS [TAB_ANZAHL] = // von Steffen (so gelassen)
{
//		NON				EBR				GRD				STT				KDF				VLK						KDW				SLD				ORG				BAU				SFB						GUR				NOV				TPL						DMB				BAB
/*NON*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*NON*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*NON*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*NON*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*EBR*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		/*EBR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*EBR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*EBR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*GRD*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		/*GRD*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GRD*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GRD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*STT*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		/*STT*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*STT*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*STT*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*KDF*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		/*KDF*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDF*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDF*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*VLK*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	/*VLK*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*VLK*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*VLK*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*KDW*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDW*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDW*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*KDW*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SLD*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*SLD*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*SLD*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*SLD*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*ORG*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*ORG*/ ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		/*ORG*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*ORG*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*BAU*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*BAU*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		/*BAU*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*BAU*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*SFB*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	/*SFB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	/*SFB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*SFB*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*GUR*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_ANGRY,		ATT_HOSTILE,	/*GUR*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*GUR*/ ATT_NEUTRAL,	ATT_ANGRY,		ATT_ANGRY,		/*GUR*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*NOV*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_ANGRY,		ATT_HOSTILE,	/*NOV*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*NOV*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_ANGRY,		/*NOV*/ ATT_NEUTRAL,	ATT_NEUTRAL,
/*TPL*/ ATT_ANGRY,		ATT_HOSTILE,	ATT_HOSTILE,	ATT_HOSTILE,	ATT_ANGRY,		ATT_HOSTILE,	/*TPL*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*TPL*/ ATT_ANGRY,		ATT_ANGRY,		ATT_NEUTRAL,	/*TPL*/ ATT_NEUTRAL,	ATT_NEUTRAL,

/*DMB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*DMB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*DMB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*DMB*/ ATT_FRIENDLY,	ATT_NEUTRAL,
/*BAB*/ ATT_ANGRY,		ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	ATT_NEUTRAL,	/*BAB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*BAB*/ ATT_ANGRY,		ATT_ANGRY,		ATT_ANGRY,		/*BAB*/ ATT_NEUTRAL,	ATT_FRIENDLY
};
