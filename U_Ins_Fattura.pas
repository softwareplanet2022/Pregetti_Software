unit U_Ins_Fattura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Mask, DBCtrls, StdCtrls, Grids,
  BaseGrid, AdvGrid, DBAdvGrid, AdvOfficePager, DB, DBTables,
  MyAccess, MyClasses, MyCall, DBAccess, MemDS, IniFiles,
  DBSumLst, Menus, DateUtils, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, cxCheckBox,
  AdvGroupBox, RxMemDS, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  AdvPanel,RxDateUtil, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit;

type
  TFrmInsFattura = class(TForm)
    BtnOK: TAdvGlowButton;
    BtnAnnulla: TAdvGlowButton;
    Bevel1: TBevel;
    DsFatture: TDataSource;
    DsDettFatture: TDataSource;
    DettFatture: TMyTable;
    DettFattureId_Dettaglio: TAutoIncField;
    DettFattureId_Fattura: TFloatField;
    DettFattureQta: TFloatField;
    DettFattureDescrizione: TStringField;
    DettFatturePrezzoUnitario: TCurrencyField;
    DettFattureCalcImporto: TCurrencyField;
    DettFattureCalcImportoScontato: TCurrencyField;
    DettFattureSconto: TFloatField;
    DsMemDettagli: TDataSource;
    CercaArticolidaaggiungereinFattura1: TMenuItem;
    DELDettagli: TMyQuery;
    SumFatt: TDBSumList;
    DettFattureCod_Articolo: TStringField;
    DettFattureAliquotaIva: TFloatField;
    DSMOD_PAGAMENTO: TDataSource;
    MOD_PAGAMENTO: TMyTable;
    MOD_PAGAMENTOCOD_CODIFICA: TStringField;
    MOD_PAGAMENTOTIPO: TStringField;
    MOD_PAGAMENTODESCRIZIONE: TStringField;
    DsModPag: TDataSource;
    ModPag: TMyTable;
    ModPagId_ModPag: TAutoIncField;
    ModPagDescrizione: TStringField;
    ModPagDF_FM: TStringField;
    ModPagNumeroRate: TFloatField;
    ModPagUsaInFornitori: TBooleanField;
    ModPagUsaBancaCliente: TBooleanField;
    ModPagCOD_TIPO_PAGAMENTO: TStringField;
    Fatture: TMyTable;
    FattureNumFattura: TFloatField;
    FattureAnno: TFloatField;
    FattureId_Fattura: TAutoIncField;
    FattureCod_Paziente: TFloatField;
    FattureId_ModPag: TFloatField;
    FattureModalitaPagamento: TStringField;
    FattureData: TDateField;
    FattureNote: TMemoField;
    FattureRagioneSociale: TStringField;
    FattureIndirizzo: TStringField;
    FattureCap: TStringField;
    FattureCitta: TStringField;
    FattureProv: TStringField;
    FattureCodFisc: TStringField;
    FatturePartitaIVA: TStringField;
    FattureAliquotaIVA: TFloatField;
    FattureAliquotaRitenuta: TFloatField;
    FattureImponibile: TCurrencyField;
    FattureImportoSconto: TCurrencyField;
    FattureImportoBolli: TCurrencyField;
    FattureCalcImponibileNetto: TCurrencyField;
    FattureCalcImportoRitenuta: TCurrencyField;
    FattureCalcImportoIva: TCurrencyField;
    FattureCalcImportoFattura: TCurrencyField;
    FattureCalcTotaleFattura: TCurrencyField;
    FattureCalcNumFattura: TStringField;
    FattureCalcAnno: TIntegerField;
    FattureCalcPiePagina: TStringField;
    FattureBanca: TMemoField;
    FattureNumPreventivo: TStringField;
    FattureCODICENAZIONE: TStringField;
    FattureCAUSALE: TStringField;
    FattureESIGIBILITA_IVA: TStringField;
    FattureLkpModPag: TStringField;
    FattureLkpMOD_PAGAMENTO: TStringField;
    FattureCOD_MOD_PAGAM: TStringField;
    FattureLKP_COND_PAGAMENTO: TStringField;
    FattureLKP_COND_PAG_DESCR: TStringField;
    FattureCOD_COND_PAGAM: TStringField;
    FattureBANCA_APPOGGIO: TStringField;
    FattureIBAN_APPOGGIO: TStringField;
    DBText2: TDBText;
    DettFattureNroDente: TFloatField;
    FattureCOD_PAGAMENTO: TStringField;
    FattureCOGNOME_QUIETANZANTE: TStringField;
    FattureNOME_QUIETANZANTE: TStringField;
    FattureCF_QUIETANZANTE: TStringField;
    FatturePAGAMENTO_TRACCIATO: TBooleanField;
    FatturePAGATA: TBooleanField;
    FattureDATA_PAGAMENTO: TDateField;
    FattureNATURA_IVA: TStringField;
    DettFattureTIPO_SPESA: TStringField;
    FattureIMPORTO_IVA: TCurrencyField;
    FattureACCETTAZIONE_INVIO: TBooleanField;
    Label5: TLabel;
    ModPagtipo_pagamento_descr: TStringField;
    ModPagtracciato: TSmallintField;
    PopArticoli: TPopupMenu;
    MemDettagli: TRxMemoryData;
    MemDettagliCod_Articolo: TStringField;
    MemDettagliQta: TIntegerField;
    MemDettagliDescrizione: TStringField;
    MemDettagliPrezzoUnitario: TCurrencyField;
    MemDettagliSconto: TIntegerField;
    MemDettagliAliquotaIva: TIntegerField;
    MemDettagliCalcImporto: TCurrencyField;
    MemDettagliCalcImportoScontato: TCurrencyField;
    MemDettagliCalcImportoSconto: TCurrencyField;
    MemDettagliNroDente: TIntegerField;
    MemDettagliTipoSpesa: TStringField;
    MemDettagliNatura_Iva: TStringField;
    MemDettagliCalcImpoScontatoIvato: TCurrencyField;
    MemDettagliCalcImportoIva: TCurrencyField;
    AdvPanel1: TAdvPanel;
    Label36: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    AdvOfficePager3: TAdvOfficePager;
    AdvOfficePage5: TAdvOfficePage;
    suiDBNavigator8: TDBNavigator;
    AdvOfficePage6: TAdvOfficePage;
    suiDBMemo5: TDBMemo;
    AdvOfficePage1: TAdvOfficePage;
    suiDBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label61: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    CmbRitenuta: TcxDBComboBox;
    EdRagioneSociale: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    EdCodiceFiscale: TcxDBTextEdit;
    EdPartitaIva: TcxDBTextEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    AdvGroupBox1: TAdvGroupBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    EdDataPagamento: TcxDBDateEdit;
    StaticText1: TStaticText;
    AdvGlowButton20: TAdvGlowButton;
    Label37: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    Label110: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label99: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label98: TLabel;
    Label57: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    DsScadenze: TDataSource;
    Scadenze: TMyTable;
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
    DSDettModPag: TDataSource;
    DettModPag: TMyTable;
    DettModPagId_DettPag: TAutoIncField;
    DettModPagId_ModPag: TFloatField;
    DettModPagGiorni: TFloatField;
    DettModPagFrazione: TFloatField;
    ChkStampaFattura: TcxCheckBox;
    Bevel2: TBevel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    QryDistinctIva: TMyQuery;
    QryDistinctIvaaliquotaiva: TFloatField;
    cxGrid9: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBTableView14Qta: TcxGridDBColumn;
    cxGridDBTableView14Cod_Articolo: TcxGridDBColumn;
    cxGridDBTableView14Descrizione: TcxGridDBColumn;
    cxGridDBTableView14AliquotaIva: TcxGridDBColumn;
    cxGridDBTableView14PrezzoUnitario: TcxGridDBColumn;
    cxGridDBTableView14Sconto: TcxGridDBColumn;
    cxGridDBTableView14CalcImportoScontato: TcxGridDBColumn;
    cxGridDBTableView14TIPO_SPESA: TcxGridDBColumn;
    cxGridDBTableView14TotaleRiga: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    AdvGlowButton4: TAdvGlowButton;
    FattureBloccata: TBooleanField;
    FattureFattura_Acconto: TBooleanField;
    FattureRiferimento: TStringField;
    Fatturecod_cartella: TIntegerField;
    Cartelle: TMyTable;
    DsCartelle: TDataSource;
    Cartellecod_cartella: TIntegerField;
    Cartelledatacartella: TDateField;
    Cartelleallergie: TMemoField;
    Cartelleannotazioni: TMemoField;
    Cartelleid_dottore: TFloatField;
    Cartellebloccata: TBooleanField;
    Cartellefatturata: TBooleanField;
    CartelleFatturata_Acconto: TBooleanField;
    CartelleId_Preventivo: TIntegerField;
    CartelleId_fattura: TIntegerField;
    CartelleId_Fattura_Acconto: TIntegerField;
    CartelleImpFatturati: TFloatField;
    CartelleImpDaFatturare: TFloatField;
    Cartellecod_paziente: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MemDettagliCalcFields(DataSet: TDataSet);
    procedure CercaArticolidaaggiungereinFattura1Click(Sender: TObject);
    procedure BtnAnnullaClick(Sender: TObject);
    procedure FattureCalcFields(DataSet: TDataSet);
    procedure MemDettagliAfterPost(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBAdvGrid6EllipsClick(Sender: TObject; ACol, ARow: Integer;
      var S: String);
    procedure FattureBeforePost(DataSet: TDataSet);
    procedure DeleteScadenzeFatture;
    procedure GeneraScadenzeFatture;
    procedure FattureAfterInsert(DataSet: TDataSet);
    procedure MemDettagliNewRecord(DataSet: TDataSet);
    procedure cxDBCheckBox6Click(Sender: TObject);
    procedure suitempEdCodFiscExit(Sender: TObject);
    procedure suitempEdPartitaIvaExit(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure MemDettagliAfterDelete(DataSet: TDataSet);
    procedure DettFattureBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView14QtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView14DescrizionePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInsFattura: TFrmInsFattura;
  ListeIni:TIniFile;

implementation

uses U_DM, U_Main, U_SearchPaziente, U_SearchArticoli, U_Paziente,
  U_SelTrattamento, U_Cartella, U_SearchCartella, U_CercaCartelle_Fatturare;

{$R *.dfm}

procedure TFrmInsFattura.FormShow(Sender: TObject);
begin
  Width:=940;
  Height:=710;
  FrmInsFattura.EdRagioneSociale.SetFocus;
  FrmInsFattura.cxDBComboBox1.Text:='IT';
  //FrmInsFattura.MemDettagli.Insert;
end;

procedure TFrmInsFattura.FormCreate(Sender: TObject);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        // Carica le sezioni negli Items delle griglie

        ReadSection('Aliquote Ritenuta',CmbRitenuta.Properties.Items);
        ReadSection('Aliquote IVA',TcxComboBoxProperties(cxGridDBTableView14AliquotaIva.Properties).Items);
        //ReadSection('Descrizioni Fattura',DBAdvGrid6.Columns[3].ComboItems);
        ReadSection('TIPO_SPESA',TcxComboBoxProperties(cxGridDBTableView14TIPO_SPESA.Properties).Items);
      end;
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmInsFattura.MemDettagliCalcFields(DataSet: TDataSet);
begin
  MemDettagliCalcImporto.AsCurrency:=MemDettagliQta.AsInteger*MemDettagliPrezzoUnitario.AsCurrency;
  MemDettagliCalcImportoSconto.AsCurrency:=(MemDettagliCalcImporto.AsCurrency*MemDettagliSconto.AsInteger/100);
  MemDettagliCalcImportoScontato.AsCurrency:=MemDettagliCalcImporto.AsCurrency-
    (MemDettagliCalcImporto.AsCurrency*MemDettagliSconto.AsInteger/100);
  MemDettagliCalcImpoScontatoIvato.AsCurrency:=MemDettagliCalcImportoScontato.AsCurrency+(MemDettagliCalcImportoScontato.AsCurrency*MemDettagliAliquotaIva.AsFloat/100);
  MemDettagliCalcImportoIva.AsCurrency:=(MemDettagliCalcImportoScontato.AsCurrency*MemDettagliAliquotaIva.AsFloat/100);
end;

procedure TFrmInsFattura.CercaArticolidaaggiungereinFattura1Click(
  Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.Caption:='  Seleziona gli articoli da inserire nel preventivo';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.BtnAnnullaClick(Sender: TObject);
begin
  if (Fatture.State in [dsEdit,dsInsert]) then Fatture.Cancel;
  Close;
end;

procedure TFrmInsFattura.FattureCalcFields(DataSet: TDataSet);
begin
  //if Fatture.State in [dsEdit,dsinsert] then
    try
      FattureCalcImponibileNetto.AsCurrency:=FattureImponibile.AsCurrency-FattureImportoSconto.AsCurrency;
      FattureCalcImportoIva.AsCurrency:=SumFatt.SumCollection[4].SumValue;

      FattureCalcImportoRitenuta.AsCurrency:=(FattureCalcImponibileNetto.AsCurrency*FattureAliquotaRitenuta.AsInteger/100);
      FattureCalcTotaleFattura.AsCurrency:=FattureCalcImponibileNetto.AsCurrency+FattureCalcImportoIva.AsCurrency-
        FattureCalcImportoRitenuta.AsCurrency+FattureImportoBolli.AsCurrency;
    finally
        
    end;
end;

procedure TFrmInsFattura.MemDettagliAfterDelete(DataSet: TDataSet);
begin
  {try
    FattureCalcFields(Fatture);
    if not(Fatture.State in [dsEdit,dsInsert])then Fatture.Edit;
    //Salva il Totale Imponibile
    FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;
    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;


    if(DM.Fatture.State in [dsEdit,dsInsert])then Fatture.Post;
  except
    exit;
  end;}

  try
    SumFatt.RecalcAll;
    if not(Fatture.State in [dsEdit,dsInsert])then Fatture.Edit;
    FattureCalcFields(Fatture);
    //Salva il Totale Imponibile
    FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;
    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

    FattureIMPORTO_IVA.AsCurrency:=SumFatt.SumCollection[4].SumValue;
    if(Fatture.State in [dsEdit,dsInsert])then Fatture.Post;
  except
    Exit;
  end;
end;

procedure TFrmInsFattura.MemDettagliAfterPost(DataSet: TDataSet);
begin
  try
    SumFatt.RecalcAll;
    if not(Fatture.State in [dsEdit,dsInsert])then Fatture.Edit;
    FattureCalcFields(Fatture);
    //Salva il Totale Imponibile
    FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;
    //Salva il Totale Imponibile Scontato
    FattureImportoSconto.AsCurrency:=SumFatt.SumCollection[1].SumValue;

    FattureIMPORTO_IVA.AsCurrency:=SumFatt.SumCollection[4].SumValue;
    if(Fatture.State in [dsEdit,dsInsert])then Fatture.Post;
  except
    Exit;
  end;
end;

procedure TFrmInsFattura.BtnOKClick(Sender: TObject);
var
  NumFatt,Anno:Integer;
  Scadenze:String;
begin
  //Per prima cosa salva la testata della fattura
  try
    if(Fatture.State in [dsInsert])then
      try
        Fatture.Post;
      except
        Application.MessageBox('Si è verificato un errore in fase di salvataggio della testata fattura'+#13+
                               'E'' consigliabile ripetere l''inserimento corrente o contattare l''assistenza tecnica del software',
                               'Errore Salvataggio Dati',MB_OK+MB_Iconerror);

        if(Fatture.State in [dsInsert])then Fatture.Cancel;
        Exit;
      end;


    //Effettua il travaso dei recod di dettaglio dalla MemTable alla tabella definitiva dei dettagli
    MemDettagli.DisableControls;
    MemDettagli.First;
    while not MemDettagli.Eof do
      try
        if MemDettagliDescrizione.AsString<>'' then
          begin
            DettFatture.Insert;
            DettFattureId_Fattura.AsInteger:=FattureId_Fattura.AsInteger;
            DettFattureCod_Articolo.AsString:=MemDettagliCod_Articolo.AsString;
            DettFattureQta.AsInteger:=MemDettagliQta.AsInteger;
            DettFattureDescrizione.AsString:=MemDettagliDescrizione.AsString;
            DettFatturePrezzoUnitario.AsCurrency:=MemDettagliPrezzoUnitario.AsCurrency;

            if MemDettagliSconto.AsFloat >0 then DettFattureSconto.AsFloat:=MemDettagliSconto.AsFloat;

            DettFattureNroDente.AsInteger:=MemDettagliNroDente.AsInteger;
            DettFattureTIPO_SPESA.AsString:=MemDettagliTipoSpesa.AsString;
            DettFattureAliquotaIva.AsInteger:=MemDettagliAliquotaIva.AsInteger;
            DettFatture.Post;
          end;
        MemDettagli.Next;
      except
        Application.MessageBox('Si è verificato un errore in fase di salvataggio dei dettagli fattura'+#13+
                               'E'' consigliabile controllare le righe di dettaglio della fattura corrente.',
                               'Errore Salvataggio dati',MB_OK+MB_Iconerror);
        DettFatture.Cancel;
        Exit;
      end;
    MemDettagli.EnableControls;

    if not(Fatture.State in [dsEdit])then Fatture.Edit;
    FattureImponibile.AsCurrency:=SumFatt.SumCollection[0].SumValue;

    //Individua le differenti aliquote presenti nei dettagli fattura
    QryDistinctIva.Close;
    QryDistinctIva.ParamByName('ID_FATTURA').AsInteger:=FattureId_Fattura.AsInteger;
    QryDistinctIva.Open;
    QryDistinctIva.Last;

    FattureAliquotaIVA.AsInteger:=QryDistinctIvaaliquotaiva.AsInteger;
    if(Fatture.State in [dsEdit])then Fatture.Post;

    //Se la fattura appena inserita ha un codice cartella associato
    //viene individuata la cartella e segnata come pagata e bloccata
    if Cartelle.Locate('cod_cartella',Fatturecod_cartella.AsInteger,[])then
      begin
        Cartelle.Edit;
        Cartellefatturata.AsBoolean:=True;
        Cartellebloccata.AsBoolean:=True;
        //vengono aggiornati gli importi fatturati e da fatturare
        CartelleImpFatturati.AsCurrency:=CartelleImpFatturati.AsCurrency+FattureCalcTotaleFattura.AsCurrency;
        CartelleImpDaFatturare.AsCurrency:=CartelleImpDaFatturare.AsCurrency-FattureCalcTotaleFattura.AsCurrency;
        Cartelle.Post;
        FrmMain.BloccaCartella;
        DM.CartelleAfterScroll(DM.Cartelle);

        //Aggiorna l'elenco delle somme incassate
        DM.Incassi.Insert;
        DM.IncassiCod_Cartella.AsInteger:=CartelleCod_Cartella.AsInteger;
        DM.IncassiId_Fattura.AsInteger:=FattureId_Fattura.AsInteger;
        DM.IncassiData.AsDateTime:=FattureData.AsDateTime;
        DM.IncassiDescrizione.AsString:='Ft. n° '+FattureNumFattura.AsString+' del '+FattureData.AsString;
        DM.IncassiImporto.AsCurrency:=FattureCalcImponibileNetto.AsCurrency;
        DM.Incassi.Post;
        DM.Cartelle.Refresh;
      end;

    //Se la fattura non è segnata come pagata chiede all'utente se si vuole segnare come pagata
    if (not FatturePAGATA.AsBoolean)and(Application.MessageBox('Si desidera segnare la fattura come pagata?',
                                                               'Fattura Pagata',MB_YesNo+MB_ICONQUESTION)=Id_Yes)then
      begin
        Fatture.Edit;
        FatturePAGATA.AsBoolean:=True;
        FattureDATA_PAGAMENTO.AsDateTime:=FattureData.AsDateTime;
        Fatture.Post;
      end;

    //Calcola le Scadenze della Fattura Appena inserite

    try
      ListeIni:=TIniFile.Create('.\Liste.ini');
      Scadenze:=ListeIni.ReadString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','');
      if Scadenze='1' then
        begin
          if Application.MessageBox('Si desidera generare le scadenze di pagamento per la fattura appena salvata?',
                                    'Genera Scadenze',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
            GeneraScadenzeFatture;
        end;
     finally
       ListeIni.Free;
     end;

    //Chiude e riapre la tabella delle Fatture nel DM principale
    DM.Fatture.DisableControls;
    DM.Fatture.Close;
    DM.Fatture.Open;
    DM.Fatture.EnableControls;

    //Chiude e riapre la tabella delle Fatture nel DM principale
    DM.Fatt_Cartella.DisableControls;
    DM.Fatt_Cartella.Close;
    DM.Fatt_Cartella.Open;
    DM.Fatt_Cartella.EnableControls;
    
    //Aggiorna il cotatore delle Fatture
    DM.Impostazioni.Edit;
    DM.ImpostazioniNextFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger+1;
    DM.Impostazioni.Post;
    //**********************************
    if ChkStampaFattura.Checked then
    with FrmMain do
      begin
      if application.MessageBox('Si desidera stampare la fattura appena salvata?',
                                'Stampa Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
          begin
            DM.Fatture.Locate('Id_Fattura',FattureId_Fattura.AsInteger,[]);
            DM.frFattura.LoadFromFile(PathEXE+'Report\Fattura.fr3');
            DM.frFattura.ShowReport();
          end;
      end;
    Close;
  except
    Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                 'Si è verificato un errore in fase di salvataggio della fattura.'+#13+
                                 'E'' consigliabile ripetere l''inserimento'),
                                 'Errore Dati',MB_YesNo+MB_ICONERROR);
    if(Fatture.State in [dsInsert,dsEdit])then
      {Se la testata-fattura è ancora in fase di inserimento allora esce dall'inserimento ed
      elimina eventuali righe di dettaglio orfane}
      begin
        Fatture.Cancel;
        DELDettagli.SQL.Clear;
        DELDettagli.SQL.Add('DELETE FROM Dettfatture Where Dettfatture.`id_fattura`<=0');
        DELDettagli.Prepare;
        //DELDettagli.ExecSQL;
      end
    else
      {Se invece la testata è già stata salvata allora viene eliminata la fattura appena inserita ed eliminati nel contempo
      anche eventuali righe di dettaglio associate}
      begin
        DELDettagli.SQL.Clear;
        DELDettagli.SQL.Add('DELETE FROM "DettFatture" Dettfatture Where Id_Fattura='+FattureId_Fattura.AsString);
        DELDettagli.Prepare;
        //DELDettagli.ExecSQL;
        Fatture.Delete;
      end;
    Close;
  end;
end;



procedure TFrmInsFattura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMain.BtnModificaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnEliminaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnCercaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnStampaDoc.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.BtnE_Fattura.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.GridDettFatt.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.NavDettFatt.Enabled:=DM.Fatture.RecordCount>0;
  FrmMain.AdvOfficePager3.Enabled:=DM.Fatture.RecordCount>0;
end;

procedure TFrmInsFattura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Fatture.State in [dsEdit,dsInsert])then
    begin
      with FrmMain do
        begin
          if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                          'Sei ancora in fase di inserimento Fattura.'+#13+
                                          'Si desidera salvare il documento corrente?'),
                                          'Chiudi Fattura',MB_YesNo+MB_ICONWARNING)=Id_Yes then BtnOKClick(Sender)
          else CanClose:=True;
        end;
    end
  else CanClose:=True;
