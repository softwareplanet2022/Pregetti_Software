unit U_Ins_Preventivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBSumLst, DB, DBTables, MyAccess, MyClasses,
  MyCall, DBAccess, MemDS,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Mask, DBCtrls, StdCtrls,
  Grids, BaseGrid, AdvGrid, DBAdvGrid, AdvOfficePager, AdvGlowButton,
  ComCtrls, ToolWin,  IniFiles, Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, DateUtils,
  RxMemDS, AdvPanel, cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxButtonEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFrmInsPreventivo = class(TForm)
    AdvPanel1: TAdvPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Bevel1: TBevel;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    suiDBNavigator6: TDBNavigator;
    AdvOfficePager22: TAdvOfficePage;
    suiDBMemo4: TDBMemo;
    cxDBDateEdit4: TcxDBDateEdit;
    BtnOK: TAdvGlowButton;
    BtnAnnulla: TAdvGlowButton;
    DsMem: TDataSource;
    SumList: TDBSumList;
    PopArticoli: TPopupMenu;
    CercaArticolidaaggiungereinFattura1: TMenuItem;
    Mem: TRxMemoryData;
    MemId_Dettaglio: TAutoIncField;
    MemCod_Articolo: TStringField;
    MemId_Preventivo: TIntegerField;
    MemQta: TIntegerField;
    MemDescrizione: TStringField;
    MemPrezzoUnitario: TCurrencyField;
    MemSconto: TIntegerField;
    MemAliquotaIva: TIntegerField;
    MemCalcImporto: TCurrencyField;
    MemCalcImportoScontato: TCurrencyField;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    CmbModPag: TcxDBComboBox;
    ChkStampaPreventivo: TcxCheckBox;
    AdvGlowButton20: TAdvGlowButton;
    GridDettaglio: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    cxGridDBTableView14Cod_Articolo: TcxGridDBColumn;
    cxGridDBTableView14Qta: TcxGridDBColumn;
    cxGridDBTableView14Descrizione: TcxGridDBColumn;
    cxGridDBTableView14PrezzoUnitario: TcxGridDBColumn;
    cxGridDBTableView14Sconto: TcxGridDBColumn;
    cxGridDBTableView14CalcImportoScontato: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnAnnullaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MemCalcFields(DataSet: TDataSet);
    procedure MemNewRecord(DataSet: TDataSet);
    procedure MemAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CercaArticolidaaggiungereinFattura1Click(Sender: TObject);
    procedure AdvGlowButton20Click(Sender: TObject);
    procedure MemAfterDelete(DataSet: TDataSet);
    procedure cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView14QtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView14DescrizionePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInsPreventivo: TFrmInsPreventivo;

implementation

uses U_DM, U_Main, U_SearchPaziente, U_SearchArticoli, U_SelTrattamento;

{$R *.dfm}

procedure TFrmInsPreventivo.FormShow(Sender: TObject);
begin
  Width:=800;
  Height:=630;
  with DM do
    begin
      cxDBTextEdit21.SetFocus;
    end;
end;

procedure TFrmInsPreventivo.BtnAnnullaClick(Sender: TObject);
begin
  if (DM.Preventivi.State in [dsInsert,dsEdit])then
    begin
      with FrmMain do
        begin
          if Application.MessageBox('Si desidera annullare l''inserimento corrente?',
                                    'Annulla Preventivo',MB_YesNo+MB_ICONWARNING)=Id_Yes then
            begin
              DM.Preventivi.Cancel;
              FrmInsPreventivo.Close;
            end
          else exit;
       end;
    end;
end;

procedure TFrmInsPreventivo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (DM.Preventivi.State in [dsEdit,dsInsert])then
    begin
      with FrmMain do
        begin
           if Application.MessageBox(Pchar('Attenzione!'+#13+#13+
                                           'Sei ancora in fase di inserimento preventivo.'+#13+
                                           'Si desidera salvare il documento corrente?'),
                                           'Chiudi Preventivo',MB_YesNo+MB_ICONWARNING)=Id_Yes then BtnOKClick(Sender)
          else CanClose:=True;
        end;
    end
  else CanClose:=True;
end;

procedure TFrmInsPreventivo.BtnOKClick(Sender: TObject);
var
  NumPrev,Anno:Integer;
