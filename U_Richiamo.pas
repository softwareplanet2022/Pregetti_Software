unit U_Richiamo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Mask, DBCtrls,
  cxSpinEdit, cxTimeEdit, IniFiles, cxGraphics,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvPanel,
  AdvGlowButton, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmRichiamo = class(TForm)
    DsRichiami: TDataSource;
    Richiami: TMyTable;
    RichiamiId_Richiamo: TAutoIncField;
    RichiamiCod_Paziente: TFloatField;
    RichiamiDataInserimento: TDateField;
    RichiamiDataRichiamo: TDateField;
    RichiamiMotivo: TStringField;
    RichiamiEsito: TStringField;
    RichiamiAnnotazioni: TMemoField;
    RichiamiOraRichiamo: TTimeField;
    RichiamiLkpPaziente: TStringField;
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
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    suiDBMemo1: TDBMemo;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    CmbMotivoRichiamo: TcxDBComboBox;
    EdEsito: TcxDBTextEdit;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RichiamiCod_PazienteChange(Sender: TField);
    procedure suitempsuiDBLookupComboBox1CloseUp(Sender: TObject);
    procedure suitempsuiDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRichiamo: TFrmRichiamo;
  ListeIni:TIniFile;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmRichiamo.FormShow(Sender: TObject);
begin
  Height:=400;
  Width:=410;
  suiButton1.Font.Color:=clGreen;
  suiButton2.Font.Color:=clRed;
end;

procedure TFrmRichiamo.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcNominativo.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;

procedure TFrmRichiamo.FormCreate(Sender: TObject);
begin
  //Calica la lista dei motivi richiamo
  try
    ListeIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Liste.ini');
    with ListeIni do ReadSection('Motivi Richiamo',CmbMotivoRichiamo.Properties.Items);
  finally
    ListeIni.Free;
  end;

end;

procedure TFrmRichiamo.RichiamiCod_PazienteChange(Sender: TField);
begin
  suiButton1.Enabled:=not RichiamiCod_Paziente.IsNull;
end;

procedure TFrmRichiamo.suitempsuiDBLookupComboBox1CloseUp(Sender: TObject);
begin
  suiButton1.Enabled:=not RichiamiCod_Paziente.IsNull;
end;

procedure TFrmRichiamo.suitempsuiDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_DELETE then
    begin
      RichiamiCod_Paziente.Clear;
      suiButton1.Enabled:=False;
    end;
end;

procedure TFrmRichiamo.suiButton1Click(Sender: TObject);
begin
   if (Richiami.State in [dsInsert]) then
    begin
      Richiami.Post;
      DM.Richiami.Close;
      DM.Richiami.Open;
      DM.Pazienti.Locate('Cod_Paziente',RichiamiCod_Paziente.AsInteger,[]);
      DM.Richiami.Locate('Id_Richiamo',RichiamiId_Richiamo.AsInteger,[]);
    end
  else if (Richiami.State in [dsEdit]) then
    begin
      Richiami.Post;
      DM.Richiami.Close;
      DM.Richiami.Open;
      DM.Richiami.Locate('Id_Richiamo',RichiamiId_Richiamo.AsInteger,[]);
    end;
  Close;
end;

procedure TFrmRichiamo.suiButton2Click(Sender: TObject);
begin
  if (Richiami.State in [dsEdit,dsInsert]) then Richiami.Cancel;
  Close;
end;

end.
