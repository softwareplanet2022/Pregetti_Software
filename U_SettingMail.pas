unit U_SettingMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, IniFiles,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  cxTextEdit, IdGlobal, IdSSLOpenSSL, IdSMTP, IdMessage, IdSSLOpenSSLHeaders, IdAttachmentFile,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel;

type
  TFrmSetting = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdSDI: TcxTextEdit;
    EdSMTP: TcxTextEdit;
    EdUserName: TcxTextEdit;
    EdPorta: TcxTextEdit;
    EdMittente: TcxTextEdit;
    EdPassword: TcxTextEdit;
    CmbProtezione: TcxComboBox;
    ChkProtezione: TcxCheckBox;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnTestClick(Sender: TObject);
    procedure BtnSaveSettingClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSetting: TFrmSetting;
  SETIni:TIniFile;

implementation

{$R *.dfm}

uses U_Send_Mail, IdExplicitTLSClientServerBase, U_Main;


procedure TFrmSetting.AdvGlowButton1Click(Sender: TObject);
var
  Attachmentfile: TIdAttachmentFile;
  SETIni:TIniFile;
  _SDIMail:String;
  _MITTENTE:String;
  _SMTP:String;
  _PORT:String;
  _USERNAME:String;
  _PASSWORD:String;
  _SSL:String;
  _PROTEZIONE:String;
begin
  with FrmMail do
    begin
      try
        SETIni:=TIniFile.Create('.\SET.ini');
        _SDIMail:=SETIni.ReadString('INTERSCAMBIO','Email','');

        _Mittente:=SETIni.ReadString('EMAIL','DISPLAY_NAME','');
        _SMTP:=SETIni.ReadString('EMAIL','SMTP','');
        _PORT:=SETIni.ReadString('EMAIL','PORT','');
        _USERNAME:=SETIni.ReadString('EMAIL','USERNAME','');
        _PASSWORD:=SETIni.ReadString('EMAIL','PASSWORD','');
        _PROTEZIONE:=SETIni.ReadString('EMAIL','PROTECTION_TYPE','');
      finally
        SETIni.Free;
      end;

      IdSSLIOHandlerSocketOpenSSL1.Destination:=_SMTP+':'+_PORT;
      IdSSLIOHandlerSocketOpenSSL1.Host:=_SMTP;
      IdSSLIOHandlerSocketOpenSSL1.Port:=StrToInt(_PORT);


      if _PROTEZIONE='TLSv1' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1
      else if _PROTEZIONE='TLSv1.1' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_1
      else if _PROTEZIONE='TLSv1.2' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_2
      else if _PROTEZIONE='SSLv2' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv2
      else if _PROTEZIONE='SSLv2.3' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23
      else if _PROTEZIONE='SSLv3' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv3;

      //IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23;

      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmUnassigned;
      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyMode := [];
      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyDepth := 0;

      IdSMTP1.UseTLS:=utUseImplicitTLS;
      IdSMTP1.Host:=_SMTP;
      IdSMTP1.Port:=StrToInt(_PORT);
      IdSMTP1.Username:=_USERNAME;
      IdSMTP1.Password:=_PASSWORD;

      //setup mail message
      IdMessage1.From.Address:=_USERNAME;
      IdMessage1.Recipients.EMailAddresses:='info@pec.softwareplanet.it';//Qui va l'email dell'SDI
      IdMessage1.Subject :='Invio Mail di Prova...';
      IdMessage1.Body.Text := 'Invio Mail di Prova...';

      //Aggiunge l'allegato //
      if EdAllegato.Text<>'' then
        Attachmentfile := TIdAttachmentFile.Create(IdMessage1.MessageParts,EdAllegato.Text);

      //send mail
      try
        try
          IdSMTP1.ConnectTimeout := 5000;
          IdSMTP1.Connect;
          IdSMTP1.Send(IdMessage1);
          Application.MessageBox('Pec Mail Inviata con successo','Invio Mail',MB_OK+MB_ICONINFORMATION);
        except
          on E:Exception do
            mmoStatusMemo.Lines.Insert(0, 'ERROR: ' + E.Message) ;
        end;
      finally
        if IdSMTP1.Connected then IdSMTP1.Disconnect;
      end;
    end;
end;



procedure TFrmSetting.AdvGlowButton2Click(Sender: TObject);
var
  SSL:String;
begin
  try
    SETIni:=TIniFile.Create('.\SET.ini');
    SETIni.WriteString('INTERSCAMBIO','Email',EdSDI.Text);

    SETIni.WriteString('EMAIL','Email',EdUserName.Text);
    SETIni.WriteString('EMAIL','DISPLAY_NAME',EdMittente.Text);
    SETIni.WriteString('EMAIL','SMTP',EdSMTP.Text);
    SETIni.WriteString('EMAIL','PORT',EdPorta.Text);
    SETIni.WriteString('EMAIL','USERNAME',EdUserName.Text);
    SETIni.WriteString('EMAIL','PASSWORD',EdPassword.Text);

    case CmbProtezione.ItemIndex of
      0:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1');
      1:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1.1');
      2:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1.2');
      3:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv2');
      4:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv2.3');
      5:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv3');
    end;
  finally
    SETIni.Free;
  end;
end;



procedure TFrmSetting.BtnSaveSettingClick(Sender: TObject);
var
  SSL:String;
