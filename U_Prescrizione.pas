unit U_Prescrizione;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, AdvScrollBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxMemo, cxDBEdit, cxCheckBox,
  Vcl.StdCtrls, AdvGroupBox, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxSpinEdit, AdvOfficePager, AdvGlowButton, IniFiles, Data.DB, cxStyles,
  cxGridLayoutView, cxClasses, Vcl.DBCtrls, ShellAPI;

type
  TFrmPrescrizione = class(TForm)
    NB: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    NBProtesi: TNotebook;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    AdvGroupBox1: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    EdSesso: TcxDBComboBox;
    EdDataNasc: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    AdvGroupBox2: TAdvGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    AdvGroupBox6: TAdvGroupBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBCheckBox35: TcxDBCheckBox;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    AdvGroupBox14: TAdvGroupBox;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    cxDBMemo4: TcxDBMemo;
    cxDBTextEdit30: TcxDBTextEdit;
    AdvGroupBox12: TAdvGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit9: TcxDBDateEdit;
    cxDBDateEdit10: TcxDBDateEdit;
    cxDBDateEdit11: TcxDBDateEdit;
    AdvGroupBox3: TAdvGroupBox;
    Label9: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBTextEdit6: TcxDBTextEdit;
    AdvGroupBox4: TAdvGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    AdvGroupBox13: TAdvGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBDateEdit12: TcxDBDateEdit;
    AdvGroupBox11: TAdvGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label30: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    AdvPanel1: TAdvPanel;
    BtnStampa: TAdvGlowButton;
    BtnAnnulla: TAdvGlowButton;
    BtnConferma: TAdvGlowButton;
    BtnIndietro: TAdvGlowButton;
    BtnAvanti: TAdvGlowButton;
    CmbLega: TcxDBComboBox;
    CmbRegOcclusale: TcxDBComboBox;
    CmbImpronte: TcxDBComboBox;
    CmbMorfologia: TcxDBComboBox;
    CmbTipoDispositivo: TcxDBComboBox;
    Label34: TLabel;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    NBOrtodonzia: TNotebook;
    Label43: TLabel;
    Label44: TLabel;
    cxDBDateEdit13: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvGroupBox15: TAdvGroupBox;
    Label46: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBCheckBox46: TcxDBCheckBox;
    cxDBComboBox1: TcxDBComboBox;
    cxDBDateEdit14: TcxDBDateEdit;
    AdvGlowButton2: TAdvGlowButton;
    AdvGroupBox16: TAdvGroupBox;
    cxDBMemo3: TcxDBMemo;
    AdvGlowButton3: TAdvGlowButton;
    AdvGroupBox17: TAdvGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    cxDBMemo5: TcxDBMemo;
    cxDBTextEdit27: TcxDBTextEdit;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    AdvGroupBox5: TAdvGroupBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox47: TcxDBCheckBox;
    cxDBCheckBox48: TcxDBCheckBox;
    cxDBCheckBox49: TcxDBCheckBox;
    cxDBTextEdit12: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    BtnStampa2: TAdvGlowButton;
    BtnAnnulla2: TAdvGlowButton;
    BtnConferma2: TAdvGlowButton;
    BtnIndietro2: TAdvGlowButton;
    BtnAvanti2: TAdvGlowButton;
    AdvGroupBox8: TAdvGroupBox;
    AdvGroupBox9: TAdvGroupBox;
    AdvGroupBox10: TAdvGroupBox;
    AdvGroupBox7: TAdvGroupBox;
    cxDBCheckBox50: TcxDBCheckBox;
    cxDBCheckBox51: TcxDBCheckBox;
    cxDBCheckBox52: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    StaticText3: TStaticText;
    StaticText1: TStaticText;
    cxDBCheckBox53: TcxDBCheckBox;
    cxDBCheckBox54: TcxDBCheckBox;
    cxDBCheckBox55: TcxDBCheckBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBCheckBox56: TcxDBCheckBox;
    Label14: TLabel;
    cxDBCheckBox57: TcxDBCheckBox;
    Label15: TLabel;
    cxDBCheckBox58: TcxDBCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBCheckBox59: TcxDBCheckBox;
    cxDBCheckBox60: TcxDBCheckBox;
    Label17: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBCheckBox61: TcxDBCheckBox;
    Label18: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBCheckBox62: TcxDBCheckBox;
    cxDBCheckBox63: TcxDBCheckBox;
    Label19: TLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBCheckBox64: TcxDBCheckBox;
    Label20: TLabel;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBCheckBox65: TcxDBCheckBox;
    cxDBCheckBox66: TcxDBCheckBox;
    Label22: TLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBCheckBox67: TcxDBCheckBox;
    Label21: TLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBCheckBox68: TcxDBCheckBox;
    cxDBCheckBox69: TcxDBCheckBox;
    Label23: TLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cxDBCheckBox70: TcxDBCheckBox;
    cxDBCheckBox71: TcxDBCheckBox;
    cxDBCheckBox72: TcxDBCheckBox;
    cxDBCheckBox73: TcxDBCheckBox;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBCheckBox74: TcxDBCheckBox;
    cxDBCheckBox75: TcxDBCheckBox;
    cxDBCheckBox76: TcxDBCheckBox;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBCheckBox77: TcxDBCheckBox;
    cxDBCheckBox78: TcxDBCheckBox;
    cxDBCheckBox79: TcxDBCheckBox;
    cxDBCheckBox80: TcxDBCheckBox;
    cxDBCheckBox81: TcxDBCheckBox;
    cxDBCheckBox82: TcxDBCheckBox;
    cxDBCheckBox83: TcxDBCheckBox;
    cxDBCheckBox84: TcxDBCheckBox;
    cxDBCheckBox85: TcxDBCheckBox;
    cxDBCheckBox86: TcxDBCheckBox;
    cxDBCheckBox87: TcxDBCheckBox;
    Label25: TLabel;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    Label24: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label26: TLabel;
    cxDBMemo6: TcxDBMemo;
    BtnPDF: TAdvGlowButton;
    Chk_PDF_Fissa: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BtnIndietroClick(Sender: TObject);
    procedure BtnAvantiClick(Sender: TObject);
    procedure NBProtesiPageChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAnnullaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnConfermaClick(Sender: TObject);
    procedure AdvGlowButton17Click(Sender: TObject);
    procedure NBOrtodonziaPageChanged(Sender: TObject);
    procedure BtnIndietro2Click(Sender: TObject);
    procedure BtnAvanti2Click(Sender: TObject);
    procedure BtnStampaClick(Sender: TObject);
    procedure BtnStampa2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrescrizione: TFrmPrescrizione;
  ListeIni:TIniFile;
  Closing:Boolean=False; //Tiene traccia che si sta chiudendo la finestra

