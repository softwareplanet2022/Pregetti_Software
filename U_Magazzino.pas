unit U_Magazzino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, DBCtrls, ImgList, AdvGlowButton,
  StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit,
  AdvPanel;

type
  TFrmMagazzino = class(TForm)
    ImageList1: TImageList;
    AdvPanel1: TAdvPanel;
    suiDBMemo1: TDBMemo;
    Label1: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label7: TLabel;
    Bevel1: TBevel;
    SICarica: TAdvGlowButton;
    SIScarico: TAdvGlowButton;
    EdQuantita: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure SICaricaClick(Sender: TObject);
    procedure SIScaricoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMagazzino: TFrmMagazzino;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmMagazzino.FormShow(Sender: TObject);
begin
  Height:=270;
  Width:=290;
  EdQuantita.SelectAll;
  EdQuantita.SetFocus;
end;

procedure TFrmMagazzino.SICaricaClick(Sender: TObject);
begin
  if EdQuantita.Value<=0 then
    begin
      Application.MessageBox('Attenzione! Indicare una quantità positiva da Caricare in Magazzino',
                             'Errore',MB_OK+MB_ICONERROR);
      Exit;
    end
  else
    begin
      DM.MovimentiOperazione.AsString:='Ingresso';
      DM.MovimentiQta.AsFloat:=EdQuantita.Value;
      DM.MovimentiCostoUnitario.AsCurrency:=DM.ArticoliCosto.AsCurrency;
      if DM.MovimentiData.IsNull then DM.MovimentiData.AsDateTime:=Now;
      DM.MovimentiDescrizione.AsString:='Carico di Magazzino del giorno '+DateToStr(DM.MovimentiData.AsDateTime);
      DM.MovimentiId_Articolo.AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.Movimenti.Post;

      Application.MessageBox('Magazzino caricato con successo','Carico Magazzino',MB_OK+MB_ICONINFORMATION);

      Close;
      DM.DettMovimenti.Close;
      DM.DettMovimenti.Open;
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
    end;
end;

procedure TFrmMagazzino.SIScaricoClick(Sender: TObject);
begin
  if EdQuantita.Value<=0 then
    begin
      Application.MessageBox('Attenzione! Indicare una quantità positiva da Scaricare dal Magazzino','Errore',MB_OK+MB_ICONERROR);
      Exit;
    end
  else
    begin
      DM.MovimentiOperazione.AsString:='Uscita';
      DM.MovimentiQta.AsFloat:=(-1)*EdQuantita.Value;
      DM.MovimentiCostoUnitario.AsCurrency:=DM.ArticoliCosto.AsCurrency;
      if DM.MovimentiData.IsNull then DM.MovimentiData.AsDateTime:=Now;
      DM.MovimentiDescrizione.AsString:='Scarico di Magazzino del giorno '+DateToStr(DM.MovimentiData.AsDateTime);
      DM.MovimentiId_Articolo.AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.Movimenti.Post;
      Close;

      Application.MessageBox('Magazzino Scaricato con successo','Scarico Magazzino',MB_OK+MB_ICONINFORMATION);
      Close;
      DM.DettMovimenti.Close;
      DM.DettMovimenti.Open;
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
    end;
end;


end.
