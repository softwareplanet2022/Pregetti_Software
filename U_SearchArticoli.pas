unit U_SearchArticoli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  Grids, BaseGrid, AdvGrid,  DBAdvGrid, ExtCtrls, AdvGlowButton, Inifiles,
  AdvObj, RxMemDS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  AdvGroupBox, AdvPanel, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFrmCercaArticoli = class(TForm)
    DsArticoli: TDataSource;
    QryArticoli: TMyQuery;
    QryArticoliCod_Articolo: TStringField;
    QryArticoliId_Articolo: TIntegerField;
    QryArticoliDescrizione: TStringField;
    QryArticoliCosto: TCurrencyField;
    QryArticoliPrezzo: TCurrencyField;
    QryArticoliPeso_UM: TStringField;
    QryArticoliCategoria_Terapia: TStringField;
    QryArticoliAliquotaIVA: TFloatField;
    QryArticoliBarcode: TStringField;
    QryArticoliGiacMin: TFloatField;
    QryArticoliLivelloRiordino: TFloatField;
    QryArticoliAnnotazioni: TMemoField;
    MemArticoli: TRxMemoryData;
    MemArticoliCod_Articolo: TStringField;
    MemArticoliId_Articolo: TIntegerField;
    MemArticoliDescrizione: TStringField;
    MemArticoliPrezzo: TCurrencyField;
    MemArticoliPeso_UM: TStringField;
    MemArticoliCategoria_Terapia: TStringField;
    AdvPanel1: TAdvPanel;
    BtnScheda: TAdvGlowButton;
    BtnReport: TAdvGlowButton;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdDescrizione: TcxTextEdit;
    EdCategoria: TcxComboBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2Qta: TcxGridDBColumn;
    cxGrid2DBTableView2Descrizione: TcxGridDBColumn;
    cxGrid2DBTableView2PrezzoUnitario: TcxGridDBColumn;
    cxGrid2DBTableView2Sconto: TcxGridDBColumn;
    cxGrid2DBTableView2AliquotaIva: TcxGridDBColumn;
    cxGrid2DBTableView2NATURA_IVA: TcxGridDBColumn;
    cxGrid2DBTableView2TIPO_SPESA: TcxGridDBColumn;
    cxGrid2DBTableView2CalcImpScontatoIvato: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1Cod_Articolo: TcxGridDBColumn;
    cxGrid2DBTableView1Descrizione: TcxGridDBColumn;
    cxGrid2DBTableView1Prezzo: TcxGridDBColumn;
    cxGrid2DBTableView1Categoria_Terapia: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure GetArticoli(Sender: TObject);
    procedure BtnSchedaClick(Sender: TObject);
    procedure GridArticoliGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure BtnReportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaArticoli: TFrmCercaArticoli;

implementation

uses U_DM, U_Ins_Preventivo, U_Main, U_Ins_Fattura, U_Cartella;

{$R *.dfm}

procedure TFrmCercaArticoli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SearchProduct:=False;
end;

procedure TFrmCercaArticoli.FormCreate(Sender: TObject);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do ReadSection('Categorie Terapia',EdCategoria.Properties.Items);
  finally
    ListeIni.Free;
  end;
end;


procedure TFrmCercaArticoli.GetArticoli(Sender: TObject);
const
  {costanti di SQL}
     SQLSelect = 'SELECT %S FROM articoli WHERE %S ';
     SQLGroup  = 'GROUP BY %S ';
     SQLOrder  = 'ORDER BY %S';
     Campi='*';
  //Parametri
    Descrizione='(UPPER(articoli.`Descrizione`) LIKE UPPER(:iDescrizione))';
    Categoria= '(UPPER(articoli.`Categoria_Terapia`) LIKE UPPER(:iCategoria))';
var
  StrSql : String;
begin
  with QryArticoli do
    begin
      if EdDescrizione.Text<>'' then StrSql:=StrSql+Descrizione;

      if EdCategoria.Text<>'' then
        if StrSql='' then StrSql:=StrSql+Categoria
        else StrSql:=StrSql+' AND '+Categoria;

      Close;
      SQL.Clear;
      {definisce la stringa SQL finale}
      if StrSql<>'' then
        begin
          SQL.Add(Format(SQLSelect,[Campi,StrSql]));
          Prepare;
          if EdDescrizione.Text <> '' then
            ParamByName('iDescrizione').AsString:='%'+EdDescrizione.Text+'%';
          if EdCategoria.Text <> '' then
            ParamByName('iCategoria').AsString:='%'+EdCategoria.Text+'%';
         Open;
       end;
    end;
end;



procedure TFrmCercaArticoli.BtnSchedaClick(Sender: TObject);
var
  i:Integer;