implementation

{$R *.dfm}

uses U_DM, U_Main, U_SearchPaziente, U_Laboratori, U_Sel_Laboratorio;

procedure TFrmPrescrizione.AdvGlowButton17Click(Sender: TObject);
begin
  try
    Prescrizione:=True;
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

procedure TFrmPrescrizione.AdvGlowButton1Click(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmSelect_Lab,FrmSelect_Lab);
    FrmSelect_Lab.ShowModal;
  finally
    FrmSelect_Lab.Free;
  end;
end;

procedure TFrmPrescrizione.AdvGlowButton3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelect_Lab,FrmSelect_Lab);
    FrmSelect_Lab.ShowModal;
  finally
    FrmSelect_Lab.Free;
  end;
end;

procedure TFrmPrescrizione.BtnAnnullaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrescrizione.BtnAvanti2Click(Sender: TObject);
begin
  NBOrtodonzia.PageIndex:=NBOrtodonzia.PageIndex+1;
end;

procedure TFrmPrescrizione.BtnAvantiClick(Sender: TObject);
begin
  NBProtesi.PageIndex:=NBProtesi.PageIndex+1;
end;

procedure TFrmPrescrizione.BtnConfermaClick(Sender: TObject);
var
  Path, Destinazione:String;
  DATA_PRESCRIZIONE:string;
