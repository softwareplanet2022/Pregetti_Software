unit U_Anagrafiche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids,
  BaseGrid, AdvGrid, DBAdvGrid, IniFiles,  AdvOfficePager, cxControls, cxContainer, cxEdit, cxTextEdit, DB,
  FolderDialog, cxMaskEdit, cxButtonEdit, DBGrids, cyBaseDBGrid,
  cyDBAdvGrid, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, cxDBEdit,
  cxCheckBox, AdvPanel, AdvGlowButton, AdvGroupBox, cxMemo, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxColorComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxColorEdit;

type
  TFrmAnagrafiche = class(TForm)
    Label74: TLabel;
    DsUtenti: TDataSource;
    FolderDialog1: TFolderDialog;
    ColorDialog1: TColorDialog;
    AdvPanel1: TAdvPanel;
    AdvOfficePager1: TAdvOfficePager;
    PGListe: TAdvOfficePage;
    StaticText3: TStaticText;
    Notebook1: TNotebook;
    LBValoriLista: TListBox;
    suiDBNavigator1: TDBNavigator;
    Label4: TLabel;
    Label5: TLabel;
    label401: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Label30: TLabel;
    Label31: TLabel;
    EdIban: TcxTextEdit;
    EdBanca: TcxTextEdit;
    CmbSezioni: TComboBox;
    PgUtenti: TAdvOfficePage;
    PgFattElett: TAdvOfficePage;
    Label12: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    PgMail: TAdvOfficePage;
    EdCodice: TcxTextEdit;
    EdPaese: TcxTextEdit;
    EdDenominazione: TcxTextEdit;
    EdCognome: TcxTextEdit;
    EdNome: TcxTextEdit;
    EdRegFisc: TcxTextEdit;
    EdPiva: TcxTextEdit;
    EdIndirizzo: TcxTextEdit;
    EdPaese2: TcxTextEdit;
    EdCap: TcxTextEdit;
    EdComune: TcxTextEdit;
    EdProv: TcxTextEdit;
    EdNazione: TcxTextEdit;
    EdEmailSDI: TcxTextEdit;
    btnAggiungi: TAdvGlowButton;
    btnModifica: TAdvGlowButton;
    btnElimina: TAdvGlowButton;
    SbNuovo: TAdvGlowButton;
    SbModifica: TAdvGlowButton;
    SbElimina: TAdvGlowButton;
    SbAnnulla: TAdvGlowButton;
    SbOK: TAdvGlowButton;
    EdTitolare: TcxTextEdit;
    EdSedeLegale: TcxTextEdit;
    EdNellaFiguraDel: TcxTextEdit;
    EdCitta: TcxTextEdit;
    EdTelefono: TcxTextEdit;
    EdResponsabile: TcxTextEdit;
    EdEMail: TcxTextEdit;
    Label33: TLabel;
    AdvGroupBox1: TAdvGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    AdvOfficePager22: TAdvOfficePage;
    Label34: TLabel;
    EdUserName: TcxTextEdit;
    Label35: TLabel;
    EdPassword: TcxTextEdit;
    Label36: TLabel;
    EdPinCode: TcxTextEdit;
    MemoPinCodeCifrato: TcxMemo;
    MemoCFCifrato: TcxMemo;
    Label37: TLabel;
    Label38: TLabel;
    EdCFProprietario: TcxTextEdit;
    Label39: TLabel;
    AdvOfficePage1: TAdvOfficePage;
    Mem_Deb_SistemaTs_Send: TcxMemo;
    Mem_Deb_SistemaTs_EsitoInvii: TcxMemo;
    Mem_Deb_SistemaTs_RicevutePDF: TcxMemo;
    Mem_Deb_SistemaTs_DettaglioErrori: TcxMemo;
    Label28: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Mem_Prd_SistemaTs_Send: TcxMemo;
    Mem_Prd_SistemaTs_EsitoInvii: TcxMemo;
    Mem_Prd_SistemaTs_RicevutePDF: TcxMemo;
    Mem_Prd_SistemaTs_DettaglioErrori: TcxMemo;
    ChkAmbienteTest: TcxCheckBox;
    AdvGlowButton2: TAdvGlowButton;
    GridPreventivi: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    cxGridDBTableView11Descrizione: TcxGridDBColumn;
    cxGridDBTableView11Colore: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Username: TcxGridDBColumn;
    cxGridDBTableView1Password: TcxGridDBColumn;
    EdCF: TcxTextEdit;
    Label48: TLabel;
    ScrollBox1: TScrollBox;
    ChkDottori: TcxDBCheckBox;
    ChkOrderFatture: TcxCheckBox;
    ChkScadenze: TcxCheckBox;
    ChkRicalcolaScadenze: TcxCheckBox;
    ChkHide: TcxCheckBox;
    ChkStatoFatture: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    EdAllegati: TcxButtonEdit;
    Panel2: TPanel;
    EdPath: TcxButtonEdit;
    EdGiorni: TcxTextEdit;
    Panel1: TPanel;
    EdPolizza: TcxTextEdit;
    ChkBackup: TcxCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    StaticText1: TStaticText;
    EdRefresh: TcxTextEdit;
    EdPathMensili: TcxButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure suitempCmbSezioniChange(Sender: TObject);
    procedure suitempCmbSezioniSelect(Sender: TObject);
    procedure suitempbtnAggiungiClick(Sender: TObject);
    procedure suitempbtnModificaClick(Sender: TObject);
    procedure suitempbtnEliminaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DsUtentiStateChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cyDBAdvGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cyDBAdvGrid1EditButtonClick(Sender: TObject);
    procedure EdPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure btnAggiungiClick(Sender: TObject);
    procedure btnModificaClick(Sender: TObject);
    procedure btnEliminaClick(Sender: TObject);
    procedure SbNuovoClick(Sender: TObject);
    procedure SbModificaClick(Sender: TObject);
    procedure SbEliminaClick(Sender: TObject);
    procedure SbOKClick(Sender: TObject);
    procedure SbAnnullaClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvOfficePager1Changing(Sender: TObject; FromPage,
      ToPage: Integer; var AllowChange: Boolean);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure EdAllegatiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EdPathMensiliPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnagrafiche: TFrmAnagrafiche;
  ListeIni,SetIni,TSIni:TIniFile;

