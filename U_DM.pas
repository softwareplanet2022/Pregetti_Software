unit U_DM;

interface

uses
  SysUtils, Classes, DB, DBClient, ImgList, Controls, frxChBox,
  frxClass, frxDBSet, DBTables, MyAccess, MyClasses, MyCall, DBAccess,
  MemDS, DBSumLst, frxRich, DBPlanner, DateUtils, Planner, Vcl.Forms, Winapi.Windows,
  Graphics, BDE, frxExportPDF, Dialogs, IniFiles, frxDesgn, RxMemDS, Midas, RXDateUtil,
  DADump, MyDump, RxSplshWnd, RxPicClip;

type
  TDM = class(TDataModule)
    DSPazienti: TDataSource;
    MainImgList: TImageList;
    DsCartelle: TDataSource;
    DsPreventivi: TDataSource;
    DsRichiami: TDataSource;
    DsAttivita: TDataSource;
    DsDettCartella: TDataSource;
    SubList: TImageList;
    DBPazienti: TfrxDBDataset;
    frxChk: TfrxCheckBoxObject;
    DsFatture: TDataSource;
    DsImmagini: TDataSource;
    DsArticoli: TDataSource;
    DsMovimenti: TDataSource;
    DsDettPreventivi: TDataSource;
    DsDettFatture: TDataSource;
    Pazienti: TMyTable;
    Cartelle: TMyTable;
    DettCartella: TMyTable;
    DettFatture: TMyTable;
    Preventivi: TMyTable;
    Movimenti: TMyTable;
    Immagini: TMyTable;
    Richiami: TMyTable;
    Attivita: TMyTable;
    PazientiCod_Paziente: TAutoIncField;
    PazientiCognome: TStringField;
    PazientiNome: TStringField;
    PazientiIndirizzo: TStringField;
    PazientiCap: TStringField;
    PazientiCitta: TStringField;
    PazientiProv: TStringField;
    PazientiStato: TStringField;
    PazientiSesso: TStringField;
    PazientiDataNascita: TDateField;
    PazientiCittaNascita: TStringField;
    PazientiCodiceFiscale: TStringField;
    PazientiTelefono: TStringField;
    PazientiCellulare: TStringField;
    PazientiEMail: TStringField;
    PazientiConsensoPrivacy: TBooleanField;
    PazientiNominativoFatt: TStringField;
    PazientiIndirizzoFatt: TStringField;
    PazientiComuneFatt: TStringField;
    PazientiCapfatt: TStringField;
    PazientiProvFatt: TStringField;
    PazientiPIva: TStringField;
    PazientiCodFiscFatt: TStringField;
    CartelleCod_Cartella: TAutoIncField;
    CartelleDataCartella: TDateField;
    CartelleAllergie: TMemoField;
    CartelleAnnotazioni: TMemoField;
    PazientiCalcNominativo: TStringField;
    DettCartellaId_Intervento: TAutoIncField;
    DettCartellaDataInizio: TDateField;
    DettCartellaDataTermine: TDateField;
    DettCartellaNroDente: TFloatField;
    DettCartellaEseguito: TBooleanField;
    AttivitaId_Attivita: TAutoIncField;
    AttivitaCod_Paziente: TFloatField;
    AttivitaData: TDateField;
    AttivitaTipoOperazione: TStringField;
    AttivitaImporto: TCurrencyField;
    AttivitaDettaglio: TMemoField;
    AttivitaRifPreventivo: TStringField;
    AttivitaRifFattura: TStringField;
    RichiamiId_Richiamo: TAutoIncField;
    RichiamiCod_Paziente: TFloatField;
    RichiamiDataInserimento: TDateField;
    RichiamiDataRichiamo: TDateField;
    RichiamiMotivo: TStringField;
    ImmaginiId_Immagine: TAutoIncField;
    ImmaginiCod_Paziente: TFloatField;
    ImmaginiDataOra: TDateField;
    ImmaginiPath: TStringField;
    ImmaginiDescrizione: TMemoField;
    Fatture: TMyTable;
    Articoli: TMyTable;
    MovimentiId_Movimento: TAutoIncField;
    MovimentiData: TDateField;
    MovimentiOperazione: TStringField;
    MovimentiQta: TFloatField;
    MovimentiCostoUnitario: TCurrencyField;
    DettPreventivi: TMyTable;
    FattureId_Fattura: TAutoIncField;
    FattureCod_Paziente: TFloatField;
    FattureModalitaPagamento: TStringField;
    FattureNumFattura: TFloatField;
    FattureData: TDateField;
    FattureNote: TMemoField;
    FattureImponibile: TCurrencyField;
    FattureRagioneSociale: TStringField;
    FattureIndirizzo: TStringField;
    FattureCap: TStringField;
    FattureCitta: TStringField;
    FattureProv: TStringField;
    FattureCodFisc: TStringField;
    FatturePartitaIVA: TStringField;
    PreventiviId_Preventivo: TAutoIncField;
    PreventiviCod_Paziente: TFloatField;
    PreventiviRagioneSociale: TStringField;
    PreventiviIndirizzo: TStringField;
    PreventiviCap: TStringField;
    PreventiviCitta: TStringField;
    PreventiviProv: TStringField;
    PreventiviCodFisc: TStringField;
    PreventiviPartitaIva: TStringField;
    PreventiviNumPreventivo: TFloatField;
    PreventiviNsRiferimento: TStringField;
    PreventiviVsRiferimento: TStringField;
    PreventiviDescrizione: TMemoField;
    PreventiviNote: TMemoField;
    PreventiviTotale: TCurrencyField;
    DettPreventiviId_Dettaglio: TAutoIncField;
    DettPreventiviId_Preventivo: TFloatField;
    DettPreventiviQta: TFloatField;
    DettPreventiviDescrizione: TStringField;
    DettPreventiviPrezzoUnitario: TCurrencyField;
    DettPreventiviSconto: TFloatField;
    DettPreventiviAliquotaIva: TFloatField;
    DettFattureId_Dettaglio: TAutoIncField;
    DettFattureId_Fattura: TFloatField;
    DettFattureQta: TFloatField;
    DettFattureDescrizione: TStringField;
    DettFatturePrezzoUnitario: TCurrencyField;
    PreventiviData: TDateField;
    RichiamiEsito: TStringField;
    RichiamiAnnotazioni: TMemoField;
    DettPreventiviCalcImporto: TCurrencyField;
    DettPreventiviCalcImportoScontato: TCurrencyField;
    DettFattureCalcImporto: TCurrencyField;
    DettFattureCalcImportoScontato: TCurrencyField;
    DettFattureSconto: TFloatField;
    CartelleCalcPaziente: TStringField;
    DBCartella: TfrxDBDataset;
    DBDettCartella: TfrxDBDataset;
    DsTempScheda: TDataSource;
    DBTempScheda: TfrxDBDataset;
    DBRichiami: TfrxDBDataset;
    DBAttivita: TfrxDBDataset;
    RptAttivita: TfrxReport;
    DettCartellaAPBanda: TBooleanField;
    DettCartellaAPBracket: TBooleanField;
    DettCartellaAPContenzione: TBooleanField;
    DettCartellaAPEstrazione: TBooleanField;
    DettCartellaAPRitenzione: TBooleanField;
    DettCartellaMancante: TBooleanField;
    DettCartellaAgenesia: TBooleanField;
    DettCartellaIncluso: TBooleanField;
    DettCartellaSemiIncluso: TBooleanField;
    DettCartellaRadice: TBooleanField;
    DettCartellaCarie: TBooleanField;
    DettCartellaFrattura: TBooleanField;
    DettCartellaGranuloma: TBooleanField;
    DettCartellaEstrazione: TBooleanField;
    DettCartellaOtturazione: TBooleanField;
    DettCartellaEdodonzia: TBooleanField;
    DettCartellaCorona: TBooleanField;
    DettCartellaImpianro: TBooleanField;
    DettCartellaImmagine: TBooleanField;
    ArticoliDescrizione: TStringField;
    ArticoliCosto: TCurrencyField;
    ArticoliPrezzo: TCurrencyField;
    ArticoliPeso_UM: TStringField;
    ArticoliAliquotaIVA: TFloatField;
    ArticoliBarcode: TStringField;
    ArticoliGiacMin: TFloatField;
    ArticoliLivelloRiordino: TFloatField;
    ArticoliAnnotazioni: TMemoField;
    ArticoliCategoria_Terapia: TStringField;
    LkpArticoli: TMyTable;
    DsLkpArticoli: TDataSource;
    LkpArticoliDescrizione: TStringField;
    LkpArticoliCosto: TCurrencyField;
    LkpArticoliPrezzo: TCurrencyField;
    LkpArticoliPeso_UM: TStringField;
    LkpArticoliCategoria_Terapia: TStringField;
    LkpArticoliAliquotaIVA: TFloatField;
    LkpArticoliBarcode: TStringField;
    LkpArticoliGiacMin: TFloatField;
    LkpArticoliLivelloRiordino: TFloatField;
    LkpArticoliAnnotazioni: TMemoField;
    PazientiAnnotazioni: TMemoField;
    CartelleCalcCartella: TStringField;
    RichiamiOraRichiamo: TTimeField;
    DettCartellaImporto: TCurrencyField;
    SumFatt: TDBSumList;
    SumPrev: TDBSumList;
    FattureAliquotaIVA: TFloatField;
    FattureAliquotaRitenuta: TFloatField;
    FattureImportoBolli: TCurrencyField;
    FattureCalcImportoIva: TCurrencyField;
    FattureCalcImportoRitenuta: TCurrencyField;
    FattureCalcTotaleFattura: TCurrencyField;
    FattureCalcImportoFattura: TCurrencyField;
    PreventiviCalcNumPrev: TStringField;
    FattureCalcNumFattura: TStringField;
    DBDettPreventivo: TfrxDBDataset;
    DBPreventivo: TfrxDBDataset;
    DBDettFattura: TfrxDBDataset;
    DBFattura: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    Utenti: TMyTable;
    UtentiUsername: TStringField;
    UtentiPassword: TStringField;
    UtentiTipoUtente: TFloatField;
    UtentiId_Utente: TAutoIncField;
    Impostazioni: TMyTable;
    DsImpostazioni: TDataSource;
    ImpostazioniNextFattura: TFloatField;
    ImpostazioniNextPreventivo: TFloatField;
    ImpostazioniImportoBollo: TCurrencyField;
    ImpostazioniBackupPath: TStringField;
    DSPlanner: TDataSource;
    PlannerTable: TMyTable;
    PlannerTableSTARTTIME: TDateTimeField;
    PlannerTableENDTIME: TDateTimeField;
    PlannerTableNOTES: TMemoField;
    PlannerTableSUBJECT: TStringField;
    PlannerTableFROMCOLOR: TFloatField;
    PlannerTableTOCOLOR: TFloatField;
    PlannerTableTRACKCOLOR: TFloatField;
    PlannerTableSELECTCOLOR: TFloatField;
    PlannerTableSELECTCOLORTO: TFloatField;
    PlannerTableCAPTION: TBooleanField;
    PlannerTableSHAPE: TFloatField;
    PlannerTablePRINTCOLOR: TFloatField;
    PlannerTableFONTSIZE: TFloatField;
    PlannerTableFONTNAME: TStringField;
    PlannerTableDATA: TDateField;
    PlannerTablePLANNERKEY: TStringField;
    DBDaySource1: TDBDaySource;
    PlannerTablePAZIENTE: TStringField;
    Scadenze: TMyTable;
    DsScadenze: TDataSource;
    ScadenzeId_Scadenza: TAutoIncField;
    ScadenzeCod_Documento: TStringField;
    ScadenzeId_Soggetto: TFloatField;
    ScadenzeSoggetto: TStringField;
    ScadenzeDescrizione: TStringField;
    ScadenzeDare: TCurrencyField;
    ScadenzeAvere: TCurrencyField;
    ScadenzeDataScadenza: TDateField;
    ScadenzeMese: TFloatField;
    ScadenzeAnno: TFloatField;
    ScadenzeSaldato: TBooleanField;
    ScadenzeHideSaldo: TCurrencyField;
    ScadenzeRiba: TBooleanField;
    ScadenzeScadenzaRiba: TDateField;
    ScadenzeImportoRiba: TCurrencyField;
    ScadenzeRiferimentoFT: TStringField;
    ScadenzeBancaDebitrice: TStringField;
    ScadenzeBancaDebitriceLocalita: TStringField;
    ScadenzeBancaDebitriceABI: TStringField;
    ScadenzeBancaDebitriceCAB: TStringField;
    ScadenzeBancaDebitriceIBAN: TStringField;
    ScadenzeSoggettoDebitore: TMemoField;
    DsQryNominativi: TDataSource;
    QryNominativi: TMyQuery;
    QryNominativiSoggetto: TStringField;
    ScadenzeCalcSaldo: TCurrencyField;
    DsParScadenze: TDataSource;
    ParScadenze: TMyTable;
    ParScadenzeDalGiono: TDateField;
    ParScadenzeAlGiorno: TDateField;
    ParScadenzeSoggetto: TStringField;
    ParScadenzeTipoPartita: TStringField;
    ParScadenzeNonSaldate: TStringField;
    DBParScadenze: TfrxDBDataset;
    DBScadenze: TfrxDBDataset;
    MovimentiDescrizione: TStringField;
    DettMovimenti: TMyTable;
    AutoIncField1: TAutoIncField;
    DateField1: TDateField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    StringField3: TStringField;
    StringField4: TStringField;
    DsDettMovimenti: TDataSource;
    QryGiacenze: TMyQuery;
    DsQryGiacenze: TDataSource;
    MovimentiId_Articolo: TFloatField;
    MovimentiLkpArticolo: TStringField;
    DettMovimentiId_Articolo: TFloatField;
    QryGiacenzeId_Articolo: TFloatField;
    QryGiacenzeGiacenza: TFloatField;
    DsMemSottoscorta: TDataSource;
    DBSottoscorta: TfrxDBDataset;
    DsMemArticoli: TDataSource;
    DBArticoli: TfrxDBDataset;
    frArticoli: TfrxReport;
    RptRichiami: TfrxReport;
    frScadenze: TfrxReport;
    Incassi: TMyTable;
    DsIncassi: TDataSource;
    IncassiId_Incasso: TAutoIncField;
    IncassiCod_Cartella: TFloatField;
    IncassiData: TDateField;
    IncassiDescrizione: TStringField;
    IncassiImporto: TCurrencyField;
    SumDettCartella: TDBSumList;
    SumIncassi: TDBSumList;
    DBIncassi: TfrxDBDataset;
    DBPrivacy: TfrxDBDataset;
    frPDF: TfrxPDFExport;
    FattureCalcAnno: TIntegerField;
    FattureCalcPiePagina: TStringField;
    FattureImportoSconto: TCurrencyField;
    DettFattureCalcImportoSconto: TCurrencyField;
    FattureCalcImponibileNetto: TCurrencyField;
    DsBanca: TDataSource;
    Banca: TMyTable;
    BancaId_Operazione: TAutoIncField;
    BancaDataOperazione: TDateField;
    BancaDataValuta: TDateField;
    BancaContoCorrente: TStringField;
    BancaDescrizione: TStringField;
    BancaNote: TMemoField;
    BancaDare: TCurrencyField;
    BancaAvere: TCurrencyField;
    BancaHideSaldo: TCurrencyField;
    BancaCalcSaldo: TCurrencyField;
    FattureBanca: TMemoField;
    PreventiviAnno: TFloatField;
    FattureAnno: TFloatField;
    DettFattureAliquotaIva: TFloatField;
    DettPreventiviCod_Articolo: TStringField;
    DettFattureCod_Articolo: TStringField;
    PlannerTableID_PAZIENTE: TFloatField;
    QryPazienti: TMyQuery;
    DettCartellaStatoLavorazione: TStringField;
    DettCartellaId_StatoLavorazione: TFloatField;
    Stati: TMyTable;
    DsStati: TDataSource;
    StatiId_Stato: TAutoIncField;
    StatiDescrizione: TStringField;
    StatiColore: TFloatField;
    DettCartellaLkpStato: TStringField;
    DettCartellaLkpColore: TIntegerField;
    DsDottori: TDataSource;
    Dottori: TMyTable;
    DottoriId_Dottore: TAutoIncField;
    DottoriIndirizzo: TStringField;
    DottoriCap: TStringField;
    DottoriCitta: TStringField;
    DottoriProv: TStringField;
    DottoriTelefono: TStringField;
    DottoriCellulare1: TStringField;
    DottoriCellulare2: TStringField;
    DottoriColore: TFloatField;
    DottoriAnnotazioni: TMemoField;
    DottoriFoto: TGraphicField;
    PlannerTableID_DOTTORE: TFloatField;
    PlannerTableALARM: TBooleanField;
    PlannerTableALARM_MESSAGE: TStringField;
    PlannerTableTIMEBEFORE: TTimeField;
    PlannerTableLkpColore: TIntegerField;
    DottoriCognomeNome: TStringField;
    QryScheda: TMyQuery;
    DsQryScheda: TDataSource;
    QrySchedaDataCartella: TDateField;
    QrySchedaAnnotazioni: TMemoField;
    QrySchedaCognome: TStringField;
    QrySchedaNome: TStringField;
    QrySchedaIndirizzo: TStringField;
    QrySchedaCap: TStringField;
    QrySchedaCitta: TStringField;
    QrySchedaProv: TStringField;
    QrySchedaDataNascita: TDateField;
    QrySchedaCittaNascita: TStringField;
    QrySchedaCodiceFiscale: TStringField;
    DBScheda: TfrxDBDataset;
    RptCartella2: TfrxReport;
    frScheda: TfrxReport;
    FattureNumPreventivo: TStringField;
    PlannerTableLkpDottore: TStringField;
    LkpPreventivi: TMyTable;
    DsLkpPreventivi: TDataSource;
    LkpPreventiviAnno: TFloatField;
    LkpPreventiviNumPreventivo: TFloatField;
    LkpPreventiviId_Preventivo: TAutoIncField;
    LkpPreventiviData: TDateField;
    LkpPreventiviCod_Paziente: TFloatField;
    LkpPreventiviRagioneSociale: TStringField;
    LkpPreventiviIndirizzo: TStringField;
    LkpPreventiviCap: TStringField;
    LkpPreventiviCitta: TStringField;
    LkpPreventiviProv: TStringField;
    LkpPreventiviCodFisc: TStringField;
    LkpPreventiviPartitaIva: TStringField;
    LkpPreventiviNsRiferimento: TStringField;
    LkpPreventiviVsRiferimento: TStringField;
    LkpPreventiviDescrizione: TMemoField;
    LkpPreventiviNote: TMemoField;
    LkpPreventiviTotale: TCurrencyField;
    QryNextPrev: TMyQuery;
    QryNextFatt: TMyQuery;
    FattureCODICENAZIONE: TStringField;
    FattureCAUSALE: TStringField;
    FattureESIGIBILITA_IVA: TStringField;
    PazientiCodiceDestinatario: TStringField;
    PazientiPecDestinatario: TStringField;
    PazientiPR_PA: TFloatField;
    ModPag: TMyTable;
    DettModPag: TMyTable;
    ModPagId_ModPag: TAutoIncField;
    ModPagDescrizione: TStringField;
    ModPagDF_FM: TStringField;
    ModPagNumeroRate: TFloatField;
    ModPagUsaInFornitori: TBooleanField;
    ModPagUsaBancaCliente: TBooleanField;
    DsModPag: TDataSource;
    DSDettModPag: TDataSource;
    FattureId_ModPag: TFloatField;
    FattureLkpModPag: TStringField;
    MOD_PAGAMENTO: TMyTable;
    DSMOD_PAGAMENTO: TDataSource;
    MOD_PAGAMENTOCOD_CODIFICA: TStringField;
    MOD_PAGAMENTOTIPO: TStringField;
    MOD_PAGAMENTODESCRIZIONE: TStringField;
    FattureCOD_MOD_PAGAM: TStringField;
    FattureLkpMOD_PAGAMENTO: TStringField;
    ModPagCOD_TIPO_PAGAMENTO: TStringField;
    FattureLKP_COND_PAGAMENTO: TStringField;
    FattureLKP_COND_PAG_DESCR: TStringField;
    Scad_Fatture: TMyTable;
    CurrencyField6: TCurrencyField;
    DsScad_Fatture: TDataSource;
    FattureCOD_COND_PAGAM: TStringField;
    FattureBANCA_APPOGGIO: TStringField;
    FattureIBAN_APPOGGIO: TStringField;
    frxRichObject2: TfrxRichObject;
    DB_GDPR: TfrxDBDataset;
    frSottoscorta: TfrxReport;
    PazientiCalcEta: TIntegerField;
    PazientiFIRMA: TGraphicField;
    DettModPagId_DettPag: TAutoIncField;
    DettModPagId_ModPag: TFloatField;
    DettModPagGiorni: TFloatField;
    DettModPagFrazione: TFloatField;
    PazientiPADRE: TBooleanField;
    PazientiMADRE: TBooleanField;
    PazientiTUTORE: TBooleanField;
    PazientiCOGNOME_NOME_PADRE: TStringField;
    PazientiCOGNOME_NOME_MADRE: TStringField;
    PazientiCOGNOME_NOME_TUTORE: TStringField;
    PazientiFIRMA_PADRE: TGraphicField;
    PazientiFIRMA_MADRE: TGraphicField;
    PazientiFIRMA_TUTORE: TGraphicField;
    PazientiCF_PADRE: TStringField;
    PazientiCF_MADRE: TStringField;
    PazientiCF_TUTORE: TStringField;
    Consenso: TMyTable;
    DsConsenso: TDataSource;
    ConsensoCod_Paziente: TStringField;
    ConsensoData_Stampa: TDateField;
    ConsensoCure_Dentistiche_SI: TBooleanField;
    ConsensoCure_Dentistiche_NO: TBooleanField;
    ConsensoAllergie_Anestetici_SI: TBooleanField;
    ConsensoAllergie_Anestetici_NO: TBooleanField;
    ConsensoAllergie_Farmaci_SI: TBooleanField;
    ConsensoAllergie_Farmaci_NO: TBooleanField;
    ConsensoAllergie_Resine_SI: TBooleanField;
    ConsensoAllergie_Resine_NO: TBooleanField;
    ConsensoTerapie_Farmac_SI: TBooleanField;
    ConsensoTerapie_Farmac_NO: TBooleanField;
    ConsensoTerapie_Antitum_SI: TBooleanField;
    ConsensoTerapie_Antitum_NO: TBooleanField;
    ConsensoCardiopatie_SI: TBooleanField;
    ConsensoCardiopatie_NO: TBooleanField;
    ConsensoPace_Maker_SI: TBooleanField;
    ConsensoPace_Maker_NO: TBooleanField;
    ConsensoDiabete_SI: TBooleanField;
    ConsensoDiabete_NO: TBooleanField;
    ConsensoIpertensione_SI: TBooleanField;
    ConsensoIpertensione_NO: TBooleanField;
    ConsensoProblemi_Coagulaz_SI: TBooleanField;
    ConsensoProblemi_Coagulaz_NO: TBooleanField;
    ConsensoEpatite_B_SI: TBooleanField;
    ConsensoEpatite_B_NO: TBooleanField;
    ConsensoEpatite_C_SI: TBooleanField;
    ConsensoEpatite_C_NO: TBooleanField;
    ConsensoPatolog_Sotto_Contr_SI: TBooleanField;
    ConsensoPatolog_Sotto_Contr_NO: TBooleanField;
    ConsensoMedico_Struttura: TStringField;
    ConsensoHIV_SI: TBooleanField;
    ConsensoHIV_NO: TBooleanField;
    ConsensoMalattie_Infettive_SI: TBooleanField;
    ConsensoMalattie_InfettiveNO: TBooleanField;
    ConsensoGravidanza_SI: TBooleanField;
    ConsensoGravidanza_NO: TBooleanField;
    ConsensoSettimana: TStringField;
    ConsensoFumatore_SI: TBooleanField;
    ConsensoFumatore_NO: TBooleanField;
    ConsensoFumatore_Forte_SI: TBooleanField;
    ConsensoFumatore_Forte_NO: TBooleanField;
    ConsensoAltre_Patologie_SI: TBooleanField;
    ConsensoAltre_Patologie_NO: TBooleanField;
    ConsensoAltre_Patologie_Quali: TStringField;
    ConsensoAllergieFarmaci: TStringField;
    ConsensoAllergieResine: TStringField;
    ConsensoTerapieAntitumorali: TStringField;
    ConsensoCoagulazione: TStringField;
    ConsensoTerapieFarmaci: TStringField;
    ConsensoLkpPaziente: TStringField;
    DB_Consenso: TfrxDBDataset;
    Comuni: TMyTable;
    ComuniComune: TStringField;
    ComuniProv: TStringField;
    ComuniPref: TStringField;
    ComuniCap: TStringField;
    ComuniCodFisc: TStringField;
    DsComuni: TDataSource;
    PreventiviPolizza_Ass_Odontoiatra: TStringField;
    DettFattureNroDente: TFloatField;
    FattureCOD_PAGAMENTO: TStringField;
    FattureCOGNOME_QUIETANZANTE: TStringField;
    FattureNOME_QUIETANZANTE: TStringField;
    FattureCF_QUIETANZANTE: TStringField;
    DocDesigner: TfrxDesigner;
    Query1: TMyQuery;
    Query1Anno: TFloatField;
    Query1Imponibile: TCurrencyField;
    Query1Imposte: TCurrencyField;
    Query1Bolli: TCurrencyField;
    Query1Ritenuta: TCurrencyField;
    Query1CalcTotale: TCurrencyField;
    DataSource1: TDataSource;
    CartelleId_Dottore: TFloatField;
    CartelleLkpDottore: TStringField;
    FATTURATO: TMyTable;
    DSFATTURATO: TDataSource;
    FATTURATOANNO: TFloatField;
    FATTURATOCALCTOTALE: TCurrencyField;
    QryTotCartelle: TMyQuery;
    DsQryTotCartelle: TDataSource;
    QryTotCartelleTotaleCartella: TCurrencyField;
    QryTotCartelleCognome: TStringField;
    QryTotCartelleNome: TStringField;
    QryTotCartelleDataCartella: TDateField;
    QryIncassi: TMyQuery;
    DsQryIncassi: TDataSource;
    QryIncassiDataCartella: TDateField;
    QryIncassiCod_Cartella: TFloatField;
    QryIncassiIncassato: TCurrencyField;
    DsMemResoconto: TDataSource;
    frxDBEtichette: TfrxDBDataset;
    ETICHETTE: TMyTable;
    ETICHETTEPLANNERKEY: TStringField;
    ETICHETTEPAZIENTE: TStringField;
    ETICHETTEDATA: TDateField;
    ETICHETTEINIZIO: TTimeField;
    ETICHETTEFINE: TTimeField;
    ETICHETTECalcDay: TStringField;
    DsETICHETTE: TDataSource;
    frEtichette: TfrxReport;
    frGDPR: TfrxReport;
    PazientiDataPrivacy: TDateField;
    MemPrivacy: TRxMemoryData;
    MemPrivacyDottore: TStringField;
    MemPrivacyCitta: TStringField;
    MemPrivacyDottore2: TStringField;
    DBMemPrivacy: TfrxDBDataset;
    FattureCalcDataDellaValle: TStringField;
    frPrivacy: TfrxReport;
    FatturePAGAMENTO_TRACCIATO: TBooleanField;
    FatturePAGATA: TBooleanField;
    FattureDATA_PAGAMENTO: TDateField;
    DettFattureTIPO_SPESA: TStringField;
    FattureNATURA_IVA: TStringField;
    DettFattureCalcImportoIva: TCurrencyField;
    DettFattureCalcImpScontatoIvato: TCurrencyField;
    FattureIMPORTO_IVA: TCurrencyField;
    FattureACCETTAZIONE_INVIO: TBooleanField;
    frFattura: TfrxReport;
    MyConnection1: TMyConnection;
    ModPagtipo_pagamento_descr: TStringField;
    ModPagtracciato: TSmallintField;
    QryPazientiNominativo: TFloatField;
    QryPazientiCod_Paziente: TIntegerField;
    QryNextPrevMAXNumPreventivo: TFloatField;
    QryNextFattMAXNumFattura: TFloatField;
    DataSource2: TDataSource;
    RptCartella: TfrxReport;
    RptPazienti: TfrxReport;
    LkpArticoliID_Articolo: TIntegerField;
    LkpArticoliCod_Articolo: TStringField;
    Articolicod_articolo: TStringField;
    Articoliid_articolo: TIntegerField;
    QryNextCodArt: TMyQuery;
    QryNextCodArtMAXid_articolo: TIntegerField;
    ImpostazioniNextCod_Art: TIntegerField;
    PreventiviModalitaPagamento: TStringField;
    frPreventivo: TfrxReport;
    ImpostazioniGroupAgendaByDoctor: TBooleanField;
    QryDettFattura: TMyQuery;
    DsQryDettFattura: TDataSource;
    QryDettFatturaaliquotaiva: TFloatField;
    QryDettFatturaCalcImposta: TCurrencyField;
    MemArticoli: TRxMemoryData;
    MemArticoliId_Articolo: TIntegerField;
    MemArticoliCod_Articolo: TStringField;
    MemArticoliDescrizione: TStringField;
    MemArticoliCosto: TCurrencyField;
    MemArticoliPrezzo: TCurrencyField;
    MemArticoliPeso_UM: TStringField;
    MemArticoliCategoria_Terapia: TStringField;
    MemArticoliAliquotaIVA: TIntegerField;
    MemArticoliBarcode: TStringField;
    MemArticoliGiacMin: TIntegerField;
    MemArticoliLivelloRiordino: TIntegerField;
    MemArticoliGiacenzaAttuale: TIntegerField;
    MemResoconto: TRxMemoryData;
    MemResocontoCod_Paziente: TStringField;
    MemResocontoCognomeNome: TStringField;
    MemResocontoDataCartella: TStringField;
    MemResocontoNroCartella: TIntegerField;
    MemResocontoTotaleCartella: TCurrencyField;
    MemResocontoTotIncassato: TCurrencyField;
    MemResocontoTotDaIncassare: TCurrencyField;
    MemSottoscorta: TRxMemoryData;
    MemSottoscortaId_Articolo: TIntegerField;
    MemSottoscortaCod_Articolo: TStringField;
    MemSottoscortaBarcode: TStringField;
    MemSottoscortaDescrizione: TStringField;
    MemSottoscortaCategoria_Terapia: TStringField;
    MemSottoscortaAliquotaIVA: TIntegerField;
    MemSottoscortaPeso_UM: TStringField;
    MemSottoscortaCosto: TCurrencyField;
    MemSottoscortaPrezzo: TCurrencyField;
    MemSottoscortaGiacMin: TIntegerField;
    MemSottoscortaLivelloRiordino: TIntegerField;
    MemSottoscortaGiacenzaAttuale: TIntegerField;
    MemResocontoCalcSaldo: TCurrencyField;
    TempScheda: TMyTable;
    TempSchedachk11: TBlobField;
    TempSchedachk12: TBlobField;
    TempSchedachk13: TBlobField;
    TempSchedachk14: TBlobField;
    TempSchedachk15: TBlobField;
    TempSchedachk16: TBlobField;
    TempSchedachk17: TBlobField;
    TempSchedachk18: TBlobField;
    TempSchedachk21: TBlobField;
    TempSchedachk22: TBlobField;
    TempSchedachk23: TBlobField;
    TempSchedachk24: TBlobField;
    TempSchedachk25: TBlobField;
    TempSchedachk26: TBlobField;
    TempSchedachk27: TBlobField;
    TempSchedachk28: TBlobField;
    TempSchedachk31: TBlobField;
    TempSchedachk32: TBlobField;
    TempSchedachk33: TBlobField;
    TempSchedachk34: TBlobField;
    TempSchedachk35: TBlobField;
    TempSchedachk36: TBlobField;
    TempSchedachk37: TBlobField;
    TempSchedachk38: TBlobField;
    TempSchedachk41: TBlobField;
    TempSchedachk42: TBlobField;
    TempSchedachk43: TBlobField;
    TempSchedachk44: TBlobField;
    TempSchedachk45: TBlobField;
    TempSchedachk46: TBlobField;
    TempSchedachk47: TBlobField;
    TempSchedachk48: TBlobField;
    TempSchedaID: TIntegerField;
    DsDiario: TDataSource;
    Diario: TMyTable;
    DiarioId_Diario: TIntegerField;
    DiarioCod_Paziente: TIntegerField;
    DiarioData: TDateField;
    DiarioOperatore: TStringField;
    DiarioDiarioClinico: TMemoField;
    DiarioDataSterilizzazione: TDateField;
    RptDiario: TfrxReport;
    DBPazientiDiario: TfrxDBDataset;
    DBDiario: TfrxDBDataset;
    DettCartellaDottore: TStringField;
    frxRichObject3: TfrxRichObject;
    DettCartellaId_dottore: TFloatField;
    QryDistinctIva: TMyQuery;
    QryDistinctIvaaliquotaiva: TFloatField;
    DettCartelladiagnosi: TStringField;
    DettCartellatrattamento: TStringField;
    Scad_Fattureid_scadenza: TIntegerField;
    Scad_Fatturecod_documento: TStringField;
    Scad_Fattureid_soggetto: TFloatField;
    Scad_Fatturesoggetto: TStringField;
    Scad_Fatturedescrizione: TStringField;
    Scad_Fatturedare: TFloatField;
    Scad_Fattureavere: TFloatField;
    Scad_Fatturedatascadenza: TDateField;
    Scad_Fatturemese: TFloatField;
    Scad_Fattureanno: TFloatField;
    Scad_Fatturesaldato: TBooleanField;
    Scad_Fatturehidesaldo: TFloatField;
    Scad_Fattureriba: TBooleanField;
    Scad_Fatturescadenzariba: TDateField;
    Scad_Fattureimportoriba: TFloatField;
    Scad_Fattureriferimentoft: TStringField;
    Scad_Fatturebancadebitrice: TStringField;
    Scad_Fatturebancadebitricelocalita: TStringField;
    Scad_Fatturebancadebitriceabi: TStringField;
    Scad_Fatturebancadebitricecab: TStringField;
    Scad_Fatturebancadebitriceiban: TStringField;
    Scad_Fatturesoggettodebitore: TMemoField;
    Scad_Fatturebancacreditrice: TStringField;
    DELScadenze: TMyQuery;
    QryDettFatturasconto: TFloatField;
    QryDettFatturaTotaleRiga: TFloatField;
    QryDettFatturaCalcTotRigaScontato: TCurrencyField;
    Prescrizioni: TMyTable;
    PrescrizioniNum_Prescrizione: TIntegerField;
    PrescrizioniData: TDateTimeField;
    PrescrizioniCod_Paziente: TIntegerField;
    PrescrizioniCognome_Nome: TStringField;
    PrescrizioniCod_Fisc: TStringField;
    PrescrizioniData_Nascita: TDateTimeField;
    PrescrizioniSesso: TStringField;
    PrescrizioniBruxista: TBooleanField;
    PrescrizioniAltri_Dispositivi_Presenti: TStringField;
    PrescrizioniPrecauzioni: TStringField;
    PrescrizioniAllegati_Foto: TBooleanField;
    PrescrizioniAllegati_Diapositive: TBooleanField;
    PrescrizioniMod_Sviluppato_Sup: TBooleanField;
    PrescrizioniAllegati_RX: TBooleanField;
    PrescrizioniMod_Sviluppato_Inf: TBooleanField;
    PrescrizioniApp_Scheletrico_Sup: TBooleanField;
    PrescrizioniApp_Scheletrico_Inf: TBooleanField;
    PrescrizioniMod_in_Studio_Sup: TBooleanField;
    PrescrizioniMod_in_Studio_Inf: TBooleanField;
    PrescrizioniCeratura_Diagnostica: TBooleanField;
    PrescrizioniAllegati_Altro: TStringField;
    PrescrizioniReg_Occlusale_in: TStringField;
    PrescrizioniReg_Occlusale_Altro: TStringField;
    PrescrizioniImpronte_Rilevate_In: TStringField;
    PrescrizioniImpronte_RilevateIn_Altro: TStringField;
    PrescrizioniImpronte_Data_Ora_Rilevazione: TDateTimeField;
    PrescrizioniImpronte_Disinfettate_Con: TStringField;
    PrescrizioniD11: TBooleanField;
    PrescrizioniD12: TBooleanField;
    PrescrizioniD13: TBooleanField;
    PrescrizioniD14: TBooleanField;
    PrescrizioniD15: TBooleanField;
    PrescrizioniD16: TBooleanField;
    PrescrizioniD17: TBooleanField;
    PrescrizioniD18: TBooleanField;
    PrescrizioniD21: TBooleanField;
    PrescrizioniD22: TBooleanField;
    PrescrizioniD23: TBooleanField;
    PrescrizioniD24: TBooleanField;
    PrescrizioniD25: TBooleanField;
    PrescrizioniD26: TBooleanField;
    PrescrizioniD27: TBooleanField;
    PrescrizioniD28: TBooleanField;
    PrescrizioniD31: TBooleanField;
    PrescrizioniD32: TBooleanField;
    PrescrizioniD33: TBooleanField;
    PrescrizioniD34: TBooleanField;
    PrescrizioniD35: TBooleanField;
    PrescrizioniD36: TBooleanField;
    PrescrizioniD37: TBooleanField;
    PrescrizioniD38: TBooleanField;
    PrescrizioniD41: TBooleanField;
    PrescrizioniD42: TBooleanField;
    PrescrizioniD43: TBooleanField;
    PrescrizioniD44: TBooleanField;
    PrescrizioniD45: TBooleanField;
    PrescrizioniD46: TBooleanField;
    PrescrizioniD47: TBooleanField;
    PrescrizioniD48: TBooleanField;
    PrescrizioniProgetto_Descrizione: TMemoField;
    PrescrizioniSi_Richiede_Prog_Tecnico: TBooleanField;
    PrescrizioniSi_Richiede_Preventivo: TBooleanField;
    PrescrizioniData_Consegna: TDateTimeField;
    PrescrizioniLega_Da_Utilizzare: TStringField;
    PrescrizioniLega_Da_Utilizzare_Altro: TStringField;
    PrescrizioniTipo_Lavoro: TStringField;
    PrescrizioniTipo_Lavoro_Altro: TStringField;
    PrescrizioniMorfologia_Viso: TStringField;
    PrescrizioniCampionario: TStringField;
    PrescrizioniCaratterizzazioni: TStringField;
    PrescrizioniData_Ora_Prima_Prova: TDateTimeField;
    PrescrizioniData_Ora_Seconda_Prova: TDateTimeField;
    PrescrizioniData_Ora_Terza_Prova: TDateTimeField;
    PrescrizioniData_Ora_Quarta_Prova: TDateTimeField;
    DsPrescrizioni: TDataSource;
    PrescrizioniColore: TStringField;
    PrescrizioniTipoPrescrizione: TIntegerField;
    Impostazioninextprescrizionemedica: TFloatField;
    Impostazioninextprescrizioneorto: TFloatField;
    PrescrizioniId_Prescrizione: TIntegerField;
    PrescrizioniMat_Allegati_Modelli_Sup: TBooleanField;
    PrescrizioniMat_Allegati_Modelli_Inf: TBooleanField;
    PrescrizioniMat_Allegati_Impronte_Sup: TBooleanField;
    PrescrizioniMat_Allegati_Impronte_Inf: TBooleanField;
    PrescrizioniMat_Allegati_Bande: TBooleanField;
    PrescrizioniMat_Allegati_Attacchi: TBooleanField;
    PrescrizioniMat_Allegati_Rif_Cefalom: TBooleanField;
    PrescrizioniMat_Allegati_Arco_Facciale: TBooleanField;
    PrescrizioniMat_Allegati_Cera_Abituale: TBooleanField;
    PrescrizioniMat_Allegati_Cera_Costruzione: TBooleanField;
    PrescrizioniMat_Allegati_Altro: TBooleanField;
    PrescrizioniNote_Allergie_Disfunz_Handicap: TMemoField;
    PrescrizioniInsMolle: TBooleanField;
    PrescrizioniInsArchi: TBooleanField;
    PrescrizioniInsViti: TBooleanField;
    PrescrizioniInsGanci: TBooleanField;
    PrescrizioniInsAltro: TBooleanField;
    PrescrizioniInsAltroDescrizione: TStringField;
    PrescrizioniPiano_Masticante: TBooleanField;
    PrescrizioniPiano_Liscio: TBooleanField;
    PrescrizioniPiano_Altro: TBooleanField;
    PrescrizioniPiano_Altro_Descrizione: TStringField;
    PrescrizioniCostruzione_Come_Cera: TBooleanField;
    PrescrizioniCostruzione_Con_Arco_Facciale: TBooleanField;
    PrescrizioniCostruzione_Altro: TBooleanField;
    PrescrizioniCostruzione_Altro_Descrizione: TStringField;
    PrescrizioniBande_da_noi_Fornite: TBooleanField;
    PrescrizioniBande_da_noi_Fornite_su: TStringField;
    PrescrizioniBande_da_voi_adattate: TBooleanField;
    PrescrizioniBande_da_voi_adattate_su: TStringField;
    PrescrizioniAttacchiDaPuntare: TBooleanField;
    PrescrizioniAttachiDaPuntareTipo: TStringField;
    PrescrizioniAttachiDaPuntareVES: TBooleanField;
    PrescrizioniAttachiDaPuntarePAL: TBooleanField;
    PrescrizioniAttachiDaPuntareVES_PAL_su: TStringField;
    PrescrizioniAttacchiDiretti: TBooleanField;
    PrescrizioniAttacchiDirettiTipo: TStringField;
    PrescrizioniAttacchiDirettiVES: TBooleanField;
    PrescrizioniAttacchiDirettiPAL: TBooleanField;
    PrescrizioniAttacchiDirettiVES_PAL_su: TStringField;
    PrescrizioniAttacchiIndiretti: TBooleanField;
    PrescrizioniAttacchiIndirettiTipo: TStringField;
    PrescrizioniAttacchiIndirettiVES: TBooleanField;
    PrescrizioniAttacchiIndirettiPAL: TBooleanField;
    PrescrizioniAttacchiIndirettiVES_PAL_su: TStringField;
    PrescrizioniBottoniCleats: TBooleanField;
    PrescrizioniBottoniCleatsTipo: TStringField;
    PrescrizioniBottoniCleatsVES: TBooleanField;
    PrescrizioniBottoniCleatsPAL: TBooleanField;
    PrescrizioniBottoniCleatsVES_PAL_su: TStringField;
    PrescrizioniMat_Caucciu: TBooleanField;
    PrescrizioniMat_Vinilico: TBooleanField;
    PrescrizioniMat_Silicone: TBooleanField;
    PrescrizioniMat_Altro: TBooleanField;
    PrescrizioniMat_Altro_Descrizione: TStringField;
    PrescrizioniAusiliari_Ganci: TBooleanField;
    PrescrizioniAusiliari_Guide: TBooleanField;
    PrescrizioniAusiliari_Altro: TBooleanField;
    PrescrizioniAusiliari_Altro_Descrizione: TStringField;
    HOME_List: TImageList;
    Laboratori: TMyTable;
    DsLaboratori: TDataSource;
    LaboratoriId_Laboratorio: TIntegerField;
    LaboratoriRagione_Sociale: TStringField;
    LaboratoriIndirizzo: TStringField;
    LaboratoriCap: TStringField;
    LaboratoriCitta: TStringField;
    LaboratoriProv: TStringField;
    LaboratoriPiva_CF: TStringField;
    LaboratoriReg_Min_Sanita: TStringField;
    LaboratoriTelefono: TStringField;
    LaboratoriCellulare: TStringField;
    Laboratoriemail: TStringField;
    Laboratorisito: TStringField;
    PrescrizioniLaboratorio: TMemoField;
    PrescrizioniId_Laboratorio: TIntegerField;
    frPrescrizione: TfrxReport;
    DBPrescrizione: TfrxDBDataset;
    PrescrizioniImpronte: TBooleanField;
    TempSchedaFormaViso: TBlobField;
    PrescrizioniCalcEta: TIntegerField;
    PrescrizioniCalcTipoPrescrizione: TStringField;
    Consensoosteoporosi_si: TBooleanField;
    Consensoosteoporosi_no: TBooleanField;
    Cartellebloccata: TBooleanField;
    Cartellefatturata: TBooleanField;
    CartelleId_fattura: TIntegerField;
    CartelleId_Preventivo: TIntegerField;
    FattureRiferimento: TStringField;
    Fatturecod_cartella: TIntegerField;
    FattureFattura_Acconto: TBooleanField;
    FattureData_Invio_TS: TDateField;
    FattureEsito_Invio_TS: TBooleanField;
    FattureErrore_Invio_TS: TStringField;
    CartelleFatturata_Acconto: TBooleanField;
    CartelleId_Fattura_Acconto: TIntegerField;
    CartelleImpFatturati: TFloatField;
    CartelleImpDaFatturare: TFloatField;
    IncassiId_Fattura: TIntegerField;
    Fatt_Cartella: TMyTable;
    DsFatt_Cartella: TDataSource;
    Fatt_CartellaCalcImponibileNetto: TCurrencyField;
    Fatt_CartellaCalcImportoIva: TCurrencyField;
    Fatt_Cartellaimponibile: TFloatField;
    Fatt_Cartellaimportosconto: TFloatField;
    Fatt_Cartellaaliquotaiva: TFloatField;
    Fatt_Cartellaaliquotaritenuta: TFloatField;
    Fatt_Cartellaimportobolli: TFloatField;
    Fatt_CartellaCalcImportoRitenuta: TCurrencyField;
    Fatt_CartellaCalcTotaleFattura: TCurrencyField;
    Fatt_Cartellaanno: TFloatField;
    Fatt_Cartellanumfattura: TFloatField;
    Fatt_Cartelladata: TDateField;
    Fatt_CartellaCalcNumFattura: TStringField;
    Fatt_CartellaCalcAnno: TIntegerField;
    Fatt_Cartellaragionesociale: TStringField;
    Backup: TMyTable;
    BackupMese: TStringField;
    BackupAnno: TIntegerField;
    BackupEseguito: TBooleanField;
    DsBackup: TDataSource;
    BackupId_Mese: TIntegerField;
    BackupLastDay: TIntegerField;
    DumpMensile: TMyDump;
    PicClip: TPicClip;
    Fatt_Pazienti: TMyTable;
    Fatt_Pazientianno: TFloatField;
    Fatt_Pazientinumfattura: TFloatField;
    Fatt_Pazientiid_fattura: TIntegerField;
    Fatt_Pazienticod_paziente: TFloatField;
    Fatt_Pazienticod_cartella: TIntegerField;
    Fatt_Pazientimodalitapagamento: TStringField;
    Fatt_PazientiFattura_Acconto: TBooleanField;
    Fatt_Pazientidata: TDateField;
    Fatt_Pazientinote: TMemoField;
    Fatt_PazientiRiferimento: TStringField;
    Fatt_Pazientialiquotaiva: TFloatField;
    Fatt_Pazientialiquotaritenuta: TFloatField;
    Fatt_Pazientiimponibile: TFloatField;
    Fatt_Pazientiimportosconto: TFloatField;
    Fatt_Pazientiimportobolli: TFloatField;
    Fatt_Pazientiragionesociale: TStringField;
    Fatt_Pazientiindirizzo: TStringField;
    Fatt_Pazienticap: TStringField;
    Fatt_Pazienticitta: TStringField;
    Fatt_Pazientiprov: TStringField;
    Fatt_Pazienticodfisc: TStringField;
    Fatt_Pazientipartitaiva: TStringField;
    Fatt_Pazientibanca: TMemoField;
    Fatt_Pazientinumpreventivo: TStringField;
    Fatt_Pazienticodicenazione: TStringField;
    Fatt_Pazienticausale: TStringField;
    Fatt_Pazientiesigibilita_iva: TStringField;
    Fatt_Pazienticod_cond_pagam: TStringField;
    Fatt_Pazienticod_mod_pagam: TStringField;
    Fatt_Pazientibanca_appoggio: TStringField;
    Fatt_Pazientiiban_appoggio: TStringField;
    Fatt_Pazienticod_pagamento: TStringField;
    Fatt_Pazientiid_modpag: TFloatField;
    Fatt_Pazienticognome_quietanzante: TStringField;
    Fatt_Pazientinome_quietanzante: TStringField;
    Fatt_Pazienticf_quietanzante: TStringField;
    Fatt_Pazientipagamento_tracciato: TBooleanField;
    Fatt_Pazientipagata: TBooleanField;
    Fatt_Pazientidata_pagamento: TDateField;
    Fatt_Pazientinatura_iva: TStringField;
    Fatt_Pazientiaccettazione_invio: TBooleanField;
    Fatt_Pazientiimporto_iva: TFloatField;
    Fatt_PazientiData_Invio_TS: TDateField;
    Fatt_PazientiEsito_Invio_TS: TBooleanField;
    Fatt_PazientiErrore_Invio_TS: TStringField;
    Fatt_PazientiBloccata: TBooleanField;
    Fatt_PazientiCalcImponibileNetto: TCurrencyField;
    Fatt_PazientiCalcImportoRitenuta: TCurrencyField;
    Fatt_PazientiCalcImportoIva: TCurrencyField;
    Fatt_PazientiCalcImportoFattura: TCurrencyField;
    Fatt_PazientiCalcTotaleFattura: TCurrencyField;
    Fatt_PazientiCalcNumFattura: TStringField;
    Fatt_PazientiCalcAnno: TIntegerField;
    DsFatt_Pazienti: TDataSource;
    DBSumList1: TDBSumList;
    Fatt_PazientiLkpModPag: TStringField;
    Fatt_PazientiLkpTipoPagamento: TStringField;
    Dett_Fatt_Pazienti: TMyTable;
    DsDett_Fatt_Pazienti: TDataSource;
    Dett_Fatt_PazientiCalcImportoSconto: TCurrencyField;
    Dett_Fatt_PazientiCalcImportoScontato: TCurrencyField;
    Dett_Fatt_PazientiCalcImporto: TCurrencyField;
    Dett_Fatt_PazientiCalcImportoIva: TCurrencyField;
    Dett_Fatt_PazientiCalcImpScontatoIvato: TCurrencyField;
    Dett_Fatt_Pazientiid_dettaglio: TIntegerField;
    Dett_Fatt_Pazientiid_fattura: TFloatField;
    Dett_Fatt_Pazientiqta: TFloatField;
    Dett_Fatt_Pazientidescrizione: TStringField;
    Dett_Fatt_Pazientiprezzounitario: TFloatField;
    Dett_Fatt_Pazientisconto: TFloatField;
    Dett_Fatt_Pazientialiquotaiva: TFloatField;
    Dett_Fatt_Pazienticod_articolo: TStringField;
    Dett_Fatt_Pazientinrodente: TFloatField;
    Dett_Fatt_Pazientinatura_iva: TStringField;
    Dett_Fatt_Pazientitipo_spesa: TStringField;
    Prev_Pazienti: TMyTable;
    DsPrev_Pazienti: TDataSource;
    Dett_Prev_Pazienti: TMyTable;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    DsDett_Prev_Pazienti: TDataSource;
    Prev_Pazientianno: TFloatField;
    Prev_Pazientinumpreventivo: TFloatField;
    Prev_Pazientiid_preventivo: TIntegerField;
    Prev_Pazientidata: TDateField;
    Prev_Pazienticod_paziente: TFloatField;
    Prev_Pazientiragionesociale: TStringField;
    Prev_Pazientiindirizzo: TStringField;
    Prev_Pazienticap: TStringField;
    Prev_Pazienticitta: TStringField;
    Prev_Pazientiprov: TStringField;
    Prev_Pazienticodfisc: TStringField;
    Prev_Pazientipartitaiva: TStringField;
    Prev_Pazientinsriferimento: TStringField;
    Prev_Pazientivsriferimento: TStringField;
    Prev_Pazientidescrizione: TMemoField;
    Prev_Pazientinote: TMemoField;
    Prev_Pazientitotale: TFloatField;
    Prev_Pazientipolizza_ass_odontoiatra: TStringField;
    Prev_PazientiModalitaPagamento: TStringField;
    Dett_Prev_Pazientiid_dettaglio: TIntegerField;
    Dett_Prev_Pazientiid_preventivo: TFloatField;
    Dett_Prev_Pazientiqta: TFloatField;
    Dett_Prev_Pazientidescrizione: TStringField;
    Dett_Prev_Pazientiprezzounitario: TFloatField;
    Dett_Prev_Pazientisconto: TFloatField;
    Dett_Prev_Pazientialiquotaiva: TFloatField;
    Dett_Prev_Pazienticod_articolo: TStringField;
    DettCartellacod_cartella: TIntegerField;
    Cartellecod_paziente: TIntegerField;
    QryTotCartelleCod_Cartella: TIntegerField;
    DEL_Appuntamenti: TMyQuery;
    procedure DSPazientiStateChange(Sender: TObject);
    procedure CartelleCalcFields(DataSet: TDataSet);
    procedure DsCartelleStateChange(Sender: TObject);
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure CartelleNewRecord(DataSet: TDataSet);
    procedure CartelleBeforePost(DataSet: TDataSet);
    procedure DettCartellaBeforeInsert(DataSet: TDataSet);
    procedure DettCartellaAfterPost(DataSet: TDataSet);
    procedure CartelleAfterScroll(DataSet: TDataSet);
    procedure DettCartellaAfterDelete(DataSet: TDataSet);
    procedure DettCartellaAfterCancel(DataSet: TDataSet);
    procedure DettCartellaNewRecord(DataSet: TDataSet);
    procedure PazientiBeforeDelete(DataSet: TDataSet);
    procedure CartelleBeforeDelete(DataSet: TDataSet);
    procedure PreventiviBeforeDelete(DataSet: TDataSet);
    procedure FattureBeforeDelete(DataSet: TDataSet);
    procedure AttivitaNewRecord(DataSet: TDataSet);
    procedure RichiamiNewRecord(DataSet: TDataSet);
    procedure PreventiviNewRecord(DataSet: TDataSet);
    procedure DettPreventiviCalcFields(DataSet: TDataSet);
    procedure FattureCalcFields(DataSet: TDataSet);
    procedure DettFattureCalcFields(DataSet: TDataSet);
    procedure PreventiviCalcFields(DataSet: TDataSet);
    procedure DettFattureAfterPost(DataSet: TDataSet);
    procedure DettFattureAfterDelete(DataSet: TDataSet);
    procedure FattureAliquotaIVAChange(Sender: TField);
    procedure frPreventivoBeforePrint(Sender: TfrxReportComponent);
    procedure frFatturaBeforePrint(Sender: TfrxReportComponent);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DataModuleCreate(Sender: TObject);
    procedure ScadenzeCalcFields(DataSet: TDataSet);
    procedure ScadenzeAfterPost(DataSet: TDataSet);
    procedure ScadenzeAfterDelete(DataSet: TDataSet);
    procedure ScadenzeBeforePost(DataSet: TDataSet);
    procedure ScadenzeNewRecord(DataSet: TDataSet);
    procedure UtentiBeforePost(DataSet: TDataSet);
    procedure ArticoliAfterScroll(DataSet: TDataSet);
    procedure RptRichiamiGetValue(const VarName: String;
      var Value: Variant);
    procedure FattureBeforePost(DataSet: TDataSet);
    procedure IncassiAfterPost(DataSet: TDataSet);
    procedure IncassiAfterDelete(DataSet: TDataSet);
    procedure IncassiBeforeInsert(DataSet: TDataSet);
    procedure IncassiBeforeEdit(DataSet: TDataSet);
    procedure RptCartellaGetValue(const VarName: String;
      var Value: Variant);
    procedure CartelleAfterPost(DataSet: TDataSet);
    procedure PlannerTableAfterPost(DataSet: TDataSet);
    procedure PlannerTableAfterDelete(DataSet: TDataSet);
    procedure DettPreventiviAfterPost(DataSet: TDataSet);
    procedure DettPreventiviAfterDelete(DataSet: TDataSet);
    procedure frPrivacyBeforePrint(Sender: TfrxReportComponent);
    procedure frFatturaGetValue(const VarName: String; var Value: Variant);
    procedure BancaCalcFields(DataSet: TDataSet);
    procedure BancaAfterDelete(DataSet: TDataSet);
    procedure BancaAfterPost(DataSet: TDataSet);
    procedure BancaBeforePost(DataSet: TDataSet);
    procedure PreventiviBeforePost(DataSet: TDataSet);
    procedure PlannerTableBeforePost(DataSet: TDataSet);
    procedure PlannerTableAfterInsert(DataSet: TDataSet);
    procedure frSchedaGetValue(const VarName: String; var Value: Variant);
    procedure LocateAppuntamento;
    procedure PlannerTableAfterScroll(DataSet: TDataSet);
    procedure PazientiAfterScroll(DataSet: TDataSet);
    procedure frGDPRGetValue(const VarName: String; var Value: Variant);
    procedure frGDPRBeforePrint(Sender: TfrxReportComponent);
    procedure ConsensoNewRecord(DataSet: TDataSet);
    procedure ConsensoBeforeDelete(DataSet: TDataSet);
    procedure PazientiPR_PAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PazientiPR_PASetText(Sender: TField; const Text: String);
    procedure PazientiNewRecord(DataSet: TDataSet);
    procedure FattureNewRecord(DataSet: TDataSet);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure MemResocontoCalcFields(DataSet: TDataSet);
    procedure ETICHETTECalcFields(DataSet: TDataSet);
    procedure DettFattureNewRecord(DataSet: TDataSet);
    procedure FattureAfterScroll(DataSet: TDataSet);
    procedure MyConnection1BeforeConnect(Sender: TObject);
    procedure PreventiviAfterDelete(DataSet: TDataSet);
    procedure FattureAfterDelete(DataSet: TDataSet);
    procedure ArticoliNewRecord(DataSet: TDataSet);
    procedure ArticoliBeforePost(DataSet: TDataSet);
    procedure ArticoliAfterDelete(DataSet: TDataSet);
    procedure QryDettFatturaCalcFields(DataSet: TDataSet);
    procedure RptDiarioBeforePrint(Sender: TfrxReportComponent);
    procedure RptPazientiBeforePrint(Sender: TfrxReportComponent);
    procedure frSchedaBeforePrint(Sender: TfrxReportComponent);
    procedure DettPreventiviBeforePost(DataSet: TDataSet);
    procedure DettPreventiviBeforeInsert(DataSet: TDataSet);
    procedure DsDettPreventiviStateChange(Sender: TObject);
    procedure DsDettFattureStateChange(Sender: TObject);
    procedure PazientiAfterRefresh(DataSet: TDataSet);
    procedure CartelleAfterRefresh(DataSet: TDataSet);
    procedure DsDettCartellaStateChange(Sender: TObject);
    function GetAge(const BirthDate, CurrentDate: TDateTime): Integer;
    procedure FattureAfterPost(DataSet: TDataSet);
    procedure FattureBeforeEdit(DataSet: TDataSet);
    procedure DsPreventiviStateChange(Sender: TObject);
    procedure DsFattureStateChange(Sender: TObject);
    procedure DettFattureQtaChange(Sender: TField);
    procedure DettFatturePrezzoUnitarioChange(Sender: TField);
    procedure DettFattureBeforeEdit(DataSet: TDataSet);
    procedure frPrescrizioneBeforePrint(Sender: TfrxReportComponent);
    procedure PrescrizioniCalcFields(DataSet: TDataSet);
    procedure frxPreviewPrescrizioneBeforePrint(Sender: TfrxReportComponent);
    procedure PrescrizioniAfterScroll(DataSet: TDataSet);
    procedure Fatt_CartellaCalcFields(DataSet: TDataSet);
    function CheckBackupMensile(Id_Mese:Integer):Boolean;
    procedure Fatt_PazientiCalcFields(DataSet: TDataSet);
    procedure Dett_Fatt_PazientiCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  OrderFatt:String;

  {CurrImpFattura e NewImpFattura memorizzano l'importo di una fattura prima e dopo la modifica in modo da verificare se necessario
   il ricalcolo delle nuove scadenze}

  CurrImpFattura:Currency; //Tiene Traccia dell'importo corrente della fattura
  NewImpFattura:Currency; //Memorizza il nuovo Importo Fattura

  {CurrModMap e NewModPag memorizzano la modalità di pagamento di una fattura prima e dopo la modifica in modo da verificare se necessario
   il ricalcolo delle nuove scadenze}

  CurrModPag:Integer; //Tiene Traccia della modalità di pagamento prima della modifica di una fattura
  NewModPag:Integer;  //Tiene Traccia della Modalità di pagamento della fattura dopo l'eventuale modifica,

  OLD_Quantita:Integer; //Tiene Traccia della modifica alla colonna quantita durante la modifica dettaglio fattura
  NEW_Quantita:Integer; //Tiene Traccia della nuova quantità dopo la modifica di una riga di dettaglio fattura

  OLD_Prezzo:Currency;
  NEW_Prezzo:Currency;

  FLG_Ricalcolo:Boolean=False;

  CurrPagata,NewPagata:Boolean; //Tiene traccia dello stato Pagato di una fattura Prima e Dopo la modifica

  PathAllegati:String;
  PathCertificati:String;

