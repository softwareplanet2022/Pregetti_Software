unit U_CercaCartelle_Fatturare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCalendar,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvGlowButton,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, AdvPanel, MyAccess,
  MemDS, DBAccess, DBSumLst, DateUtils;

type
  TFrmCercaCartelle_Fatturare = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataFine: TcxDateEdit;
    DataInizio: TcxDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    EdPaziente: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3DataCartella: TcxGridDBColumn;
    cxGridDBTableView3Paziente: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3Prov: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    DsQryCartelle: TDataSource;
    QryCartelle: TMyQuery;
    DettCartella: TMyTable;
    DettCartellaid_intervento: TIntegerField;
    DettCartelladatainizio: TDateField;
    DettCartelladatatermine: TDateField;
    DettCartellanrodente: TFloatField;
    DettCartellaapbanda: TBooleanField;
    DettCartellaapbracket: TBooleanField;
    DettCartellaapcontenzione: TBooleanField;
    DettCartellaapestrazione: TBooleanField;
    DettCartellaapritenzione: TBooleanField;
    DettCartellamancante: TBooleanField;
    DettCartellaagenesia: TBooleanField;
    DettCartellaincluso: TBooleanField;
    DettCartellasemiincluso: TBooleanField;
    DettCartellaradice: TBooleanField;
    DettCartellacarie: TBooleanField;
    DettCartellafrattura: TBooleanField;
    DettCartellagranuloma: TBooleanField;
    DettCartellaestrazione: TBooleanField;
    DettCartellaotturazione: TBooleanField;
    DettCartellaedodonzia: TBooleanField;
    DettCartellacorona: TBooleanField;
    DettCartellaimpianro: TBooleanField;
    DettCartelladiagnosi: TStringField;
    DettCartellatrattamento: TStringField;
    DettCartellaeseguito: TBooleanField;
    DettCartellaimmagine: TBooleanField;
    DettCartellaimporto: TFloatField;
    DettCartellastatolavorazione: TStringField;
    DettCartellaid_statolavorazione: TFloatField;
    DettCartellaid_dottore: TFloatField;
    DettCartelladottore: TStringField;
    DettCartellacod_cartella: TIntegerField;
    DsDettCartella: TDataSource;
    QryCartellePaziente: TStringField;
    QryCartelledatacartella: TDateField;
    QryCartellecod_cartella: TIntegerField;
    QryCartellefatturata: TBooleanField;
    QryCartelleTotCartella: TFloatField;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    Fatture: TMyTable;
    FattureNumFattura: TFloatField;
    FattureAnno: TFloatField;
    FattureId_Fattura: TAutoIncField;
    FattureCod_Paziente: TFloatField;
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
    FattureCAUSALE: TStringField;
    FatturePAGAMENTO_TRACCIATO: TBooleanField;
    FatturePAGATA: TBooleanField;
    FattureDATA_PAGAMENTO: TDateField;
    FattureNATURA_IVA: TStringField;
    FattureIMPORTO_IVA: TCurrencyField;
    FattureRiferimento: TStringField;
    Fatturecod_cartella: TIntegerField;
    FattureFattura_Acconto: TBooleanField;
    DsFatture: TDataSource;
    cxGrid11: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBNUMFATTURA: TcxGridDBColumn;
    cxGridDBDATA: TcxGridDBColumn;
    cxGridDBFATTURA: TcxGridDBColumn;
    cxGridDBTableView17TotFattura: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    SumFatt: TDBSumList;
    DettFatture: TMyTable;
    DettFattureId_Dettaglio: TAutoIncField;
    DettFattureId_Fattura: TFloatField;
    DettFattureCod_Articolo: TStringField;
    DettFattureQta: TFloatField;
    DettFattureDescrizione: TStringField;
    DettFatturePrezzoUnitario: TCurrencyField;
    DettFattureSconto: TFloatField;
    DettFattureAliquotaIva: TFloatField;
    DettFattureNroDente: TFloatField;
    DettFattureTIPO_SPESA: TStringField;
    DettFattureCalcImportoSconto: TCurrencyField;
    DettFattureCalcImportoScontato: TCurrencyField;
    DettFattureCalcImporto: TCurrencyField;
    DettFattureCalcImportoIva: TCurrencyField;
    DettFattureCalcImpScontatoIvato: TCurrencyField;
    DsDettFatture: TDataSource;
    procedure GetCartella(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FattureCalcFields(DataSet: TDataSet);
    procedure QryCartelleAfterScroll(DataSet: TDataSet);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaCartelle_Fatturare: TFrmCercaCartelle_Fatturare;

implementation

{$R *.dfm}

uses U_Ins_Fattura, U_DM;



procedure TFrmCercaCartelle_Fatturare.AdvGlowButton1Click(Sender: TObject);
begin
  if(QryCartelle.RecordCount>0)then
    begin
      if Fatture.RecordCount>0 then
      //Esistono delle fatture di acconto relative alla cartella corrente verranno quindi portate in detrazione
      //ai dettagli della cartella corrente
        begin
          if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                          'Per la cartella selezionata sono state già emesse una o più fatture di acconto'+#13+
                                          'Si desidera portarle in detrazione alla fattura corrente?'),
                                          'Nuova Fattura da Cartella',MB_YesNo+MB_ICONWARNING)=Id_Yes then
                                           begin
                                             //Riempie i dettagli Fattura
                                             FrmInsFattura.MemDettagli.EmptyTable;
                                             DettCartella.First;
                                             while not DettCartella.Eof do
                                               begin
                                                 FrmInsFattura.MemDettagli.Append;
                                                 FrmInsFattura.MemDettagliCod_Articolo.AsString:='';
                                                 FrmInsFattura.MemDettagliQta.AsInteger:=1;
                                                 FrmInsFattura.MemDettagliDescrizione.AsString:=DettCartellatrattamento.AsString;
                                                 FrmInsFattura.MemDettagliPrezzoUnitario.AsCurrency:=DettCartellaimporto.AsCurrency;
                                                 FrmInsFattura.MemDettagli.Post;
                                                 DettCartella.Next;
                                               end;
                                             DettCartella.First;
                                             //Inserisce le fattura già emesse in detrazione alla fattura corrente
                                             Fatture.First;
                                             while not Fatture.Eof do
                                               begin
                                                 FrmInsFattura.MemDettagli.Append;
                                                 FrmInsFattura.MemDettagliQta.AsInteger:=1;
                                                 FrmInsFattura.MemDettagliDescrizione.AsString:='In detrazione Fatt. Acconto n°'+FattureNumFattura.AsString+' del '+FattureData.AsString;
                                                 FrmInsFattura.MemDettagliPrezzoUnitario.AsCurrency:=-1*(FattureCalcTotaleFattura.AsCurrency);
                                                 FrmInsFattura.MemDettagli.Post;
                                                 Fatture.Next;
                                               end;
                                             Fatture.First;
                                             if not(FrmInsFattura.Fatture.State in [dsEdit])then FrmInsFattura.Fatture.Edit;
                                             FrmInsFattura.Fatturecod_cartella.AsInteger:=QryCartelleCod_Cartella.AsInteger;
                                             FrmInsFattura.FattureRiferimento.AsString:='Come da Cartella Paziente N°'+QryCartelleCod_Cartella.AsString+
                                                                                        ' del '+QryCartelleDataCartella.AsString;

                                             //Alla fine segna la cartella come fatturata completamente e togliere il flag da fatturata_Acconto
                                             //Alla fine Blocca la cartella poichè completamente fatturata
                                             FrmInsFattura.Cartelle.Locate('Cod_Cartella',QryCartelleCod_Cartella.AsString,[]);
                                             FrmInsFattura.Cartelle.Edit;
                                             FrmInsFattura.CartelleFatturata_Acconto.AsBoolean:=False;
                                             FrmInsFattura.Cartellefatturata.AsBoolean:=True;
                                             FrmInsFattura.Cartellebloccata.AsBoolean:=True;
                                             FrmInsFattura.Cartelle.Post;
                                           end;
        end
      else
        begin
          FrmInsFattura.MemDettagli.EmptyTable;
          DettCartella.First;
          while not DettCartella.Eof do
            begin
              FrmInsFattura.MemDettagli.Append;
              FrmInsFattura.MemDettagliCod_Articolo.AsString:='';
              FrmInsFattura.MemDettagliQta.AsInteger:=1;
              FrmInsFattura.MemDettagliDescrizione.AsString:=DettCartellatrattamento.AsString;
              FrmInsFattura.MemDettagliPrezzoUnitario.AsCurrency:=DettCartellaimporto.AsCurrency;
              FrmInsFattura.MemDettagli.Post;
              DettCartella.Next;
            end;
          DettCartella.First;
          if not(FrmInsFattura.Fatture.State in [dsEdit])then FrmInsFattura.Fatture.Edit;
          FrmInsFattura.Fatturecod_cartella.AsInteger:=QryCartelleCod_Cartella.AsInteger;
          FrmInsFattura.FattureRiferimento.AsString:='Come da Cartella Paziente N°'+QryCartelleCod_Cartella.AsString+
                                                     ' del '+QryCartelleDataCartella.AsString;
        end;
    end;
  Close;