implementation

uses U_DM, U_Main, U_ModPag, U_SettingMail;

{$R *.dfm}

procedure TFrmAnagrafiche.FormShow(Sender: TObject);
begin
  Height:=630;
  Width:=590;
  AdvOfficePager1.ActivePageIndex:=0;
  ChkDottori.Enabled:=DM.Dottori.RecordCount>0;
end;


procedure TFrmAnagrafiche.FormCreate(Sender: TObject);
var
  BCK:String;
  Scadenze:String;
  ReScadenze:String;
  TEST:String;
  OrderFatt:String;
  HIDE:String;
  CHK:String;
begin
  ListeIni:=TIniFile.Create('.\Liste.ini');

  if not ListeIni.SectionExists('PRIVACY')then
  ListeIni.WriteString('PRIVACY','Titolare','');

  ListeIni.ReadSections(CmbSezioni.Items);
  ListeIni.ReadSection(CmbSezioni.Text,LBValoriLista.Items);

  PathAllegati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','ALLEGATI','');
  EdPath.Text:=ListeIni.ReadString('IMPOSTAZIONI VARIE','BACKUP','');
  EdPathMensili.Text:=ListeIni.ReadString('IMPOSTAZIONI VARIE','BACKUP-MENSILI','');

  Scadenze:=ListeIni.ReadString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','');
  ReScadenze:=ListeIni.ReadString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','');
  OrderFatt:=ListeIni.ReadString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','');

  EdPolizza.Text:=ListeIni.ReadString('IMPOSTAZIONI VARIE','POLIZZA','');

  BCK:=ListeIni.ReadString('IMPOSTAZIONI VARIE','AUTOBACKUP','');
  if BCK='1' then ChkBackup.Checked:=true
  else ChkBackup.Checked:=False;

  HIDE:=ListeIni.ReadString('IMPOSTAZIONI VARIE','HIDE_SALDATE','');
  if HIDE='1' then ChkHide.Checked:=true
  else ChkHide.Checked:=False;

  CHK:=ListeIni.ReadString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','');
  if CHK='1' then ChkStatoFatture.Checked:=true
  else ChkStatoFatture.Checked:=False;

  if Scadenze='1' then ChkScadenze.Checked:=true
  else ChkScadenze.Checked:=False;

  if ReScadenze='1' then ChkRicalcolaScadenze.Checked:=true
  else ChkRicalcolaScadenze.Checked:=False;

  if ReScadenze='1' then ChkRicalcolaScadenze.Checked:=true
  else ChkRicalcolaScadenze.Checked:=False;

  if OrderFatt='1' then ChkOrderFatture.Checked:=true
  else ChkOrderFatture.Checked:=False;


  EdTitolare.Text:=ListeIni.ReadString('PRIVACY','Titolare','');
  EdSedeLegale.Text:=ListeIni.ReadString('PRIVACY','SedeLegale','');
  EdCitta.Text:=ListeIni.ReadString('PRIVACY','Citta','');
  EdNellaFiguraDel.Text:=ListeIni.ReadString('PRIVACY','NellaFiguraDel','');

  EdResponsabile.Text:=ListeIni.ReadString('PRIVACY','Responsabile','');
  EdTelefono.Text:=ListeIni.ReadString('PRIVACY','Telefono','');
  EdEMail.Text:=ListeIni.ReadString('PRIVACY','Email','');

  EdBanca.Text:=ListeIni.ReadString('BANCA','BANCA_APPOGGIO','');
  EdIban.Text:=ListeIni.ReadString('BANCA','IBAN','');

  EdAllegati.Text:=PathAllegati;
  Notebook1.PageIndex:=0;

  EdGiorni.Text:=ListeIni.ReadString('IMPOSTAZIONI VARIE','GIORNI AGENDA','');
  EdRefresh.Text:=ListeIni.ReadString('IMPOSTAZIONI VARIE','AUTOREFRESH','');


  //Sezione Relaviva ai dati per la fatturazione elettronica
  try
    SetIni:=TIniFile.Create(PathEXE+'.\SET.ini');
    EdPaese.Text:=SetIni.ReadString('TRASMITTENTE','Paese','');
    EdCodice.Text:=SetIni.ReadString('TRASMITTENTE','Codice','');

    EdPaese2.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','Paese','');
    EdPiva.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','PIVA','');
    EdCF.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','CF','');

    EdDenominazione.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','DENOMINAZIONE','');
    EdCognome.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','COGNOME','');
    EdNome.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','NOME','');

    EdRegFisc.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','REGIME_FISCALE','');
    EdIndirizzo.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','INDIRIZZO','');

    EdCap.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','CAP','');
    EdComune.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','COMUNE','');

    EdProv.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','PROV','');
    EdNazione.Text:=SetIni.ReadString('CEDENTE_PRESTATORE','NAZIONE','');

    EdEmailSDI.Text:=SetIni.ReadString('INTERSCAMBIO','Email','');
  finally
    SetIni.Free;
  end;

   try
    TSIni:=TIniFile.Create(PathEXE+'.\TS.ini');

    EdUserName.Text:=TSIni.ReadString('TS','USER','');
    EdPassword.Text:=TSIni.ReadString('TS','PASSWORD','');
    EdPinCode.Text:=TSIni.ReadString('TS','PINCODE','');
    EdCFProprietario.Text:=TSIni.ReadString('TS','CF_PROPRIETARIO','');

    MemoPinCodeCifrato.Text:=TSIni.ReadString('TS','PINCODE_CIFRATO','');
    MemoCFCifrato.Text:=TSIni.ReadString('TS','CF_PROPRIETARIO_CIFRATO','');


    //Carica gli endpoin dell'ambiente Test e di Produzione
    Mem_Deb_SistemaTs_Send.Text:=TSIni.ReadString('TS','_Deb_SistemaTs_Send','');
    Mem_Deb_SistemaTs_RicevutePDF.Text:=TSIni.ReadString('TS','_Deb_SistemaTs_RicevutePDF','');
    Mem_Deb_SistemaTs_EsitoInvii.Text:=TSIni.ReadString('TS','_Deb_SistemaTs_EsitoInvii','');
    Mem_Deb_SistemaTs_DettaglioErrori.Text:=TSIni.ReadString('TS','_Deb_SistemaTs_DettaglioErrori','');

    Mem_Prd_SistemaTs_Send.Text:=TSIni.ReadString('TS','_Prd_SistemaTs_Send','');
    Mem_Prd_SistemaTs_RicevutePDF.Text:=TSIni.ReadString('TS','_Prd_SistemaTs_RicevutePDF','');
    Mem_Prd_SistemaTs_EsitoInvii.Text:=TSIni.ReadString('TS','_Prd_SistemaTs_EsitoInvii','');
    Mem_Prd_SistemaTs_DettaglioErrori.Text:=TSIni.ReadString('TS','_Prd_SistemaTs_DettaglioErrori','');

    //Ambiente_Test assume 1 se l'invio avviene in ambiente Test oppure 0 se l'invio avviene in ambiente produzione
    TEST:=TSIni.ReadString('TS','AMBIENTE_TEST','');
    if TEST='1' then ChkAmbienteTest.Checked:=true
    else ChkAmbienteTest.Checked:=False;

  finally
    TSIni.Free;
  end;