end;

procedure TFrmInsFattura.DBAdvGrid6EllipsClick(Sender: TObject; ACol,
  ARow: Integer; var S: String);
begin
  //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.FattureBeforePost(DataSet: TDataSet);
begin
  FattureAnno.AsInteger:=YearOf(FattureData.AsDateTime);
  //Salva l'importo totale IVA
  FattureIMPORTO_IVA.AsCurrency:=SumFatt.SumCollection[4].SumValue;
end;



procedure TFrmInsFattura.DeleteScadenzeFatture;
begin
  //Filtra Le scadenze e visualizza solo quelle relative al documento corrente
  Scadenze.Filter:='';
  Scadenze.Filter:='Cod_Documento='''+FattureId_Fattura.AsString+'''';
  Scadenze.Filtered:=True;
  //Cancella tutte le scadenze associate al documento corrente
    Scadenze.First;
    while not Scadenze.IsEmpty do
      begin
        Scadenze.Delete;
        Scadenze.Next;
      end;
  //Rimuove il filtro dalla Tabella scadenze
  Scadenze.Filter:='';
  Scadenze.Filtered:=False;
end;


procedure TFrmInsFattura.DettFattureBeforePost(DataSet: TDataSet);
begin
  if DettFattureAliquotaIva.IsNull then DettFattureAliquotaIva.AsInteger:=0;
end;

procedure TFrmInsFattura.GeneraScadenzeFatture;
var
  ImpRate:Currency;
  i:Integer;
  Scadenza,FineMese:TDateTime;
  GG,MM,YY:String;
begin
  try
    DeleteScadenzeFatture;
    DettModPag.First;
    while not DettModPag.Eof do
      begin
        i:=DettModPag.RecNo;
        Scadenze.Insert;
        ScadenzeId_Soggetto.AsInteger:=FattureCod_Paziente.AsInteger;
        ScadenzeSoggetto.AsString:=FattureRagioneSociale.AsString;
        ScadenzeCod_Documento.AsString:=FattureId_Fattura.AsString;
        ScadenzeDescrizione.AsString:='Fattura n° '+IntToStr(FattureNumFattura.AsInteger)+' del '+FattureData.AsString;
        ScadenzeAvere.AsCurrency:=(FattureCalcTotaleFattura.AsCurrency*DettModPagFrazione.AsInteger)/100;
        ScadenzeSaldato.AsBoolean:=False;

        //ScadenzeRiba.AsBoolean:=ChkRiba.Checked;

        if ModPagDF_FM.AsString='DF' then
          begin
            ScadenzeDataScadenza.AsDateTime:=IncDate(FattureData.AsDateTime,DettModPagGiorni.AsInteger,0,0);
          end;
        if ModPagDF_FM.AsString='FM' then
          begin
            Scadenza:=IncDay(FattureData.AsDateTime,DettModPagGiorni.AsInteger);
            GG:=IntToStr(DaysPerMonth(ExtractYear(Scadenza),ExtractMonth(Scadenza)));
            MM:=IntToStr(ExtractMonth(Scadenza));
            YY:=IntToStr(ExtractYear(Scadenza));
            ScadenzeDataScadenza.AsDateTime:=StrToDate(GG+'/'+MM+'/'+YY);
          end;

        if ModPagDF_FM.AsString='' then
          begin
            ScadenzeDataScadenza.AsDateTime:=IncDay(FattureData.AsDateTime,DettModPagGiorni.AsInteger);
          end;
        if FatturePAGATA.AsBoolean then ScadenzeSaldato.AsBoolean:=true
        else ScadenzeSaldato.AsBoolean:=False;

        Scadenze.Post;
        DettModPag.Next;
      end;
    except
      begin
        Application.MessageBox(PChar('Si è verificato un errore nel calcolo delle scadenze!'+#13+
                                     'E'' Consigliabile ripetere l''inserimento del documento'),
                                     'Scadenze Documento',MB_OK+MB_ICONERROR);
        Exit;
      end;
    end;
end;




procedure TFrmInsFattura.FattureAfterInsert(DataSet: TDataSet);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        FattureBANCA_APPOGGIO.AsString:=ListeIni.ReadString('BANCA','BANCA_APPOGGIO','');
        FattureIBAN_APPOGGIO.AsString:=ListeIni.ReadString('BANCA','IBAN','');
      end;
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmInsFattura.MemDettagliNewRecord(DataSet: TDataSet);
begin
  MemDettagliTipoSpesa.AsString:='SR';
  MemDettagliAliquotaIva.AsInteger:=0;
end;

procedure TFrmInsFattura.cxDBCheckBox6Click(Sender: TObject);
begin
  if cxDBCheckBox6.Checked then EdDataPagamento.Visible:=True
  else EdDataPagamento.Visible:=false;
end;

procedure TFrmInsFattura.cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.cxGridDBTableView14DescrizionePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.cxGridDBTableView14QtaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.suitempEdCodFiscExit(Sender: TObject);
begin
  if Fatture.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaCF(EdCodiceFiscale.Text)then EdCodiceFiscale.setFocus;
    end;
end;

procedure TFrmInsFattura.suitempEdPartitaIvaExit(Sender: TObject);
begin
  if Fatture.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaPIVA(EdPartitaIva.Text)then EdPartitaIva.setFocus;
    end;
end;

procedure TFrmInsFattura.Image3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsFattura:=True;
    FrmCercaArticoli.Caption:='  Seleziona gli articoli da inserire in Fattura';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsFattura.AdvGlowButton20Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    InsFattura:=True;
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

procedure TFrmInsFattura.AdvGlowButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPaziente,FrmPaziente);
    if not (FrmPaziente.Pazienti.State in [dsEdit,dsInsert]) then FrmPaziente.Pazienti.Insert;
    FrmPaziente.Caption:=' Nuovo Paziente';
    FrmPaziente.ShowModal;
  finally
    FrmPaziente.Free;
  end;
end;

procedure TFrmInsFattura.AdvGlowButton4Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaCartelle_Fatturare,FrmCercaCartelle_Fatturare);
    FrmCercaCartelle_Fatturare.EdPaziente.Text:=FrmInsFattura.EdRagioneSociale.text;
    FrmCercaCartelle_Fatturare.GetCartella(self);
    FrmCercaCartelle_Fatturare.ShowModal;
    FrmCercaCartelle_Fatturare.height:=600;
  finally
    FrmCercaCartelle_Fatturare.Free;
  end;
end;

end.










