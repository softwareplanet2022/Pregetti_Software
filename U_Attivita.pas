unit U_Attivita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, DBTables, MyAccess, MyClasses,
  MyCall, DBAccess, MemDS, ExtCtrls,cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, IniFiles, cxGraphics,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, AdvGlowButton, AdvPanel;

type
  TFrmAttivita = class(TForm)
    Attivita: TMyTable;
    AttivitaId_Attivita: TAutoIncField;
    AttivitaCod_Paziente: TFloatField;
    AttivitaData: TDateField;
    AttivitaTipoOperazione: TStringField;
    AttivitaImporto: TCurrencyField;
    AttivitaDettaglio: TMemoField;
    AttivitaRifPreventivo: TStringField;
    AttivitaRifFattura: TStringField;
    DsAttivita: TDataSource;
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
    AttivitaLkpPaziente: TStringField;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label31: TLabel;
    EdDataAttivita: TcxDBDateEdit;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    EdTipoOperazione: TcxDBComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAttivita: TFrmAttivita;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmAttivita.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcNominativo.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;

procedure TFrmAttivita.FormShow(Sender: TObject);
begin
  Height:=440;
  Width:=493;
  suiButton1.Font.Color:=clGreen;
  suiButton2.Font.Color:=clRed;
end;

procedure TFrmAttivita.FormCreate(Sender: TObject);
begin
  try
    ListeIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Liste.ini');
    with ListeIni do ReadSection('Tipi Attivita',EdTipoOperazione.Properties.Items);
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmAttivita.suiButton1Click(Sender: TObject);
begin
   if (Attivita.State in [dsInsert]) then
    begin
      Attivita.Post;
      DM.Attivita.Close;
      DM.Attivita.Open;
      DM.Pazienti.Locate('Cod_Paziente',AttivitaCod_Paziente.AsInteger,[]);
      DM.Attivita.Locate('Id_Attivita',AttivitaId_Attivita.AsInteger,[]);
    end
  else if (Attivita.State in [dsEdit]) then
    begin
      Attivita.Post;
      DM.Attivita.Close;
      DM.Attivita.Open;
      DM.Attivita.Locate('Id_Attivita',AttivitaId_Attivita.AsInteger,[]);
    end;
  Close;
end;

procedure TFrmAttivita.suiButton2Click(Sender: TObject);
begin
  if (Attivita.State in [dsEdit,dsInsert]) then Attivita.Cancel;
  Close;
end;

end.



