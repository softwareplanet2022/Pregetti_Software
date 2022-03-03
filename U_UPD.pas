unit U_UPD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvProgr, AdvGlowButton, DB, DBTables, MyAccess, MyClasses,
  MyCall, DBAccess, MemDS, AdvPanel,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxProgressBar,
  AdvProgressBar, StdCtrls;

type
  TFrmUPD = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Dettagli: TMyTable;
    DsDettagli: TDataSource;
    AdvGlowButton1: TAdvGlowButton;
    DettagliId_Dettaglio: TAutoIncField;
    DettagliId_Fattura: TFloatField;
    DettagliQta: TFloatField;
    DettagliDescrizione: TStringField;
    DettagliPrezzoUnitario: TCurrencyField;
    DettagliSconto: TFloatField;
    DettagliAliquotaIva: TFloatField;
    DettagliCod_Articolo: TStringField;
    DettagliNroDente: TFloatField;
    DettagliTIPO_SPESA: TStringField;
    PB: TAdvProgressBar;
    DsFatture: TDataSource;
    Fatture: TMyTable;
    FattureAnno: TFloatField;
    FattureNumFattura: TFloatField;
    FattureId_Fattura: TAutoIncField;
    FattureCod_Paziente: TFloatField;
    FattureModalitaPagamento: TStringField;
    FattureData: TDateField;
    FattureNote: TMemoField;
    FattureAliquotaIVA: TFloatField;
    FattureAliquotaRitenuta: TFloatField;
    FattureImponibile: TCurrencyField;
    FattureImportoSconto: TCurrencyField;
    FattureImportoBolli: TCurrencyField;
    FattureRagioneSociale: TStringField;
    FattureIndirizzo: TStringField;
    FattureCap: TStringField;
    FattureCitta: TStringField;
    FattureProv: TStringField;
    FattureCodFisc: TStringField;
    FatturePartitaIVA: TStringField;
    FattureBanca: TMemoField;
    FattureNumPreventivo: TStringField;
    FattureCODICENAZIONE: TStringField;
    FattureCAUSALE: TStringField;
    FattureESIGIBILITA_IVA: TStringField;
    FattureCOD_COND_PAGAM: TStringField;
    FattureCOD_MOD_PAGAM: TStringField;
    FattureBANCA_APPOGGIO: TStringField;
    FattureIBAN_APPOGGIO: TStringField;
    FattureCOD_PAGAMENTO: TStringField;
    FattureID_MODPAG: TFloatField;
    FattureCOGNOME_QUIETANZANTE: TStringField;
    FattureNOME_QUIETANZANTE: TStringField;
    FattureCF_QUIETANZANTE: TStringField;
    FatturePAGAMENTO_TRACCIATO: TBooleanField;
    FatturePAGATA: TBooleanField;
    FattureDATA_PAGAMENTO: TDateField;
    FattureIMPORTO_IVA: TCurrencyField;
    FattureNATURA_IVA: TStringField;
    DettFatture: TMyTable;
    DsDettFatture: TDataSource;
    DettFattureId_Dettaglio: TAutoIncField;
    DettFattureId_Fattura: TFloatField;
    DettFattureQta: TFloatField;
    DettFattureDescrizione: TStringField;
    DettFatturePrezzoUnitario: TCurrencyField;
    DettFattureSconto: TFloatField;
    DettFattureAliquotaIva: TFloatField;
    DettFattureCod_Articolo: TStringField;
    DettFattureNroDente: TFloatField;
    DettFattureNATURA_IVA: TStringField;
    DettFattureTIPO_SPESA: TStringField;
    Button1: TButton;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUPD: TFrmUPD;

implementation

uses U_Main, U_DM, Math;

{$R *.dfm}

procedure TFrmUPD.AdvGlowButton1Click(Sender: TObject);
begin



  PB.Position:=0;
  PB.Max:=Dettagli.RecordCount;
  Dettagli.First;
  while not Dettagli.Eof do
    begin
      if DettagliAliquotaIva.IsNull then
        begin
          Dettagli.Edit;
          DettagliAliquotaIva.AsInteger:=0;
          Dettagli.Post;
        end;
      PB.Position:=PB.Position+1;
      Dettagli.Next;
    end;
    ShowMessage('Aggiornamento dettagli terminato con successo');
    PB.Position:=0;


  PB.Position:=0;
  PB.Max:=DM.Fatture.RecordCount;
  DM.Fatture.First;
  while not DM.Fatture.Eof do
    begin
      DM.Fatture.Edit;
      DM.FattureIMPORTO_IVA.AsCurrency:=DM.SumFatt.SumCollection[3].SumValue;
      DM.Fatture.Post;
      PB.Position:=PB.Position+1;
      DM.Fatture.Next;
    end;
    ShowMessage('Aggiornamento Fatture terminato con successo');
    PB.Position:=0;



  PB.Position:=0;
  PB.Max:=Fatture.RecordCount;
  Fatture.First;
  while not Fatture.Eof do
    begin
      if FattureImportoBolli.AsCurrency>0 then
        begin
          DettFatture.Append;
          DettFattureDescrizione.AsString:='MARCA DA BOLLO';
          DettFatturePrezzoUnitario.AsCurrency:=2;
          DettFattureQta.AsInteger:=1;
          DettFattureAliquotaIva.AsInteger:=0;
          DettFattureTIPO_SPESA.AsString:='AA';
          DettFatture.Post;
        end;
      Fatture.Next;
    end;
    ShowMessage('Aggiornamento dettagli terminato con successo');
    PB.Position:=0;
end;

procedure TFrmUPD.FormShow(Sender: TObject);
begin
  PB.Position:=0;
end;

procedure TFrmUPD.Button1Click(Sender: TObject);
begin

  Dettagli.Filter:='Descrizione=''MARCA DA BOLLO''';
  Dettagli.Filtered:=True;
  PB.Position:=0;
  PB.Max:=Dettagli.RecordCount;

  if Dettagli.RecordCount>0 then
    begin
      while not Dettagli.IsEmpty do
        begin
          Dettagli.Delete;
          PB.Position:=PB.Position+1;
          Dettagli.Next;
         end;
        ShowMessage('Aggiornamento dettagli terminato con successo');
        PB.Position:=0;
    end
  else ShowMessage('Nessun Dato da aggiornare');      
end;

end.



























