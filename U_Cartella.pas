unit U_Cartella;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, BaseGrid,
  AdvGrid, DBAdvGrid,StdCtrls, DBCtrls, Mask,
  DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Inifiles, cxGraphics,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, RxMemDS,
  AdvGroupBox, AdvPanel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, AdvGlowButton, DBGrids, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBSumLst;

type
  TFrmCartella = class(TForm)
    DsMemDettagli: TDataSource;
    MemDettagli: TRxMemoryData;
    MemDettagliId_Intervento: TAutoIncField;
    MemDettagliCod_Cartella: TIntegerField;
    MemDettagliDataInizio: TDateField;
    MemDettagliDataTermine: TDateField;
    MemDettagliNroDente: TIntegerField;
    MemDettagliDiagnosi: TStringField;
    MemDettagliTrattamento: TStringField;
    MemDettagliEseguito: TBooleanField;
    MemDettagliAPBanda: TBooleanField;
    MemDettagliAPBracket: TBooleanField;
    MemDettagliAPContenzione: TBooleanField;
    MemDettagliAPEstrazione: TBooleanField;
    MemDettagliAPRitenzione: TBooleanField;
    MemDettagliMancante: TBooleanField;
    MemDettagliAgenesia: TBooleanField;
    MemDettagliIncluso: TBooleanField;
    MemDettagliSemiIncluso: TBooleanField;
    MemDettagliRadice: TBooleanField;
    MemDettagliCarie: TBooleanField;
    MemDettagliFrattura: TBooleanField;
    MemDettagliGranuloma: TBooleanField;
    MemDettagliEstrazione: TBooleanField;
    MemDettagliOtturazione: TBooleanField;
    MemDettagliEdodonzia: TBooleanField;
    MemDettagliCorona: TBooleanField;
    MemDettagliImpianro: TBooleanField;
    MemDettagliImmagine: TBooleanField;
    AdvPanel1: TAdvPanel;
    Label26: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label69: TLabel;
    Label1: TLabel;
    suiDBEdit25: TcxDBDateEdit;
    Cartelle: TMyTable;
    CartelleDataCartella: TDateField;
    CartelleAllergie: TMemoField;
    CartelleAnnotazioni: TMemoField;
    CartelleCalcPaziente: TStringField;
    CartelleCalcCartella: TStringField;
    CartelleLkpPaziente: TStringField;
    CartelleId_Dottore: TFloatField;
    CartelleLkpDottore: TStringField;
    DsCartelle: TDataSource;
    Pazienti: TMyTable;
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
    PazientiCalcNominativo: TStringField;
    PazientiAnnotazioni: TMemoField;
    DSPazienti: TDataSource;
    DettCartella: TMyTable;
    DettCartellaId_Intervento: TAutoIncField;
    DettCartellaDataInizio: TDateField;
    DettCartellaDataTermine: TDateField;
    DettCartellaNroDente: TFloatField;
    DettCartellaEseguito: TBooleanField;
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
    DettCartellaImporto: TCurrencyField;
    DettCartellaStatoLavorazione: TStringField;
    DettCartellaId_StatoLavorazione: TFloatField;
    DettCartellaLkpStatoLavorazione: TStringField;
    DsDettCartella: TDataSource;
    AdvGroupBox1: TAdvGroupBox;
    suiDBNavigator2: TDBNavigator;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    DettCartellaDottore: TStringField;
    DettCartellaId_dottore: TFloatField;
    DettCartelladiagnosi: TStringField;
    DettCartellatrattamento: TStringField;
    GridInterventi: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10DataInizio: TcxGridDBColumn;
    cxGridDBTableView10DataTermine: TcxGridDBColumn;
    cxGridDBTableView10NroDente: TcxGridDBColumn;
    cxGridDBTableView10Diagnosi: TcxGridDBColumn;
    cxGridDBTableView10LkpStato: TcxGridDBColumn;
    cxGridDBTableView10Importo: TcxGridDBColumn;
    cxGridDBTableView10Dottore: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    DsArticoli: TDataSource;
    Articoli: TMyTable;
    Articolicod_articolo: TStringField;
    Articoliid_articolo: TIntegerField;
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
    cxGridDBTableView10Trattamento: TcxGridDBColumn;
    Cartellebloccata: TBooleanField;
    Cartellefatturata: TBooleanField;
    CartelleId_fattura: TIntegerField;
    CartelleId_Preventivo: TIntegerField;
    SumDettCartella: TDBSumList;
    CartelleFatturata_Acconto: TBooleanField;
    CartelleId_Fattura_Acconto: TIntegerField;
    CartelleImpFatturati: TFloatField;
    CartelleImpDaFatturare: TFloatField;
    Cartellecod_cartella: TIntegerField;
    Cartellecod_paziente: TIntegerField;
    DettCartellacod_cartella: TIntegerField;
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure CartelleCalcFields(DataSet: TDataSet);
    procedure DettCartellaBeforeInsert(DataSet: TDataSet);
    procedure DettCartellaBeforeEdit(DataSet: TDataSet);
    procedure CartelleBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DettCartellaNewRecord(DataSet: TDataSet);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure cxDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView10TrattamentoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView10Column1PropertiesEditValueChanged(
      Sender: TObject);
    procedure DettCartellaAfterPost(DataSet: TDataSet);
    procedure CartelleNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCartella: TFrmCartella;

