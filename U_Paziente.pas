unit U_Paziente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit,Mask, ExtCtrls, DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Buttons, AdvPanel, AdvGlowButton, cxCheckBox, AdvGroupBox;

type
  TFrmPaziente = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label63: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnCodFiscale: TSpeedButton;
    Label110: TLabel;
    EdDataNasc: TcxDBDateEdit;
    suiDBMemo7: TDBMemo;
    suiDBEdit1: TDBEdit;
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
    PazientiCodiceDestinatario: TStringField;
    PazientiPecDestinatario: TStringField;
    PazientiPR_PA: TFloatField;
    DSPazienti: TDataSource;
    QryOmonimie: TMyQuery;
    DsQryOmonimie: TDataSource;
    EdIndirizzo: TcxDBTextEdit;
    EdCitta: TcxDBTextEdit;
    EdCap: TcxDBTextEdit;
    EdProv: TcxDBTextEdit;
    EdCognome: TcxDBTextEdit;
    EdNome: TcxDBTextEdit;
    EdSesso: TcxDBComboBox;
    cxDBComboBox2: TcxDBComboBox;
    EdLuogoNasc: TcxDBTextEdit;
    EdCodFisc: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    AdvGroupBox1: TAdvGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label8: TLabel;
    suiButton3: TButton;
    EdRagioneSociale: TcxDBTextEdit;
    EdIndirizzoFatt: TcxDBTextEdit;
    EdCapFatt: TcxDBTextEdit;
    EdCittaFatt: TcxDBTextEdit;
    EdProvFatt: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    EdCodFiscFiscFatt: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure BtnCodFiscaleClick(Sender: TObject);
    procedure PazientiPR_PAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PazientiPR_PASetText(Sender: TField; const Text: String);
    procedure PazientiNewRecord(DataSet: TDataSet);
    procedure suitempEdCodFiscExit(Sender: TObject);
    procedure suitempEdCognomeChange(Sender: TObject);
    procedure suitempEdNomeChange(Sender: TObject);
    procedure suitempsuiButton3Click(Sender: TObject);
    procedure suitempEdCognomeExit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure EdCodFiscPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure EdCognomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPaziente: TFrmPaziente;
  TS:Boolean=False;
  Prosegui:Boolean=False;
 

implementation

uses U_DM, U_Main, U_Fiscal, U_Ed_TS, U_Omonimie, U_Cartella;

{$R *.dfm}


function ControllaCF(cf:String):Boolean;
const
  SetDisp:array [0..25] of Integer= (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20, 11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23);
var
  i,n,s:Integer;
  cf2:string;
begin
  Result:=True;
	if Length(cf)=0 then Exit;
  if Length(cf)=11 then Exit;
  if (Length(cf)<>16)then
   Begin
    Result:=False;
    Application.MessageBox('Attenzione!'+#13+
                           'La lunghezza del codice fiscale non è corretta: '+#13+
                           'Il Codice Fiscale dovrebbe essere lungo esattamente 16 caratteri.',
                           'Nuovo Cliente',MB_Ok+MB_IconWarning);
    Exit;
   End;

	cf2:=UpperCase(cf);

  for i:=1 to 16 do
    if not(((cf2[I]>='0')and(cf2[I]<='9'))or((cf2[I]>='A')and(cf2[I]<='Z')))then
      begin
        Result:=False;
        Application.MessageBox('Attenzione!'+#13+
                               'Il Codice Fiscale contiene dei caratteri non validi: '+#13+
		                           'I soli caratteri validi sono le lettere e le cifre.',
                               'Nuovo Cliente',MB_YesNo+MB_IconWarning);
        Exit;
      end;

	s := 0;
  for i:=2 to 14 do if not Odd(i) then
   begin
     n:=Ord(cf2[I]);
     if((cf2[I]>='0')and(cf2[I]<='9'))then s:= s + n - Ord('0')
     else s:= s + n - Ord('A');
   end;

  for i:=1 to 15 do if Odd(i) then
   begin
     n:= Ord(cf2[I]);
     if ((cf2[I]>='0')and(cf2[I]<='9')) then n := n - Ord('0') + Ord('A');
     s := s + SetDisp[n-Ord('A')];
   end;

  n:= (s mod 26) + Ord('A');

  if Chr(n)<>cf2[16] then
    begin
      Result:=False;
      Application.MessageBox('Attenzione!'+#13+
                             'Il Codice Fiscale non è corretto: '+#13+
                             'Il Codice di controllo non corrisponde.',
                             'Nuovo Cliente',MB_OK+MB_IconWarning);
    end;
