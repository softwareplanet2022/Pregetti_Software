unit U_REG;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Registry,
  AdvOfficePager, dxGDIPlusClasses, AdvReflectionLabel, AdvGlowButton,
  AdvGroupBox, AdvOfficeButtons, AFQuickMail, ShellAPI, ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, SDL_math1, SDL_stringl, SDL_cpuid, Windows;

type
  TFrmReg = class(TForm)
    NB: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    Label5: TLabel;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText12: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    Memo1: TMemo;
    Image1: TImage;
    AdvReflectionLabel1: TAdvReflectionLabel;
    SIStampa: TAdvGlowButton;
    SIMail: TAdvGlowButton;
    SIChiudi: TAdvGlowButton;
    Shape2: TShape;
    SICodice: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Shape1: TShape;
    SIREGISTRA: TAdvGlowButton;
    Label4: TLabel;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    LabelUtente: TLabel;
    LabelIndirizzo: TLabel;
    LabelCapCitta: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelCodice: TLabel;
    AfMail: TAFQuickMail;
    Image2: TImage;
    AdvReflectionLabel2: TAdvReflectionLabel;
    Memo2: TMemo;
    ImageList1: TImageList;
    Edit_UserName: TcxTextEdit;
    EdIndirizzo: TcxTextEdit;
    EdCap: TcxTextEdit;
    EdCitta: TcxTextEdit;
    EdProv: TcxTextEdit;
    EdEmail: TcxTextEdit;
    EdTelefono: TcxTextEdit;
    EdFax: TcxTextEdit;
    Ed_CPU: TcxTextEdit;
    Edit_Serial: TcxTextEdit;
    procedure SICodiceClick(Sender: TObject);
    procedure SIStampaClick(Sender: TObject);
    procedure SIMailClick(Sender: TObject);
    procedure SIChiudiClick(Sender: TObject);
    procedure SIREGISTRAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_UserNamePropertiesChange(Sender: TObject);
    procedure EdIndirizzoPropertiesChange(Sender: TObject);
    procedure EdCapPropertiesChange(Sender: TObject);
    procedure EdCittaPropertiesChange(Sender: TObject);
    procedure EdProvPropertiesChange(Sender: TObject);
    procedure Edit_SerialPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReg: TFrmReg;
  Reg:TRegistry;
  MessageMemo: TStringList;

implementation

{$R *.dfm}

uses U_DM, U_Main;

const
   XorKey: array[0..7] of Byte = ($B2, $09, $BB, $55, $93, $6D, $44, $47); //string encryption


function Enc(Str: string): string; //character encryption function This is an XOR encryption
var
   i, j: Integer;
begin
   Result := '';
   j := 0;
   for i := 1 to Length(Str) do
   begin
      Result := Result + IntToHex(Byte(Str[i]) xor XorKey[j], 2);
      j := (j + 1) mod 8;
   end;
end;


 Function Dec(Str: string): string; // character decryption function
var
   i, j: Integer;
begin
   Result := '';
   j := 0;
   for i := 1 to Length(Str) div 2 do
   begin
      Result := Result + Char(StrToInt('$' + Copy(Str, i * 2 - 1, 2)) xor XorKey[j]);
      j := (j + 1) mod 8;
   end;
end;


function VerificaCodiceAttivazione(CodiceAttivazione,CodiceUtente:String):Boolean;
begin
  if Dec(CodiceAttivazione)= CodiceUtente then Result:=True
  else Result:=False;
end;



procedure TFrmReg.SIREGISTRAClick(Sender: TObject);
var
  Codice,S2:String;
begin
  Screen.Cursor:=crHourGlass;
  try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Codice:=Edit_Serial.Text;

    if not VerificaCodiceAttivazione(Edit_Serial.Text,LabelCodice.Caption)then
      begin
        Application.MessageBox('Attenzione! '+#13+
                               'Il codice digitato non è valido.'+#13+
                               'Accertarsi di aver inserito il codice corretto',
                               'Attivazione Software',MB_OK+MB_ICONERROR);
        Edit_Serial.SelectAll;
        Edit_Serial.SetFocus;
      end
    else
      begin
        //Effettua la registrazione, regista i dati nel registro e da conferma della registrazione
        Reg.OpenKey('\Software\ORAL-DB',True);
        Reg.WriteString('Code',Edit_Serial.Text);
        Reg.WriteInteger('Fase',2);
        Application.MessageBox('Registrazione Software effettuata con successo',
                               'Conferma Registrazione',MB_OK+MB_ICONINFORMATION);
        Close;
      end;
  finally
    Reg.Free;
    Screen.Cursor:=crDefault;
  end;
