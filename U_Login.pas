unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, Registry,
  AdvPanel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit;

type
  TFrmLogin = class(TForm)
    AdvPanel1: TAdvPanel;
    EdUtente: TEdit;
    EdPassword: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    suiButton1: TButton;
    suiButton2: TButton;
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure suitempsuiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  LoginError:Integer=0;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmLogin.suitempsuiButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.suitempsuiButton1Click(Sender: TObject);
var
  Reg:TRegistry;
begin
  if DM.Utenti.Locate('Username',EdUtente.Text,[loCaseInsensitive])then
    //E' stato verificato l'utente
    begin
      UserName:=EdUtente.Text;
      //Viene verificata la password
      if UpperCase(EdPassword.Text)=UpperCase(DM.UtentiPassword.AsString)then
        //NomeUtente e Password valide
        begin
           UserName:=DM.UtentiUsername.AsString;
           Password:=DM.UtentiPassword.AsString;
           Id_Utente:=DM.UtentiId_Utente.AsInteger;
           //***Memorizza l'utente loggato nel registro****
           try
             Reg:=TRegistry.Create;
             Reg.RootKey:=HKEY_CURRENT_USER;
             Reg.OpenKey('Software\ORAL_DB',True);
             Reg.WriteString('Utente',UserName);
             Reg.WriteString('Password',Password);
           finally
             Reg.Free;
           end;
           //******************************************
           Close;
        end
      else //Se la password non è valida
        begin
          Application.MessageBox('Password non valida','Login',MB_OK+MB_ICONERROR);
          LoginError:=LoginError+1;
          //Se l'autenticazione non va a buon fine per 3 volte il software si chiude
          if LoginError<3 then Exit
          else Application.Terminate;
        end;
    end
   //L'utente non è stato verificato
  else
    begin
      Application.MessageBox('Nome Utente non valido','Login',MB_OK+MB_ICONERROR);
      //Tiene traccia del numero di login errari. Al terzo tentativo il software viene chiuso automaticamente
      LoginError:=LoginError+1;
      //Se l'autenticazione non va a buon fine per 3 volte il software si chiude
      if LoginError<3 then Exit
      else Application.Terminate;
    end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
var
  Reg:TRegistry;
begin
  Height:=210;
  Width:=322;
  //***Legge l'ultimo utente loggato dal registro****
  try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.OpenKey('Software\ORAL_DB',True);
    EdUtente.Text:=Reg.ReadString('Utente');
    EdPassword.Text:=Reg.ReadString('Password');
  finally
    Reg.Free;
  end;
  EdPassword.SelectAll;
  EdPassword.SetFocus;
end;

end.