implementation

uses U_Main, U_CercaCliente, U_SearchCartella, U_SearchPaziente,
  U_TempForm, U_Ins_Preventivo, U_Richiamo, U_Attivita, U_Paziente,
  U_Cartella, U_Articolo, U_SearchArticoli, U_Ins_Fattura, U_Magazzino,
  U_CercaDoc, U_Banca, U_Dottori, U_Consenso, U_Fiscal, U_Comuni,
  U_Etichette, U_Certificato, U_Sel_Laboratorio, U_FrmSelImporto,
  U_CercaCartelle_Fatturare;

{$R *.dfm}


function TDM.GetAge(const BirthDate, CurrentDate: TDateTime): Integer;
var
    y1, m1, d1: Word; //born
    y2, m2, d2: Word; //today
begin
    Result := 0;
    if CurrentDate < BirthDate then Exit;

    DecodeDate(BirthDate, y1, m1, d1);
    DecodeDate(CurrentDate, y2, m2, d2);

    //Fudge someone born on the leap-day to Feb 28th of the same year
    //strictly for the purposes of this calculation
    if ( (m1=2) and (d1=29) )
            and
        ( not IsLeapYear(y2) ) then
    begin
        d1 := 28;
    end;

    Result := y2-y1; //rough count of years
    //Take away a year of the month/day is before their birth month/day
    if (m2 < m1) or
            ((m2=m1) and (d2<d1)) then
        Dec(Result);