end;


procedure TFrmReg.EdCapPropertiesChange(Sender: TObject);
begin
  if(Length(Edit_UserName.Text)>5)and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then
    begin
      SICodice.Enabled:=True;
      SICodiceClick(Sender);
    end;
  if Ed_CPU.Text<>'' then
    begin
      SIStampa.Enabled:=True;
      SIMail.Enabled:=True;
    end;
end;


procedure TFrmReg.EdCittaPropertiesChange(Sender: TObject);
begin
  if(Length(Edit_UserName.Text)>5)and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then
    begin
      SICodice.Enabled:=True;
      SICodiceClick(Sender);
    end;
  if Ed_CPU.Text<>'' then
    begin
      SIStampa.Enabled:=True;
      SIMail.Enabled:=True;
    end;
end;

procedure TFrmReg.EdIndirizzoPropertiesChange(Sender: TObject);
begin
  if(Length(Edit_UserName.Text)>5)and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then
    begin
      SICodice.Enabled:=True;
      SICodiceClick(Sender);
    end;
  if Ed_CPU.Text<>'' then
    begin
      SIStampa.Enabled:=True;
      SIMail.Enabled:=True;
    end;
end;


procedure TFrmReg.Edit_SerialPropertiesChange(Sender: TObject);
begin
  if(Edit_UserName.Text<>'')and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then SICodice.Enabled:=True;
end;

procedure TFrmReg.Edit_UserNamePropertiesChange(Sender: TObject);
begin
  if(Length(Edit_UserName.Text)>5)and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then
    begin
      SICodice.Enabled:=True;
      SICodiceClick(Sender);
    end;
  if Ed_CPU.Text<>'' then
    begin
      SIStampa.Enabled:=True;
      SIMail.Enabled:=True;
    end;
end;


procedure TFrmReg.EdProvPropertiesChange(Sender: TObject);
begin
  if(Length(Edit_UserName.Text)>5)and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
    (EdCitta.Text<>'')and(EdProv.Text<>'')then
    begin
      SICodice.Enabled:=True;
      SICodiceClick(Sender);
    end;
  if Ed_CPU.Text<>'' then
    begin
      SIStampa.Enabled:=True;
      SIMail.Enabled:=True;
    end;
end;

procedure TFrmReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrmMain.RegWarell.Expired then Application.Terminate;
end;

procedure TFrmReg.FormCreate(Sender: TObject);
begin
  Reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\ORAL-DB',True);
  Reg.WriteString('PathEXE',ExtractFilePath(Application.ExeName));
  if Reg.ValueExists('Fase')and(Reg.ReadInteger('Fase')=1)then
    begin
      try
        NB.ActivePageIndex:=1;
        //DEVE LEGGERE DAL REGISTRO I DATI DELLA PRIMA FASE DI REGISTRAZIONE
        LabelUtente.Caption:=Reg.ReadString('Ragione Sociale');
        LabelIndirizzo.Caption:=Reg.ReadString('Indirizzo');
        LabelCapCitta.Caption:=Reg.ReadString('Cap')+' - '+Reg.ReadString('Città')+' ('+(Reg.ReadString('Prov')+')');
        Ed_CPU.Text:=Reg.ReadString('HDID');
        LabelCodice.Caption:=Reg.ReadString('HDID');
      finally
        Reg.Free;
      end;
    end
  else
    begin
      Nb.ActivePageIndex:=0;
      SICodice.Hint:='Genera Codice di Attivazione';
    end;
end;

procedure TFrmReg.FormShow(Sender: TObject);
begin
  SICodice.ShowDisabled:=False;
  SIStampa.ShowDisabled:=False;
  SIMail.ShowDisabled:=False;
  SIChiudi.ShowDisabled:=False;

  if Nb.ActivePageIndex=0 then
    begin
      if(Edit_UserName.Text<>'')and(EdIndirizzo.Text<>'')and(EdCap.Text<>'')and
        (EdCitta.Text<>'')and(EdProv.Text<>'')then SICodice.Enabled:=True;
    end
  else SICodice.Enabled:=True;
end;

