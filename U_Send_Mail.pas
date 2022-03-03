unit U_Send_Mail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdEMailAddress, IdGlobal, IdAttachmentFile,
  Vcl.StdCtrls, IdCustomTCPServer, IdTCPServer, IdCmdTCPServer, System.IniFiles,
  IdExplicitTLSClientServerBase, IdIMAP4Server, IdIMAP4, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTPBase, IdSMTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, Vcl.Mask, JvExMask, JvToolEdit, IdSSLOpenSSLHeaders,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel;

type
  TFrmMail = class(TForm)
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdIMAP41: TIdIMAP4;
    IdIMAP4Server1: TIdIMAP4Server;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    mmoStatusMemo: TMemo;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdRecipient: TEdit;
    EdAllegato: TJvFilenameEdit;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMail: TFrmMail;
  SETIni:TIniFile;
  _SDIMail:String;
  _MITTENTE:String;
  _SMTP:String;
  _PORT:String;
  _USERNAME:String;
  _PASSWORD:String;
  _SSL:String;
  _PROTEZIONE:String;


implementation

{$R *.dfm}

uses U_SettingMail, U_Main, U_DM;


procedure TFrmMail.AdvGlowButton1Click(Sender: TObject);
var
  Attachmentfile: TIdAttachmentFile;
begin
  IdSSLIOHandlerSocketOpenSSL1.Destination:='smtps.pec.aruba.it:465';
  IdSSLIOHandlerSocketOpenSSL1.Host:='smtps.pec.aruba.it';
  IdSSLIOHandlerSocketOpenSSL1.Port:=465;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmUnassigned;
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyMode := [];
  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyDepth := 0;

  IdSMTP1.UseTLS:=utUseImplicitTLS;
  IdSMTP1.Host:='smtps.pec.aruba.it';
  IdSMTP1.Port:=465;
  IdSMTP1.Username:= 'info@pec.softwareplanet.it';
  IdSMTP1.Password:= 'Attendista_70';

    //setup mail message
  IdMessage1.From.Address:='info@pec.softwareplanet.it';
  IdMessage1.Recipients.EMailAddresses:='info@pec.softwareplanet.it';
  IdMessage1.Subject :='TEST';
  IdMessage1.Body.Text := 'TEST';

  //Aggiunge l'allegato //
  if EdAllegato.Text<>'' then
    Attachmentfile := TIdAttachmentFile.Create(IdMessage1.MessageParts,EdAllegato.Text);

  {if FileExists(edtAttachment.Text) then
  TIdAttachmentFile.Create(MailMessage.MessageParts,
  edtAttachment.Text) ;}

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


procedure TFrmMail.AdvGlowButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSetting,FrmSetting);
    FrmSetting.ShowModal;
  finally
    FrmSetting.Free;
  end;
end;

procedure TFrmMail.AdvGlowButton3Click(Sender: TObject);
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
      //IdMessage1.Recipients.EMailAddresses:='info@pec.softwareplanet.it';//Qui va l'email dell'SDI
      IdMessage1.Recipients.EMailAddresses:=EdRecipient.Text;
      IdMessage1.Subject:='Fattura n° '+DM.FattureNumFattura.AsString+'-'+
                           DM.FattureAnno.AsString+' del '+DM.FattureData.AsString;;
      IdMessage1.Body.Text:='Invio Nostra Fattura Commerciale '+#13+
                            'Fattura n° '+DM.FattureNumFattura.AsString+'-'+
                            DM.FattureAnno.AsString+' del '+
                            DM.FattureData.AsString;;

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
          Close;
        except
          on E:Exception do
            mmoStatusMemo.Lines.Insert(0, 'ERROR: ' + E.Message) ;
        end;
      finally
        if IdSMTP1.Connected then IdSMTP1.Disconnect;
      end;
    end;
end;


procedure TFrmMail.FormCreate(Sender: TObject);
begin
  IdOpenSSLSetLibPath('E:\LIB');


end;

end.

