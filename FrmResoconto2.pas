unit FrmResoconto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxContainer, ComCtrls, dxCore, cxDateUtils,
  AdvGlowButton, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, AdvGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,cxGridExportLink, ShellAPI,
  Grids, DBGrids, AdvPanel, dxDateRanges;

type
  TFrmResoconto = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DataInizio: TcxDateEdit;
    DataFine: TcxDateEdit;
    EdPaziente: TEdit;
    ChkFiltra: TCheckBox;
    GridIncassi: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Cod_Paziente: TcxGridDBColumn;
    cxGridDBTableView2CognomeNome: TcxGridDBColumn;
    cxGridDBTableView2DataCartella: TcxGridDBColumn;
    cxGridDBTableView2NroCartella: TcxGridDBColumn;
    cxGridDBTableView2TotaleCartella: TcxGridDBColumn;
    cxGridDBTableView2TotIncassato: TcxGridDBColumn;
    cxGridDBTableView2TotDaIncassare: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    dxPrinter: TdxComponentPrinter;
    LinkIncassi: TdxGridReportLink;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure GetResoconto(Sender: TObject);
    procedure suitempEdPazienteChange(Sender: TObject);
    procedure DataInizioPropertiesChange(Sender: TObject);
    procedure DataFinePropertiesChange(Sender: TObject);
    procedure suitempChkFiltraClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResoconto: TFrmResoconto;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmResoconto.FormShow(Sender: TObject);
begin
  Width:=815;
  Height:=630;
end;

procedure TFrmResoconto.AdvGlowButton9Click(Sender: TObject);
begin
  LinkIncassi.ReportTitle.Text:='RESOCONTO INCASSI PAZIENTI';
  dxPrinter.CurrentLink:=LinkIncassi;
  dxPrinter.Preview(True,nil);
end;

procedure TFrmResoconto.AdvGlowButton1Click(Sender: TObject);
var
  Path:String;
begin
  Path:=ExtractFilePath(Application.ExeName);
  if not DirectoryExists(Path+'Temp')then CreateDir(Path+'Temp');
  try
    ExportGridToExcel(Path+'Temp\ResocontoPazienti.xls',GridIncassi,False,True,True);
    ShellExecute(Application.Handle,'open',PChar(Path+'Temp\ResocontoPazienti.xls'),'',nil,SW_SHOWNORMAL);
  except
    Application.MessageBox('Attenzione!'+#13+
                           'Non è stato possibile generare il file MSExcel.'+
                           'Verrà creato un file in formato html',
                           'Esporta Dati',MB_OK+MB_Iconwarning);
    ExportGridToHTML(Path+'Temp\ResocontoPazienti.html',GridIncassi,False,True,'html');
    ShellExecute(Application.Handle,'open',PChar(Path+'Temp\ResocontoPazienti.html'),'',nil,SW_SHOWNORMAL);
  end;
end;


procedure TFrmResoconto.GetResoconto(Sender: TObject);
const

  {costanti di SQL}
  SQLSelect = 'SELECT %S FROM dettcartelle '+
              'INNER JOIN cartelle ON  (dettcartelle.`Cod_Cartella` = cartelle.`Cod_Cartella`) '+
              'INNER JOIN pazienti ON  (cartelle.`Cod_Paziente` = pazienti.`Cod_Paziente`) '+
              'INNER JOIN incassi ON  (cartelle.`Cod_Cartella` = incassi.`Cod_Cartella`) WHERE %S '+
              'GROUP BY dettcartelle.`Cod_Cartella`, pazienti.`Cognome`, pazienti.`Nome`, cartelle.`Cod_Cartella`,cartelle.`DataCartella`';
  Campi='SUM( dettcartelle.`Importo` )As TotaleCartella, '+
        'SUM(incassi.`Importo`)As Incassato, '+
        'dettcartelle.`Cod_Cartella`, pazienti.`Cognome`, pazienti.`Nome`, '+
        'cartelle.`Cod_Cartella`, cartelle.`DataCartella`';

  //Parametri
  Paziente='Upper(pazienti.`Cognome`+" "+pazienti.`Nome`) like Upper(:iNominativo)';
  DalGiornoAlGiorno='(cartelle.`DataCartella` >= (:iDalGiorno))AND '+
                    '(cartelle.`DataCartella` <=(:iAlGiorno))';
var
  StrSql : String;