end;

procedure TFrmCercaCartelle_Fatturare.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCercaCartelle_Fatturare.FattureCalcFields(DataSet: TDataSet);
var
  MESE:String;
begin
  FattureCalcImponibileNetto.AsCurrency:=FattureImponibile.AsCurrency-FattureImportoSconto.AsCurrency;
  FattureCalcImportoIva.AsCurrency:=SumFatt.SumCollection[3].SumValue;

  FattureCalcImportoRitenuta.AsCurrency:=(FattureCalcImponibileNetto.AsCurrency*FattureAliquotaRitenuta.AsInteger/100);

  FattureCalcTotaleFattura.AsCurrency:=FattureCalcImponibileNetto.AsCurrency+FattureCalcImportoIva.AsCurrency-
    FattureCalcImportoRitenuta.AsCurrency+FattureImportoBolli.AsCurrency;

 if not FattureData.IsNull then
   begin
     FattureCalcNumFattura.AsString:='Fatt. '+FattureNumFattura.AsString+' del '+FattureData.AsString+' - '+FattureRagioneSociale.AsString;
     FattureCalcAnno.AsInteger:=YearOf(FattureData.AsDateTime);
   end;
end;

procedure TFrmCercaCartelle_Fatturare.FormShow(Sender: TObject);
begin
  Height:=600;
  Width:=1000;
