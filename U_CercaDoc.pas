unit U_CercaDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, DBAdvGrid, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, ExtCtrls, DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, AdvGroupBox,
  AdvPanel, AdvGlowButton, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmCercaDoc = class(TForm)
    QryPreventivi: TMyQuery;
    DsQryPreventivi: TDataSource;
    QryFatture: TMyQuery;
    DSQryFatture: TDataSource;
    QryPreventiviNumPreventivo: TFloatField;
    QryPreventiviData: TDateField;
    QryPreventiviRagioneSociale: TStringField;
    QryPreventiviCitta: TStringField;
    QryPreventiviTotale: TCurrencyField;
    QryFattureNumFattura: TFloatField;
    QryFattureData: TDateField;
    QryFattureRagioneSociale: TStringField;
    QryFattureCitta: TStringField;
    QryFattureCalcImportoIva: TCurrencyField;
    QryFattureCalcImportoRitenuta: TCurrencyField;
    QryFattureCalcImportoFattura: TCurrencyField;
    QryFattureCalcTotaleFattura: TCurrencyField;
    QryFattureAliquotaIVA: TFloatField;
    QryFattureAliquotaRitenuta: TFloatField;
    QryFattureImponibile: TCurrencyField;
    QryFattureImportoBolli: TCurrencyField;
    QryPreventiviId_Preventivo: TIntegerField;
    QryFattureId_Fattura: TIntegerField;
    AdvPanel1: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    EdPaziente: TcxTextEdit;
    Label2: TLabel;
    DataInizio: TcxDateEdit;
    DataFine: TcxDateEdit;
    Label3: TLabel;
    Label1: TLabel;
    NB: TNotebook;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3NumFattura: TcxGridDBColumn;
    cxGridDBTableView3Data: TcxGridDBColumn;
    cxGridDBTableView3RagioneSociale: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3CalcTotaleFattura: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NumPreventivo: TcxGridDBColumn;
    cxGridDBTableView1Data: TcxGridDBColumn;
    cxGridDBTableView1RagioneSociale: TcxGridDBColumn;
    cxGridDBTableView1Citta: TcxGridDBColumn;
    cxGridDBTableView1Totale: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure GetPreventivi(Sender: TObject);
    procedure GetFatture(Sender: TObject);
    procedure DataFinePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure DataInizioPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridPreventiviDblClick(Sender: TObject);
    procedure QryFattureCalcFields(DataSet: TDataSet);
    procedure DataInizioPropertiesChange(Sender: TObject);
    procedure DataInizioPropertiesCloseUp(Sender: TObject);
    procedure DataFinePropertiesChange(Sender: TObject);
    procedure DataFinePropertiesCloseUp(Sender: TObject);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure EdPazientePropertiesChange(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaDoc: TFrmCercaDoc;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmCercaDoc.FormShow(Sender: TObject);
begin
  Height:=480;
  Width:=800;
end;


procedure TFrmCercaDoc.GetPreventivi(Sender: TObject);
const
  {costanti di SQL}
  SQLSelect = 'SELECT %S FROM preventivi WHERE %S';
  SQLGroup  = 'GROUP BY %S ';
  SQLOrder  = 'ORDER BY %S ';
  Campi='Id_Preventivo, NumPreventivo, Data, RagioneSociale, Citta, Totale';

  //Parametri
  Paziente='Upper(preventivi.`RagioneSociale`) like Upper(:iRagioneSociale)';
  DalGiornoAlGiorno='(preventivi.`Data` >= (:iDalGiorno))AND '+
                    '(preventivi.`Data` <=(:iAlGiorno))';
var
  StrSql : String;
begin
  with QryPreventivi do
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
            ParamByName('iRagioneSociale').AsString:='%'+EdPaziente.Text+'%';

          if(DataInizio.Date>0)and((DataFine.Date>0))then
            begin
              ParamByName('iDalGiorno').AsDateTime:=DataInizio.Date;
              ParamByName('iAlGiorno').AsDateTime:=DataFine.Date;
            end;
         Open;
      end;
    end;
end;


procedure TFrmCercaDoc.GetFatture(Sender: TObject);
const
  {costanti di SQL}
  SQLSelect = 'SELECT %S FROM fatture WHERE %S';
  SQLGroup  = 'GROUP BY %S ';
  SQLOrder  = 'ORDER BY %S ';
  Campi='Id_Fattura, NumFattura, Data, RagioneSociale, Citta, AliquotaIVA, AliquotaRitenuta, Imponibile, ImportoBolli';

  //Parametri
  Paziente='Upper(fatture.`RagioneSociale`) like Upper(:iRagioneSociale)';
  DalGiornoAlGiorno='(fatture.`Data` >= (:iDalGiorno))AND '+
                    '(fatture.`Data` <=(:iAlGiorno))';
var
  StrSql : String;
begin
  with QryFatture do
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
            ParamByName('iRagioneSociale').AsString:='%'+EdPaziente.Text+'%';

          if(DataInizio.Date>0)and((DataFine.Date>0))then
            begin
              ParamByName('iDalGiorno').AsDateTime:=DataInizio.Date;
              ParamByName('iAlGiorno').AsDateTime:=DataFine.Date;
            end;
         Open;
      end;
    end;
end;



procedure TFrmCercaDoc.DataFinePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.DataInizioPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.GridPreventiviDblClick(Sender: TObject);
begin
  if not QryPreventivi.IsEmpty then
    begin
      DM.Preventivi.Locate('Id_Preventivo',QryPreventiviId_Preventivo.AsInteger,[]);
      Close;
    end;
end;

procedure TFrmCercaDoc.DBAdvGrid2DblClick(Sender: TObject);
begin
  if not QryFatture.IsEmpty then
    begin
      DM.Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[]);
      Close;
    end;