end;




procedure TFrmPaziente.FormShow(Sender: TObject);
begin
  Height:=610;
  Width:=777;
  suiButton1.Font.Color:=clGreen;
  suiButton2.Font.Color:=clRed;
  Prosegui:=False;
  if (Pazienti.State in [dsInsert]) then Inserimento:=True;
end;

procedure TFrmPaziente.suitempsuiButton2Click(Sender: TObject);
begin
  if (Pazienti.State in [dsEdit,dsInsert]) then Pazienti.Cancel;
  Close;
end;

procedure TFrmPaziente.BtnCodFiscaleClick(Sender: TObject);
var
  CodFData: TCodFData;
begin
   CodFData[1]:=EdCognome.Text;
   CodFData[2]:=EdNome.Text;
   CodFData[3]:=EdDataNasc.Text;
   CodFData[4]:=EdSesso.Text;
   CodFData[5]:=EdLuogoNasc.Text;
   PazientiCodiceFiscale.AsString:=Fiscal.CreateCodFisc(CodFData);
end;

procedure TFrmPaziente.PazientiPR_PAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  case PazientiPR_PA.AsInteger of
    0:Text:='SOGGETTO PRIVATO / AZIENDA';
    1:Text:='PUBBLICA AMMINISTRAZIONE';
  end;
end;

procedure TFrmPaziente.PazientiPR_PASetText(Sender: TField;
  const Text: String);
begin
  if Text='SOGGETTO PRIVATO / AZIENDA' then PazientiPR_PA.AsInteger:=0
  else if Text='PUBBLICA AMMINISTRAZIONE' then PazientiPR_PA.AsInteger:=1;
end;

procedure TFrmPaziente.PazientiNewRecord(DataSet: TDataSet);
begin
  PazientiStato.AsString:='IT';
end;

procedure TFrmPaziente.suitempEdCodFiscExit(Sender: TObject);
begin
  if Pazienti.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaCF(EdCodFisc.Text)then EdCodFisc.setFocus;
    end;
end;

procedure TFrmPaziente.suitempEdCognomeChange(Sender: TObject);
begin
  {if (EdCognome.Text<>'')and (EdNome.Text<>'') then EdRagioneSociale.Text:=EdCognome.Text+' '+EdNome.Text;
  if (EdCognome.Text<>'')and (EdNome.Text='') then EdRagioneSociale.Text:=EdCognome.Text;
  if (EdCognome.Text='')and (EdNome.Text='') then EdRagioneSociale.Text:=EdNome.Text;}
end;

procedure TFrmPaziente.suitempEdNomeChange(Sender: TObject);
begin
  {if (EdCognome.Text<>'')and (EdNome.Text<>'') then EdRagioneSociale.Text:=EdCognome.Text+' '+EdNome.Text;
  if (EdCognome.Text<>'')and (EdNome.Text='') then EdRagioneSociale.Text:=EdCognome.Text;
  if (EdCognome.Text='')and (EdNome.Text='') then EdRagioneSociale.Text:=EdNome.Text;}
end;

procedure TFrmPaziente.suitempsuiButton3Click(Sender: TObject);
begin
  EdRagioneSociale.Text:=EdCognome.Text+' '+EdNome.Text;
  EdIndirizzoFatt.Text:=EdIndirizzo.Text;
  EdCapFatt.Text:=EdCap.Text;
  EdCittaFatt.Text:=EdCitta.Text;
  EdProvFatt.Text:=EdProv.Text;
  EdCodFiscFiscFatt.Text:=EdCodFisc.Text;
end;

procedure TFrmPaziente.suitempEdCognomeExit(Sender: TObject);
begin
  if Pazienti.State in ([dsinsert])then
    begin
      if (EdCognome.Text<>'')and(EdNome.Text<>'')and(EdCitta.Text<>'')then
        begin
          QryOmonimie.Close;
          QryOmonimie.ParamByName('iCognome').AsString:=EdCognome.Text;
          QryOmonimie.ParamByName('iNome').AsString:=EdNome.Text;
          QryOmonimie.ParamByName('iCitta').AsString:=EdCitta.Text;
          QryOmonimie.Open;
        end;
      if (not QryOmonimie.IsEmpty)and(Prosegui=False) then
        begin
          if Application.MessageBox(Pchar('Attenzione!!!'+#13+#13+
                                          'Esiste già un paziente:'+#13+#13+
                                          EdCognome.Text+' '+EdNome.Text+#13+
                                          'Città: '+EdCitta.Text+#13+#13+
                                          'Si desidera comunque proseguire con l''inserimento corrente?'),
                                          'Omonimia Paziente',MB_YesNo+MB_ICONWARNING)=Id_Yes then Prosegui:=True
            else
              begin
                Prosegui:=False;
                EdCognome.Clear;
                EdNome.Clear;
                EdCitta.Clear;
                PazientiCognome.Clear;
                PazientiNome.Clear;
                PazientiCitta.Clear;

                //Mostra la finestra con i Pazienti Omonimi
                try
                  Application.CreateForm(TFrmOmonimie,FrmOmonimie);
                  FrmOmonimie.ShowModal;
                finally
                  FrmOmonimie.Free;
                  QryOmonimie.Close;
                end;
              end;
        end;
    end;