end;

procedure TFrmAnagrafiche.suitempCmbSezioniChange(Sender: TObject);
begin
  if CmbSezioni.Text='' then exit;
  ListeIni.ReadSection(CmbSezioni.Text,LBValoriLista.Items);
  btnAggiungi.Enabled:=(CmbSezioni.Text<>'SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');
  btnModifica.Enabled:=(CmbSezioni.Text<>'<SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');
  btnElimina.Enabled:=(CmbSezioni.Text<>'<SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');

  if UpperCase(CmbSezioni.Text)='IMPOSTAZIONI VARIE' then Notebook1.PageIndex:=1
  else if UpperCase(CmbSezioni.Text)='STATI LAVORAZIONE' then Notebook1.PageIndex:=2
  else if UpperCase(CmbSezioni.Text)='PRIVACY' then Notebook1.PageIndex:=3
  else if UpperCase(CmbSezioni.Text)='BANCA' then Notebook1.PageIndex:=4
  else Notebook1.PageIndex:=0;
end;

procedure TFrmAnagrafiche.suitempCmbSezioniSelect(Sender: TObject);
begin
 if CmbSezioni.Text='' then exit;
  ListeIni.ReadSection(CmbSezioni.Text,LBValoriLista.Items);
  btnAggiungi.Enabled:=(CmbSezioni.Text<>'<SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');
  btnModifica.Enabled:=(CmbSezioni.Text<>'<SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');
  btnElimina.Enabled:=(CmbSezioni.Text<>'<SELEZIONA UNA TIPOLOGIA DI LISTA')and(CmbSezioni.Text<>'');

  if UpperCase(CmbSezioni.Text)='IMPOSTAZIONI VARIE' then Notebook1.PageIndex:=1
  else if UpperCase(CmbSezioni.Text)='STATI LAVORAZIONE' then Notebook1.PageIndex:=2
  else if UpperCase(CmbSezioni.Text)='PRIVACY' then Notebook1.PageIndex:=3
  else if UpperCase(CmbSezioni.Text)='BANCA' then Notebook1.PageIndex:=4
  else Notebook1.PageIndex:=0;