implementation

uses U_DM, U_Main, U_SearchPaziente, U_SearchArticoli, U_SelTrattamento;

{$R *.dfm}

procedure TFrmCartella.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcNominativo.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;

procedure TFrmCartella.CartelleCalcFields(DataSet: TDataSet);
begin
  CartelleCalcPaziente.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;

procedure TFrmCartella.CartelleNewRecord(DataSet: TDataSet);
begin
  Cartellefatturata.AsBoolean:=False;
  CartelleFatturata_Acconto.AsBoolean:=False;
end;

procedure TFrmCartella.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_DELETE then
    begin
      CartelleId_Dottore.AsInteger:=-1;
    end;
end;

procedure TFrmCartella.cxGridDBTableView10Column1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if Articoli.Locate('Descrizione',DettCartellatrattamento.AsString,[loCaseInsensitive])then
    DettCartellaImporto.AsCurrency:=ArticoliPrezzo.AsCurrency;
end;

procedure TFrmCartella.cxGridDBTableView10TrattamentoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsCartella:=True;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmCartella.DettCartellaBeforeInsert(DataSet: TDataSet);
begin
  if (Cartelle.State in [dsEdit,dsInsert])then Cartelle.Post;
end;


procedure TFrmCartella.DettCartellaAfterPost(DataSet: TDataSet);
begin
  SumDettCartella.RecalcAll;
  Cartelle.Edit;
  CartelleImpFatturati.AsCurrency:=0;
  CartelleImpDaFatturare.AsCurrency:=SumDettCartella.SumCollection[0].SumValue;
  Cartelle.Post;
end;

procedure TFrmCartella.DettCartellaBeforeEdit(DataSet: TDataSet);
begin
  if (Cartelle.State in [dsEdit,dsInsert])then Cartelle.Post;
end;

procedure TFrmCartella.CartelleBeforeDelete(DataSet: TDataSet);
begin
  DettCartella.DisableControls;
  DettCartella.First;
  while not DettCartella.IsEmpty do
    begin
      DettCartella.Delete;
      DettCartella.Next;
    end;
  DettCartella.EnableControls;
end;

procedure TFrmCartella.FormShow(Sender: TObject);
begin
  Width:=1014;
  Height:=615;
  suiButton1.Font.Color:=clGreen;
  suiButton2.Font.Color:=clRed;
end;