begin
  with DM.QryIncassi do
    begin
      if (EdPaziente.Text='')and(DataInizio.Date<=0)and(DataFine.Date<=0) then
        begin
          DM.QryIncassi.SQL.Clear;
          DM.QryIncassi.SQL.Text:='SELECT SUM( Dettcartelle.`Importo` )As TotaleCartella,  SUM(Incassi.`Importo`)As Incassato, Dettcartelle.`Cod_Cartella`, '+
                                  'Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`, Cartelle.`DataCartella` '+
                                  'FROM Dettcartelle '+
                                  'INNER JOIN Cartelle '+
                                  'ON  (Dettcartelle.`Cod_Cartella` = Cartelle.`Cod_Cartella`) '+
                                  'INNER JOIN Pazienti '+
                                  'ON  (Cartelle.`Cod_Paziente` = Pazienti.`Cod_Paziente`) '+
                                  'INNER JOIN Incassi '+
                                  'ON  (Cartelle.`Cod_Cartella` = Incassi.`Cod_Cartella`) '+
                                  'GROUP BY Dettcartelle.`Cod_Cartella`, Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`,Cartelle.`DataCartella`';
          DM.QryIncassi.Prepare;
          DM.QryIncassi.Open;
        end
      else
        begin
          if EdPaziente.Text<>'' then StrSql:=StrSql+Paziente;

          if (DataInizio.Date>0)and(DataFine.Date>0)then
            if StrSql='' then StrSql:=StrSql+DalGiornoAlGiorno
            else StrSql:=StrSql+' AND '+DalGiornoAlGiorno;
          Close;
          SQL.Clear;
          {definisce la stringa SQL finale}
          if StrSql<>'' then
            begin
              SQL.Add(Format(SQLSelect,[Campi,StrSql]));
              Prepare;
              if EdPaziente.Text<>'' then
                ParamByName('iNominativo').AsString:='%'+EdPaziente.Text+'%';

              if(DataInizio.Date>0)and((DataFine.Date>0))then
                begin
                  ParamByName('iDalGiorno').AsDateTime:=DataInizio.Date;
                  ParamByName('iAlGiorno').AsDateTime:=DataFine.Date;
                end;
             Open;
          end;
        end;
    end;
end;


procedure TFrmResoconto.suitempEdPazienteChange(Sender: TObject);
begin
  if ChkFiltra.Checked then GetResoconto(Sender)
  else
    begin
      DM.QryIncassi.SQL.Clear;
      DM.QryIncassi.SQL.Text:='SELECT SUM( Dettcartelle.`Importo` )As TotaleCartella,  SUM(Incassi.`Importo`)As Incassato, Dettcartelle.`Cod_Cartella`, '+
                              'Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`, Cartelle.`DataCartella` '+
                              'FROM Dettcartelle '+
                              'INNER JOIN Cartelle '+
                              'ON  (Dettcartelle.`Cod_Cartella` = Cartelle.`Cod_Cartella`) '+
                              'INNER JOIN Pazienti '+
                              'ON  (Cartelle.`Cod_Paziente` = Pazienti.`Cod_Paziente`) '+
                              'INNER JOIN Incassi '+
                              'ON  (Cartelle.`Cod_Cartella` = Incassi.`Cod_Cartella`) '+
                              'GROUP BY Dettcartelle.`Cod_Cartella`, Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`,Cartelle.`DataCartella`';
      DM.QryIncassi.Prepare;
      DM.QryIncassi.Open;
    end;
end;

procedure TFrmResoconto.DataInizioPropertiesChange(Sender: TObject);
begin
  if ChkFiltra.Checked then GetResoconto(Sender)
  else
    begin
      DM.QryIncassi.SQL.Clear;
      DM.QryIncassi.SQL.Text:='SELECT SUM( Dettcartelle.`Importo` )As TotaleCartella,  SUM(Incassi.`Importo`)As Incassato, Dettcartelle.`Cod_Cartella`, '+
                              'Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`, Cartelle.`DataCartella` '+
                              'FROM Dettcartelle '+
                              'INNER JOIN Cartelle '+
                              'ON  (Dettcartelle.`Cod_Cartella` = Cartelle.`Cod_Cartella`) '+
                              'INNER JOIN Pazienti '+
                              'ON  (Cartelle.`Cod_Paziente` = Pazienti.`Cod_Paziente`) '+
                              'INNER JOIN Incassi '+
                              'ON  (Cartelle.`Cod_Cartella` = Incassi.`Cod_Cartella`) '+
                              'GROUP BY Dettcartelle.`Cod_Cartella`, Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`,Cartelle.`DataCartella`';
      DM.QryIncassi.Prepare;
      DM.QryIncassi.Open;
    end;
end;