end;


procedure TFrmAnagrafiche.suitempbtnAggiungiClick(Sender: TObject);
var
  InputString: string;
begin
  InputString:= InputBox('Aggiungi Valori in Lista', 'Valore', 'Valore');
  if (InputString<>'')and(LBValoriLista.Items.IndexOf(InputString)=-1)then
    begin
      LBValoriLista.Items.Add(UpperCase(InputString));
      ListeIni.WriteString(CmbSezioni.Text,UpperCase(InputString),'');
    end;
end;

procedure TFrmAnagrafiche.suitempbtnModificaClick(Sender: TObject);
var
  InputString: string;
begin
  if LBValoriLista.ItemIndex<>-1 then
    begin
      InputString:=InputBox('Modifica Valori in Lista', 'Valore',Uppercase(LBValoriLista.Items[LBValoriLista.ItemIndex]));
      if (InputString<>'')then
        begin
          ListeIni.DeleteKey(CmbSezioni.Text,LBValoriLista.Items[LBValoriLista.ItemIndex]);
          LBValoriLista.Items.Delete(LBValoriLista.ItemIndex);

          LBValoriLista.Items.Add(UpperCase(InputString));
          ListeIni.WriteString(CmbSezioni.Text,UpperCase(InputString),'');
        end;
    end;
end;

procedure TFrmAnagrafiche.suitempbtnEliminaClick(Sender: TObject);
begin
  if LBValoriLista.ItemIndex<>-1 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare la voce: '+#13+
                                      Uppercase(LBValoriLista.Items[LBValoriLista.ItemIndex])+#13+
                                      'dalla lista "'+CmbSezioni.Text+'?'),'Conferma Cancellazione',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        begin
          ListeIni.DeleteKey(CmbSezioni.Text,LBValoriLista.Items[LBValoriLista.ItemIndex]);
          LBValoriLista.Items.Delete(LBValoriLista.ItemIndex);
        end;
    end;
end;

procedure TFrmAnagrafiche.FormClose(Sender: TObject; var Action: TCloseAction);
var
  BCK:Integer;
  GG:Integer;
  SS:Integer;