begin
  try
    SETIni:=TIniFile.Create('.\SET.ini');
    SETIni.WriteString('INTERSCAMBIO','Email',EdSDI.Text);

    SETIni.WriteString('EMAIL','Email',EdUserName.Text);
    SETIni.WriteString('EMAIL','DISPLAY_NAME',EdMittente.Text);
    SETIni.WriteString('EMAIL','SMTP',EdSMTP.Text);
    SETIni.WriteString('EMAIL','PORT',EdPorta.Text);
    SETIni.WriteString('EMAIL','USERNAME',EdUserName.Text);
    SETIni.WriteString('EMAIL','PASSWORD',EdPassword.Text);

    case CmbProtezione.ItemIndex of
      0:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1');
      1:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1.1');
      2:SETIni.WriteString('EMAIL','PROTECTION_TYPE','TLSv1.2');
      3:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv2');
      4:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv2.3');
      5:SETIni.WriteString('EMAIL','PROTECTION_TYPE','SSLv3');
    end;
  finally
    SETIni.Free;
  end;
end;

procedure TFrmSetting.BtnTestClick(Sender: TObject);
var
  Attachmentfile: TIdAttachmentFile;
  SETIni:TIniFile;
  _SDIMail:String;
  _MITTENTE:String;
  _SMTP:String;
  _PORT:String;
  _USERNAME:String;
  _PASSWORD:String;
  _SSL:String;
  _PROTEZIONE:String;

begin
  with FrmMail do
    begin
      try
        SETIni:=TIniFile.Create('.\SET.ini');
        _SDIMail:=SETIni.ReadString('INTERSCAMBIO','Email','');

        _Mittente:=SETIni.ReadString('EMAIL','DISPLAY_NAME','');
        _SMTP:=SETIni.ReadString('EMAIL','SMTP','');
        _PORT:=SETIni.ReadString('EMAIL','PORT','');
        _USERNAME:=SETIni.ReadString('EMAIL','USERNAME','');
        _PASSWORD:=SETIni.ReadString('EMAIL','PASSWORD','');
        _PROTEZIONE:=SETIni.ReadString('EMAIL','PROTECTION_TYPE','');
      finally
        SETIni.Free;
      end;

      IdSSLIOHandlerSocketOpenSSL1.Destination:=_SMTP+':'+_PORT;
      IdSSLIOHandlerSocketOpenSSL1.Host:=_SMTP;
      IdSSLIOHandlerSocketOpenSSL1.Port:=StrToInt(_PORT);


      if _PROTEZIONE='TLSv1' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1
      else if _PROTEZIONE='TLSv1.1' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_1
      else if _PROTEZIONE='TLSv1.2' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_2
      else if _PROTEZIONE='SSLv2' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv2
      else if _PROTEZIONE='SSLv2.3' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23
      else if _PROTEZIONE='SSLv3' then IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv3;

      //IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23;

      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmUnassigned;
      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyMode := [];
      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyDepth := 0;

      IdSMTP1.UseTLS:=utUseImplicitTLS;
      IdSMTP1.Host:=_SMTP;
      IdSMTP1.Port:=StrToInt(_PORT);
      IdSMTP1.Username:=_USERNAME;
      IdSMTP1.Password:=_PASSWORD;

      //setup mail message
      IdMessage1.From.Address:=_USERNAME;
      IdMessage1.Recipients.EMailAddresses:='info@pec.softwareplanet.it';//Qui va l'email dell'SDI
      IdMessage1.Subject :='Invio Fattura Elettronica n: ... del ...';
      IdMessage1.Body.Text := 'Invio Fattura Elettronica n: ... del ...';

      //Aggiunge l'allegato //
      if EdAllegato.Text<>'' then
        Attachmentfile := TIdAttachmentFile.Create(IdMessage1.MessageParts,EdAllegato.Text);

      //send mail
      try
        try
          IdSMTP1.ConnectTimeout := 5000;
          IdSMTP1.Connect;
          IdSMTP1.Send(IdMessage1);
          Application.MessageBox('Pec Meil Inviata con successo','Invio Mail',MB_OK+MB_ICONINFORMATION);
        except
          on E:Exception do
            mmoStatusMemo.Lines.Insert(0, 'ERROR: ' + E.Message) ;
        end;
      finally
        if IdSMTP1.Connected then IdSMTP1.Disconnect;
      end;
    end;
end;

procedure TFrmSetting.FormCreate(Sender: TObject);
var
  SSL:String;
begin
  try
    SETIni:=TIniFile.Create('.\SET.ini');
    EdSDI.Text:=SETIni.ReadString('INTERSCAMBIO','Email','');
    EdMittente.Text:=SETIni.ReadString('EMAIL','DISPLAY_NAME','');
    EdSMTP.Text:=SETIni.ReadString('EMAIL','SMTP','');
    EdPorta.Text:=SETIni.ReadString('EMAIL','PORT','');
    EdUserName.Text:=SETIni.ReadString('EMAIL','USERNAME','');
    EdPassword.Text:=SETIni.ReadString('EMAIL','PASSWORD','');

    SSL:=SETIni.ReadString('EMAIL','PROTECTION','');
    if SSL='0' then ChkProtezione.Checked:=False
    else if SSL='1' then ChkProtezione.Checked:=True;

    CmbProtezione.Text:=SETIni.ReadString('EMAIL','PROTECTION_TYPE','');
  finally
    SETIni.Free;
  end;
end;



end.