end;



procedure TDM.DSPazientiStateChange(Sender: TObject);
begin
  if MainFormCreated then
  Case DSPazienti.State of
    dsInsert,
      dsEdit:with FrmMain do
               begin
                 BtnNuovoPaziente.Enabled:=False;
                 BtnModificaPaziente.Enabled:=False;
                 BtnEliminaPaziente.Enabled:=False;
                 BtnCercaPaziente.Enabled:=False;
                 BtnStampaPazienti.Enabled:=False;
                 BtnConsenso.Enabled:=False;
                 BtnRicetta.Enabled:=False;
                 BtnRendiconto.Enabled:=False;
                 BtnUscita.Enabled:=False;
                 suiTreeView1.Enabled:=False;
               end;
    dsBrowse:with FrmMain do
               begin
                 BtnNuovoPaziente.Enabled:=True;
                 BtnModificaPaziente.Enabled:=True;
                 BtnEliminaPaziente.Enabled:=True;
                 BtnCercaPaziente.Enabled:=True;
                 BtnStampaPazienti.Enabled:=True;
                 BtnConsenso.Enabled:=True;
                 BtnRicetta.Enabled:=True;
                 BtnRendiconto.Enabled:=True;
                 BtnUscita.Enabled:=True;
                 suiTreeView1.Enabled:=True;
               end;
  end;