begin
  if (DM.Impostazioni.State in [dsEdit]) then DM.Impostazioni.Post;

  if EdAllegati.Text<>'' then
    begin
      ListeIni.WriteString('IMPOSTAZIONI VARIE','ALLEGATI',EdAllegati.Text);
      if not DirectoryExists(EdAllegati.Text)then ForceDirectories(EdAllegati.Text);
    end;

  if EdPath.Text<>'' then
    begin
      ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP',EdPath.Text);
      PathBackup:=EdPath.Text;
      if not DirectoryExists(PathBackup)then ForceDirectories(PathBackup);
    end;

  if EdPathMensili.Text<>'' then
    begin
      ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP-MENSILI',EdPathMensili.Text);
      PathBackupMensile:=EdPathMensili.Text;
      if not DirectoryExists(PathBackupMensile)then ForceDirectories(PathBackupMensile);
    end;


      if ChkBackup.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOBACKUP','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOBACKUP','0');
      AutoBackup:=ChkBackup.Checked;

      if ChkScadenze.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','0');

      if ChkRicalcolaScadenze.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','0');

      if ChkOrderFatture.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','0');

      if ChkHide.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','HIDE_SALDATE','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','HIDE_SALDATE','0');
      Hide_Scadenze:=ChkHide.Checked;
      FrmMain.cxGridDBTableView15Saldato.Visible:= not Hide_Scadenze;

      if ChkStatoFatture.Checked then ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','1')
      else ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','0');
      Check_Stato_Fattura:=ChkStatoFatture.Checked;

      ListeIni.WriteString('PRIVACY','Titolare',EdTitolare.Text);
      ListeIni.WriteString('PRIVACY','SedeLegale',EdSedeLegale.Text);
      ListeIni.WriteString('PRIVACY','Citta',EdCitta.Text);
      ListeIni.WriteString('PRIVACY','NellaFiguraDel',EdNellaFiguraDel.Text);

      ListeIni.WriteString('PRIVACY','Responsabile',EdResponsabile.Text);
      ListeIni.WriteString('PRIVACY','Telefono',EdTelefono.Text);
      ListeIni.WriteString('PRIVACY','Email',EdEMail.Text);

      ListeIni.WriteString('BANCA','BANCA_APPOGGIO',EdBanca.Text);
      ListeIni.WriteString('BANCA','IBAN',EdIban.Text);

  if EdGiorni.Text<>'' then
    try
      GG:=StrToInt(EdGiorni.Text);
      ListeIni.WriteString('IMPOSTAZIONI VARIE','GIORNI AGENDA',EdGiorni.Text);
    except
      Application.MessageBox(PChar('Attenzione!'+#13+
                                   'Controllare la sezione IMPOSTAZIONI VARIE'+#13+
                                   'Semprerebbe che sia stato inserito un numero di giorni non valido nella sezione '+
                                   'visualizzazione del planner appuntamenti'),'AGENDA APPUNTAMENTI',MB_OK+MB_ICONWARNING);
    end;


  if EdRefresh.Text<>'' then
    try
      SS:=StrToInt(EdRefresh.Text);
      ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOREFRESH',EdRefresh.Text);
    except
      Application.MessageBox(PChar('Attenzione!'+#13+
                                   'Controllare la sezione IMPOSTAZIONI VARIE'+#13+
                                   'Semprerebbe che sia stato inserito un numero di secondi non valido nella sezione '+
                                   'relativa al refresh delle tabelle Pazienti-Cartelle'),'Refresh Archivio Pazienti',MB_OK+MB_ICONWARNING);
      ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOREFRESH','');
    end;

  if EdPolizza.Text<>'' then
     ListeIni.WriteString('IMPOSTAZIONI VARIE','POLIZZA',EdPolizza.Text);

  if ListeIni.ReadString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','')='1' then Ricalcola_Scadenze:=True
  else Ricalcola_Scadenze:=False;


  //sezione realativa ai parmentri per la fatturazione elettronica
  ListeIni:=TIniFile.Create('.\Liste.ini');
  ListeIni.Free;

  try
    SetIni:=TIniFile.Create(PathEXE+'.\SET.ini');
    SetIni.WriteString('TRASMITTENTE','Paese',EdPaese.Text);
    SetIni.WriteString('TRASMITTENTE','Codice',EdCodice.Text);
    SetIni.ReadString('CEDENTE_PRESTATORE','Paese',EdPaese2.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','PIVA',EdPiva.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','CF',EdCF.Text);

    SetIni.WriteString('CEDENTE_PRESTATORE','DENOMINAZIONE',EdDenominazione.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','COGNOME',EdCognome.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','NOME',EdNome.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','REGIME_FISCALE',EdRegFisc.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','INDIRIZZO',EdIndirizzo.Text);

    SetIni.WriteString('CEDENTE_PRESTATORE','CAP',EdCap.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','COMUNE',EdComune.Text);

    SetIni.WriteString('CEDENTE_PRESTATORE','PROV',EdProv.Text);
    SetIni.WriteString('CEDENTE_PRESTATORE','NAZIONE',EdNazione.Text);

    SetIni.WriteString('INTERSCAMBIO','Email',EdEmailSDI.Text);
  finally
    SetIni.Free;
  end;

  //SALVA LE IMPOSTAZIONI RELATIVE AL SISTEMA TESSERA SANITARIA

  try
    TSIni:=TIniFile.Create(PathEXE+'.\TS.ini');
    TSIni.WriteString('TS','USER',EdUserName.Text);
    TSIni.WriteString('TS','PASSWORD',EdPassword.Text);
    TSIni.WriteString('TS','PINCODE',EdPinCode.Text);
    TSIni.WriteString('TS','CF_PROPRIETARIO',EdCFProprietario.Text);
    TSIni.WriteString('TS','PINCODE_CIFRATO',MemoPinCodeCifrato.Text);
    TSIni.WriteString('TS','CF_PROPRIETARIO_CIFRATO',MemoCFCifrato.Text);

    //Salva gli endpoin dell'ambiente Test
    TSIni.WriteString('TS','_Deb_SistemaTs_Send',Mem_Deb_SistemaTs_Send.Text);
    TSIni.WriteString('TS','_Deb_SistemaTs_RicevutePDF',Mem_Deb_SistemaTs_RicevutePDF.Text);
    TSIni.WriteString('TS','_Deb_SistemaTs_EsitoInvii',Mem_Deb_SistemaTs_EsitoInvii.Text);
    TSIni.WriteString('TS','_Deb_SistemaTs_DettaglioErrori',Mem_Deb_SistemaTs_DettaglioErrori.Text);

    //Salva gli endpoin dell'ambiente Test
    TSIni.WriteString('TS','_Prd_SistemaTs_Send',Mem_Prd_SistemaTs_Send.Text);
    TSIni.WriteString('TS','_Prd_SistemaTs_RicevutePDF',Mem_Prd_SistemaTs_RicevutePDF.Text);
    TSIni.WriteString('TS','_Prd_SistemaTs_EsitoInvii',Mem_Prd_SistemaTs_EsitoInvii.Text);
    TSIni.WriteString('TS','_Prd_SistemaTs_DettaglioErrori',Mem_Prd_SistemaTs_DettaglioErrori.Text);

    if ChkAmbienteTest.Checked then TSIni.WriteString('TS','AMBIENTE_TEST','1')
    else TSIni.WriteString('TS','AMBIENTE_TEST','0');

  finally
    TSIni.Free;
  end;


  if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
       DM.DBDaySource1.Day:=Now;
       FrmMain.DBDaySource1.Day:=Now;
       FrmMain.Planner.ItemSource:=nil;
       FrmMain.DBPlanner1.ItemSource:=FrmMain.DBDaySource1;
       FrmMain.AdvOfficePager81.TabVisible:=False;
       FrmMain.AdvOfficePager82.TabVisible:=False;
       FrmMain.PagerAgenda.ActivePageIndex:=1;
       FrmMain.UpdateHeadersByDoctor;
    end
  else
    begin
      DM.DBDaySource1.Day:=Now;
      FrmMain.DBDaySource1.Day:=Now;
      FrmMain.Planner.ItemSource:=DM.DBDaySource1;
      FrmMain.DBPlanner1.ItemSource:=nil;
      FrmMain.AdvOfficePager81.TabVisible:=False;
      FrmMain.AdvOfficePager82.TabVisible:=False;
      FrmMain.PagerAgenda.ActivePageIndex:=0;
    end;
end;


procedure TFrmAnagrafiche.suiDBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button=nbDelete then
    begin
      if UpperCase(DM.UtentiUsername.AsString)='ADMIN' then
        begin
          Application.MessageBox(PChar('Attenzione!'+#13+
                                       'Per il corretto funzionamento del programma l''utente ADMIN non può essere eliminato'),
                                       'Utenti e Password',MB_OK+MB_ICONWARNING);
        end;
    end;
end;

procedure TFrmAnagrafiche.DsUtentiStateChange(Sender: TObject);
begin
  case DsUtenti.State of
    dsEdit,
    dsInsert:begin
               SbNuovo.Enabled:=False;
               SbModifica.Enabled:=False;
               SbElimina.Enabled:=False;
               SbOK.Enabled:=True;
               SbAnnulla.Enabled:=True;
             end;
    dsBrowse:begin
               SbNuovo.Enabled:=True;
               SbModifica.Enabled:=True;
               SbElimina.Enabled:=True;
               SbOK.Enabled:=False;
               SbAnnulla.Enabled:=False;
             end;
  end;
end;

procedure TFrmAnagrafiche.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FolderDialog1.Execute then EdAllegati.Text:=FolderDialog1.Directory
end;

procedure TFrmAnagrafiche.cyDBAdvGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TcyDBAdvGrid).Canvas do
    begin
      if (State=[gdSelected])or(State=[gdSelected..gdFocused]) then exit
      else
        begin
          if DataCol=0 then
            begin
              Brush.Color:=clWhite;
              Font.Color:=DM.StatiColore.AsInteger;
              Font.Style:=[fsBold];
              FillRect(Rect);
              TextOut(Rect.Left+2,Rect.Top+3,Column.Field.AsString);
            end;
        end;
   end;