end;


procedure TFrmCercaDoc.QryFattureCalcFields(DataSet: TDataSet);
begin
  QryFattureCalcImportoIva.AsCurrency:=(QryFattureImponibile.AsCurrency*QryFattureAliquotaIVA.AsInteger/100);
  QryFattureCalcImportoRitenuta.AsCurrency:=(QryFattureImponibile.AsCurrency*QryFattureAliquotaRitenuta.AsInteger/100);
  QryFattureCalcImportoFattura.AsCurrency:=QryFattureImponibile.AsCurrency+QryFattureCalcImportoIva.AsCurrency;
  QryFattureCalcTotaleFattura.AsCurrency:=QryFattureCalcImportoFattura.AsCurrency-QryFattureCalcImportoRitenuta.AsCurrency+QryFattureImportoBolli.AsCurrency;
end;


procedure TFrmCercaDoc.DataInizioPropertiesChange(Sender: TObject);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.DataInizioPropertiesCloseUp(Sender: TObject);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.DataFinePropertiesChange(Sender: TObject);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.DataFinePropertiesCloseUp(Sender: TObject);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;



procedure TFrmCercaDoc.EdPazientePropertiesChange(Sender: TObject);
begin
  case NB.PageIndex of
    0:GetPreventivi(Sender);
    1:GetFatture(Sender);
  end;
end;

procedure TFrmCercaDoc.AdvGlowButton1Click(Sender: TObject);
begin
   case NB.PageIndex of
    0:begin
        if DM.Preventivi.Locate('Id_Preventivo',QryPreventiviId_Preventivo.AsInteger,[]) then Close;
      end;
    1:begin
        if DM.Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[])then Close;
      end;
  end;
  Close;
end;

procedure TFrmCercaDoc.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCercaDoc.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if DM.Preventivi.Locate('Id_Preventivo',QryPreventiviId_Preventivo.AsInteger,[]) then Close;
end;

procedure TFrmCercaDoc.cxGridDBTableView3DblClick(Sender: TObject);
begin
  if DM.Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[])then Close;
end;

end.