begin
  if cxGrid2DBTableView1.Controller.SelectedRowCount>0 then
    begin
      Screen.Cursor:=crHourGlass;
      for i:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount-1 do
        begin
          cxGrid2DBTableView1.Controller.SelectedRows[i].Focused:=True;
          cxGrid2DBTableView1.Controller.SelectedRows[i].Selected:=True;

          //Si sta inseriendo una nuova fattura
          if InsFattura then
            begin
              FrmInsFattura.MemDettagli.Last;
              FrmInsFattura.MemDettagli.Append;
              FrmInsFattura.MemDettagliQta.AsInteger:=1;
              FrmInsFattura.MemDettagliDescrizione.AsString:=QryArticoliDescrizione.AsString;
              FrmInsFattura.MemDettagliPrezzoUnitario.AsCurrency:=QryArticoliPrezzo.AsCurrency;
              FrmInsFattura.MemDettagliCod_Articolo.AsString:=QryArticoliCod_Articolo.AsString;
              FrmInsFattura.MemDettagli.Post;
              FrmInsFattura.AdvOfficePager3.SetFocus;
            end

          //Si sta modificando una fattura esistente
          else if ModFattura then
            begin
              DM.DettFatture.DisableControls;
              DM.DettFatture.Last;
              DM.DettFatture.Append;
              DM.DettFattureCod_Articolo.AsString:=QryArticoliCod_Articolo.AsString;
              DM.DettFattureQta.AsInteger:=1;
              DM.DettFattureDescrizione.AsString:=QryArticoliDescrizione.AsString;
              DM.DettFatturePrezzoUnitario.AsCurrency:=QryArticoliPrezzo.AsCurrency;
              DM.DettFatture.Post;
              DM.DettFatture.EnableControls;
             end

          //Si sta inserendo un nuovo Preventivo
          else if InsPreventivo then
            begin
              if not FrmInsPreventivo.Mem.Locate('Cod_Articolo',QryArticoliCod_Articolo.AsString,[loCaseInsensitive])then
                begin
                  FrmInsPreventivo.Mem.Insert;
                  FrmInsPreventivo.MemCod_Articolo.AsString:=QryArticoliCod_Articolo.AsString;
                  FrmInsPreventivo.MemQta.AsInteger:=1;
                  FrmInsPreventivo.MemDescrizione.AsString:=QryArticoliDescrizione.AsString;
                  FrmInsPreventivo.MemPrezzoUnitario.AsCurrency:=QryArticoliPrezzo.AsCurrency;
                  FrmInsPreventivo.Mem.Post;
                end;
              FrmInsPreventivo.AdvOfficePager2.SetFocus;
            end

          //Si sta modificando un Preventivo esistente
          else if ModPreventivo then
            begin
              cxGrid2DBTableView1.DataController.DataSet.DisableControls;
              DM.DettPreventivi.DisableControls;
              DM.DettPreventivi.Insert;
              DM.DettPreventiviQta.AsInteger:=1;
              DM.DettPreventiviCod_Articolo.AsString:=QryArticoliCod_Articolo.AsString;
              DM.DettPreventiviDescrizione.AsString:=QryArticoliDescrizione.AsString;
              DM.DettPreventiviPrezzoUnitario.AsCurrency:=QryArticoliPrezzo.AsCurrency;
              DM.DettPreventivi.Post;
              cxGrid2DBTableView1.DataController.DataSet.EnableControls;
              DM.DettPreventivi.EnableControls;
            end

          //Si sta inserendo una nuova cartella
          else if InsCartella then
            begin
              FrmCartella.DettCartella.Last;
              FrmCartella.cxGridDBTableView10.DataController.GotoLast;
              FrmCartella.DettCartella.Append;
              FrmCartella.DettCartellaTrattamento.AsString:=QryArticoliDescrizione.AsString;
              FrmCartella.DettCartellaImporto.AsCurrency:=QryArticoliPrezzo.AsCurrency;
              FrmCartella.DettCartellaDataInizio.AsDateTime:=Now;
              FrmCartella.DettCartellaDataTermine.AsDateTime:=Now;
              FrmCartella.DettCartella.Post;
            end

          //Si sta modificando una cartella esistente
          else if ModCartella then
            begin
               DM.DettCartella.Last;
               FrmMain.cxGridDBTableView10.DataController.GotoLast;
               DM.DettCartella.Append;
               DM.DettCartellatrattamento.AsString:=QryArticoliDescrizione.AsString;
               DM.DettCartellaImporto.AsCurrency:=QryArticoliPrezzo.AsCurrency;
               DM.DettCartellaDataInizio.AsDateTime:=Now;
               DM.DettCartellaDataTermine.AsDateTime:=Now;
               DM.DettCartella.Post;
            end;
        end;
      Screen.Cursor:=crDefault;


      if ModFattura then
        begin
          cxGrid2DBTableView1.DataController.DataSet.DisableControls;
          DM.DettFatture.DisableControls;
          DM.DettFatture.Edit;

          {FLG_Ricalcolo indica il punto in cui effettuare il check delle scadeze
          vale a dire solo alla fine dell'inserimento di eventuali nuovi articoli.
          Quindi il check viena abilitato solo dopo il post del totale fattura}
          FLG_Ricalcolo:=True;

          DM.DettFatture.Post;
          cxGrid2DBTableView1.DataController.DataSet.EnableControls;
          DM.DettFatture.EnableControls;
        end;

      if ModPreventivo then
        begin
          cxGrid2DBTableView1.DataController.DataSet.DisableControls;
          DM.DettPreventivi.DisableControls;
          DM.DettPreventivi.Edit;
          DM.DettPreventivi.Post;
          cxGrid2DBTableView1.DataController.DataSet.EnableControls;
          DM.DettPreventivi.EnableControls;

        end;
    end;
  Hide;
  Close;
  FLG_Ricalcolo:=False;
end;



procedure TFrmCercaArticoli.Button1Click(Sender: TObject);
begin
  DM.DettCartella.Last;
  //FrmMain.cxGridDBTableView10.DataController.GotoLast;
  DM.DettCartella.Append;
  DM.DettCartellatrattamento.AsString:=QryArticoliDescrizione.AsString;
  DM.DettCartellaImporto.AsCurrency:=QryArticoliPrezzo.AsCurrency;
  DM.DettCartellaDataInizio.AsDateTime:=Now;
  DM.DettCartellaDataTermine.AsDateTime:=Now;
  DM.DettCartella.Post;
end;

procedure TFrmCercaArticoli.GridArticoliGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
var
  state: boolean;
begin

end;

procedure TFrmCercaArticoli.BtnReportClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCercaArticoli.FormShow(Sender: TObject);
begin
  Height:=490;
  Width:=771;
  SearchProduct:=True;
end;

end.