end;

procedure TFrmAnagrafiche.cyDBAdvGrid1EditButtonClick(Sender: TObject);
begin
  if ColorDialog1.Execute then
    begin
      if not(DM.Stati.State in [dsEdit,dsInsert]) then DM.Stati.Edit;
      DM.StatiColore.AsInteger:=ColorDialog1.Color;
      if (DM.Stati.State in [dsEdit,dsInsert]) then DM.Stati.Post;
    end;
end;

procedure TFrmAnagrafiche.EdAllegatiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if FolderDialog1.Execute then EdAllegati.Text:=FolderDialog1.Directory;
end;

procedure TFrmAnagrafiche.EdPathMensiliPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if FolderDialog1.Execute then EdPathMensili.Text:=FolderDialog1.Directory;
end;

procedure TFrmAnagrafiche.EdPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {if not DirectoryExists(PathEXE+'BACKUP-ORAL-DB')then CreateDir(PathEXE+'BACKUP-ORAL-DB');
  FolderDialog1.Directory:=ExtractFilePath(Application.ExeName)+'BACKUP-ORAL-DB';}
  if FolderDialog1.Execute then EdPath.Text:=FolderDialog1.Directory;
end;

procedure TFrmAnagrafiche.suitempsuiButton2Click(Sender: TObject);
begin
  try
     Application.CreateForm(TFrmModPag,FrmModPag);
     FrmModPag.ShowModal;
   finally
     FrmModPag.Free;
   end;