procedure TFrmCartella.Image4Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsCartella:=True;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmCartella.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with FrmMain do
    begin
      if Notebook.ActivePageIndex=2 then
        begin
          UpDateSchema;
          UpDateSchema2;
          BtnNuovaCartella.Enabled:=True;
          BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
          BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
          BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
          BtnCercaCartella.Enabled:=DM.Cartelle.RecordCount>0;
          BtnConvertiCartella.Enabled:=DM.Cartelle.RecordCount>0;
          BtnSchedaPaziente.Enabled:=DM.Cartelle.RecordCount>0;
          NB_DETT_SCHEDA.Enabled:=DM.Cartelle.RecordCount>0;
        end;
    end;
end;


procedure TFrmCartella.FormCreate(Sender: TObject);
var
  PathEXE:String;
  ListeIni:TIniFile;
begin
  PathEXE:=ExtractFilePath(Application.ExeName);
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        // Carica le sezioni negli Items delle griglie
        ReadSection('Diagnosi',TcxComboBoxProperties(cxGridDBTableView10Diagnosi.Properties).Items);
        ReadSection('Trattamenti',TcxComboBoxProperties(cxGridDBTableView10Trattamento.Properties).Items);
      end;
  finally
    ListeIni.Free;
  end;

  DM.Dottori.First;
  while not DM.Dottori.Eof do
    begin
      TcxComboBoxProperties(cxGridDBTableView10Dottore.Properties).Items.Add(DM.DottoriCognomeNome.AsString);
      DM.Dottori.Next;
    end;
  DM.Dottori.First;

  Articoli.First;
  while not Articoli.Eof do
    begin
      TcxComboBoxProperties(cxGridDBTableView10Trattamento.Properties).Items.Add(ArticoliDescrizione.AsString);
      Articoli.Next;
    end;
end;

procedure TFrmCartella.DettCartellaNewRecord(DataSet: TDataSet);
begin
  if CartelleId_Dottore.AsInteger>0 then DettCartellaDottore.AsString:=CartelleLkpDottore.AsString
  else DettCartellaDottore.AsString:='';
end;

procedure TFrmCartella.suiButton1Click(Sender: TObject);
begin
  //Salva la testata della cartella
  if (Cartelle.State in [dsEdit,dsInsert])then Cartelle.Post;
  //Salva i dettagli della Cartella
  if (DettCartella.State in [dsEdit,dsInsert])then DettCartella.Post;

  //Crea la Cartella Allegati per LA SCHEDA appena inserita
  if not DirectoryExists(PathEXE+'ALLEGATI\') then ForceDirectories(PathEXE+'ALLEGATI\');
  if not DirectoryExists(PathEXE+'ALLEGATI\'+CartelleCod_Cartella.AsString) then
    ForceDirectories(PathEXE+'ALLEGATI\'+Uppercase(DM.CartelleCod_Cartella.AsString));

  //Si Posiziona sulla Cartella appena inserita
  //Individua il Paziente

  DM.Cartelle.DisableControls;
  DM.DettCartella.DisableControls;
  DM.Cartelle.Refresh;
  DM.DettCartella.Refresh;
  DM.Cartelle.EnableControls;
  DM.DettCartella.EnableControls;

  DM.Pazienti.Locate('Cod_Paziente',CartelleCod_Paziente.AsInteger,[]);
  //Individua la Cartella
  DM.Cartelle.Locate('Cod_Cartella',CartelleCod_Cartella.AsInteger,[]);
  Close;
end;

procedure TFrmCartella.suiButton2Click(Sender: TObject);
begin
  //Annulla le modifiche se la testata non è stata ancora salvata altrimenti esegue il metodo Delete
  if (Cartelle.State in [dsEdit,dsInsert])then Cartelle.Cancel
  else Cartelle.Delete;
  Close;
end;

procedure TFrmCartella.AdvGlowButton17Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    InsCartella:=True;
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

end.