end;

procedure TFrmPaziente.EdCodFiscPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if not ControllaCF(EdCodFisc.Text)then EdCodFisc.SetFocus;
end;


procedure TFrmPaziente.EdCognomeExit(Sender: TObject);
begin
  if Pazienti.State in ([dsinsert])then
    begin
      if (EdCognome.Text<>'')and(EdNome.Text<>'')and(EdCitta.Text<>'')then
        begin
          QryOmonimie.Close;
          QryOmonimie.ParamByName('iCognome').AsString:=EdCognome.Text;
          QryOmonimie.ParamByName('iNome').AsString:=EdNome.Text;
          QryOmonimie.ParamByName('iCitta').AsString:=EdCitta.Text;
          QryOmonimie.Open;
        end;
      if (not QryOmonimie.IsEmpty)and(Prosegui=False) then
        begin
          //Application.MessageBox()
          if Application.MessageBox(PChar('Attenzione!!!'+#13+#13+
                                 'Esiste già un paziente:'+#13+#13+
                                 EdCognome.Text+' '+EdNome.Text+#13+
                                 'Città: '+EdCitta.Text+#13+#13+
                                 'Si desidera comunque proseguire con l''inserimento corrente?'),
                                 'Omonimia Paziente',MB_YESNO+MB_ICONWARNING)=Id_Yes then Prosegui:=True
            else
              begin
                Prosegui:=False;
                EdCognome.Clear;
                EdNome.Clear;
                EdCitta.Clear;
                PazientiCognome.Clear;
                PazientiNome.Clear;
                PazientiCitta.Clear;
                //Mostra la finestra con i Pazienti Omonimi
                try
                  Application.CreateForm(TFrmOmonimie,FrmOmonimie);
                  FrmOmonimie.ShowModal;
                finally
                  FrmOmonimie.Free;
                  QryOmonimie.Close;
                end;
              end;
        end;
    end;
end;

procedure TFrmPaziente.suiButton1Click(Sender: TObject);
begin
  if (Pazienti.State in [dsEdit,dsInsert]) then
    begin
      Pazienti.Post;
      if TS then
        begin
          DM.Fatture.Edit;
          DM.FattureCodFisc.AsString:=DM.PazientiCodiceFiscale.AsString;
          DM.Fatture.Post;
        end;
      DM.Pazienti.DisableControls;
      DM.Pazienti.Refresh;
      DM.Pazienti.Locate('Cod_Paziente',PazientiCod_Paziente.AsInteger,[]);
      DM.Pazienti.EnableControls;
    end;
  TS:=False;
  Close;
  if Inserimento then
    begin
       FrmPaziente.Visible:=False;
       if Application.MessageBox(Pchar('Si desidera inserire una nuova cartella '+#13+
                                       'per il paziente: '+#13+#13+
                                       DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString+'?'),
                                       'Nuova Scheda Paziente',MB_YesNo+MB_ICONINFORMATION)=Id_Yes then
                          try
                            Application.CreateForm(TFrmCartella,FrmCartella);
                            FrmCartella.Caption:='  Nuova Cartella';
                            FrmCartella.Cartelle.Insert;
                            FrmCartella.CartelleCod_Paziente.AsInteger:=DM.PazientiCod_Paziente.AsInteger;
                            FrmCartella.CartelleDataCartella.AsDateTime:=Now;
                            FrmCartella.ShowModal;
                          finally
                            FrmCartella.Free;
                          end;
    end;
   Inserimento:=False;
end;

procedure TFrmPaziente.suiButton2Click(Sender: TObject);
begin
  if (Pazienti.State in [dsEdit,dsInsert]) then Pazienti.Cancel;
  Close;
end;

end.
