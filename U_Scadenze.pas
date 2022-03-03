unit U_Scadenze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, StdCtrls, DBCtrls, Mask, RXDBCtrl, DB, RXCtrls,
  ComCtrls, ToolWin, RxLookup, AdvOfficePager, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, AdvPanel, AdvGlowButton, RxGIF,
  DBTables, cxDropDownEdit, cxCalendar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCheckBox, MemDS,
  DBAccess, MyAccess;

type
  TFrmScadenze = class(TForm)
    ImageList1: TImageList;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RxLabel2: TRxLabel;
    Label81: TLabel;
    EdDataScadenza: TcxDBDateEdit;
    CbSoggetti: TcxDBComboBox;
    EdDescrizione: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    AdvPanel1: TAdvPanel;
    SIConferma: TAdvGlowButton;
    SIAnnulla: TAdvGlowButton;
    Pazienti: TMyTable;
    Pazienticod_paziente: TIntegerField;
    Pazienticognome: TStringField;
    Pazientinome: TStringField;
    Pazientiindirizzo: TStringField;
    Pazienticap: TStringField;
    Pazienticitta: TStringField;
    Pazientiprov: TStringField;
    Pazientistato: TStringField;
    Pazientisesso: TStringField;
    Pazientidatanascita: TDateField;
    Pazienticittanascita: TStringField;
    Pazienticodicefiscale: TStringField;
    Pazientitelefono: TStringField;
    Pazienticellulare: TStringField;
    Pazientiemail: TStringField;
    Pazienticonsensoprivacy: TBooleanField;
    Pazientinominativofatt: TStringField;
    Pazientiindirizzofatt: TStringField;
    Pazienticomunefatt: TStringField;
    Pazienticapfatt: TStringField;
    Pazientiprovfatt: TStringField;
    Pazientipiva: TStringField;
    Pazienticodfiscfatt: TStringField;
    Pazientiannotazioni: TMemoField;
    Pazienticodicedestinatario: TStringField;
    Pazientipecdestinatario: TStringField;
    Pazientipr_pa: TFloatField;
    Pazientifirma: TBlobField;
    Pazientipadre: TBooleanField;
    Pazientimadre: TBooleanField;
    Pazientitutore: TBooleanField;
    Pazienticognome_nome_padre: TStringField;
    Pazienticognome_nome_madre: TStringField;
    Pazienticognome_nome_tutore: TStringField;
    Pazientifirma_padre: TBlobField;
    Pazientifirma_madre: TBlobField;
    Pazientifirma_tutore: TBlobField;
    Pazienticf_padre: TStringField;
    Pazienticf_madre: TStringField;
    Pazienticf_tutore: TStringField;
    Pazientidataprivacy: TDateField;
    PazientiCalcNominativo: TStringField;
    procedure SIConfermaClick(Sender: TObject);
    procedure SIAnnullaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmScadenze: TFrmScadenze;

implementation

uses U_Main, U_DM;

{$R *.dfm}

procedure TFrmScadenze.SIConfermaClick(Sender: TObject);
begin
  if DM.Scadenze.State in [dsEdit,dsInsert] then DM.Scadenze.Post;
  Close;
end;

procedure TFrmScadenze.SIAnnullaClick(Sender: TObject);
begin
  if DM.Scadenze.State in [dsEdit,dsInsert] then DM.Scadenze.Cancel;
  Close;
end;

procedure TFrmScadenze.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM.Scadenze.State in [dsEdit,dsInsert] then
    begin
      if Application.MessageBox(PChar('Attenzione! Sei ancora in fase di Inserimento/Modifica dati'+#13+
                                      'Si desidera salvare le ultime modifiche apportate?'),
                                      'Salvataggio Dati',MB_YESNO+MB_ICONWARNING)=Id_Yes then DM.Scadenze.Post
      else DM.Scadenze.Cancel;
    end;
  Close;
end;


procedure TFrmScadenze.FormCreate(Sender: TObject);
begin
  Pazienti.First;
  while not Pazienti.Eof do
    begin
      CbSoggetti.Properties.Items.Add(PazientiCalcNominativo.AsString);
      Pazienti.Next;
    end;
end;

procedure TFrmScadenze.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcNominativo.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;

procedure TFrmScadenze.FormShow(Sender: TObject);
begin
  Height:=300;
  Width:=520;
end;

end.