end;

procedure TDM.CartelleCalcFields(DataSet: TDataSet);
var
  CodCartella:String;
begin
  if Length(CartelleCod_Cartella.AsString)=1 then CodCartella:='00'+CartelleCod_Cartella.AsString
  else if Length(CartelleCod_Cartella.AsString)=2 then CodCartella:='0'+CartelleCod_Cartella.AsString
  else CodCartella:=CartelleCod_Cartella.AsString;

  CartelleCalcPaziente.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
  CartelleCalcCartella.AsString:='Cartella '+CodCartella+' del '+DateToStr(CartelleDataCartella.AsDateTime);

  //CartelleCalcSaldo.AsCurrency:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
end;

procedure TDM.DsCartelleStateChange(Sender: TObject);
begin
  if MainFormCreated then
  Case DsCartelle.State of
    dsInsert,
      dsEdit:with FrmMain do
               begin
                 BtnNuovaCartella.Enabled:=False;
                 BtnModificaCartella.Enabled:=False;
                 BtnEliminaCartella.Enabled:=False;
                 BtnCercaCartella.Enabled:=False;
                 BtnStampaCartella.Enabled:=False;
                 BtnUscita.Enabled:=False;
               end;
    dsBrowse:with FrmMain do
               begin
                 BtnNuovaCartella.Enabled:=True;
                 BtnModificaCartella.Enabled:=True;
                 BtnEliminaCartella.Enabled:=True;
                 BtnCercaCartella.Enabled:=True;
                 BtnStampaCartella.Enabled:=True;
                 BtnUscita.Enabled:=True;
               end;
  end;
end;

procedure TDM.DsDettCartellaStateChange(Sender: TObject);
begin
  if DsDettCartella.State in [dsInsert,dsEdit]then
    begin
      ModCartella:=True;
      InsCartella:=False;
    end;
end;

procedure TDM.DsDettFattureStateChange(Sender: TObject);
var
  i:Integer;
begin
  if MainFormCreated then
    begin
     if DettFatture.State in ([dsEdit,DsInsert])then
       begin
         for i:=0 to FrmMain.MainMenu.Items.Count-1 do FrmMain.MainMenu.Items.Items[i].Enabled:=False;
         FrmMain.BorderIcons:=[biMinimize,biMaximize];
         FrmMain.suiDBNavigator3.Enabled:=False;
         FrmMain.suiDBNavigator5.Enabled:=False;
         FrmMain.suiTreeView1.Enabled:=False;
         FrmMain.Image2.Enabled:=False;
         FrmMain.GridFatture.Enabled:=False;
         FrmMain.NbNavBar.Enabled:=False;
         FrmMain.GBCercaPazienteFatt.Enabled:=True;
       end
     else
       if DettPreventivi.State in ([dsBrowse])then
         begin
           for i:=0 to FrmMain.MainMenu.Items.Count-1 do FrmMain.MainMenu.Items.Items[i].Enabled:=True;
           FrmMain.BorderIcons:=[biSystemMenu,biMinimize,biMaximize,biHelp];
           FrmMain.suiDBNavigator3.Enabled:=True;
           FrmMain.suiDBNavigator5.Enabled:=True;
           FrmMain.suiTreeView1.Enabled:=True;
           FrmMain.Image2.Enabled:=True;
           FrmMain.GridFatture.Enabled:=True;
           FrmMain.NbNavBar.Enabled:=True;
           FrmMain.GBCercaPazienteFatt.Enabled:=False;
         end;
    end;

end;

procedure TDM.DsDettPreventiviStateChange(Sender: TObject);
var
  i:Integer;
begin
  if MainFormCreated then
    begin
     if DettPreventivi.State in ([dsEdit,DsInsert])then
       begin
         for i:=0 to FrmMain.MainMenu.Items.Count-1 do FrmMain.MainMenu.Items.Items[i].Enabled:=False;
         FrmMain.BorderIcons:=[biMinimize,biMaximize];
         FrmMain.suiDBNavigator7.Enabled:=False;
         FrmMain.suiTreeView1.Enabled:=False;

         FrmMain.Image2.Enabled:=False;
         FrmMain.suiDBNavigator3.Enabled:=False;
         FrmMain.GridPreventivi.Enabled:=False;

         FrmMain.NbNavBar.Enabled:=False;
         FrmMain.GBCercaPazientePrev.Enabled:=False;
         FrmMain.GBConvertiPreventivi.Enabled:=False;
       end
     else
       if DettPreventivi.State in ([dsBrowse])then
         begin
           for i:=0 to FrmMain.MainMenu.Items.Count-1 do FrmMain.MainMenu.Items.Items[i].Enabled:=True;
           FrmMain.BorderIcons:=[biSystemMenu,biMinimize,biMaximize,biHelp];
           FrmMain.suiDBNavigator7.Enabled:=True;
           FrmMain.suiTreeView1.Enabled:=True;

           FrmMain.Image2.Enabled:=True;
           FrmMain.suiDBNavigator3.Enabled:=True;
           FrmMain.GridPreventivi.Enabled:=True;

           FrmMain.NbNavBar.Enabled:=True;
           FrmMain.GBCercaPazientePrev.Enabled:=DM.Preventivi.State in [dsBrowse];
           FrmMain.GBConvertiPreventivi.Enabled:=DM.Preventivi.State in [dsBrowse];
         end;
    end;
end;

procedure TDM.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcNominativo.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
  //Calcolo dell'età del Paziente
  PazientiCalcEta.AsInteger:=GetAge(PazientiDataNascita.AsDateTime,Now);
end;

procedure TDM.CartelleNewRecord(DataSet: TDataSet);
begin
  CartelleDataCartella.AsDateTime:=Now;
end;

function TDM.CheckBackupMensile(Id_Mese: Integer): Boolean;
var
  MeseStr:String;
  Anno,Mese,Giorno:String;
  DataOdierna:String;
  BckFile:String;
  Splash: TForm;
