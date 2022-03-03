unit U_SearchCartella;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls,
  Grids, BaseGrid, AdvGrid, DBAdvGrid, DB, DBClient, DBCtrls,
  DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj,
  AdvGlowButton, AdvPanel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmCercaCartella = class(TForm)
    DsQryCartelle: TDataSource;
    QryCartelle: TMyQuery;
    QryCartelleCod_Cartella: TIntegerField;
    QryCartelleDataCartella: TDateField;
    QryCartelleIndirizzo: TStringField;
    QryCartelleCap: TStringField;
    QryCartelleCitta: TStringField;
    QryCartelleProv: TStringField;
    QryCartelleCod_Paziente: TIntegerField;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataFine: TcxDateEdit;
    DataInizio: TcxDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    EdPaziente: TcxTextEdit;
    QryCartellePaziente: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Paziente: TcxGridDBColumn;
    cxGridDBTableView3DataCartella: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3Prov: TcxGridDBColumn;
    procedure GetCartella(Sender: TObject);
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaCartella: TFrmCercaCartella;
  Id_Cartella:Integer=-1;

implementation

uses U_DM, U_Main, U_Ins_Fattura;

{$R *.dfm}


procedure TFrmCercaCartella.GetCartella(Sender: TObject);
const
  {costanti di SQL}
     SQLSelect = 'SELECT %S FROM cartelle '+
                 'INNER JOIN pazienti ON (cartelle.`Cod_Paziente` = pazienti.`Cod_Paziente`) WHERE %S';
     SQLGroup  = 'GROUP BY %S ';
     SQLOrder  = 'ORDER BY %S ';
     Campi='Cod_Cartella, cartelle.`DataCartella`, CONCAT(pazienti.`Cognome`," ",pazienti.`Nome`)As Paziente, '+
                 'pazienti.`Indirizzo`, pazienti.`Cap`, pazienti.`Citta`, pazienti.`Prov`, pazienti.`Cod_Paziente`';
  //Parametri
    Paziente='Upper(CONCAT(pazienti.`Cognome`," ",pazienti.`Nome`)) like Upper(:iNominativo)';
    DalGiornoAlGiorno='(cartelle.`DataCartella` >= (:iDalGiorno))AND '+
                      '(cartelle.`DataCartella` <=(:iAlGiorno))';
var
  StrSql : String;
begin
  with QryCartelle do
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


procedure TFrmCercaCartella.suitempsuiButton2Click(Sender: TObject);
begin
  Close;
end;


procedure TFrmCercaCartella.FormShow(Sender: TObject);
begin
  Width:=745;
  Height:=490;
end;

procedure TFrmCercaCartella.AdvGlowButton1Click(Sender: TObject);
begin
  Id_Cartella:=QryCartelleCod_Cartella.AsInteger;
  if Id_Cartella>0 then
    begin
      //Si posiziona sul Paziente a cui è intestata la cartella
      DM.Pazienti.Locate('Cod_Paziente',QryCartelleCod_Paziente.AsInteger,[]);
      //Quindi sulla cartella selezionata
      DM.Cartelle.Locate('Cod_Cartella',Id_Cartella,[]);
    end;
  Close;
  FrmMain.dxDBTreeView1.SetFocus;
end;

procedure TFrmCercaCartella.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCercaCartella.cxGridDBTableView3DblClick(Sender: TObject);
begin
  AdvGlowButton1Click(SENDER);
end;

end.