end;

procedure TFrmCercaCartelle_Fatturare.GetCartella(Sender: TObject);
const
  {costanti di SQL}
     SQLSelect = 'SELECT %S FROM dettcartelle '+
                 'INNER JOIN cartelle ON (dettcartelle.`cod_cartella` = cartelle.`cod_cartella`) '+
                 'INNER JOIN pazienti ON (cartelle.`cod_paziente` = pazienti.`cod_paziente`) WHERE %S';

     Campi='SUM(dettcartelle.`importo`)As TotCartella, CONCAT(pazienti.`Cognome`," ", pazienti.`Nome`)As Paziente, '+
           'cartelle.`datacartella`, cartelle.`cod_cartella`,cartelle.`fatturata`';

  //Parametri
    Paziente='Upper(CONCAT(pazienti.`Cognome`," ",pazienti.`Nome`)) like Upper(:iNominativo)';
    DalGiornoAlGiorno='(cartelle.`DataCartella` >= (:iDalGiorno))AND '+
                      '(cartelle.`DataCartella` <=(:iAlGiorno))';
    Fatturata='(cartelle.`fatturata`<> TRUE)';
var
  StrSql : String;
begin
  with QryCartelle do
    begin
      if EdPaziente.Text<>'' then StrSql:=StrSql+Paziente;

      if (DataInizio.Date>0)and(DataFine.Date>0)then
        if StrSql='' then StrSql:=StrSql+DalGiornoAlGiorno
        else StrSql:=StrSql+' AND '+DalGiornoAlGiorno;

      if StrSql='' then StrSql:=StrSql+Fatturata
        else StrSql:=StrSql+' AND '+Fatturata;

      Close;
      SQL.Clear;
      {definisce la stringa SQL finale}
      if StrSql<>'' then
        begin
          SQL.Add(Format(SQLSelect,[Campi,StrSql]));
          SQL.Add('GROUP BY cartelle.`cod_cartella`');

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



procedure TFrmCercaCartelle_Fatturare.QryCartelleAfterScroll(DataSet: TDataSet);
begin
  if Fatture.RecordCount >0 then
    begin

    end;
end;

end.
