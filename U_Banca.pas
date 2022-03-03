unit U_Banca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, ImgList, Inifiles,
  AdvGlowButton, AdvPanel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Mask, AdvOfficePager, DB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxMemo;

type
  TFrmBanca = class(TForm)
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    Label1: TLabel;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    AdvPanel1: TAdvPanel;
    SIConferma: TAdvGlowButton;
    SIAnnulla: TAdvGlowButton;
    ImageList1: TImageList;
    Label2: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    CmbOperazioni: TcxDBComboBox;
    cxDBMemo1: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SIConfermaClick(Sender: TObject);
    procedure SIAnnullaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBanca: TFrmBanca;
  ListeIni:TInifile;


implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmBanca.FormCreate(Sender: TObject);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do ReadSection('Operazioni Bancarie',CmbOperazioni.Properties.Items);
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmBanca.SIConfermaClick(Sender: TObject);
begin
  if DM.Banca.State in [dsEdit,dsInsert] then DM.Banca.Post;
  Close;
end;

procedure TFrmBanca.SIAnnullaClick(Sender: TObject);
begin
  if DM.Banca.State in [dsEdit,dsInsert] then DM.Banca.Cancel;
  Close;
end;

procedure TFrmBanca.FormShow(Sender: TObject);
begin
  Height:=370;
  Width:=515;
end;

end.