begin
  Anno:=IntToStr(YearOf(Now));
  Mese:=IntToStr(MonthOf(Now));
  Giorno:=IntToStr(DayOf(Now));
  Result:=False;

  case Id_Mese of
    1:MeseStr:='Gennaio';
    2:MeseStr:='Febbraio';
    3:MeseStr:='Marzo';
    4:MeseStr:='Aprile';
    5:MeseStr:='maggio';
    6:MeseStr:='Giugno';
    7:MeseStr:='Luglio';
    8:MeseStr:='Agosto';
    9:MeseStr:='Settembre';
    10:MeseStr:='Ottobre';
    11:MeseStr:='Novembre';
    12:MeseStr:='Dicembre';
  end;

  try
    ListeIni:=TIniFile.Create('.\Liste.ini');
    PathBackupMensile:=ListeIni.ReadString('IMPOSTAZIONI VARIE','BACKUP-MENSILI','');
    if PathBackupMensile='' then ForceDirectories(PathEXE+'BACKUP-MENSILI');
    BckFile:=PathBackupMensile+'\Backup-'+MeseStr+'-'+Anno+'.sql';

    //qui si deve individuare il mese corrente, verificare se siamo nell'ultimo giorno del mese
    //e che non sia stato ancora fatto il backup con il nome file "Backup-'+MeseStr+'-'+Anno+'.sql'"
    //quindi procedere con il backup

    DataOdierna:=Giorno+'-'+Mese+'-'+Anno;
    Backup.Locate('Id_Mese',Mese,[loCaseInsensitive]);
    if DataOdierna=BackupLastDay.AsString+'-'+BackupId_Mese.AsString+'-'+BackupAnno.AsString then
    //La data Odierna è uguale alla data in cui deve essere effettuato il backup
      begin
        if not FileExists(BckFile) then
         //Mostra la splash screen di Attesa mentre effettua il backup
          try
            Splash:=ShowSplashWindow(PicClip.Picture.Icon,'Creazione Backup Mensile ... Attendere.',False, Application.MainForm);
            DumpMensile.BackupToFile(BckFile);
          finally
            Splash.Free;
          end;
      end;
  finally
    ListeIni.Free;
  end;
end;



procedure TDM.CartelleBeforePost(DataSet: TDataSet);
begin
  if CartelleDataCartella.IsNull then CartelleDataCartella.AsDateTime:=Now;
end;


procedure TDM.DettCartellaBeforeInsert(DataSet: TDataSet);
begin
  if (Cartelle.State in [dsEdit,dsInsert])then Cartelle.Post;
end;

procedure TDM.DettCartellaAfterPost(DataSet: TDataSet);
var
  Saldo:Currency;
  TotCartella:Currency;
begin
  FrmMain.UpDateSchema;
  FrmMain.UpDateSchema2;

  TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',TotCartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);

  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;

  DM.Cartelle.Edit;
  DM.CartelleImpDaFatturare.AsCurrency:=DM.SumDettCartella.SumCollection[0].SumValue-DM.CartelleImpFatturati.AsCurrency;
  DM.Cartelle.Post;
end;

procedure TDM.CartelleAfterScroll(DataSet: TDataSet);
var
  Saldo:Currency;
  TotCartella:Currency;
  S:String;
begin
  if MainFormCreated then
    begin
      if FrmMain.Notebook.ActivePageIndex=1 then FrmMain.UpDateSchema;
      if FrmMain.Notebook.ActivePageIndex=1 then FrmMain.UpDateSchema2;

      DM.SumDettCartella.RecalcAll;
      DM.SumIncassi.RecalcAll;

      TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
      FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',TotCartella);

      Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
      FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);

      if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
      else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
      else FrmMain.LblSaldo.Font.Color:=clBlack;

      //Se non esiste una scheda paziente viene disabilitata la sezione delle somme incassate
      FrmMain.NB_DETT_SCHEDA.Enabled:=Cartelle.RecordCount>0;

      //Carica l'immagine di blocco sblocco a seconda dello stato della Cartella

      if DM.Cartellebloccata.AsBoolean then FrmMain.ImgLock.Picture.LoadFromFile('lock.bmp')
      else FrmMain.ImgLock.Picture.LoadFromFile('Unlock.bmp');

      //Si Posiziona nella directoty degli allegati del cliente
      try
        S:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString;
        if DirectoryExists(S) then FrmMain.ShellListView1.Root:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString
        else FrmMain.ShellListView1.Root:=PathEXE+'FOLDER';
      except
        Exit;
      end;

      if Cartellebloccata.AsBoolean then FrmMain.BloccaCartella
      else FrmMain.SbloccaCartella
    end;
end;

procedure TDM.DettCartellaAfterDelete(DataSet: TDataSet);
var
  Saldo,TotCartella:Currency;
begin
  FrmMain.UpDateSchema;

  TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',TotCartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;
end;


procedure TDM.IncassiAfterPost(DataSet: TDataSet);
var
  Saldo, TotCartella:Currency;
begin
  FrmMain.UpDateSchema;
  FrmMain.UpDateSchema2;
  DM.SumDettCartella.RecalcAll;
  DM.SumIncassi.RecalcAll;

  Totcartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',Totcartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;
end;

procedure TDM.IncassiAfterDelete(DataSet: TDataSet);
var
  Saldo, TotCartella:Currency;
begin
  FrmMain.UpDateSchema;
  FrmMain.UpDateSchema2;
  DM.SumDettCartella.RecalcAll;
  DM.SumIncassi.RecalcAll;

  TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',Totcartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;
end;


procedure TDM.DettCartellaAfterCancel(DataSet: TDataSet);
var
  Saldo, TotCartella:Currency;
begin
  FrmMain.UpDateSchema;
  FrmMain.UpDateSchema2;
  DM.SumDettCartella.RecalcAll;
  DM.SumIncassi.RecalcAll;

  TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',Totcartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;
end;


procedure TDM.DettCartellaNewRecord(DataSet: TDataSet);
begin
  DettCartellaCod_Cartella.AsInteger:=CartelleCod_Cartella.AsInteger;
  if CartelleId_Dottore.AsInteger>0 then DettCartellaDottore.AsString:=CartelleLkpDottore.AsString
  else DettCartellaDottore.AsString:='';
end;

procedure TDM.PazientiBeforeDelete(DataSet: TDataSet);
begin
  //Elimina tutte le cartelle associate al Paziente
  if Cartelle.RecordCount>0 then
    begin
      Cartelle.DisableControls;
      Cartelle.First;
      while not Cartelle.IsEmpty do Cartelle.Delete;
      Cartelle.First;
      Cartelle.EnableControls;
    end;

  //Elimina tutte le Attività associate al Paziente
  if Attivita.RecordCount>0 then
    begin
      Attivita.DisableControls;
      Attivita.First;
      while not Attivita.IsEmpty do Attivita.Delete;
      Attivita.First;
      Attivita.EnableControls;
    end;

  //Elimina tutti i Richiami associati al Paziente
  if Richiami.RecordCount>0 then
    begin
      Richiami.DisableControls;
      Richiami.First;
      while not Richiami.IsEmpty do Richiami.Delete;
      Richiami.First;
      Richiami.EnableControls;
    end;

  //Elimina il Diario Clinico
  if Diario.RecordCount>0 then
    begin
      Diario.DisableControls;
      Diario.First;
      while not Diario.IsEmpty do Diario.Delete;
      Diario.First;
      Diario.EnableControls;
    end;

  //Elimina tutte le Immagini associate al Paziente
  if Immagini.RecordCount>0 then
    begin
      Immagini.DisableControls;
      Immagini.First;
      while not Immagini.IsEmpty do Immagini.Delete;
      Immagini.First;
      Immagini.EnableControls;
    end;

  //Elimina Eventuali Appuntamenti legati al Paziente
  DM.DEL_Appuntamenti.ParamByName('iId_Paziente').AsInteger:=DM.PazientiCod_Paziente.AsInteger;
  DM.DEL_Appuntamenti.ExecSQL;

  //bisogna eliminare anche la scheda anamnesi ?
  if Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsInteger,[]) then
    begin
      {if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                      'Si desidera eliminare anche la Scheda Anamnesi associata al Paziente:'+#13+#13+
                                      Uppercase(PazientiCalcNominativo.AsString)+'?'),
                                      'Elimina Scheda Anamnesi', MB_YESNO+MB_ICONWARNING)=idYes then}
      Consenso.Delete;
    end;

    //A questo punto elimina tutti i file allegati previo messaggio di conferma da parte dell'utente


end;

procedure TDM.CartelleBeforeDelete(DataSet: TDataSet);
begin
  //Elimina tutti gli interventi relativi alla cartella che si sta per eliminare
  DettCartella.DisableControls;
  DettCartella.First;
  while not DettCartella.IsEmpty do DettCartella.Delete;
  DettCartella.First;
  DettCartella.EnableControls;

  //Se ci sono fatture agganciate alla cartella che si sta per eliminare un messaggio avvisa
  //l'utente che le eventuali fatture associate alla cartella che si sta eliminando dovranno essere gestite manualmente
  //magari con delle note di credito

  if Fatt_Cartella.RecordCount>0 then
    begin
      Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                   'La Cartella Paziente che si sta eliminando ha delle fatture associate.'+#13+#13+
                                   'Tali fatture dovranno essere gestite manualmente'),
                                   'Elimina Cartella Paziente',MB_OK+MB_ICONWARNING);
    end;
end;

procedure TDM.PreventiviBeforeDelete(DataSet: TDataSet);
begin
  //Elimina tutte le righe di dettaglio del preventivo
  DettPreventivi.DisableControls;
  DettPreventivi.First;
  while not DettPreventivi.IsEmpty do DettPreventivi.Delete;
  DettPreventivi.First;
  DettPreventivi.EnableControls;
end;

procedure TDM.FattureBeforeDelete(DataSet: TDataSet);
var
  Cod_Cartella:Integer;
  Cod_Paziente:Integer;
  Importo_Incasso:Currency;
begin
  //Segna che si sta eliminando una fattura
  //Questo flag serve per impedire il ricalcolo delle scadenze allorquando vengono eliminate le righe di dettagio della fattura
  Del_Fattura:=True;

  //Elimina tutte le righe di dettaglio della Fattura
  DettFatture.DisableControls;
  DettFatture.First;
  while not DettFatture.IsEmpty do DettFatture.Delete;
  DettFatture.First;
  DettFatture.EnableControls;

  Cod_Paziente:=DM.FattureCod_Paziente.AsInteger;
  Cod_Cartella:=DM.Fatturecod_cartella.AsInteger;

   Incassi.MasterSource:=nil;
   if Incassi.Locate('Id_Fattura',FattureId_Fattura.AsInteger,[])then
     begin
       if Application.MessageBox(PChar('Attenzione!'+#13+
                                       'La fattura che si sta per eliminare ha delle somme incassate'+#13+
                                       'associate alla cartella '+DM.CartelleCod_Cartella.AsString+#13+#13+
                                       'Si desidera eliminare anche le somme incassate relative'+#13+
                                       'alla fattura da eliminare?'),'Elimina Incassi', MB_YesNo+MB_IConWarning)=Id_Yes then
         begin
           Importo_Incasso:=IncassiImporto.AsCurrency;
           Incassi.Delete;
           //Prova: Individa il Paziente, quindi la cartella associata alla fattura e quindi
           //aggiorna gli importi fatturati e da fatturare
           Pazienti.Locate('Cod_Paziente',Cod_Paziente,[]);
           Cartelle.Locate('Cod_Cartella',Cod_Cartella,[]);
           Cartelle.Edit;
           CartelleImpFatturati.AsCurrency:=CartelleImpFatturati.AsCurrency-Importo_Incasso;
           CartelleImpDaFatturare.AsCurrency:=CartelleImpDaFatturare.AsCurrency+Importo_Incasso;

           //Se ci sono importi ancora da fatturare la cartella viene rimessa nello stato ancora da fatturare
           //e quindi viene anche sbloccate
           if CartelleImpDaFatturare.AsCurrency>0 then
             begin
               Cartellefatturata.AsBoolean:=False;
               Cartellebloccata.AsBoolean:=False;
             end;
           Cartelle.Post;
         end;
     end;
  Incassi.MasterSource:=DsCartelle;
  Del_Fattura:=False;
end;

procedure TDM.FattureBeforeEdit(DataSet: TDataSet);
begin
  if Ricalcola_Scadenze then
    begin
      //Tiene Traccia dell'importo della fattura prima della modifica
      CurrImpFattura:=FattureImponibile.AsCurrency;
      CurrModPag:=FattureId_ModPag.AsInteger;
    end;
  CurrPagata:=FatturePAGATA.AsBoolean;
end;

procedure TDM.AttivitaNewRecord(DataSet: TDataSet);
begin
  AttivitaData.AsDateTime:=Now;
end;

procedure TDM.RichiamiNewRecord(DataSet: TDataSet);
begin
  RichiamiDataInserimento.AsDateTime:=Now;
end;

procedure TDM.PreventiviNewRecord(DataSet: TDataSet);
begin
  PreventiviCod_Paziente.AsInteger:=-1;
  PreventiviPolizza_Ass_Odontoiatra.AsString:=Polizza_Assicurativa;
end;

procedure TDM.DettPreventiviCalcFields(DataSet: TDataSet);
begin
  DettPreventiviCalcImporto.AsCurrency:=DettPreventiviQta.AsInteger*DettPreventiviPrezzoUnitario.AsCurrency;
  DettPreventiviCalcImportoScontato.AsCurrency:=
    DettPreventiviCalcImporto.AsCurrency-(DettPreventiviCalcImporto.AsCurrency*DettPreventiviSconto.AsFloat/100);
end;

procedure TDM.Dett_Fatt_PazientiCalcFields(DataSet: TDataSet);
begin
  Dett_Fatt_PazientiCalcImporto.AsCurrency:=Dett_Fatt_PazientiQta.AsInteger*Dett_Fatt_PazientiPrezzoUnitario.AsCurrency;
  Dett_Fatt_PazientiCalcImportoSconto.AsCurrency:=(Dett_Fatt_PazientiCalcImporto.AsCurrency*Dett_Fatt_PazientiSconto.AsInteger/100);
  Dett_Fatt_PazientiCalcImportoScontato.AsCurrency:=Dett_Fatt_PazientiCalcImporto.AsCurrency-
    (Dett_Fatt_PazientiCalcImporto.AsCurrency*Dett_Fatt_PazientiSconto.AsInteger/100);
  Dett_Fatt_PazientiCalcImportoIva.AsCurrency:=(Dett_Fatt_PazientiCalcImportoScontato.AsCurrency*Dett_Fatt_PazientiAliquotaIva.AsFloat/100);
  Dett_Fatt_PazientiCalcImpScontatoIvato.AsCurrency:=Dett_Fatt_PazientiCalcImportoScontato.AsCurrency+Dett_Fatt_PazientiCalcImportoIva.AsCurrency;
end;

procedure TDM.FattureCalcFields(DataSet: TDataSet);
var
  MESE:String;
begin
  FattureCalcImponibileNetto.AsCurrency:=FattureImponibile.AsCurrency-FattureImportoSconto.AsCurrency;
  FattureCalcImportoIva.AsCurrency:=SumFatt.SumCollection[3].SumValue;

  FattureCalcImportoRitenuta.AsCurrency:=(FattureCalcImponibileNetto.AsCurrency*FattureAliquotaRitenuta.AsInteger/100);

  FattureCalcTotaleFattura.AsCurrency:=FattureCalcImponibileNetto.AsCurrency+FattureCalcImportoIva.AsCurrency-
    FattureCalcImportoRitenuta.AsCurrency+FattureImportoBolli.AsCurrency;


  if OrderFatt='1' then
    begin
      if not FattureData.IsNull then
        begin
          FattureCalcNumFattura.AsString:='Fatt. '+FattureNumFattura.AsString+' del '+FattureData.AsString+' - '+FattureRagioneSociale.AsString;
          FattureCalcAnno.AsInteger:=YearOf(FattureData.AsDateTime);
        end
      else
        FattureCalcNumFattura.AsString:='Fatt. '+FattureNumFattura.AsString+' - '+FattureRagioneSociale.AsString;
    end
  else
    begin
      if not FattureData.IsNull then
        begin
          FattureCalcNumFattura.AsString:=FattureRagioneSociale.AsString+' - Fatt. '+FattureNumFattura.AsString+' del '+FattureData.AsString;
          FattureCalcAnno.AsInteger:=YearOf(FattureData.AsDateTime);
        end
      else
        FattureCalcNumFattura.AsString:=FattureRagioneSociale.AsString+' - Fatt. '+FattureNumFattura.AsString;
    end;


  //Se l'importo iva è nullo allora Calcola il piè pagina
  //* Prestazioni esenti da I.V.A. ai sensi dell’art. 10, comma 1, n. 18 del D.P.R. 633/72 e successive modificazioni"

  if (FattureCalcImportoIva.AsCurrency<=0)then
    FattureCalcPiePagina.AsString:=   '* Prestazioni sanitarie esenti da I.V.A. ai sensi dell’art. 10, comma 1, n. 18 del D.P.R. 633/72 e successive modificazioni'+#13+
                                      '* Le prestazioni non sanitarie sono soggette ad IVA. Le prestazioni di lavoro autonomo sono soggette a ritenuta di acconto.'
  else FattureCalcPiePagina.AsString:='* Le prestazioni non sanitarie sono soggette ad IVA. Le prestazioni di lavoro autonomo sono soggette a ritenuta di acconto.';

  if (MemPrivacyCitta.AsString<>'') then
    case MonthOf(FattureData.AsDateTime)of
      1:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' GENNAIO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      2:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' FEBBRAIO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      3:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' MARZO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      4:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' APRILE '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      5:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' MAGGIO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      6:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' GIUGNO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      7:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' LUGLIO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      8:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' AGOSTO '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      9:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' SETTEMBRE '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      10:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' OTTOBRE '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      11:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' NOVEMBRE '+IntToStr(YearOf(DM.FattureData.AsDateTime));
      12:FattureCalcDataDellaValle.AsString:=MemPrivacyCitta.AsString+', '+IntToStr(DayOf(FattureData.AsDateTime))+' DICEMBRE '+IntToStr(YearOf(DM.FattureData.AsDateTime));
    end;