begin
  //Controlla che il numero di preventivo non sia stato già assegnato ad un altro documento
  NumPrev:=DM.PreventiviNumPreventivo.AsInteger;
  //Anno:=ExtractYear(DM.PreventiviData.AsDateTime);
  Anno:=Yearof(DM.PreventiviData.AsDateTime);

  if DM.LkpPreventivi.FindKey([Anno,NumPrev])then
    begin
       Application.MessageBox(PChar('Attenzione!'+#13+#13+
                              'Il numero di Preventivo '+IntToStr(NumPrev)+' è già stato assegnato ad un altro documento.'+#13+
                              'Per poter proseguire con l''inserimento corrente è necessario assegnare un numero '+
                              'di preventivo differente'),'Errore Salvataggio Dati',MB_OK+MB_Iconerror);
        Exit;
    end;



  //Salva la testata del preventivo
  if (DM.Preventivi.State in [dsEdit,dsInsert])then
    try
      DM.Preventivi.Post;
    except
      Application.MessageBox('Si è verificato un errore in fase di salvataggio della testata preventivo'+#13+
                             'E'' consigliabile ripetere l''inserimento corrente o contattare l''assistenza tecnica del software',
                             'Errore Salvataggio Dati',MB_OK+MB_Iconerror);

        if(DM.Preventivi.State in [dsInsert])then DM.Preventivi.Cancel;
        Exit;
    end;


  //Travasa i dettagli del preventivo dalla Mem alla Tabella di dettaglio definitiva
  Mem.DisableControls;
  Mem.First;
  while not Mem.Eof do
    try
      DM.DettPreventivi.Insert;
      DM.DettPreventiviId_Preventivo.AsInteger:=DM.PreventiviId_Preventivo.AsInteger;
      DM.DettPreventiviCod_Articolo.AsString:=MemCod_Articolo.AsString;
      DM.DettPreventiviQta.AsInteger:=MemQta.AsInteger;
      DM.DettPreventiviDescrizione.AsString:=MemDescrizione.AsString;
      DM.DettPreventiviPrezzoUnitario.AsCurrency:=MemPrezzoUnitario.AsCurrency;
      DM.DettPreventiviSconto.AsInteger:=MemSconto.AsInteger;
      DM.DettPreventivi.Post;
      Mem.Next;
    except
        Application.MessageBox('Si è verificato un errore in fase di salvataggio dei dettagli preventivo'+#13+
                               'E'' consigliabile controllare le righe di dettaglio del documento corrente.',
                               'Errore Salvataggio dati',MB_OK+MB_Iconerror);
        DM.DettPreventivi.Cancel;
        Exit;
      end;;
  Mem.EnableControls;


  DM.Preventivi.DisableControls;
  DM.Preventivi.Close;
  DM.Preventivi.Open;
  DM.Preventivi.First;
  DM.Preventivi.EnableControls;
  
  //Aggiorna il contatore dei preventivi
  DM.Impostazioni.Edit;
  DM.ImpostazioniNextPreventivo.AsInteger:=DM.ImpostazioniNextPreventivo.AsInteger+1;
  DM.Impostazioni.Post;
  //************************************

  if ChkStampaPreventivo.Checked then
    with FrmMain do
      begin
        if Application.MessageBox('Si desidera stampare il preventivo appena creato?',
                                  'Stampa Preventivo',MB_YesNo+MB_ICONINformation)=Id_Yes then
          begin
            DM.frPreventivo.LoadFromFile(PathEXE+'Report\Preventivo.fr3');
            DM.frPreventivo.ShowReport();
          end;
      end;
  Close;
end;




procedure TFrmInsPreventivo.FormCreate(Sender: TObject);
begin
  {try
    // Carica le descrizioni negli Items delle griglie
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do ReadSection('Descrizioni Preventivo',GridDettagli.Columns[3].ComboItems);
  finally
    ListeIni.Free;
  end;}

  DM.ModPag.First;
  while not DM.ModPag.Eof do
    begin
      CmbModPag.Properties.Items.Add(DM.ModPagDescrizione.AsString);
      DM.ModPag.Next;
    end;
  DM.ModPag.First;
end;

procedure TFrmInsPreventivo.MemCalcFields(DataSet: TDataSet);
begin
  MemCalcImporto.AsCurrency:=MemQta.AsInteger*MemPrezzoUnitario.AsCurrency;
  MemCalcImportoScontato.AsCurrency:=MemCalcImporto.AsCurrency-(MemCalcImporto.AsCurrency*MemSconto.AsFloat/100);
end;

procedure TFrmInsPreventivo.MemNewRecord(DataSet: TDataSet);
begin
  MemQta.AsInteger:=1;
end;

procedure TFrmInsPreventivo.MemAfterDelete(DataSet: TDataSet);
begin
  if not (DM.Preventivi.State in [dsEdit,dsInsert])then DM.Preventivi.Edit;
  SumList.RecalcAll;
  DM.PreventiviTotale.AsCurrency:=SumList.SumCollection[1].SumValue;
end;

procedure TFrmInsPreventivo.MemAfterPost(DataSet: TDataSet);
begin
  if not (DM.Preventivi.State in [dsEdit,dsInsert])then DM.Preventivi.Edit;
  SumList.RecalcAll;
  DM.PreventiviTotale.AsCurrency:=SumList.SumCollection[1].SumValue; 
end;

procedure TFrmInsPreventivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  InsPreventivo:=False;
  ModPreventivo:=False;
  InsFattura:=False;
  ModFattura:=False;

  with FrmMain do
    begin
      if (Notebook.ActivePageIndex=4)and(AdvOfficePager1.ActivePageIndex=0)then
        begin
          BtnModificaDoc.Enabled:=DM.Preventivi.RecordCount>0;
          BtnEliminaDoc.Enabled:=DM.Preventivi.RecordCount>0;
          BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
          BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;

          AdvOfficePager2.Enabled:=DM.Preventivi.RecordCount>0;
          GBCercaPazientePrev.Enabled:=False;
          GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
        end;
    end;
end;

procedure TFrmInsPreventivo.CercaArticolidaaggiungereinFattura1Click(
  Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsPreventivo:=True;
    FrmCercaArticoli.Caption:='  Seleziona gli articoli da inserire nel preventivo';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsPreventivo.cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsPreventivo:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsPreventivo.cxGridDBTableView14DescrizionePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsPreventivo:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsPreventivo.cxGridDBTableView14QtaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    InsPreventivo:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmInsPreventivo.AdvGlowButton20Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    InsPreventivo:=True;
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

end.

