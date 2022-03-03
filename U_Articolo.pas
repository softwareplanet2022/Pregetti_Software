unit U_Articolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, IniFiles,
  DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit, AdvPanel, cxMemo, AdvGlowButton;

type
  TFrmArticolo = class(TForm)
    AdvPanel1: TAdvPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label64: TLabel;
    Label65: TLabel;
    Label28: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label66: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    EdCategoriaTerapia: TcxDBComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    EdAliquotaIva: TcxDBComboBox;
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
  FrmArticolo: TFrmArticolo;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmArticolo.FormShow(Sender: TObject);
begin
  Width:=600;
  Height:=430;
  suiButton1.Font.Color:=clGreen;
  suiButton2.Font.Color:=clRed;
end;

procedure TFrmArticolo.FormCreate(Sender: TObject);
var
  ListeIni:TIniFile;
begin
   ListeIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Liste.ini');
   with ListeIni do
     begin
        ReadSection('Categorie Terapia',EdCategoriaTerapia.Properties.Items);
        ReadSection('Aliquote IVA',EdAliquotaIva.Properties.Items);
     end;
end;

procedure TFrmArticolo.suiButton1Click(Sender: TObject);
begin
  if (DM.Articoli.State in [dsEdit,dsInsert]) then DM.Articoli.Post;
  Close;
end;

procedure TFrmArticolo.suiButton2Click(Sender: TObject);
begin
  if (DM.Articoli.State in [dsEdit,dsInsert]) then DM.Articoli.Cancel;
  Close;
end;

end.