end;

procedure TDM.DettFattureCalcFields(DataSet: TDataSet);
begin
  DettFattureCalcImporto.AsCurrency:=DettFattureQta.AsInteger*DettFatturePrezzoUnitario.AsCurrency;
  DettFattureCalcImportoSconto.AsCurrency:=(DettFattureCalcImporto.AsCurrency*DettFattureSconto.AsInteger/100);
  DettFattureCalcImportoScontato.AsCurrency:=DettFattureCalcImporto.AsCurrency-
    (DettFattureCalcImporto.AsCurrency*DettFattureSconto.AsInteger/100);
  DettFattureCalcImportoIva.AsCurrency:=(DettFattureCalcImportoScontato.AsCurrency*DettFattureAliquotaIva.AsFloat/100);
  DettFattureCalcImpScontatoIvato.AsCurrency:=DettFattureCalcImportoScontato.AsCurrency+DettFattureCalcImportoIva.AsCurrency;
end;



procedure TDM.PreventiviCalcFields(DataSet: TDataSet);
begin
  {if not DM.PreventiviData.IsNull then DM.PreventiviCalcNumPrev.AsString:=
    ' Prev. '+DM.PreventiviNumPreventivo.AsString+' del '+DM.PreventiviData.AsString+' '
  else DM.PreventiviCalcNumPrev.AsString:=' Prev. '+DM.PreventiviNumPreventivo.AsString+' ';}

  if not DM.PreventiviData.IsNull then
    DM.PreventiviCalcNumPrev.AsString:=DM.PreventiviRagioneSociale.AsString+' - Prev. '+
    DM.PreventiviNumPreventivo.AsString+' del '+DM.PreventiviData.AsString
  else DM.PreventiviCalcNumPrev.AsString:=DM.PreventiviRagioneSociale.AsString+' - Prev. '+DM.PreventiviNumPreventivo.AsString;
end;

procedure TDM.DsPreventiviStateChange(Sender: TObject);
begin
  if MainFormCreated then
  Case DsPreventivi.State of
    dsInsert,
      dsEdit:with FrmMain do
               begin
                 BtnNuovoDoc.Enabled:=False;
                 BtnModificaDoc.Enabled:=False;
                 BtnEliminaDoc.Enabled:=False;
                 BtnConfermaDoc.Enabled:=True;
                 BtnAnnullaDoc.Enabled:=True;
                 BtnCercaDoc.Enabled:=False;
                 BtnStampaDoc.Enabled:=False;
                 GBCercaPazientePrev.Enabled:=True;
                 GBConvertiPreventivi.Enabled:=False;
                 BtnUscita.Enabled:=False;
               end;
    dsBrowse:with FrmMain do
               begin
                 BtnNuovoDoc.Enabled:=True;
                 BtnModificaDoc.Enabled:=True;
                 BtnEliminaDoc.Enabled:=True;
                 BtnConfermaDoc.Enabled:=False;
                 BtnAnnullaDoc.Enabled:=False;
                 BtnCercaDoc.Enabled:=True;
                 BtnStampaDoc.Enabled:=True;
                 GBCercaPazientePrev.Enabled:=False;
                 GBConvertiPreventivi.Enabled:=True;
                 BtnUscita.Enabled:=True;
               end;
  end;
end;

procedure TDM.DsFattureStateChange(Sender: TObject);
begin
  if MainFormCreated then
  Case DsFatture.State of
    dsInsert,
      dsEdit:with FrmMain do
               begin
                 BtnNuovoDoc.Enabled:=False;
                 BtnModificaDoc.Enabled:=False;
                 BtnEliminaDoc.Enabled:=False;
                 BtnConfermaDoc.Enabled:=True;
                 BtnAnnullaDoc.Enabled:=True;
                 BtnCercaDoc.Enabled:=False;
                 BtnStampaDoc.Enabled:=False;
                 BtnUscita.Enabled:=False;
                 GBCercaPazienteFatt.Enabled:=True;
               end;
    dsBrowse:with FrmMain do
               begin
                 BtnNuovoDoc.Enabled:=True;
                 BtnModificaDoc.Enabled:=True;
                 BtnEliminaDoc.Enabled:=True;
                 BtnConfermaDoc.Enabled:=False;
                 BtnAnnullaDoc.Enabled:=False;
                 BtnCercaDoc.Enabled:=True;
                 BtnStampaDoc.Enabled:=True;
                 GBCercaPazienteFatt.Enabled:=False;
                 BtnUscita.Enabled:=True;
               end;
  end;
end;

procedure TDM.DettFattureAfterPost(DataSet: TDataSet);
begin
  NEW_Quantita:=DM.DettFattureQta.AsInteger;
  NEW_Prezzo:=DM.DettFatturePrezzoUnitario.AsCurrency;

  DettFatture.DisableControls;
  if not(DM.Fatture.State in [dsEdit,dsInsert])then DM.Fatture.Edit;

  //Salva il Totale Imponibile
  SumFatt.RecalcAll;
  DM.FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;

  //Salva il Totale Imponibile Scontato
  DM.FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

  //Individua le differenti aliquote presenti nei dettagli fattura
  QryDistinctIva.Close;
  QryDistinctIva.ParamByName('ID_FATTURA').AsInteger:=DM.FattureId_Fattura.AsInteger;
  QryDistinctIva.Open;
  QryDistinctIva.Last;
  DM.FattureAliquotaIVA.AsInteger:=QryDistinctIvaaliquotaiva.AsInteger;
  if(DM.Fatture.State in [dsEdit,dsInsert])then DM.Fatture.Post;
  DettFatture.EnableControls;
end;


procedure TDM.DettFattureBeforeEdit(DataSet: TDataSet);
begin
  OLD_Quantita:=DM.DettFattureQta.AsInteger;
  OLD_Prezzo:=DM.DettFatturePrezzoUnitario.AsCurrency;
end;

procedure TDM.DettFattureAfterDelete(DataSet: TDataSet);
begin
  {Se non si sta eliminando un'intera fattura ma solo una o più righe di dettaglio
  viene impostato il flag FLG_Ricalcolo che avvia, dopo il post del totate fattura,
  il ricalcolo delle scadenze associate}

  if not Del_Fattura then FLG_Ricalcolo:=TRUE;

  DM.DettFatture.DisableControls;
  if not(Fatture.State in [dsEdit,dsInsert])then Fatture.Edit;
  //Salva il Totale Imponibile
  FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;
  //Salva il Totale Imponibile Scontato
  FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

  //Individua le differenti aliquote presenti nei dettagli fattura
  QryDistinctIva.Close;
  QryDistinctIva.ParamByName('ID_FATTURA').AsInteger:=DM.FattureId_Fattura.AsInteger;
  QryDistinctIva.Open;
  QryDistinctIva.Last;

  if(Fatture.State in [dsEdit,dsInsert])then Fatture.Post;
  DM.DettFatture.EnableControls;
end;

procedure TDM.FattureAliquotaIVAChange(Sender: TField);
begin
  if FattureAliquotaIVA.IsNull then FattureImportoBolli.AsCurrency:=1.81
  else FattureImportoBolli.Clear;
end;