procedure TFrmReg.SIChiudiClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmReg.SICodiceClick(Sender: TObject);
begin
  try
    Ed_CPU.Text:=GenerateCPUID;

    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\ORAL-DB',True);
    Reg.WriteString('Ragione Sociale',Edit_UserName.Text);
    Reg.WriteString('Indirizzo',EdIndirizzo.Text);
    Reg.WriteString('Cap',EdCap.Text);
    Reg.WriteString('Città',EdCitta.Text);
    Reg.WriteString('Prov',EdProv.Text);
    Reg.WriteString('HDID',Ed_CPU.Text);
    Reg.WriteInteger('Fase',1);
    Reg.WriteString('PathEXE',ExtractFilePath(Application.ExeName));
  finally
    Reg.Free;
  end;
end;


procedure TFrmReg.SIMailClick(Sender: TObject);
var
  em_subject,
  em_body,
  em_mail:string;
begin
  MessageMemo:=TStringList.Create;
  MessageMemo.Clear;
  MessageMemo.Add('Richiesta Attivazione di ORAL-DB - Gestione Studio Dentistico');
  MessageMemo.Add('Data Richiesta: '+FormatDateTime('dddd, dd mmmm yyyy',Now));
  MessageMemo.Add('----------------------------------------------------');
  MessageMemo.Add('Intestatario della licenza: '+Edit_UserName.Text);
  MessageMemo.Add('Indirizzo:                  '+EdIndirizzo.Text);
  MessageMemo.Add('C.a.p.:                     '+EdCap.Text);
  MessageMemo.Add('Città:                      '+EdCitta.Text);
  MessageMemo.Add('Provincia:                  '+EdProv.Text);
  MessageMemo.Add('Telefono:                   '+EdTelefono.Text);
  MessageMemo.Add('Fax:                        '+EdFax.Text);
  MessageMemo.Add('----------------------------------------------------');
  MessageMemo.Add('Codice:                     '+Ed_CPU.Text);
  MessageMemo.Add('----------------------------------------------------');

  AfMail.FromEmail:=EdEmail.Text;
  AfMail.ToEmail.Add('buttonclick@alice.it; info@softwareplanet.it');
  AfMail.TextToSend.AddStrings(MessageMemo);
  AFMail.Subject:='Richiesta Attivazione di ORAL-DB - Gestione Studio Dentistico';
  AfMail.Execute;

  MessageMemo.Free;
end;

procedure TFrmReg.SIStampaClick(Sender: TObject);
begin
  MessageMemo:=TStringList.Create;
  MessageMemo.Clear;
  case NB.ActivePageIndex of
    0:begin
        MessageMemo.Add('Richiesta Attivazione di ORAL-DB - Gestione Studio Dentistico');
        MessageMemo.Add('Data Richiesta: '+FormatDateTime('dddd, dd mmmm yyyy',Now));
        MessageMemo.Add('----------------------------------------------------');
        MessageMemo.Add('Intestatario della licenza: '+Edit_UserName.Text);
        MessageMemo.Add('Indirizzo:                  '+EdIndirizzo.Text);
        MessageMemo.Add('C.a.p.:                     '+EdCap.Text);
        MessageMemo.Add('Città:                      '+EdCitta.Text);
        MessageMemo.Add('Provincia:                  '+EdProv.Text);
        MessageMemo.Add('Telefono:                   '+EdTelefono.Text);
        MessageMemo.Add('Fax:                        '+EdFax.Text);
        MessageMemo.Add('EMail:                      '+EdEmail.Text);
        MessageMemo.Add('----------------------------------------------------');
        MessageMemo.Add('Codice:                     '+Ed_CPU.Text);
        MessageMemo.Add('----------------------------------------------------');
      end;
    1:begin
        MessageMemo.Add('Data Richiesta: '+FormatDateTime('dddd, dd mmmm yyyy',Now));
        MessageMemo.Add('----------------------------------------------------');
        MessageMemo.Add('Intestatario della licenza: '+LabelUtente.Caption);
        MessageMemo.Add('Indirizzo:                  '+LabelIndirizzo.Caption);
        MessageMemo.Add('Cap - Città:                '+LabelCapCitta.Caption);
        MessageMemo.Add('----------------------------------------------------');
        MessageMemo.Add('Codice:                     '+LabelCodice.Caption);
        MessageMemo.Add('----------------------------------------------------');
      end;
    end;
  MessageMemo.SaveToFile(GetCurrentDir+'\UserData.txt');
  if FileExists(GetCurrentDir+'\UserData.txt')then
    ShellExecute(Handle,'open','UserData.txt','',nil, SW_SHOW);
  MessageMemo.Free;
end;

end.