end;

procedure TFrmAnagrafiche.AdvGlowButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSetting, FrmSetting);
    FrmSetting.ShowModal;
  finally
    FrmSetting.Free;
  end;
end;


procedure TFrmAnagrafiche.AdvOfficePager1Changing(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
var
  PSW:String;
begin
  //Richiede Nome Utente e Password Prima di chiudere l'Accettazione
  if ToPage=3 then
  begin
    PSW:=Inputbox('Password','Digita la password di amministrazione','');
    if PSW='' then
      begin
        Application.MessageBox('Digitare una password valida','Password di Amministrazione',MB_OK+MB_ICONWARNING);
         AllowChange:=False;
      end;
    if PSW<>'' then
      if (UpperCase(PSW)='ADMIN123')or(UpperCase(PSW)=UpperCase('RZZLLD'))then AllowChange:=True
      else
        begin
          Application.MessageBox('Digitare una password valida','Password di Amministrazione',MB_OK+MB_ICONWARNING);
          AllowChange:=False;
        end;
  end;
end;

procedure TFrmAnagrafiche.btnAggiungiClick(Sender: TObject);
var
  InputStr: String;
begin
  InputStr:='';
  if InputQuery('Aggiungi Valori in Lista', 'Valore:', InputStr) then
    begin
      LBValoriLista.Items.Add(UpperCase(InputStr));
      ListeIni.WriteString(CmbSezioni.Text,UpperCase(InputStr),'');
    end;
end;

procedure TFrmAnagrafiche.btnModificaClick(Sender: TObject);
var
  InputStr: String;
begin
  if LBValoriLista.ItemIndex<>-1 then
    begin
      InputStr:=Uppercase(LBValoriLista.Items[LBValoriLista.ItemIndex]);
      if InputQuery('Modifica Valori in Lista', 'Valore:', InputStr) then
        begin
          ListeIni.DeleteKey(CmbSezioni.Text,LBValoriLista.Items[LBValoriLista.ItemIndex]);
          LBValoriLista.Items.Delete(LBValoriLista.ItemIndex);
          LBValoriLista.Items.Add(UpperCase(InputStr));
          ListeIni.WriteString(CmbSezioni.Text,UpperCase(InputStr),'');
        end;
    end;

end;

procedure TFrmAnagrafiche.btnEliminaClick(Sender: TObject);
begin
   if LBValoriLista.ItemIndex<>-1 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare la voce: '+#13+
                                      Uppercase(LBValoriLista.Items[LBValoriLista.ItemIndex])+#13+
                                      'dalla lista "'+CmbSezioni.Text+'?'),'Conferma Cancellazione',
                                      MB_YesNo+MB_IconWarning)=Id_Yes then
        begin
          ListeIni.DeleteKey(CmbSezioni.Text,LBValoriLista.Items[LBValoriLista.ItemIndex]);
          LBValoriLista.Items.Delete(LBValoriLista.ItemIndex);
        end;
    end;