procedure TFrmResoconto.DataFinePropertiesChange(Sender: TObject);
begin
  if ChkFiltra.Checked then GetResoconto(Sender)
  else
    begin
      DM.QryIncassi.SQL.Clear;
      DM.QryIncassi.SQL.Text:='SELECT SUM( Dettcartelle.`Importo` )As TotaleCartella,  SUM(Incassi.`Importo`)As Incassato, Dettcartelle.`Cod_Cartella`, '+
                              'Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`, Cartelle.`DataCartella` '+
                              'FROM Dettcartelle '+
                              'INNER JOIN Cartelle '+
                              'ON  (Dettcartelle.`Cod_Cartella` = Cartelle.`Cod_Cartella`) '+
                              'INNER JOIN Pazienti '+
                              'ON  (Cartelle.`Cod_Paziente` = Pazienti.`Cod_Paziente`) '+
                              'INNER JOIN Incassi '+
                              'ON  (Cartelle.`Cod_Cartella` = Incassi.`Cod_Cartella`) '+
                              'GROUP BY Dettcartelle.`Cod_Cartella`, Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`,Cartelle.`DataCartella`';
      DM.QryIncassi.Prepare;
      DM.QryIncassi.Open;
    end;
end;

procedure TFrmResoconto.suitempChkFiltraClick(Sender: TObject);
begin
  if ChkFiltra.Checked then GetResoconto(Sender)
  else
    begin
      DM.QryIncassi.SQL.Clear;
     DM.QryIncassi.SQL.Text:='SELECT SUM( Dettcartelle.`Importo` )As TotaleCartella,  SUM(Incassi.`Importo`)As Incassato, Dettcartelle.`Cod_Cartella`, '+
                              'Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`, Cartelle.`DataCartella` '+
                              'FROM Dettcartelle '+
                              'INNER JOIN Cartelle '+
                              'ON  (Dettcartelle.`Cod_Cartella` = Cartelle.`Cod_Cartella`) '+
                              'INNER JOIN Pazienti '+
                              'ON  (Cartelle.`Cod_Paziente` = Pazienti.`Cod_Paziente`) '+
                              'INNER JOIN Incassi '+
                              'ON  (Cartelle.`Cod_Cartella` = Incassi.`Cod_Cartella`) '+
                              'GROUP BY Dettcartelle.`Cod_Cartella`, Pazienti.`Cognome`, Pazienti.`Nome`, Cartelle.`Cod_Cartella`,Cartelle.`DataCartella`';
      DM.QryIncassi.Prepare;
      DM.QryIncassi.Open;
    end;
end;

procedure TFrmResoconto.AdvGlowButton2Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM.MemResoconto.DisableControls;

  DM.QryTotCartelle.Close;
  DM.QryTotCartelle.Open;

  DM.QryIncassi.Close;
  DM.QryIncassi.Open;

  DM.MemResoconto.EmptyTable;


  DM.QryTotCartelle.First;
  while not DM.QryTotCartelle.Eof do
    begin
      if not DM.MemResoconto.Locate('NroCartella',DM.QryTotCartelleCod_Cartella.AsInteger,[])then
        begin
          DM.MemResoconto.Insert;
          //DM.MemResocontoCod_Paziente.AsInteger:=
          DM.MemResocontoCognomeNome.AsString:=DM.QryTotCartelleCognome.AsString+' '+DM.QryTotCartelleNome.AsString;
          DM.MemResocontoDataCartella.AsString:=DateToStr(DM.QryTotCartelleDataCartella.AsDateTime);
          DM.MemResocontoNroCartella.AsInteger:=DM.QryTotCartelleCod_Cartella.AsInteger;
          DM.MemResocontoTotaleCartella.AsCurrency:=DM.QryTotCartelleTotaleCartella.AsCurrency;
          DM.MemResoconto.Post;
        end;
      DM.QryTotCartelle.Next;
    end;
  DM.QryTotCartelle.First;


  DM.QryIncassi.First;
  while not DM.QryIncassi.Eof do
    begin
      if DM.MemResoconto.Locate('NroCartella',DM.QryIncassiCod_Cartella.AsInteger,[])then
        begin
          DM.MemResoconto.Edit;
          DM.MemResocontoTotIncassato.AsCurrency:=DM.QryIncassiIncassato.AsCurrency;
          DM.MemResoconto.Post;
        end;
      DM.QryIncassi.Next;
    end;
  DM.QryIncassi.First;


  DM.MemResoconto.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFrmResoconto.Timer1Timer(Sender: TObject);
begin
  AdvGlowButton2Click(Self);
  Timer1.Enabled:=False;
end;

end.