begin
  if (DM.Prescrizioni.State in [dsEdit,dsInsert])then
    try
      DM.Prescrizioni.Post;
      DATA_PRESCRIZIONE:=FormatDateTime('DD-MM-YYYY',DM.PrescrizioniData.AsDateTime);

      //Aggiorna il contatore Prescrizioni
      DM.Impostazioni.Edit;
      case DM.PrescrizioniTipoPrescrizione.AsInteger of
        0:DM.Impostazioninextprescrizionemedica.AsInteger:=DM.Impostazioninextprescrizionemedica.AsInteger+1;
        1,
        2,
        3:DM.Impostazioninextprescrizioneorto.AsInteger:=DM.Impostazioninextprescrizioneorto.AsInteger+1;
      end;
      DM.Impostazioni.Post;

      //A questo punto richiama la stampa
      if Application.MessageBox('Si desidera visualizzare l''anteprima di stampa'+#13+
                                'della prescrizione appena inserita/modificata?',
                                'Stampa Prescrizione',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
        begin
          DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
          DM.frPrescrizione.ShowReport();
        end;

      //Converte il report in formato PDF
      if Chk_PDF_Fissa.Checked then
        begin
          if Application.MessageBox('Si desidera salvare la prescrizione corrente in formato PDF'+#13+
                                    'e allegarla alla scheda del paziente?',
                                    'Salva Prescrizione PDF',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
            try
              Path:=ExtractFilePath(Application.ExeName);
              DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
              DM.frPrescrizione.PrepareReport(true);
              DM.frPDF.FileName:='Prescrizione di '+DM.CartelleCalcPaziente.AsString+' del '+DATA_PRESCRIZIONE+'.pdf';
              DM.frPrescrizione.Export(DM.frPDF);
              ShellExecute(Handle,'Open',PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),'',Nil,SW_SHOWNORMAL);

              //Allega il file PDF della Prescrizione
              try
                ListeIni:=TIniFile.Create('.\Liste.ini');
                PathCertificati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');
                if PathCertificati<>''then
                  begin
                    if not DirectoryExists(PathCertificati)then ForceDirectories(PathCertificati);
                    if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then
                      CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
                    Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
                    CopyFile(PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),PChar(Destinazione+'\'+DM.frPDF.FileName),True);
                  end;
              except
                Application.MessageBox('Errore salvataggio file?','Errore',MB_OK+MB_IConError);
              end;

            except
              //In caso di errore manda in stampa il report normale
              DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
              DM.frPrescrizione.ShowReport();
            end;
        end;

    except
      Application.MessageBox('Attenzione, '+#13+#13+
                             'Si è verificato un errore in fase di salvataggio della prescrizione.'+#13+
                             'E'' consigliato ripetere l''inserimento',
                             'Errore Salvataggio',MB_OK+MB_ICONERROR);
                             DM.Prescrizioni.Cancel;
    end;
  Closing:=True;
  Close;
end;

procedure TFrmPrescrizione.BtnIndietro2Click(Sender: TObject);
begin
  NBOrtodonzia.PageIndex:=NBOrtodonzia.PageIndex-1
end;

procedure TFrmPrescrizione.BtnIndietroClick(Sender: TObject);
begin
  NBProtesi.PageIndex:=NBProtesi.PageIndex-1
end;

procedure TFrmPrescrizione.BtnPDFClick(Sender: TObject);
var
  Path:String;
begin
  //Converte il report in formato PDF
  try
    Path:=ExtractFilePath(Application.ExeName);
    DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
    DM.frPrescrizione.PrepareReport(true);
    DM.frPDF.FileName:='Prescrizione di '+DM.CartelleCalcPaziente.AsString+' del '+DateToStr(DM.PrescrizioniData.AsDateTime)+'.pdf';
    DM.frPrescrizione.Export(DM.frPDF);
    ShellExecute(Handle,'Open',PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),'',Nil,SW_SHOWNORMAL);
  except
    //In caso di errore manda in stampa il report normale
    DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
    DM.frPrescrizione.ShowReport();
  end;
end;

procedure TFrmPrescrizione.BtnStampa2Click(Sender: TObject);
begin
  DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-02.fr3');
  DM.frPrescrizione.ShowReport();
end;

procedure TFrmPrescrizione.BtnStampaClick(Sender: TObject);
begin
  DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
  DM.frPrescrizione.ShowReport();
end;

procedure TFrmPrescrizione.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.DsPrescrizioni.AutoEdit:=False;
end;

procedure TFrmPrescrizione.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Closing then //Chiude senza chiedere conferma poichè è stato gia confermato l'inserimento
    begin
      CanClose:=True;
    end
  else if Application.MessageBox('Si desidera chiudere la finestra corrente?','Conferma Chiusura',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
    begin
      case DM.Prescrizioni.State of
        dsEdit,
        dsInsert:begin
                   if Application.MessageBox('Attenzione, '+#13+#13+
                                             'Sei ancora in fase di inserimento di una prescrizione.'+#13+
                                             'Si desidera salvare il lavoro inserito prima di chiudere la finestra corrente?',
                                             'Conferma Chiusura',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Prescrizioni.Post
                                             else DM.Prescrizioni.Cancel;
                  end;
        dsBrowse:begin
                   //
                 end;
      end;
      CanClose:=True
    end
    else CanClose:=False;

end;

procedure TFrmPrescrizione.FormCreate(Sender: TObject);
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    ListeIni.ReadSection('Leghe',CmbLega.Properties.Items);
    ListeIni.ReadSection('Registrazioni Occlusali',CmbRegOcclusale.Properties.Items);
    ListeIni.ReadSection('Impronte',CmbImpronte.Properties.Items);
    ListeIni.ReadSection('Tipo Dispositivo Medico',CmbTipoDispositivo.Properties.Items);
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmPrescrizione.FormShow(Sender: TObject);
begin
  if NB.ActivePageIndex=0 then NBProtesi.PageIndex:=0;
  if NB.ActivePageIndex=1 then NBOrtodonzia.PageIndex:=0;
end;

procedure TFrmPrescrizione.NBOrtodonziaPageChanged(Sender: TObject);
begin
  BtnIndietro2.Enabled:=NBOrtodonzia.PageIndex>0;
  BtnAvanti2.Enabled:=NBOrtodonzia.PageIndex<1;
end;

procedure TFrmPrescrizione.NBProtesiPageChanged(Sender: TObject);
begin
  BtnIndietro.Enabled:=NBProtesi.PageIndex>0;
  BtnAvanti.Enabled:=NBProtesi.PageIndex<1;
end;

end.


