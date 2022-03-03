unit U_CercaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls, DB,
  DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  frxClass, frxDBSet, StdCtrls, ImgList, AdvGlowButton, AdvObj, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, AdvPanel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon;

type
  TFrmCercaCliente = class(TForm)
    DBQryPazienti: TfrxDBDataset;
    QryPazienti: TMyQuery;
    DsQryPazienti: TDataSource;
    QryPazientiCod_Paziente: TIntegerField;
    QryPazientiCognome: TStringField;
    QryPazientiNome: TStringField;
    QryPazientiIndirizzo: TStringField;
    QryPazientiCap: TStringField;
    QryPazientiCitta: TStringField;
    QryPazientiProv: TStringField;
    QryPazientiStato: TStringField;
    QryPazientiSesso: TStringField;
    QryPazientiDataNascita: TDateField;
    QryPazientiCittaNascita: TStringField;
    QryPazientiCodiceFiscale: TStringField;
    QryPazientiTelefono: TStringField;
    QryPazientiCellulare: TStringField;
    QryPazientiEMail: TStringField;
    QryPazientiConsensoPrivacy: TBooleanField;
    QryPazientiNominativoFatt: TStringField;
    QryPazientiIndirizzoFatt: TStringField;
    QryPazientiComuneFatt: TStringField;
    QryPazientiCapfatt: TStringField;
    QryPazientiProvFatt: TStringField;
    QryPazientiPIva: TStringField;
    QryPazientiCodFiscFatt: TStringField;
    QryPazientiCalcNominativo: TStringField;
    frPazienti: TfrxReport;
    ImageList1: TImageList;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnScheda: TAdvGlowButton;
    BtnReport: TAdvGlowButton;
    EdCognome: TcxTextEdit;
    EdNome: TcxTextEdit;
    EdProv: TcxTextEdit;
    EdCitta: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Cognome: TcxGridDBColumn;
    cxGridDBTableView3Nome: TcxGridDBColumn;
    cxGridDBTableView3Indirizzo: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3Telefono: TcxGridDBColumn;
    cxGridDBTableView3Cellulare: TcxGridDBColumn;
    dxPrinter: TdxComponentPrinter;
    LinkPazienti: TdxGridReportLink;
    procedure GetPazienti(Sender: TObject);
    procedure QryPazientiAfterClose(DataSet: TDataSet);
    procedure QryPazientiAfterOpen(DataSet: TDataSet);
    procedure BtnReportClick(Sender: TObject);
    procedure BtnSchedaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaCliente: TFrmCercaCliente;
  Id_Paziente:Integer=-1;

implementation

uses U_DM, U_Main;

{$R *.dfm}


procedure TFrmCercaCliente.GetPazienti(Sender: TObject);
const
  {costanti di SQL}
     SQLSelect = 'SELECT %S FROM pazienti WHERE %S ';
     SQLGroup  = 'GROUP BY %S ';
     SQLOrder  = 'ORDER BY %S';
     CampiMont='*';
  //Parametri
    Cognome='(UPPER(pazienti.`Cognome`) LIKE UPPER(:iCognome))';
    Nome='(UPPER(pazienti.`Nome`) LIKE UPPER(:iNome))';
    Citta='(UPPER(pazienti.`Citta`) LIKE UPPER(:iCitta))';
    Prov='(UPPER(pazienti.`Prov`) LIKE UPPER(:iProv))';
var
  StrSql : String;
begin
  with QryPazienti do
    begin
      if EdCognome.Text<>'' then StrSql:=StrSql+Cognome;

      if EdNome.Text<>'' then
        if StrSql='' then StrSql:=StrSql+Nome
        else StrSql:=StrSql+' AND '+Nome;

      if EdCitta.Text<>'' then
        if StrSql='' then StrSql:=StrSql+Citta
        else StrSql:=StrSql+' AND '+Citta;

      if EdProv.Text<>'' then
        if StrSql='' then StrSql:=StrSql+Prov
        else StrSql:=StrSql+' AND '+Prov;

      Close;
      SQL.Clear;
      {definisce la stringa SQL finale}
      if StrSql<>'' then
        begin
          SQL.Add(Format(SQLSelect,[CampiMont,StrSql]));
          Prepare;
          if EdCognome.Text <> '' then
            ParamByName('iCognome').AsString:='%'+EdCognome.Text+'%';
          if EdNome.Text <> '' then
            ParamByName('iNome').AsString:='%'+EdNome.Text+'%';

          if EdCitta.Text <> '' then
            ParamByName('iCitta').AsString:='%'+EdCitta.Text+'%';
          if EdProv.Text <> '' then
            ParamByName('iProv').AsString:='%'+EdProv.Text+'%';
         Open;
       end;
    end;
  Id_Paziente:=QryPazientiCod_Paziente.AsInteger;
end;

procedure TFrmCercaCliente.QryPazientiAfterClose(DataSet: TDataSet);
begin
  BtnScheda.Enabled:=False;
  BtnReport.Enabled:=False;
end;

procedure TFrmCercaCliente.QryPazientiAfterOpen(DataSet: TDataSet);
begin
  BtnScheda.Enabled:=not QryPazienti.IsEmpty;
  BtnReport.Enabled:=not QryPazienti.IsEmpty;
end;

procedure TFrmCercaCliente.BtnReportClick(Sender: TObject);
begin
  {frPazienti.LoadFromFile('Report\CercaPazienti.FR3');
  frPazienti.ShowReport();}
  LinkPazienti.ReportTitle.Text:='ELENCO PAZIENTI';
  dxPrinter.CurrentLink:=LinkPazienti;
  dxPrinter.Preview(True,nil);
end;

procedure TFrmCercaCliente.BtnSchedaClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Si desidera Visualizzare la scheda del paziente '+#13+
                            UpperCase(QryPazientiCognome.AsString+' '+QryPazientiNome.AsString+'?')),
                            'Visualizza Scheda Paziente',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
    begin
      DM.Pazienti.Locate('Cod_Paziente',QryPazientiCod_Paziente.AsInteger,[]);
      Close;
    end;
end;

procedure TFrmCercaCliente.cxGridDBTableView3DblClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Si desidera Visualizzare la scheda del paziente '+#13+
                            UpperCase(QryPazientiCognome.AsString+' '+QryPazientiNome.AsString+'?')),
                            'Visualizza Scheda Paziente',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
    begin
      DM.Pazienti.Locate('Cod_Paziente',QryPazientiCod_Paziente.AsInteger,[]);
      Close;
    end;
end;

procedure TFrmCercaCliente.FormShow(Sender: TObject);
begin
  Width:=860;
  Height:=560;
end;

end.