procedure TDM.frPrescrizioneBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Int_Prescrizione.rtf')then
    try
      RichView:=TfrxRichView(frPrescrizione.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      Stream.LoadFromFile(PathEXE+'Int_Prescrizione.rtf');
      SetLength(Str, Stream.Size);
      Stream.Read(Str[1], Stream.Size);
      RichView.RichEdit.Text:=Str;
    finally
      Stream.Free;
    end;
   DM.TempScheda.Edit;
   DM.TempSchedaFormaViso.Clear;
   if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='OVALE' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Cerchio.bmp')
   else if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='TRIANGOLARE' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Triangolo.bmp')
   else if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='QUADRATO' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Quadrato.bmp');
   DM.TempScheda.Post;
end;


procedure TDM.frPreventivoBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(frPreventivo.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        {RichView.Top:=20;
        RichView.Left:=410;
        RichView.Height:=120;
        RichView.Width:=300;}
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;


procedure TDM.frFatturaBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(frFattura.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;



procedure TDM.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Item.Color:=clWhite;
  if not DM.PlannerTableLkpColore.IsNull then
    begin
      Item.ColorTo:=PlannerTableLkpColore.AsInteger;
      Item.SelectColor:=$00BBFFFF;;
      Item.TrackColor:=clWhite;
      Item.CaptionBkg:=Item.Color;
    end
  else
    begin

    end;
  if Fields.FieldByName('PAZIENTE').AsString<>'' then
    Item.Text.Text:=Fields.FieldByName('PAZIENTE').AsString+':'+#13+Fields.FieldByName('NOTES').AsString
  else Item.Text.Text:=Fields.FieldByName('NOTES').AsString;
end;

procedure TDM.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Fields.FieldByName('FROMCOLOR').AsInteger:=clWhite;
  Fields.FieldByName('TOCOLOR').AsInteger:=$00B1E4F3;
  Fields.FieldByName('SELECTCOLOR').AsInteger:=$00BBFFFF;
  Fields.FieldByName('CAPTION').AsBoolean:=Item.CaptionType=ctTime;
end;



procedure TDM.DataModuleCreate(Sender: TObject);
var
  Mese:Integer;
  i: Integer;
begin
  try
    ListeIni:=TIniFile.Create('.\Liste.ini');
    OrderFatt:=ListeIni.ReadString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','');
    PathAllegati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','ALLEGATI','');
    PathCertificati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');
  finally
    ListeIni.Free;
  end;

  DBDaySource1.Day:=Now;
  QryNextPrev.Close;
  QryNextPrev.ParamByName('iAnno').AsInteger:=CurrentYear;
  QryNextPrev.Open;

  QryNextFatt.Close;
  QryNextFatt.ParamByName('iAnno').AsInteger:=CurrentYear;
  QryNextFatt.Open;

  QryNextCodArt.Close;
  QryNextCodArt.Open;


  Impostazioni.Edit;
  ImpostazioniNextPreventivo.AsInteger:=QryNextPrevMAXNumPreventivo.AsInteger+1;
  ImpostazioniNextFattura.AsInteger:=QryNextFattMAXNumFattura.AsInteger+1;
  Impostazioni.Post;

  FATTURATO.First;
  while not FATTURATO.IsEmpty do
    begin
      FATTURATO.Delete;
      FATTURATO.Next;
    end;
  FATTURATO.First;  

  Query1.First;
  while not Query1.Eof do
    begin
      if not Query1Anno.IsNull then
        begin
          FATTURATO.Append;
          FATTURATOANNO.AsInteger:=Query1Anno.AsInteger;
          FATTURATOCALCTOTALE.AsCurrency:=Query1CalcTotale.AsCurrency;
          FATTURATO.Post;
        end;
      Query1.Next;
    end;

  //Filtra le fatture per mostrare solo quelle dell'anno corrente
  Fatture.DisableControls;
  Fatture.Filtered:=False;
  Fatture.Filter:='Anno='+IntToStr(CurrentYear);
  Fatture.Filtered:=True;
  Fatture.EnableControls;


  //Filtra i Preventivi per mostrare solo quelli dell'anno corrente
  Preventivi.DisableControls;
  Preventivi.Filtered:=False;
  Preventivi.Filter:='Anno='+IntToStr(CurrentYear);
  Preventivi.Filtered:=True;
  Preventivi.EnableControls;

  //Popola la tabella Backup con i nomi dei mesi e dell'anno
  //Tiene traccia del mese corrente
  Mese:=MonthOf(Now);
  for i:=1 to 12 do
    begin
      if not Backup.Locate('Id_Mese',i,[]) then
        begin
          Backup.Insert;
          BackupId_Mese.AsInteger:=i;
          case i  of
            1:begin
                BackupMese.AsString:='Gennaio';
                BackupLastDay.AsInteger:=31;
              end;
            2:begin
                if IsLeapYear(CurrentYear) then BackupLastDay.AsInteger:=29
                else BackupLastDay.AsInteger:=28;
                BackupMese.AsString:='Fabbraio';
              end;
            3:begin
                BackupMese.AsString:='Marzo';
                BackupLastDay.AsInteger:=31;
              end;
            4:begin
                BackupMese.AsString:='Aprile';
                BackupLastDay.AsInteger:=30;
              end;
            5:begin
                BackupMese.AsString:='Maggio';
                BackupLastDay.AsInteger:=31;
              end;
            6:begin
                BackupMese.AsString:='Giugno';
                BackupLastDay.AsInteger:=30;
              end;
            7:begin
                BackupMese.AsString:='Luglio';
                BackupLastDay.AsInteger:=31;
              end;
            8:begin
                BackupMese.AsString:='Agosto';
                BackupLastDay.AsInteger:=31;
              end;
            9:begin
                BackupMese.AsString:='Settembre';
                BackupLastDay.AsInteger:=30;
              end;
            10:begin
                 BackupMese.AsString:='Ottobre';
                 BackupLastDay.AsInteger:=31;
               end;
            11:begin
                 BackupMese.AsString:='Novembre';
                 BackupLastDay.AsInteger:=30;
               end;
            12:begin
                 BackupMese.AsString:='Dicembre';
                 BackupLastDay.AsInteger:=31;
               end;
          end;
         BackupAnno.AsInteger:=CurrentYear;
         BackupEseguito.AsBoolean:=False;
         Backup.Post;
        end
      else if (BackupId_Mese.AsInteger=2)and(IsLeapYear(CurrentYear)) then
        begin
          Backup.Edit;
          BackupLastDay.AsInteger:=29;
          Backup.Post;
        end;
    end;
end;

procedure TDM.LocateAppuntamento;
var
  dt1,dt2:tdatetime;
  key:string;
  plIt: TPlannerItem;
begin
  if(MainFormCreated)and(DM.PlannerTable.RecordCount>0) then
    begin
      PlannerTable.DisableControls;
      FrmMain.Planner.Positions:=GG;
      Screen.Cursor:=crHourGlass;
      if DBDaySource1.LocateFirstItem('*'+PlannerTableNOTES.AsString+'*',[fnMatchRegular,fnText,fnCaptionText],dt1,dt2,key) then
      begin

        FrmMain.Planner.ItemSource:=nil;
        DBDaySource1.Day:=dt1;
        FrmMain.MonthCalendar1.Date:=dt1;
        plIt:=FrmMain.Planner.Items.FindKey(key);
        if Assigned(plIt) then
          begin
            plIt.Selected := true;
            plIt.Focus := true;
          end;
        FrmMain.Planner.ItemSource:=DBDaySource1;
      end;
      Screen.Cursor:=crDefault;
      FrmMain.Planner.Positions:=GG;
      PlannerTable.EnableControls;
    end;
end;



procedure TDM.ScadenzeCalcFields(DataSet: TDataSet);
begin
  try
    if Scadenze.State in [dsCalcFields]then
      ScadenzeCalcSaldo.AsCurrency:=ScadenzeAvere.AsCurrency-ScadenzeDare.AsCurrency;
  except
    Exit;
  end;
end;

procedure TDM.ScadenzeAfterPost(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      FrmMain.SIModificaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
      FrmMain.SIEliminaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
      FrmMain.SIStampaScadenze.Enabled:=DM.Scadenze.RecordCount>0;
      //Alla fine carica nuovamente l'elenco dei soggetti nel combobox per il filtro
      QryNominativi.Close;
      QryNominativi.Open;
      QryNominativi.First;
      FrmMain.CbSoggetti.Properties.Items.Clear;
      while not QryNominativi.Eof do
        begin
          FrmMain.CbSoggetti.Properties.Items.Add(QryNominativiSoggetto.AsString);
          QryNominativi.Next;
        end;
    end;
  Scad_Fatture.Refresh;  
end;

procedure TDM.ScadenzeAfterDelete(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      FrmMain.SIModificaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
      FrmMain.SIEliminaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
      FrmMain.SIStampaScadenze.Enabled:=DM.Scadenze.RecordCount>0;
    end;
  Scad_Fatture.Refresh;  
end;

procedure TDM.ScadenzeBeforePost(DataSet: TDataSet);
begin
  if ScadenzeSaldato.IsNull then ScadenzeSaldato.AsBoolean:=False;
  if ScadenzeDare.IsNull then ScadenzeDare.AsCurrency:=0;
  if ScadenzeAvere.IsNull then ScadenzeAvere.AsCurrency:=0;
  //ScadenzeHideSaldo.AsCurrency:=ScadenzeDare.AsCurrency-ScadenzeAvere.AsCurrency;
  ScadenzeHideSaldo.AsCurrency:=ScadenzeAvere.AsCurrency-ScadenzeDare.AsCurrency;
end;

procedure TDM.ScadenzeNewRecord(DataSet: TDataSet);
begin
  ScadenzeSaldato.AsBoolean:=False;
end;


procedure TDM.UtentiBeforePost(DataSet: TDataSet);
begin
  UtentiUsername.AsString:=Uppercase(UtentiUsername.AsString);
  UtentiPassword.AsString:=Uppercase(UtentiPassword.AsString);
end;

procedure TDM.ArticoliAfterScroll(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      QryGiacenze.Close;
      QryGiacenze.ParamByName('iId_Articolo').AsInteger:=ArticoliId_Articolo.AsInteger;
      QryGiacenze.Open;
    end;
end;

procedure TDM.RptRichiamiGetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName,'Paziente')=0 then
    Value:=UpperCase(DM.PazientiCalcNominativo.AsString);
end;

procedure TDM.FattureBeforePost(DataSet: TDataSet);
begin
  FattureAnno.AsInteger:=YearOf(FattureData.AsDateTime);
  //Salva il Totale Imponibile
  FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;

  //Salva il Totale Imponibile Scontato
  FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

  //Salva l'importo totale IVA
  FattureIMPORTO_IVA.AsCurrency:=SumFatt.SumCollection[3].SumValue;
end;



procedure TDM.IncassiBeforeInsert(DataSet: TDataSet);
begin
  if (Cartelle.State in [dsEdit,dsInsert]) then Cartelle.Post;
end;

procedure TDM.IncassiBeforeEdit(DataSet: TDataSet);
begin
  if (Cartelle.State in [dsEdit,dsInsert]) then Cartelle.Post;
end;

procedure TDM.PazientiAfterRefresh(DataSet: TDataSet);
begin
  if DM.Cartelle.State in [dsBrowse] then DM.Cartelle.Refresh;
  if DM.Incassi.State in [dsBrowse] then DM.Incassi.Refresh;
  if DM.DettCartella.State in [dsBrowse] then DM.DettCartella.Refresh;
  if DM.Diario.State in [dsBrowse] then DM.Diario.Refresh;
end;

procedure TDM.RptCartellaGetValue(const VarName: String; var Value: Variant);
var
  Saldo:Currency;
begin
  Saldo:=(SumDettCartella.SumCollection[0].SumValue-SumIncassi.SumCollection[0].SumValue);
  if CompareText(VarName,'Saldo')=0 then
    begin
      if Saldo > 0 then Value:='Saldo a Credito: '+FormatCurr('€ #,##0.#0',Saldo)+' ';
      if Saldo = 0 then Value:='Saldo: '+FormatCurr('€ #,##0.#0',Saldo)+' ';
      if Saldo < 0 then Value:='Saldo a Debito: '+FormatCurr('€ #,##0.#0',Saldo)+' ';
    end;
end;


procedure TDM.RptDiarioBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(RptDiario.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;


procedure TDM.RptPazientiBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(RptPazienti.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;


procedure TDM.frSchedaBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(frScheda.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;

end;



procedure TDM.CartelleAfterPost(DataSet: TDataSet);
begin
  //Crea la Cartella Allegati per LA SCHEDA appena inserita
  if not DirectoryExists(PathEXE+'ALLEGATI\') then ForceDirectories(PathEXE+'ALLEGATI\');
  if not DirectoryExists(PathEXE+'ALLEGATI\'+CartelleCod_Cartella.AsString) then
    ForceDirectories(PathEXE+'ALLEGATI\'+Uppercase(DM.CartelleCod_Cartella.AsString));

  if Cartellebloccata.AsBoolean then FrmMain.BloccaCartella
  else FrmMain.SbloccaCartella
end;

procedure TDM.CartelleAfterRefresh(DataSet: TDataSet);
begin
  //DettCartella.Refresh;
end;

procedure TDM.PlannerTableAfterPost(DataSet: TDataSet);
begin
  FrmMain.GBModificaAppuntamento.Enabled:=PlannerTable.RecordCount>0;
  FrmMain.GBEliminaAppuntamento.Enabled:=PlannerTable.RecordCount>0;
end;

procedure TDM.PlannerTableAfterDelete(DataSet: TDataSet);
begin
  FrmMain.GBModificaAppuntamento.Enabled:=PlannerTable.RecordCount>0;
  FrmMain.GBEliminaAppuntamento.Enabled:=PlannerTable.RecordCount>0;

end;

procedure TDM.DettPreventiviAfterPost(DataSet: TDataSet);
begin
  DM.DettPreventivi.DisableControls;
  if not(DM.Preventivi.State in [dsEdit,dsInsert])then Preventivi.Edit;
  //Salva il Totale Preventivo
  PreventiviTotale.AsCurrency:=SumPrev.SumCollection[0].SumValue;
  if(DM.Preventivi.State in [dsEdit,dsInsert])then Preventivi.Post;
  DM.DettPreventivi.EnableControls;
  FrmMain.GridPreventivi.Enabled:=True;
  FrmMain.GBCercaPazientePrev.Enabled:=Preventivi.State in [dsEdit];
  FrmMain.GBConvertiPreventivi.Enabled:=Preventivi.State in [dsBrowse];
end;

procedure TDM.DettPreventiviBeforeInsert(DataSet: TDataSet);
begin
  if Preventivi.State in [dsEdit] then Preventivi.Post;
  if MainFormCreated then
    begin
      FrmMain.suiTreeView1.Enabled:=True;
      FrmMain.GridPreventivi.Enabled:=False;
      FrmMain.Image2.Enabled:=True;
      FrmMain.suiDBNavigator3.Enabled:=True;
      FrmMain.suiDBNavigator7.Enabled:=True;
    end;
end;

procedure TDM.DettPreventiviBeforePost(DataSet: TDataSet);
begin
  //if Preventivi.State in [dsEdit] then Preventivi.Post;
end;

procedure TDM.DettPreventiviAfterDelete(DataSet: TDataSet);
begin
  if not(DM.Preventivi.State in [dsEdit,dsInsert])then Preventivi.Edit;
  //Salva il Totale Preventivo
  PreventiviTotale.AsCurrency:=SumPrev.SumCollection[0].SumValue;
  if(DM.Preventivi.State in [dsEdit,dsInsert])then Preventivi.Post;

end;

procedure TDM.frPrivacyBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(frPrivacy.FindObject('Rich1'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;

procedure TDM.frFatturaGetValue(const VarName: String; var Value: Variant);
begin
  {if CompareText(VarName,'sconto')=0 then
    begin
      if DM.FattureImportoSconto.AsCurrency>0 then Value:='Totale Sconto'
      else Value:='';
    end;}

  if CompareText(VarName,'imposta')=0 then
    begin
      if DM.FattureIMPORTO_IVA.AsCurrency>0 then Value:='Totale IVA '+DM.FattureAliquotaIVA.AsString+'% '
      else Value:='';
    end;


  if CompareText(VarName,'ritenuta')=0 then
    begin
      if not DM.FattureAliquotaRitenuta.IsNull then Value:='Ritenuta ('+DM.FattureAliquotaRitenuta.AsString+'%) '
      else Value:='';
    end;

  if CompareText(VarName,'bolli')=0 then
    begin
      if not DM.FattureImportoBolli.IsNull then Value:='Bolli '
      else Value:='';
    end;

  if CompareText(VarName,'TipoDocumento')=0 then
    begin
      if DM.FattureCalcImportoRitenuta.AsCurrency>0 then Value:='Fattura'
      else Value:='Ricevuta Sanitaria';
    end;

  if CompareText(VarName,'Totale')=0 then
    begin
      if DM.FattureCalcImportoRitenuta.AsCurrency>0 then Value:='Totale Fattura '
      else Value:='Totale Ricevuta ';
    end;
end;

procedure TDM.BancaCalcFields(DataSet: TDataSet);
begin
  BancaCalcSaldo.AsCurrency:=BancaAvere.AsCurrency-BancaDare.AsCurrency;
end;

procedure TDM.BancaAfterDelete(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      FrmMain.SIModificaBanca.Enabled:=DM.Banca.RecordCount>0;
      FrmMain.SIEliminaBanca.Enabled:=DM.Banca.RecordCount>0;
      FrmMain.SIStampaBanca.Enabled:=DM.Banca.RecordCount>0;
    end;
end;

procedure TDM.BancaAfterPost(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      FrmMain.SIModificaBanca.Enabled:=DM.Banca.RecordCount>0;
      FrmMain.SIEliminaBanca.Enabled:=DM.Banca.RecordCount>0;
      FrmMain.SIStampaBanca.Enabled:=DM.Banca.RecordCount>0;
    end;
end;

procedure TDM.BancaBeforePost(DataSet: TDataSet);
begin
  BancaHideSaldo.AsCurrency:=BancaAvere.AsCurrency-BancaDare.AsCurrency;
  if BancaDare.IsNull then BancaDare.AsCurrency:=0;
  if BancaAvere.IsNull then BancaAvere.AsCurrency:=0;
end;

procedure TDM.PreventiviBeforePost(DataSet: TDataSet);
begin
  PreventiviAnno.AsInteger:=YearOf(PreventiviData.AsDateTime);
end;

procedure TDM.PlannerTableBeforePost(DataSet: TDataSet);
begin
  if not PlannerTableSTARTTIME.IsNull then
    PlannerTableDATA.AsDateTime:=PlannerTableSTARTTIME.AsDateTime;
end;

procedure TDM.PlannerTableAfterInsert(DataSet: TDataSet);
begin
  if not PlannerTableSTARTTIME.IsNull then
    PlannerTableDATA.AsDateTime:=PlannerTableSTARTTIME.AsDateTime;
end;


procedure TDM.frSchedaGetValue(const VarName: String; var Value: Variant);
begin
  if CompareText(VarName,'element1')=0 then
    begin
      DM.Cartelle.First;
      if not DM.CartelleDataCartella.IsNull then Value:=DateToStr(DM.CartelleDataCartella.AsDateTime)
      else Value:='';
    end;

  if CompareText(VarName,'element2')=0 then
    begin
      DM.Cartelle.Last;
      if not DM.CartelleDataCartella.IsNull then Value:=DateToStr(DM.CartelleDataCartella.AsDateTime)
      else Value:='';
    end;

  if CompareText(VarName,'element3')=0 then
    begin
      DM.Cartelle.Last;
      Value:=DM.CartelleAnnotazioni.AsString;
    end;
end;



procedure TDM.frxPreviewPrescrizioneBeforePrint(Sender: TfrxReportComponent);
begin
   DM.TempScheda.Edit;
   DM.TempSchedaFormaViso.Clear;
   if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='OVALE' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Cerchio.bmp')
   else if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='TRIANGOLARE' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Triangolo.bmp')
   else if UpperCase(DM.PrescrizioniMorfologia_Viso.AsString)='QUADRATO' then
     DM.TempSchedaFormaViso.LoadFromFile('.\Quadrato.bmp');
   DM.TempScheda.Post;
end;

procedure TDM.PlannerTableAfterScroll(DataSet: TDataSet);
var
  dt1,dt2:tdatetime;
  key:string;
  plIt: TPlannerItem;
begin
  if MainFormCreated then FrmMain.Planner.Positions:=GG;
end;

procedure TDM.PazientiAfterScroll(DataSet: TDataSet);
var
  S:String;
  PathEXE:String;
begin
  if MainFormCreated then
    begin
      //Si Posiziona nella directoty degli allegati del cliente
        try
          PathEXE:=ExtractFilePath(Application.ExeName);
          if DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString) then
            begin
              FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
              FrmMain.ShellListView2.Root:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
              FrmMain.ShellListView2.Repaint;
            end
          else
            begin
              FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
              FrmMain.ShellListView2.Repaint;
            end;
        except
          Exit;
        end;

       //Si Posiziona nella directoty degli allegati del cliente
       try
         if DM.Cartelle.RecordCount=0 then
           begin
             FrmMain.ShellListView1.Root:=PathEXE+'FOLDER';
             FrmMain.ShellListView1.Repaint;
             FrmMain.AdvGlowButton1.Enabled:=DM.Cartelle.RecordCount>0;
           end
         else
           begin
             S:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString;
             if DirectoryExists(S) then FrmMain.ShellListView1.Root:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString
             else FrmMain.ShellListView1.Root:=PathEXE+'FOLDER';
             FrmMain.ShellListView1.Repaint;
             FrmMain.AdvGlowButton1.Enabled:=DM.Cartelle.RecordCount>0;
           end;
       except
         Exit;
       end;


      FrmMain.ChkPadre.Checked:=PazientiPADRE.AsBoolean;
      FrmMain.ChkMadre.Checked:=PazientiMADRE.AsBoolean;
      FrmMain.ChkTutore.Checked:=PazientiTUTORE.AsBoolean;

      if DM.Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsString,[]) then
        begin
          FrmMain.VisualizzaAnamnesi.Visible:=True;
          FrmMain.StampaAnamnesi.Visible:=True;
          FrmMain.InserisciAnamnesi.Visible:=False;
        end
      else
        begin
          FrmMain.VisualizzaAnamnesi.Visible:=False;
          FrmMain.StampaAnamnesi.Visible:=False;
          FrmMain.InserisciAnamnesi.Visible:=True;
        end;
    end;
end;

procedure TDM.frGDPRGetValue(const VarName: String; var Value: Variant);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        if CompareText(VarName,'Titolare')=0 then
        Value:=ReadString('PRIVACY','Titolare','');

        if CompareText(VarName,'SedeLegale')=0 then
        Value:=ReadString('PRIVACY','SedeLegale','');

        if CompareText(VarName,'NellaFiguraDel')=0 then
        Value:=ReadString('PRIVACY','NellaFiguraDel','');

        if CompareText(VarName,'Responsabile')=0 then
        Value:=ReadString('PRIVACY','Responsabile','');

        if CompareText(VarName,'Telefono')=0 then
        Value:=ReadString('PRIVACY','Telefono','');

        if CompareText(VarName,'Email')=0 then
        Value:=ReadString('PRIVACY','Email','');
      end;
  finally
    ListeIni.Free;
  end;

 
  if DM.PazientiTUTORE.AsBoolean=True then
    begin
      if CompareText(VarName,'tutore')=0 then
        Value:=UpperCase(DM.PazientiCOGNOME_NOME_TUTORE.AsString);
      if CompareText(VarName,'CFTutore')=0 then
        Value:=UpperCase(DM.PazientiCF_TUTORE.AsString);
    end;

  if DM.PazientiMADRE.AsBoolean=True then
    begin
      if CompareText(VarName,'madre')=0 then
        Value:=UpperCase(DM.PazientiCOGNOME_NOME_MADRE.AsString);
      if CompareText(VarName,'cfmadre')=0 then
        Value:=UpperCase(DM.PazientiCF_MADRE.AsString);
    end;

  if DM.PazientiPADRE.AsBoolean=True then
    begin
      if CompareText(VarName,'padre')=0 then
        Value:=UpperCase(DM.PazientiCOGNOME_NOME_PADRE.AsString);
      if CompareText(VarName,'cfpadre')=0 then
        Value:=UpperCase(DM.PazientiCF_PADRE.AsString);
    end;

  if CompareText(VarName,'paziente')=0 then
    Value:=UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString);
  if CompareText(VarName,'CodFisc')=0 then
    Value:=UpperCase(DM.PazientiCodiceFiscale.AsString);


    if (DM.PazientiPADRE.AsBoolean=True)and(DM.PazientiMADRE.AsBoolean=True)then
      begin
        if CompareText(VarName,'consenso')=0 then
          if PazientiConsensoPrivacy.AsBoolean then
            Value:='Rilasciamo il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
          else Value:='Non rilasciamo il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
      end
    else if (DM.PazientiPADRE.AsBoolean=True)and(DM.PazientiMADRE.AsBoolean=False)and
            (DM.PazientiTUTORE.AsBoolean=False)then
      begin
        if CompareText(VarName,'consenso')=0 then
          if PazientiConsensoPrivacy.AsBoolean then
            Value:='Rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
          else Value:='Non rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
        end
      else if (DM.PazientiPADRE.AsBoolean=False)and(DM.PazientiMADRE.AsBoolean=True)and
              (DM.PazientiTUTORE.AsBoolean=False)then
        begin
          if CompareText(VarName,'consenso')=0 then
            if PazientiConsensoPrivacy.AsBoolean then
               Value:='Rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
            else Value:='Non rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
        end
      else if (DM.PazientiTUTORE.AsBoolean=True)then
        begin
          if CompareText(VarName,'consenso')=0 then
            if PazientiConsensoPrivacy.AsBoolean then
              Value:='Rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
            else Value:='Non rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
        end
      else if (DM.PazientiPADRE.AsBoolean=False)and(DM.PazientiMADRE.AsBoolean=False)and
              (DM.PazientiTUTORE.AsBoolean=False)then
        begin
          if CompareText(VarName,'consenso')=0 then
            if PazientiConsensoPrivacy.AsBoolean then
               Value:='Rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
            else Value:='Non rilascio il consenso al trattamento dei dati per l’invio di comunicazioni/informative sulle attività dello studio.'
         end;
end;

procedure TDM.frGDPRBeforePrint(Sender: TfrxReportComponent);
var
  RichView:TfrxRichView;
  Stream:TMemoryStream;
  Str:string;
  PictureView:TfrxPictureView;
begin
  if FileExists('Intestazione.rtf')then
    begin
      RichView:=TfrxRichView(frGDPR.FindObject('Rich5'));
      if RichView=nil then Exit;
      Stream:=TMemoryStream.Create;
      try
        Stream.LoadFromFile(PathEXE+'Intestazione.rtf');
        SetLength(Str, Stream.Size);
        Stream.Read(Str[1], Stream.Size);
        RichView.RichEdit.Text:=Str;
      finally
        Stream.Free;
      end;
    end;
end;



procedure TDM.ConsensoNewRecord(DataSet: TDataSet);
begin
  ConsensoCod_Paziente.AsString:=PazientiCod_Paziente.AsString;
  ConsensoCure_Dentistiche_SI.AsBoolean:=False;
  ConsensoCure_Dentistiche_NO.AsBoolean:=False;
  ConsensoAllergie_Anestetici_SI.AsBoolean:=False;
  ConsensoAllergie_Anestetici_NO.AsBoolean:=False;
  ConsensoAllergie_Farmaci_SI.AsBoolean:=False;
  ConsensoAllergie_Farmaci_NO.AsBoolean:=False;
  ConsensoAllergie_Resine_SI.AsBoolean:=False;
  ConsensoAllergie_Resine_NO.AsBoolean:=False;
  ConsensoTerapie_Farmac_SI.AsBoolean:=False;
  ConsensoTerapie_Farmac_NO.AsBoolean:=False;
  ConsensoTerapie_Antitum_SI.AsBoolean:=False;
  ConsensoTerapie_Antitum_NO.AsBoolean:=False;
  ConsensoCardiopatie_SI.AsBoolean:=False;
  ConsensoCardiopatie_NO.AsBoolean:=False;
  ConsensoPace_Maker_SI.AsBoolean:=False;
  ConsensoPace_Maker_NO.AsBoolean:=False;
  ConsensoDiabete_SI.AsBoolean:=False;
  ConsensoDiabete_NO.AsBoolean:=False;
  ConsensoIpertensione_SI.AsBoolean:=False;
  ConsensoIpertensione_NO.AsBoolean:=False;
  ConsensoProblemi_Coagulaz_SI.AsBoolean:=False;
  ConsensoProblemi_Coagulaz_NO.AsBoolean:=False;
  ConsensoEpatite_B_SI.AsBoolean:=False;
  ConsensoEpatite_B_NO.AsBoolean:=False;
  ConsensoEpatite_C_SI.AsBoolean:=False;
  ConsensoEpatite_C_NO.AsBoolean:=False;
  ConsensoPatolog_Sotto_Contr_SI.AsBoolean:=False;
  ConsensoPatolog_Sotto_Contr_NO.AsBoolean:=False;
  ConsensoHIV_SI.AsBoolean:=False;
  ConsensoHIV_NO.AsBoolean:=False;
  ConsensoMalattie_Infettive_SI.AsBoolean:=False;
  ConsensoMalattie_InfettiveNO.AsBoolean:=False;
  ConsensoGravidanza_SI.AsBoolean:=False;
  ConsensoGravidanza_NO.AsBoolean:=False;
  ConsensoFumatore_SI.AsBoolean:=False;
  ConsensoFumatore_NO.AsBoolean:=False;
  ConsensoFumatore_Forte_SI.AsBoolean:=False;
  ConsensoFumatore_Forte_NO.AsBoolean:=False;
  Consensoosteoporosi_si.AsBoolean:=False;
  Consensoosteoporosi_no.AsBoolean:=False;
  ConsensoAltre_Patologie_SI.AsBoolean:=False;
  ConsensoAltre_Patologie_NO.AsBoolean:=False;
end;

procedure TDM.ConsensoBeforeDelete(DataSet: TDataSet);
begin
  if DM.Pazienti.Locate('Cod_Paziente',ConsensoCod_Paziente.AsString,[]) then
    begin
      DM.Pazienti.Edit;
      DM.PazientiConsensoPrivacy.AsBoolean:=False;
      DM.Pazienti.Post;
    end;
end;

procedure TDM.PazientiPR_PAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  case PazientiPR_PA.AsInteger of
    0:Text:='SOGGETTO PRIVATO / AZIENDA';
    1:Text:='PUBBLICA AMMINISTRAZIONE';
  end;
end;

procedure TDM.PazientiPR_PASetText(Sender: TField; const Text: String);
begin
  if Text='SOGGETTO PRIVATO / AZIENDA' then DM.PazientiPR_PA.AsInteger:=0
  else if Text='PUBBLICA AMMINISTRAZIONE' then DM.PazientiPR_PA.AsInteger:=1;
end;

procedure TDM.PazientiNewRecord(DataSet: TDataSet);
begin
  PazientiStato.AsString:='IT';
end;

procedure TDM.FattureNewRecord(DataSet: TDataSet);
begin
  FattureCODICENAZIONE.AsString:='IT';
end;

procedure TDM.Fatt_CartellaCalcFields(DataSet: TDataSet);
begin
  try
    Fatt_CartellaCalcImponibileNetto.AsCurrency:=Fatt_CartellaImponibile.AsCurrency-Fatt_CartellaImportoSconto.AsCurrency;
    SumFatt.RecalcAll;
    Fatt_CartellaCalcImportoIva.AsCurrency:=SumFatt.SumCollection[3].SumValue;
    Fatt_CartellaCalcImportoRitenuta.AsCurrency:=(Fatt_CartellaCalcImponibileNetto.AsCurrency*Fatt_CartellaAliquotaRitenuta.AsInteger/100);

    Fatt_CartellaCalcTotaleFattura.AsCurrency:=Fatt_CartellaCalcImponibileNetto.AsCurrency+Fatt_CartellaCalcImportoIva.AsCurrency-
      Fatt_CartellaCalcImportoRitenuta.AsCurrency+Fatt_CartellaImportoBolli.AsCurrency;


    if OrderFatt='1' then
      begin
        if not Fatt_CartellaData.IsNull then
          begin
            Fatt_CartellaCalcNumFattura.AsString:='Fatt. '+Fatt_CartellaNumFattura.AsString+' del '+Fatt_CartellaData.AsString+' - '+Fatt_CartellaRagioneSociale.AsString;
            Fatt_CartellaCalcAnno.AsInteger:=YearOf(Fatt_CartellaData.AsDateTime);
          end
        else
          Fatt_CartellaCalcNumFattura.AsString:='Fatt. '+Fatt_CartellaNumFattura.AsString+' - '+Fatt_CartellaRagioneSociale.AsString;
      end
    else
      begin
        if not Fatt_CartellaData.IsNull then
          begin
           Fatt_CartellaCalcNumFattura.AsString:=Fatt_CartellaRagioneSociale.AsString+' - Fatt. '+Fatt_CartellaNumFattura.AsString+' del '+Fatt_CartellaData.AsString;
            Fatt_CartellaCalcAnno.AsInteger:=YearOf(Fatt_CartellaData.AsDateTime);
          end
        else
          Fatt_CartellaCalcNumFattura.AsString:=Fatt_CartellaRagioneSociale.AsString+' - Fatt. '+Fatt_CartellaNumFattura.AsString;
      end;
  except

  end;
end;

procedure TDM.Fatt_PazientiCalcFields(DataSet: TDataSet);
var
  MESE:String;
begin
  Fatt_PazientiCalcImponibileNetto.AsCurrency:=Fatt_PazientiImponibile.AsCurrency-Fatt_PazientiImportoSconto.AsCurrency;
    Fatt_PazientiCalcImportoIva.AsCurrency:=DBSumList1.SumCollection[3].SumValue;

  Fatt_PazientiCalcImportoRitenuta.AsCurrency:=(Fatt_PazientiCalcImponibileNetto.AsCurrency*Fatt_PazientiAliquotaRitenuta.AsInteger/100);

  Fatt_PazientiCalcTotaleFattura.AsCurrency:=Fatt_PazientiCalcImponibileNetto.AsCurrency+Fatt_PazientiCalcImportoIva.AsCurrency-
    Fatt_PazientiCalcImportoRitenuta.AsCurrency+Fatt_PazientiImportoBolli.AsCurrency;
end;



procedure TDM.Query1CalcFields(DataSet: TDataSet);
begin
  Query1CalcTotale.AsCurrency:=Query1Imponibile.AsCurrency+Query1Imposte.AsCurrency+Query1Bolli.AsCurrency-Query1Ritenuta.AsCurrency;
end;



procedure TDM.MemResocontoCalcFields(DataSet: TDataSet);
begin
  if MemResocontoTotaleCartella.AsCurrency >0then
    MemResocontoCalcSaldo.AsCurrency:=MemResocontoTotaleCartella.AsCurrency-MemResocontoTotIncassato.AsCurrency;
end;

procedure TDM.ETICHETTECalcFields(DataSet: TDataSet);
var
  Day:Integer;
begin
  Day:=DayOfWeek(ETICHETTEDATA.AsDateTime);
  case Day of
    1:ETICHETTECalcDay.AsString:='DOM';
    2:ETICHETTECalcDay.AsString:='LUN';
    3:ETICHETTECalcDay.AsString:='MAR';
    4:ETICHETTECalcDay.AsString:='MER';
    5:ETICHETTECalcDay.AsString:='GIO';
    6:ETICHETTECalcDay.AsString:='VEN';
    7:ETICHETTECalcDay.AsString:='SAB';
  end;
end;

procedure TDM.DettFattureNewRecord(DataSet: TDataSet);
begin
  DettFattureTIPO_SPESA.AsString:='SR';
  DettFattureAliquotaIva.AsInteger:=0;
end;


procedure TDM.DettFatturePrezzoUnitarioChange(Sender: TField);
begin
  //FLG_Ricalcolo:=True;
end;

procedure TDM.DettFattureQtaChange(Sender: TField);
begin
  //FLG_Ricalcolo:=True;
end;

procedure TDM.FattureAfterScroll(DataSet: TDataSet);
begin
  if MainFormCreated then
    begin
      FrmMain.EdDataPagamento.Visible:=FatturePAGATA.AsBoolean;
      FrmMain.ImgPagata.Visible:=FatturePAGATA.AsBoolean;
      if FatturePAGATA.AsBoolean then FrmMain.Bloccafattura
      else FrmMain.Sbloccafattura
    end;
end;

procedure TDM.MyConnection1BeforeConnect(Sender: TObject);
var
  SetIni:TInifile;
begin
  //Legge il file set.ini contenente i parametri di connessione
  try
    SetIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Set.ini');
    MyConnection1.Server:=SetIni.ReadString('Accesso','SERVER','');
    MyConnection1.Database:=SetIni.ReadString('Accesso','DATABASE','');
    MyConnection1.Username:=SetIni.ReadString('Accesso','USERNAME','');
    MyConnection1.Password:=SetIni.ReadString('Accesso','PASSWORD','');
  finally
    SetIni.Free;
end;
end;

procedure TDM.PrescrizioniAfterScroll(DataSet: TDataSet);
begin
  if (MainFormCreated) then
    if FrmMain.Notebook.ActivePageIndex=10 then
      begin
       if DM.Prescrizioni.RecordCount>0 then
        FrmMain.NBDispositivi.PageIndex:=DM.PrescrizioniTipoPrescrizione.AsInteger;
    end;
end;

procedure TDM.PrescrizioniCalcFields(DataSet: TDataSet);
begin
  PrescrizioniCalcEta.AsInteger:=GetAge(PrescrizioniData_Nascita.AsDateTime,Now);
  case PrescrizioniTipoPrescrizione.AsInteger of
    0:PrescrizioniCalcTipoPrescrizione.AsString:='DISP. PROTESICO';
    1:PrescrizioniCalcTipoPrescrizione.AsString:='DISP. ORTODONTICO';
  end;
end;

procedure TDM.PreventiviAfterDelete(DataSet: TDataSet);
begin
  DM.Impostazioni.Edit;
  DM.QryNextPrev.Close;
  DM.QryNextPrev.ParamByName('iAnno').AsInteger:=PreventiviAnno.AsInteger;
  DM.QryNextPrev.Open;
  DM.ImpostazioniNextPreventivo.AsInteger:=DM.QryNextPrevMAXNumPreventivo.AsInteger+1;
  DM.Impostazioni.Post;

  FrmMain.AdvOfficePager2.Enabled:=DM.Preventivi.RecordCount>0;
  FrmMain.BtnModificaDoc.Enabled:=DM.Preventivi.RecordCount>0;
  FrmMain.BtnEliminaDoc.Enabled:=DM.Preventivi.RecordCount>0;
  FrmMain.BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
  FrmMain.BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;
end;


procedure TDM.FattureAfterDelete(DataSet: TDataSet);
var
  Saldo,TotCartella:Currency;
begin
  DM.Impostazioni.Edit;
  DM.QryNextFatt.Close;
  DM.QryNextFatt.ParamByName('iAnno').AsInteger:=FattureAnno.AsInteger;
  DM.QryNextFatt.Open;
  DM.ImpostazioniNextFattura.AsInteger:= DM.QryNextFattMAXNumFattura.AsInteger+1;
  DM.Impostazioni.Post;

  FrmMain.AdvOfficePager3.ActivePageIndex:=0;
  FrmMain.AdvOfficePager3.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnModificaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnEliminaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnCercaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnStampaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnE_Fattura.Enabled:=DM.Fatture.RecordCount>0;

  //Effettua il refresh della tabella di dettaglio Fatt_Cartella
  Fatt_Cartella.Close;
  Fatt_Cartella.Open;

  //Aggiorna il saldo della cartella
  DM.SumDettCartella.RecalcAll;
  DM.SumIncassi.RecalcAll;

  TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
  FrmMain.LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',Totcartella);

  Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
  FrmMain.LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
  if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
  else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
  else FrmMain.LblSaldo.Font.Color:=clBlack;
end;



procedure TDM.FattureAfterPost(DataSet: TDataSet);
begin
  if Ricalcola_Scadenze then
    begin
      NewImpFattura:=FattureImponibile.AsCurrency;
      NewModPag:=FattureId_ModPag.AsInteger;

      //Se il ricalcolo delle scadenze viene generato dall'aggiunta di prodotti cercati attraverso la finestra cerca prodotti
      if SearchProduct then
        begin
          {FLG_Ricalcolo indica il punto in cui effettuare il check delle scadeze
          vale a dire solo alla fine dell'inserimento di eventuali nuovi articoli}
          if (FLG_Ricalcolo) then FrmMain.CheckScadenzePagate(FattureId_Fattura.AsInteger);
          exit;
        end
      else
        {Il check delle scadenze viene richiamato in seguito alla modifica della quantità oppure
         del prezzo unitario di una riga di dettaglio}
        if(OLD_Quantita<>NEW_Quantita)or(OLD_Prezzo<>NEW_Prezzo)then FrmMain.CheckScadenzePagate(FattureId_Fattura.AsInteger)
      else if NewModPag<>CurrModPag then
        begin
          FrmMain.CheckScadenzePagate(FattureId_Fattura.AsInteger);
        end;
    end;

   //Se la fattura viene segnata come pagate bisogna segnare come pagate tutte le scadenze associate previa
   //conferma di un messaggio a video

   if Check_Stato_Fattura then
     //Nelle impostazioni avanzate è abilitato il controllo sullo stato delle fatture PAGATE/NON PAGATE
     begin
       NewPagata:=FatturePAGATA.AsBoolean;
       if CurrPagata<>NewPagata then
         //E' cambiato lo stato della fattura
         begin
           if FatturePAGATA.AsBoolean then
             //La fattura è stata segnata come pagata
             begin
               if Application.MessageBox(Pchar('La Fattura corrente è stata segnata come PAGATA'+#13+#13+
                                               'Si desidera segnare come pagate anche le scadenze associate alla fattura?'+#13+#13+
                                               'Scegliendo SI tutte le scadenze verranno segnate come pagate'+#13+
                                               'Scegliendo NO le scadenze dovranno essere modificate manualmente'),
                                               'Modifica Scadenze',MB_YesNo+MB_ICONWARNING)=IdYes then
                                         begin
                                           Scad_Fatture.First;
                                           while not Scad_Fatture.Eof do
                                             begin
                                               Scadenze.Locate('Id_Scadenza',Scad_Fattureid_scadenza.AsInteger,[]);
                                               Scadenze.Edit;
                                               Scadenzesaldato.AsBoolean:=True;
                                               Scadenze.Post;
                                               Scad_Fatture.Next;
                                             end;
                                           Scad_Fatture.First;
                                         end;
             end
           else
             if not FatturePAGATA.AsBoolean then
               begin
                 if Application.MessageBox(Pchar('La Fattura corrente è stato segnata come NON PAGATA'+#13+#13+
                                                 'Si desidera segnare come pagate anche le scadenze associate alla fattura?'+#13+#13+
                                                 'Scegliendo SI tutte le scadenze verranno segnate come pagate'+#13+
                                                 'Scegliendo NO le scadenze dovranno essere modificate manualmente'),
                                                 'Modifica Scadenze',MB_YesNo+MB_ICONWARNING)=IdYes then
                                         begin
                                           Scad_Fatture.First;
                                           while not Scad_Fatture.Eof do
                                             begin
                                               Scadenze.Locate('Id_Scadenza',Scad_Fattureid_scadenza.AsInteger,[]);
                                               Scadenze.Edit;
                                               Scadenzesaldato.AsBoolean:=False;
                                               Scadenze.Post;
                                               Scad_Fatture.Next;
                                             end;
                                           Scad_Fatture.First;
                                         end;
               end;
         end;
     end;
   //Se la fattura risulta pagata provvede a Bloccarla altrimenti la sblocca
   if FatturePAGATA.AsBoolean then FrmMain.Bloccafattura
   else FrmMain.Sbloccafattura
end;



procedure TDM.ArticoliNewRecord(DataSet: TDataSet);
begin
  ArticoliCod_Articolo.AsString:='00'+IntToStr(ImpostazioniNextCod_Art.AsInteger);
end;

procedure TDM.ArticoliBeforePost(DataSet: TDataSet);
begin
  if Articoli.State in [dsInsert] then
    begin
      Impostazioni.Edit;
      ImpostazioniNextCod_Art.AsInteger:=ImpostazioniNextCod_Art.AsInteger+1;
      Impostazioni.Post;
    end;
end;

procedure TDM.ArticoliAfterDelete(DataSet: TDataSet);
begin
  DM.Impostazioni.Edit;
  DM.QryNextCodArt.Close;
  DM.QryNextCodArt.Open;
  DM.ImpostazioniNextCod_Art.AsInteger:=DM.QryNextCodArtMAXid_articolo.AsInteger+1;
  DM.Impostazioni.Post;
end;

procedure TDM.QryDettFatturaCalcFields(DataSet: TDataSet);
var
  Sconto:Currency;
begin
  if QryDettFatturasconto.AsFloat>0 then
    Sconto:=(QryDettFatturaTotaleRiga.AsCurrency*QryDettFatturasconto.AsFloat/100)
  else Sconto:=0;

  QryDettFatturaCalcTotRigaScontato.AsCurrency:=QryDettFatturaTotaleRiga.AsCurrency-Sconto;
  QryDettFatturaCalcImposta.AsCurrency:=(QryDettFatturaCalcTotRigaScontato.AsCurrency*QryDettFatturaaliquotaiva.AsFloat)/100;
end;

end.