end;

procedure TFrmAnagrafiche.SbNuovoClick(Sender: TObject);
begin
  if not(DM.Utenti.State in [dsEdit,dsInsert])then DM.Utenti.Insert;
  SbNuovo.Enabled:=False;
  SbModifica.Enabled:=False;
  SbElimina.Enabled:=False;
  SbOK.Enabled:=True;
  SbOK.Font.Color:=clGreen;
  SbAnnulla.Enabled:=True;
  SbAnnulla.Font.Color:=clRed;
end;

procedure TFrmAnagrafiche.SbModificaClick(Sender: TObject);
begin
  if Uppercase(DM.UtentiUsername.AsString)='ADMIN' then
    begin
      Application.MessageBox(PChar('Attenzione!!!'+#13+#13+
                                   'Per salvaguardare le funzionalità del software l''Utente "ADMIN" non può essere modificato'),
                                   'Modifica Utente',MB_OK+MB_ICONWARNING);
      if (DM.Utenti.State in [dsEdit,dsInsert])then DM.Utenti.Cancel;
      Exit;
    end
  else
    begin
      if not(DM.Utenti.State in [dsEdit,dsInsert])then DM.Utenti.Edit;
      SbNuovo.Enabled:=False;
      SbModifica.Enabled:=False;
      SbElimina.Enabled:=False;
      SbOK.Enabled:=True;
      SbOK.Font.Color:=clGreen;
      SbAnnulla.Enabled:=True;
      SbAnnulla.Font.Color:=clRed;
    end;
end;

procedure TFrmAnagrafiche.SbEliminaClick(Sender: TObject);
begin
  if Uppercase(DM.UtentiUsername.AsString)='ADMIN' then
    begin
      Application.MessageBox(PChar('Attenzione!!!'+#13+#13+
                                   'Per salvaguardare le funzionalità del software l''Utente "ADMIN" non può essere eliminato'),
                                   'Elimina Utente',MB_OK+MB_ICONWARNING);
    end
  else
    begin
      if Application.MessageBox(PChar('Si desidera eliminare l''Utente: '+#13+#13+
                                      Uppercase(DM.UtentiUsername.AsString)+'?'),'Elimina Utente',MB_YesNo+MB_ICONQUESTION)=Id_Yes then DM.Utenti.Delete
      else Exit;
    end;
end;

procedure TFrmAnagrafiche.SbOKClick(Sender: TObject);
begin
  if (DM.Utenti.State in [dsEdit,dsInsert])then DM.Utenti.Post;
  SbNuovo.Enabled:=True;
  SbModifica.Enabled:=True;
  SbElimina.Enabled:=True;
  SbOK.Enabled:=False;
  SbAnnulla.Enabled:=False;
end;

procedure TFrmAnagrafiche.SbAnnullaClick(Sender: TObject);
begin
  if (DM.Utenti.State in [dsEdit,dsInsert])then DM.Utenti.Cancel;
  SbNuovo.Enabled:=True;
  SbModifica.Enabled:=True;
  SbElimina.Enabled:=True;
  SbOK.Enabled:=False;
  SbAnnulla.Enabled:=False;
end;

procedure TFrmAnagrafiche.AdvGlowButton1Click(Sender: TObject);
begin
  if (DM.Impostazioni.State in [dsEdit]) then DM.Impostazioni.Post;
end;

end.
