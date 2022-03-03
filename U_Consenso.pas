unit U_Consenso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, AdvGlowButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxDBEdit,
  Mask, cxImage, DB, cxCheckBox, cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmConsenso = class(TForm)
    Notebook1: TNotebook;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label12: TLabel;
    Panel2: TPanel;
    Memo1: TMemo;
    BtnFirma: TAdvGlowButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Panel3: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    BtnAnnulla2: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Label97: TLabel;
    cxDBImage1: TcxDBImage;
    cxDBImage2: TcxDBImage;
    Label101: TLabel;
    Label102: TLabel;
    cxDBImage3: TcxDBImage;
    cxDBImage4: TcxDBImage;
    Label30: TLabel;
    LblPaziente: TLabel;
    BtnConferma2: TAdvGlowButton;
    BtnStampa: TAdvGlowButton;
    BtnConferma: TAdvGlowButton;
    btnAnnulla: TAdvGlowButton;
    BtnElimina: TAdvGlowButton;
    BtnElimina2: TAdvGlowButton;
    DsConsenso: TDataSource;
    cxDBMemo1: TcxDBMemo;
    suiDBCheckBox1: TDBCheckBox;
    suiDBCheckBox2: TDBCheckBox;
    suiDBCheckBox3: TDBCheckBox;
    suiDBCheckBox4: TDBCheckBox;
    suiDBCheckBox5: TDBCheckBox;
    suiDBCheckBox6: TDBCheckBox;
    suiDBCheckBox7: TDBCheckBox;
    suiDBCheckBox8: TDBCheckBox;
    suiDBCheckBox9: TDBCheckBox;
    suiDBCheckBox10: TDBCheckBox;
    suiDBCheckBox11: TDBCheckBox;
    suiDBCheckBox12: TDBCheckBox;
    suiDBCheckBox13: TDBCheckBox;
    suiDBCheckBox14: TDBCheckBox;
    suiDBCheckBox15: TDBCheckBox;
    suiDBCheckBox16: TDBCheckBox;
    suiDBCheckBox17: TDBCheckBox;
    suiDBCheckBox18: TDBCheckBox;
    suiDBCheckBox19: TDBCheckBox;
    suiDBCheckBox20: TDBCheckBox;
    suiDBCheckBox21: TDBCheckBox;
    suiDBCheckBox22: TDBCheckBox;
    suiDBCheckBox23: TDBCheckBox;
    suiDBCheckBox24: TDBCheckBox;
    suiDBCheckBox25: TDBCheckBox;
    suiDBCheckBox26: TDBCheckBox;
    suiDBCheckBox27: TDBCheckBox;
    suiDBCheckBox28: TDBCheckBox;
    suiDBCheckBox29: TDBCheckBox;
    suiDBCheckBox30: TDBCheckBox;
    suiDBCheckBox31: TDBCheckBox;
    suiDBCheckBox32: TDBCheckBox;
    suiDBCheckBox33: TDBCheckBox;
    suiDBCheckBox34: TDBCheckBox;
    suiDBCheckBox35: TDBCheckBox;
    suiDBCheckBox36: TDBCheckBox;
    suiDBCheckBox37: TDBCheckBox;
    suiDBCheckBox38: TDBCheckBox;
    suiDBCheckBox39: TDBCheckBox;
    suiDBCheckBox40: TDBCheckBox;
    ChkTutore: TCheckBox;
    suiDBEdit34: TDBEdit;
    suiDBEdit41: TDBEdit;
    suiDBEdit46: TDBEdit;
    suiDBEdit47: TDBEdit;
    ChkPadre: TCheckBox;
    ChkMadre: TCheckBox;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    Label31: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label32: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure suitempsuiButton9Click(Sender: TObject);
    procedure suitempsuiButton10Click(Sender: TObject);
    procedure suitempsuiButton15Click(Sender: TObject);
    procedure suitempsuiButton16Click(Sender: TObject);
    procedure suitempsuiButton12Click(Sender: TObject);
    procedure suitempChkTutoreClick(Sender: TObject);
    procedure suitempChkPadreClick(Sender: TObject);
    procedure suitempChkMadreClick(Sender: TObject);
    procedure BtnAnnulla2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnFirmaClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure BtnConferma2Click(Sender: TObject);
    procedure BtnStampaClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure suitempsuiDBCheckBox1Click(Sender: TObject);
    procedure suitempsuiDBCheckBox2Click(Sender: TObject);
    procedure suitempsuiDBCheckBox3Click(Sender: TObject);
    procedure suitempsuiDBCheckBox4Click(Sender: TObject);
    procedure suitempsuiDBCheckBox5Click(Sender: TObject);
    procedure suitempsuiDBCheckBox6Click(Sender: TObject);
    procedure suitempsuiDBCheckBox7Click(Sender: TObject);
    procedure suitempsuiDBCheckBox8Click(Sender: TObject);
    procedure suitempsuiDBCheckBox9Click(Sender: TObject);
    procedure suitempsuiDBCheckBox10Click(Sender: TObject);
    procedure suitempsuiDBCheckBox11Click(Sender: TObject);
    procedure suitempsuiDBCheckBox12Click(Sender: TObject);
    procedure suitempsuiDBCheckBox13Click(Sender: TObject);
    procedure suitempsuiDBCheckBox14Click(Sender: TObject);
    procedure suitempsuiDBCheckBox15Click(Sender: TObject);
    procedure suitempsuiDBCheckBox16Click(Sender: TObject);
    procedure suitempsuiDBCheckBox18Click(Sender: TObject);
    procedure suitempsuiDBCheckBox17Click(Sender: TObject);
    procedure suitempsuiDBCheckBox19Click(Sender: TObject);
    procedure suitempsuiDBCheckBox20Click(Sender: TObject);
    procedure suitempsuiDBCheckBox21Click(Sender: TObject);
    procedure suitempsuiDBCheckBox22Click(Sender: TObject);
    procedure suitempsuiDBCheckBox23Click(Sender: TObject);
    procedure suitempsuiDBCheckBox24Click(Sender: TObject);
    procedure suitempsuiDBCheckBox25Click(Sender: TObject);
    procedure suitempsuiDBCheckBox26Click(Sender: TObject);
    procedure suitempsuiDBCheckBox27Click(Sender: TObject);
    procedure suitempsuiDBCheckBox28Click(Sender: TObject);
    procedure suitempsuiDBCheckBox29Click(Sender: TObject);
    procedure suitempsuiDBCheckBox30Click(Sender: TObject);
    procedure suitempsuiDBCheckBox31Click(Sender: TObject);
    procedure suitempsuiDBCheckBox32Click(Sender: TObject);
    procedure suitempsuiDBCheckBox33Click(Sender: TObject);
    procedure suitempsuiDBCheckBox34Click(Sender: TObject);
    procedure suitempsuiDBCheckBox35Click(Sender: TObject);
    procedure suitempsuiDBCheckBox36Click(Sender: TObject);
    procedure suitempsuiDBCheckBox37Click(Sender: TObject);
    procedure suitempsuiDBCheckBox38Click(Sender: TObject);
    procedure suitempsuiDBCheckBox39Click(Sender: TObject);
    procedure suitempsuiDBCheckBox40Click(Sender: TObject);
    procedure BtnEliminaClick(Sender: TObject);
    procedure DsConsensoStateChange(Sender: TObject);
    procedure Notebook1PageChanged(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsenso: TFrmConsenso;
  CodPaziente:String;

implementation

uses U_DM, U_Main, U_Firma;

{$R *.dfm}

procedure TFrmConsenso.suitempsuiButton9Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.suitempsuiButton10Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;

  if Application.MessageBox(PChar('Si desidera eliminare la firma del Tutore di '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_TUTORE.Clear;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.suitempsuiButton15Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.suitempsuiButton16Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;

  if Application.MessageBox(PChar('Si desidera eliminare la firma del Padre del Paziente '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_PADRE.Clear;
      DM.PazientiPADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.suitempsuiButton12Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=True;
  FlgTutore:=False;

  if Application.MessageBox(PChar('Si desidera eliminare la firma della Madre del Paziente '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_MADRE.Clear;
      DM.PazientiMADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.suitempChkTutoreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiTUTORE.AsBoolean:=ChkTutore.Checked;
  if DM.PazientiTUTORE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiPADRE.AsBoolean:=False;
      ChkPadre.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;

      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiMADRE.AsBoolean:=False;
      ChkMadre.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmConsenso.suitempChkPadreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiPADRE.AsBoolean:=ChkPadre.Checked;
  if DM.PazientiPADRE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiTUTORE.AsBoolean:=False;
      ChkTutore.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmConsenso.suitempChkMadreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiMADRE.AsBoolean:=ChkMadre.Checked;
  if DM.PazientiMADRE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiTUTORE.AsBoolean:=False;
      ChkTutore.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmConsenso.BtnAnnulla2Click(Sender: TObject);
begin
  if (DM.Consenso.State in [dsEdit]) then
    begin
      //Annulla sia le modifiche nella tabella del consenso che le eventuali firme apposte nella seconda pagina

      if Application.MessageBox(PChar('Si desidera Annullare le modifiche apportate alla scheda anamnesi?'+#13+#13+
                                      'Attenzione, Premendo il pulsante annulla verranno perse tutte le modifice apportate alla scheda corrente.'+#13+#13+
                                      'Eventuali firme apposte dal Paziente/Genitori/Tutore'+#13+
                                      'verranno comunque conservate'+#13+#13+
                                      'Si desidera proseguire con l''operazione?'),
                                      'Annulla Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        try
          if (DM.Consenso.State in [dsInsert]) then
            begin
              DM.Consenso.Cancel;
            end;
           Close;
        except
          exit;
        end;
    end
  else if(DM.Consenso.State in [dsInsert]) then
    begin
      //Annulla L'inserimento nella tabella del consenso, eventuali firme apposte nella seconda pagina verranno mantenute
      if Application.MessageBox(PChar('Si desidera Annullare l''inserimento corrente?'+#13+
                                      'Attenzione, Premendo il pulsante annulla verranno eliminati sia i dati relativi'+#13+
                                      'alla scheda anamnesi sia le eventuali firme apposte al documento.'+#13+
                                      'Si desidera proseguire con l''operazione?'),
                                      'Annulla Inserimento',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        try
          if (DM.Consenso.State in [dsInsert]) then
            begin
              DM.Consenso.Cancel;
              DM.Pazienti.Edit;
              DM.PazientiFIRMA.Clear;
              DM.PazientiFIRMA_PADRE.Clear;
              DM.PazientiFIRMA_MADRE.Clear;
              DM.PazientiFIRMA_TUTORE.Clear;
              DM.Pazienti.Post;
            end;
          Close;
        except
          exit;
        end;
  end;
end;

procedure TFrmConsenso.FormShow(Sender: TObject);
begin
  if not DM.Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsString,[])then
    begin
      DM.Consenso.Insert;
      DM.ConsensoData_Stampa.AsDateTime:=Now;
    end;

  Notebook1.PageIndex:=0;
  LblPaziente.Caption:='di '+DM.PazientiCalcNominativo.AsString;

  ChkTutore.Checked:=DM.PazientiTUTORE.AsBoolean;
  ChkPadre.Checked:=DM.PazientiPADRE.AsBoolean;
  ChkMadre.Checked:=DM.PazientiMadre.AsBoolean;
end;

procedure TFrmConsenso.BtnFirmaClick(Sender: TObject);
begin
  Notebook1.PageIndex:=1;
end;

procedure TFrmConsenso.AdvGlowButton10Click(Sender: TObject);
begin
  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.AdvGlowButton1Click(Sender: TObject);
begin
  Notebook1.PageIndex:=0;
end;

procedure TFrmConsenso.AdvGlowButton2Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.AdvGlowButton3Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;

  if Application.MessageBox(PChar('Si desidera eliminare la firma del Tutore di '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_TUTORE.Clear;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.BtnConferma2Click(Sender: TObject);
begin
  try
    if (DM.Consenso.State in [dsEdit,dsInsert]) then DM.Consenso.Post;
    if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    CodPaziente:=DM.PazientiCod_Paziente.AsString;

    //avvia la stampa della scheda anamnesi
    if Application.MessageBox('Si desidera stampare la scheda anamnesi appena salvata?',
                              'Stampa Anamnesi',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
    begin
      DM.Pazienti.Locate('Cod_Paziente',CodPaziente,[]);
      Close;
      //Memorizza la data di Stampa
      if DM.ConsensoData_Stampa.IsNull then
        begin
          DM.Consenso.Edit;
          DM.ConsensoData_Stampa.AsDateTime:=Now;
          DM.Consenso.Post;
        end;
      FrmMain.StampaAnamnesiClick(Sender);
    end;
  except
    Application.MessageBox(PChar('Attenzione!'+#13+
                                 'Si è verificato un errore in fase di salvataggio dati'+#13+
                                 'Si consiglia di ripetere l''inserimento o rivolgersi '+#13+
                                 'all''assistenza tecnica'),'Errore Salvataggio Dati',MB_OK+MB_ICONERROR);
  end;
end;

procedure TFrmConsenso.BtnStampaClick(Sender: TObject);
begin
  CodPaziente:=DM.PazientiCod_Paziente.AsString;
  //Memorizza la data di Stampa
  DM.Consenso.Edit;
  DM.ConsensoData_Stampa.AsDateTime:=Now;
  DM.Consenso.Post;

  //Segna il checkBox Privacy a True
  DM.Pazienti.Locate('Cod_Paziente',CodPaziente,[]);
  DM.Pazienti.Edit;
  DM.PazientiConsensoPrivacy.AsBoolean:=True;
  DM.Pazienti.Post;
  FrmMain.StampaAnamnesiClick(Sender);
end;

procedure TFrmConsenso.AdvGlowButton4Click(Sender: TObject);
begin
  CodPaziente:=DM.PazientiCod_Paziente.AsString;
  DM.Pazienti.Locate('Cod_Paziente',CodPaziente,[]);
   //Memorizza la data di Stampa
  DM.Consenso.Edit;
  DM.ConsensoData_Stampa.AsDateTime:=Now;
  DM.Consenso.Post;

  //Segna il checkBox Privacy a True
  DM.Pazienti.Locate('Cod_Paziente',CodPaziente,[]);
  DM.Pazienti.Edit;
  DM.PazientiConsensoPrivacy.AsBoolean:=True;
  DM.Pazienti.Post;
  
  FrmMain.StampaAnamnesiClick(Sender);
end;

procedure TFrmConsenso.AdvGlowButton5Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.AdvGlowButton6Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;

  if Application.MessageBox(PChar('Si desidera eliminare la firma del Padre del Paziente '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_PADRE.Clear;
      DM.PazientiPADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.AdvGlowButton7Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=True;
  FlgTutore:=False;

  if Application.MessageBox(PChar('Si desidera eliminare la firma della Madre del Paziente '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_MADRE.Clear;
      DM.PazientiMADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.AdvGlowButton8Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=True;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmConsenso.AdvGlowButton9Click(Sender: TObject);
begin
  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;

  if Application.MessageBox(PChar('Si desidera eliminare la firma del Paziente '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YesNo+MB_ICONWARNING)=Id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox1Click(Sender: TObject);
begin
  if suiDBCheckBox1.Checked then
    begin
      suiDBCheckBox2.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoCure_Dentistiche_SI.AsBoolean:=True;
          DM.ConsensoCure_Dentistiche_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox2Click(Sender: TObject);
begin
  if suiDBCheckBox2.Checked then
    begin
      suiDBCheckBox1.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoCure_Dentistiche_SI.AsBoolean:=False;
          DM.ConsensoCure_Dentistiche_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox3Click(Sender: TObject);
begin
  if suiDBCheckBox3.Checked then
    begin
      suiDBCheckBox4.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Anestetici_SI.AsBoolean:=True;
          DM.ConsensoAllergie_Anestetici_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox4Click(Sender: TObject);
begin
  if suiDBCheckBox4.Checked then
    begin
      suiDBCheckBox3.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Anestetici_SI.AsBoolean:=False;
          DM.ConsensoAllergie_Anestetici_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox5Click(Sender: TObject);
begin
  if suiDBCheckBox5.Checked then
    begin
      suiDBCheckBox6.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Farmaci_SI.AsBoolean:=True;
          DM.ConsensoAllergie_Farmaci_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox6Click(Sender: TObject);
begin
  if suiDBCheckBox6.Checked then
    begin
      suiDBCheckBox5.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Farmaci_SI.AsBoolean:=False;
          DM.ConsensoAllergie_Farmaci_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox7Click(Sender: TObject);
begin
  if suiDBCheckBox7.Checked then
    begin
      suiDBCheckBox8.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Resine_SI.AsBoolean:=True;
          DM.ConsensoAllergie_Resine_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox8Click(Sender: TObject);
begin
  if suiDBCheckBox8.Checked then
    begin
      suiDBCheckBox7.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAllergie_Resine_SI.AsBoolean:=False;
          DM.ConsensoAllergie_Resine_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox9Click(Sender: TObject);
begin
  if suiDBCheckBox9.Checked then
    begin
      suiDBCheckBox10.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoTerapie_Farmac_SI.AsBoolean:=True;
          DM.ConsensoTerapie_Farmac_no.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox10Click(Sender: TObject);
begin
  if suiDBCheckBox10.Checked then
    begin
      suiDBCheckBox9.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoTerapie_Farmac_SI.AsBoolean:=False;
          DM.ConsensoTerapie_Farmac_no.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox11Click(Sender: TObject);
begin
  if suiDBCheckBox11.Checked then
    begin
      suiDBCheckBox12.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoTerapie_Antitum_SI.AsBoolean:=True;
          DM.ConsensoTerapie_Antitum_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox12Click(Sender: TObject);
begin
  if suiDBCheckBox12.Checked then
    begin
      suiDBCheckBox11.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoTerapie_Antitum_SI.AsBoolean:=False;
          DM.ConsensoTerapie_Antitum_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox13Click(Sender: TObject);
begin
  if suiDBCheckBox13.Checked then
    begin
      suiDBCheckBox14.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoCardiopatie_SI.AsBoolean:=True;
          DM.ConsensoCardiopatie_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox14Click(Sender: TObject);
begin
  if suiDBCheckBox14.Checked then
    begin
      suiDBCheckBox13.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoCardiopatie_SI.AsBoolean:=False;
          DM.ConsensoCardiopatie_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox15Click(Sender: TObject);
begin
  if suiDBCheckBox15.Checked then
    begin
      suiDBCheckBox16.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoPace_Maker_SI.AsBoolean:=True;
          DM.ConsensoPace_Maker_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox16Click(Sender: TObject);
begin
  if suiDBCheckBox16.Checked then
    begin
      suiDBCheckBox15.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoPace_Maker_SI.AsBoolean:=False;
          DM.ConsensoPace_Maker_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox18Click(Sender: TObject);
begin
  if suiDBCheckBox18.Checked then
    begin
      suiDBCheckBox17.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoDiabete_SI.AsBoolean:=True;
          DM.ConsensoDiabete_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox17Click(Sender: TObject);
begin
  if suiDBCheckBox17.Checked then
    begin
      suiDBCheckBox18.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoDiabete_SI.AsBoolean:=False;
          DM.ConsensoDiabete_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox19Click(Sender: TObject);
begin
  if suiDBCheckBox19.Checked then
    begin
      suiDBCheckBox20.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoIpertensione_SI.AsBoolean:=True;
          DM.ConsensoIpertensione_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox20Click(Sender: TObject);
begin
  if suiDBCheckBox20.Checked then
    begin
      suiDBCheckBox19.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoIpertensione_SI.AsBoolean:=False;
          DM.ConsensoIpertensione_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox21Click(Sender: TObject);
begin
  if suiDBCheckBox21.Checked then
    begin
      suiDBCheckBox22.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoProblemi_Coagulaz_SI.AsBoolean:=True;
          DM.ConsensoProblemi_Coagulaz_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox22Click(Sender: TObject);
begin
  if suiDBCheckBox22.Checked then
    begin
      suiDBCheckBox21.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoProblemi_Coagulaz_SI.AsBoolean:=False;
          DM.ConsensoProblemi_Coagulaz_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox23Click(Sender: TObject);
begin
  if suiDBCheckBox23.Checked then
    begin
      suiDBCheckBox24.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoEpatite_B_SI.AsBoolean:=True;
          DM.ConsensoEpatite_B_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox24Click(Sender: TObject);
begin
  if suiDBCheckBox24.Checked then
    begin
      suiDBCheckBox23.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoEpatite_B_SI.AsBoolean:=False;
          DM.ConsensoEpatite_B_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox25Click(Sender: TObject);
begin
  if suiDBCheckBox25.Checked then
    begin
      suiDBCheckBox26.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoEpatite_C_SI.AsBoolean:=True;
          DM.ConsensoEpatite_C_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox26Click(Sender: TObject);
begin
  if suiDBCheckBox26.Checked then
    begin
      suiDBCheckBox25.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoEpatite_C_SI.AsBoolean:=False;
          DM.ConsensoEpatite_C_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox27Click(Sender: TObject);
begin
  if suiDBCheckBox27.Checked then
    begin
      suiDBCheckBox28.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoPatolog_Sotto_Contr_SI.AsBoolean:=True;
          DM.ConsensoPatolog_Sotto_Contr_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox28Click(Sender: TObject);
begin
 if suiDBCheckBox28.Checked then
    begin
      suiDBCheckBox27.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoPatolog_Sotto_Contr_SI.AsBoolean:=False;
          DM.ConsensoPatolog_Sotto_Contr_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox29Click(Sender: TObject);
begin
  if suiDBCheckBox29.Checked then
    begin
      suiDBCheckBox30.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoHIV_SI.AsBoolean:=True;
          DM.ConsensoHIV_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox30Click(Sender: TObject);
begin
  if suiDBCheckBox30.Checked then
    begin
      suiDBCheckBox29.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoHIV_SI.AsBoolean:=False;
          DM.ConsensoHIV_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox31Click(Sender: TObject);
begin
  if suiDBCheckBox31.Checked then
    begin
      suiDBCheckBox32.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoMalattie_Infettive_SI.AsBoolean:=True;
          DM.ConsensoMalattie_InfettiveNO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox32Click(Sender: TObject);
begin
 if suiDBCheckBox32.Checked then
    begin
      suiDBCheckBox31.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoMalattie_Infettive_SI.AsBoolean:=False;
          DM.ConsensoMalattie_InfettiveNO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox33Click(Sender: TObject);
begin
  if suiDBCheckBox33.Checked then
    begin
      suiDBCheckBox34.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoGravidanza_SI.AsBoolean:=True;
          DM.ConsensoGravidanza_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox34Click(Sender: TObject);
begin
   if suiDBCheckBox34.Checked then
    begin
      suiDBCheckBox33.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoGravidanza_SI.AsBoolean:=False;
          DM.ConsensoGravidanza_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox35Click(Sender: TObject);
begin
  if suiDBCheckBox35.Checked then
    begin
      suiDBCheckBox36.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoFumatore_SI.AsBoolean:=True;
          DM.ConsensoFumatore_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox36Click(Sender: TObject);
begin
  if suiDBCheckBox36.Checked then
    begin
      suiDBCheckBox35.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoFumatore_SI.AsBoolean:=False;
          DM.ConsensoFumatore_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox37Click(Sender: TObject);
begin
  if suiDBCheckBox37.Checked then
    begin
      suiDBCheckBox38.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoFumatore_Forte_SI.AsBoolean:=True;
          DM.ConsensoFumatore_Forte_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox38Click(Sender: TObject);
begin
  if suiDBCheckBox38.Checked then
    begin
      suiDBCheckBox37.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoFumatore_Forte_SI.AsBoolean:=False;
          DM.ConsensoFumatore_Forte_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox39Click(Sender: TObject);
begin
  if suiDBCheckBox39.Checked then
    begin
      suiDBCheckBox40.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAltre_Patologie_SI.AsBoolean:=True;
          DM.ConsensoAltre_Patologie_NO.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.suitempsuiDBCheckBox40Click(Sender: TObject);
begin
  if suiDBCheckBox40.Checked then
    begin
      suiDBCheckBox39.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.ConsensoAltre_Patologie_SI.AsBoolean:=False;
          DM.ConsensoAltre_Patologie_NO.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.BtnEliminaClick(Sender: TObject);
begin
  if DM.Consenso.RecordCount>0 then
    begin
      if Application.MessageBox('Si desidera eliminare la scheda anamnesi corrente?',
                                'Elimina Anamnesi',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        begin
          DM.Consenso.Delete;
          Close;
        end;
    end;
end;

procedure TFrmConsenso.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
    begin
      DBCheckBox2.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.Consensoosteoporosi_si.AsBoolean:=True;
          DM.Consensoosteoporosi_no.AsBoolean:=False;
        end;
    end;
end;

procedure TFrmConsenso.DBCheckBox2Click(Sender: TObject);
begin
  if DBCheckBox2.Checked then
    begin
      DBCheckBox1.Checked:=False;
      if DM.Consenso.State in [dsEdit,dsInsert]then
        begin
          DM.Consensoosteoporosi_si.AsBoolean:=False;
          DM.Consensoosteoporosi_no.AsBoolean:=True;
        end;
    end;
end;

procedure TFrmConsenso.DsConsensoStateChange(Sender: TObject);
begin
  if DsConsenso.State in [dsEdit, dsInsert]then
    begin
      BtnConferma.Enabled:=True;
      btnAnnulla.Enabled:=True;
      BtnElimina.Enabled:=False;

      BtnConferma2.Enabled:=True;
      btnAnnulla2.Enabled:=True;
      BtnElimina2.Enabled:=False;

    end
  else if DsConsenso.State in [dsBrowse]then
    begin
      BtnConferma.Enabled:=False;
      btnAnnulla.Enabled:=False;
      BtnElimina.Enabled:=True;

      BtnConferma2.Enabled:=False;
      btnAnnulla2.Enabled:=False;
      BtnElimina2.Enabled:=True;
    end
end;

procedure TFrmConsenso.Notebook1PageChanged(Sender: TObject);
begin
  case Notebook1.PageIndex of
    0:DM.DSPazienti.AutoEdit:=False;
    1:DM.DSPazienti.AutoEdit:=True;
  end;
end;

end.





























































