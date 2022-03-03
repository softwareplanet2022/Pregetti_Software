unit U_TS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, Data.DB, Bde.DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS, AdvPanel, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, IniFiles,
  dxSkinsDefaultPainters, AdvGlowButton, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, AdvGroupBox, RxMemDS, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, DateUtils,
  cxGridExportLink, ShellAPI, cxGrid, Vcl.DBGrids, cxMemo, Vcl.DBCtrls, cxDBEdit, System.Zip,
  Soap.EncdDecd, Soap.SOAPHTTPTrans, System.Types, Winapi.WinInet, Soap.SOAPHTTPClient,
  Vcl.Menus, Vcl.Shell.ShellCtrls, AdvOfficePager, JvExControls,
  cxButtonEdit, AdvGridCSVPager, cxCheckBox, TlHelp32, JvGradientHeaderPanel;

type
  TFrmTS = class(TForm)
    DSFatture: TDataSource;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Fatture: TMyTable;
    FattureAnno: TFloatField;
    FattureNumFattura: TFloatField;
    FattureId_Fattura: TAutoIncField;
    FattureCod_Paziente: TFloatField;
    FattureModalitaPagamento: TStringField;
    FattureData: TDateField;
    FattureNote: TMemoField;
    FattureAliquotaIVA: TFloatField;
    FattureAliquotaRitenuta: TFloatField;
    FattureImponibile: TCurrencyField;
    FattureImportoSconto: TCurrencyField;
    FattureImportoBolli: TCurrencyField;
    FattureRagioneSociale: TStringField;
    FattureIndirizzo: TStringField;
    FattureCap: TStringField;
    FattureCitta: TStringField;
    FattureProv: TStringField;
    FattureCodFisc: TStringField;
    FatturePartitaIVA: TStringField;
    FattureBanca: TMemoField;
    FattureNumPreventivo: TStringField;
    FattureCODICENAZIONE: TStringField;
    FattureCAUSALE: TStringField;
    FattureESIGIBILITA_IVA: TStringField;
    FattureCOD_COND_PAGAM: TStringField;
    FattureCOD_MOD_PAGAM: TStringField;
    FattureBANCA_APPOGGIO: TStringField;
    FattureIBAN_APPOGGIO: TStringField;
    FattureCOD_PAGAMENTO: TStringField;
    FattureID_MODPAG: TFloatField;
    FattureCOGNOME_QUIETANZANTE: TStringField;
    FattureNOME_QUIETANZANTE: TStringField;
    FattureCF_QUIETANZANTE: TStringField;
    FattureCalcTotaleFattura: TCurrencyField;
    FattureCalcImponibileNetto: TCurrencyField;
    FattureCalcImportoIva: TCurrencyField;
    FattureCalcImportoRitenuta: TCurrencyField;
    MEM: TRxMemoryData;
    DsMEM: TDataSource;
    MEMCF: TStringField;
    MEMDATA: TStringField;
    MEMNUM_FATTURA: TIntegerField;
    MEMCODICE_SPESA: TStringField;
    MEMCODICE_INTRAMENIA: TStringField;
    MEMTIPO_OPERAZIONE: TStringField;
    MEMTIPOLOGIA_PAGAMENTO: TStringField;
    BtnEsci: TAdvGlowButton;
    QryFatture: TMyQuery;
    DsQryFatture: TDataSource;
    MEMIMPORTO: TCurrencyField;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    MEMNATURA_IVA: TStringField;
    MEMALIQUOTA_IVA: TIntegerField;
    MEMACCETTAZIONE_INVIO: TStringField;
    MEMTEXT_ERRORE: TStringField;
    MEMDATA_PAGAMENTO: TStringField;
    MemErrori: TRxMemoryData;
    DsMemErrori: TDataSource;
    MEMCHECK: TStringField;
    cxStyle15: TcxStyle;
    MEMId_Fattura: TIntegerField;
    MEMCF_CIFRATO: TStringField;
    REPORT_INVII: TMyTable;
    REPORT_INVIIID_INVIO: TAutoIncField;
    REPORT_INVIIPROTOCOLLO: TStringField;
    REPORT_INVIIDATA_ACCOGLIENZA: TStringField;
    REPORT_INVIINOME_FILE_ALLEGATO: TStringField;
    REPORT_INVIIDIMENSIONE_FILE_ALLEGATO: TStringField;
    REPORT_INVIICODICE_ESITO: TStringField;
    REPORT_INVIIDESCRIZIONE_ESITO: TStringField;
    REPORT_INVIIID_ERRORE: TStringField;
    DsREPORT_INVII: TDataSource;
    AdvGlowButton3: TAdvGlowButton;
    DETTAGLI: TMyTable;
    DsDETTAGLI: TDataSource;
    DETTAGLIId_Dettaglio: TAutoIncField;
    DETTAGLIId_Fattura: TFloatField;
    DETTAGLIQta: TFloatField;
    DETTAGLIDescrizione: TStringField;
    DETTAGLIPrezzoUnitario: TCurrencyField;
    DETTAGLISconto: TFloatField;
    DETTAGLIAliquotaIva: TFloatField;
    DETTAGLINATURA_IVA: TStringField;
    DETTAGLITIPO_SPESA: TStringField;
    DETTAGLICalcImporto: TCurrencyField;
    DETTAGLICalcImportoSconto: TCurrencyField;
    DETTAGLICalcImportoScontato: TCurrencyField;
    DETTAGLICalcImportoIva: TCurrencyField;
    DETTAGLICalcImpScontatoIvato: TCurrencyField;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    EseguiControlloCodiciFiscali1: TMenuItem;
    EseguiControlloCompleto1: TMenuItem;
    N1: TMenuItem;
    GeneraFileTS1: TMenuItem;
    SistemaTS1: TMenuItem;
    GeneraFileeinviaalSistemaTS1: TMenuItem;
    N2: TMenuItem;
    OrrieniRicevutaUltimoInvio1: TMenuItem;
    MostraUltimoerrorediinvio1: TMenuItem;
    Uscita1: TMenuItem;
    ChiudiFinestra1: TMenuItem;
    QryFattureNumFattura: TFloatField;
    QryFattureData: TDateField;
    QryFattureCodFisc: TStringField;
    QryFatturePartitaIVA: TStringField;
    QryFattureRagioneSociale: TStringField;
    QryFattureId_Fattura: TIntegerField;
    QryFatturePAGAMENTO_TRACCIATO: TBooleanField;
    QryFatturePAGATA: TBooleanField;
    QryFattureDATA_PAGAMENTO: TDateField;
    QryFattureACCETTAZIONE_INVIO: TBooleanField;
    QryFattureAnno: TFloatField;
    QryFattureImponibile: TCurrencyField;
    MAIN_PAGERS: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdDataInizio: TcxDateEdit;
    EdDataFine: TcxDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    Memo1: TMemo;
    LV_ZIP: TShellListView;
    Button1: TButton;
    btRicevutePDFInvii: TButton;
    Button2: TButton;
    Label4: TLabel;
    LV_PDF: TShellListView;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    LV_ERRORI: TShellListView;
    Label7: TLabel;
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    JvGradientHeaderPanel2: TJvGradientHeaderPanel;
    JvGradientHeaderPanel3: TJvGradientHeaderPanel;
    UpdateFatture1: TMenuItem;
    PopEdit: TPopupMenu;
    ModificaDatiMancanti1: TMenuItem;
    Fatturepagamento_tracciato: TBooleanField;
    Fatturepagata: TBooleanField;
    Fatturedata_pagamento: TDateField;
    Fatturenatura_iva: TStringField;
    Fattureaccettazione_invio: TBooleanField;
    Fattureimporto_iva: TFloatField;
    AdvOfficePage1: TAdvOfficePage;
    AdvGridCSVPager1: TAdvGridCSVPager;
    MemCSV_Errori: TRxMemoryData;
    DsMemCSV_Errori: TDataSource;
    MemCSV_ErroriCF_PROPRIETARIO: TStringField;
    MemCSV_ErroriPARTITA_IVA: TStringField;
    MemCSV_ErroriDATA_EMISSIONE: TStringField;
    MemCSV_ErroriDOC_FISC_DISP: TStringField;
    MemCSV_ErroriDOC_FISC_NUM: TStringField;
    MemCSV_ErroriCODICE_ERRORE: TStringField;
    MemCSV_ErroriDESCRIZIONE_ERRORE: TStringField;
    CSVGrid: TAdvStringGrid;
    FattureData_Invio_TS: TDateField;
    FattureEsito_Invio_TS: TBooleanField;
    FattureErrore_Invio_TS: TStringField;
    QryFattureData_Invio_TS: TDateField;
    QryFattureEsito_Invio_TS: TBooleanField;
    QryFattureErrore_Invio_TS: TStringField;
    MemCSV_ErroriPROTOCOLLO: TStringField;
    ChkNonInviate: TcxCheckBox;
    MemErroriID_FATTURA: TIntegerField;
    MemErroriID_PAZIENTE: TIntegerField;
    MemErroriDATA_DATTURA: TStringField;
    MemErroriERRORE: TStringField;
    QryFattureCod_Paziente: TFloatField;
    MemErroriNUM_FATTURA: TIntegerField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Anno: TcxGridDBColumn;
    cxGrid2DBTableView1NumFattura: TcxGridDBColumn;
    cxGrid2DBTableView1Data: TcxGridDBColumn;
    cxGrid2DBTableView1RagioneSociale: TcxGridDBColumn;
    cxGrid2DBTableView1CodFisc: TcxGridDBColumn;
    cxGrid2DBTableView1Imponibile: TcxGridDBColumn;
    cxGrid2DBTableView1PAGAMENTO_TRACCIATO: TcxGridDBColumn;
    cxGrid2DBTableView1PAGATA: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_PAGAMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1ACCETTAZIONE_INVIO: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2Qta: TcxGridDBColumn;
    cxGrid2DBTableView2Descrizione: TcxGridDBColumn;
    cxGrid2DBTableView2PrezzoUnitario: TcxGridDBColumn;
    cxGrid2DBTableView2Sconto: TcxGridDBColumn;
    cxGrid2DBTableView2AliquotaIva: TcxGridDBColumn;
    cxGrid2DBTableView2NATURA_IVA: TcxGridDBColumn;
    cxGrid2DBTableView2TIPO_SPESA: TcxGridDBColumn;
    cxGrid2DBTableView2CalcImpScontatoIvato: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    QryFattureimportobolli: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_INVIO: TcxGridDBColumn;
    cxGrid1DBTableView1PROTOCOLLO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ACCOGLIENZA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_FILE_ALLEGATO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIZIONE_ESITO: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1PROTOCOLLO: TcxGridDBColumn;
    cxGridDBTableView1CF_PROPRIETARIO: TcxGridDBColumn;
    cxGridDBTableView1PARTITA_IVA: TcxGridDBColumn;
    cxGridDBTableView1DATA_EMISSIONE: TcxGridDBColumn;
    cxGridDBTableView1DOC_FISC_NUM: TcxGridDBColumn;
    cxGridDBTableView1CODICE_ERRORE: TcxGridDBColumn;
    cxGridDBTableView1DESCRIZIONE_ERRORE: TcxGridDBColumn;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FattureCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnEsciClick(Sender: TObject);
    function ControllaCF(cf:String):String;
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DETTAGLICalcFields(DataSet: TDataSet);
    procedure btRicevutePDFInviiClick(Sender: TObject);
    procedure ChiudiFinestra1Click(Sender: TObject);
    procedure GeneraFileTS1Click(Sender: TObject);
    procedure GeneraFileeinviaalSistemaTS1Click(Sender: TObject);
    procedure OrrieniRicevutaUltimoInvio1Click(Sender: TObject);
    procedure MostraUltimoerrorediinvio1Click(Sender: TObject);
    procedure EseguiControlloCodiciFiscali1Click(Sender: TObject);
    procedure EseguiControlloCompleto1Click(Sender: TObject);
    procedure MAIN_PAGERSChange(Sender: TObject);
    procedure UpdateFatture1Click(Sender: TObject);
    procedure MyConnection1BeforeConnect(Sender: TObject);
    procedure ModificaDatiMancanti1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ChkNonInviateClick(Sender: TObject);
    procedure dettaglioErroriInvio(Protocollo: String; TargetTest: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure SendToSistemaTs(FileIni: string; TargetTest: boolean);
    procedure Get_RicevutePDF(Protocollo: String; TargetTest: Boolean);

    procedure DoHTTPRIOHTTPWebNodeBeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    function ReadFileToSend(FileZip: String): string;
    function StringToByteArray(const Str: string): TByteDynArray;
    function convertStringToTByteDynArray(data: string): TByteDynArray;
    function ByteStreamToByteArray(const FileName: TFileName): TByteDynArray;
    procedure SaveBytesToFile(const Data: TByteDynArray;
      const FileName: string);
    procedure CreaFileXML(Sender: TObject);
    procedure MostraErroriUltimoInvio(Sender: TObject);
    procedure GetSpese(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTS: TFrmTS;
  CF_CIFRATO:String;
  PINCODE_CIFRATO:String;
  PARTITA_IVA:String;
  CF_PROPRIETARIO_CIFRATO:String;
  Esito:Integer;
  TS_TEST:Boolean;


  TTecnoString:AnsiString;
  FUserName: String;
  FPassWord: String;
  PathEXE:String;

  resourcestring
    _Deb_SistemaTs_Send = 'https://invioss730ptest.sanita.finanze.it/InvioTelematicoSS730pMtomWeb/InvioTelematicoSS730pMtomPort';
    _Prd_SistemaTs_Send = 'https://invioss730p.sanita.finanze.it/InvioTelematicoSS730pMtomWeb/InvioTelematicoSS730pMtomPort';

    _Deb_SistemaTs_EsitoInvii = 'https://invioSS730pTest.sanita.finanze.it/EsitoStatoInviiWEB/EsitoInvioDatiSpesa730Service';
    _Prd_SistemaTs_EsitoInvii = 'https://invioSS730p.sanita.finanze.it/EsitoStatoInviiWEB/EsitoInvioDatiSpesa730Service';


    _Deb_SistemaTs_RicevutePDF = 'https://invioSS730pTest.sanita.finanze.it/Ricevute730ServiceWeb/ricevutePdf';
    _Prd_SistemaTs_RicevutePDF = 'https://invioSS730p.sanita.finanze.it/Ricevute730ServiceWeb/ricevutePdf';

    _Deb_SistemaTs_DettaglioErrori = 'https://invioSS730pTest.sanita.finanze.it/EsitoStatoInviiWEB/DettaglioErrori730Service';
    _Prd_SistemaTs_DettaglioErrori = 'https://invioSS730p.sanita.finanze.it/EsitoStatoInviiWEB/DettaglioErrori730Service';


implementation

{$R *.dfm}

uses DettaglioErrori730Service, DettaglioSegnalazione730Service,
  EsitoInvioDatiSpesa730Service, InterrogazionePuntuale730Service,
  InvioTelematicoSpeseSanitarie730p, ReportMensile730Service,
  ReportSegnalazioni730Service, RicevutaPdf730Service, U_UpdFatt, U_Edit, U_CF,
  U_DM, U_Main;


function TFrmTS.StringToByteArray(const Str: string): TByteDynArray;
var
  MSTream: TMemoryStream;
  pTemp: pointer;
begin
  MStream := TMemoryStream.Create;
  MStream.Write(str,length(str));
  MStream.Position := 0;

  SetLength(Result, MStream.Size);
  pTemp := @Result[0];
  MStream.Position := 0;
  MStream.Read(pTemp^, MStream.Size);

  MStream.Free;
end;



procedure TFrmTS.UpdateFatture1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmUpdFatture,FrmUpdFatture);
    FrmUpdFatture.ShowModal;
  finally
    FrmUpdFatture.Free;
  end;
end;

function TFrmTS.ReadFileToSend( FileZip: String ): string;
var
  StringStream: TStringStream;
  FileStream : TFileStream;
  Bytes: TBytes;
  FileData: string;
begin
  { --- Apertura Stream su File --- }
  FileStream:=TFileStream.Create(FileZip,fmOpenRead );

  { --- Stream Stringa di Destinazione --- }
  StringStream:=TStringStream.Create( '' );

  try
    { --- Copia Stream --- }
    StringStream.CopyFrom(FileStream,FileStream.Size);

    { --- Lettura file su Stringa --- }
    FileData:=StringStream.DataString;
  finally
    StringStream.Free;
    FileStream.Free;
end;
  { --- Risultato --- }
  Result := FileData;
end;


procedure TFrmTS.DoHTTPRIOHTTPWebNodeBeforePost( const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  S:string;
begin
  { --- Compone testo per Credenziali --- }
  //S := 'Authorization: Basic ' + EncodeString('PROVAX00X00X000Y'+ ':' +'Salve123');

  S := 'Authorization: Basic ' + EncodeString(FUserName+':'+FPassWord);
  { --- Inserisce Credenziali --- }
  HttpAddRequestHeaders( Data, PChar(S), Length(S), HTTP_ADDREQ_FLAG_ADD );
end;



procedure TFrmTS.EseguiControlloCodiciFiscali1Click(Sender: TObject);
var
  Log:String;
begin
  MemErrori.EmptyTable;
  //Scorre Tutte le fatture ed effettua il controllo sui codici Fiscali
  if QryFatture.RecordCount>0 then
    begin
      QryFatture.First;
      while not QryFatture.Eof do
        begin
          Log:=ControllaCF(QryFattureCodFisc.AsString);
          if Log<>''then
            begin
              MemErrori.Append;
              MemErroriID_FATTURA.AsInteger:=QryFattureId_Fattura.AsInteger;
              MemErroriNUM_FATTURA.AsInteger:=QryFattureNumFattura.AsInteger;
              MemErroriID_PAZIENTE.AsInteger:=QryFattureCod_Paziente.AsInteger;
              MemErroriDATA_DATTURA.AsString:=QryFattureData.AsString;
              MemErroriErrore.AsString:=Log;
              MemErrori.Post;
            end;
          QryFatture.Next;
        end;

      QryFatture.First;

      if MemErrori.RecordCount>0 then
        begin
          //Apre una finestra di popup con l'elenco delle fatture con ID_Fattura, ID_PAZIENTE, Data Fattura e descrizione dell'errore
          //Quindi sarebbe comodo da tale finestra accedere ai dati della fattura per modificare il Codice Fiscale del paziente
          try
            Application.CreateForm(TFrmCF,FrmCF);
            FrmCF.Notebook1.PageIndex:=0;
            FrmCF.ShowModal;
          finally
            FrmCF.Free;
          end;


          //modificando il codice fiscale nella fattura sarebbe bello modificarlo automaticamente (previo messaggio)
          //anche nella scheda paziente

        end;


      if MemErrori.RecordCount=0 then
        Application.MessageBox('Non sono stati riscontrati errori nei codici fiscali.'+#13+
                               'Tutti i codici fiscali nella griglia risultano formalmente corretti.',
                               'Confrollo Codici Fiscali',MB_OK+MB_ICONINFORMATION);
    end
  else
    begin
      Application.MessageBox('Attenzione.'+#13+#13+
                             'Non ci sono fatture da controllare.','Confrollo Codici Fiscali',MB_OK+MB_ICONWARNING);

    end;
end;


procedure TFrmTS.EseguiControlloCompleto1Click(Sender: TObject);
var
  Log:String;
begin
  //Scorre tutte le fatture ed esegue per ciascin record il controllo del codice fiscale,
  //controlla che esista una data di fattura ed una di pagamento
  MemErrori.EmptyTable;
  if QryFatture.RecordCount>0 then
    begin
      QryFatture.First;
      Log:='';
      while not QryFatture.Eof do
        begin
          Log:='';
          //Controllo sui codici fiscali
          if QryFattureCodFisc.AsString='' then
            begin
              if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' CF Mancante'
              else Log:=Log+' / CF Mancante';
            end
          else if Length(QryFattureCodFisc.AsString)<>16 then
            begin
              if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Lunghezza CF errata'
              else Log:=Log+' / Lunghezza CF errata';
            end
          else if Length(QryFattureCodFisc.AsString)=16 then
            begin
              if ControllaCF(QryFattureCodFisc.AsString)<>''then
                begin
                  if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' '+ControllaCF(QryFattureCodFisc.AsString)
                  else Log:=Log+' / '+ControllaCF(QryFattureCodFisc.AsString);
                end;
            end;

         //Controllo sulla Data Fattura
         if QryFattureData.AsDateTime <= 0 then
           begin
             if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Manca la data della Fattura'
             else Log:=Log+' / Manca la data della Fattura';
           end;

         // Controllo sulla data di pagamento
         if QryFattureDATA_PAGAMENTO.AsDateTime<=0 then
           begin
             if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Manca la data pagamento'
             else Log:=Log+' / Manca la data pagamento';
           end;

         //Controllo sui record di dettaglio
         //codici spesa , Aliquote iva, Natura Iva
         Dettagli.First;
         while not Dettagli.Eof do
           begin
             if DETTAGLITIPO_SPESA.AsString='' then
               begin
                 if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Manca l''indicazione della tipologia spesa'
                 else Log:=Log+' / Manca l''indicazione della tipologia spesa';
               end;

             if DETTAGLIAliquotaIva.IsNull then
               begin
                 if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Aliquota iva mancante in una o più righe di dettaglio'
                 else Log:=Log+' / Aliquota iva mancante in una o più righe di dettaglio';
               end;

             if DETTAGLINATURA_IVA.AsString='' then
               begin
                 if Log='' then Log:='Fatt.'+QryFattureNumFattura.AsString+' del '+QryFattureData.AsString+' Natura IVA mancante in una o più righe di dettaglio'
                 else Log:=Log+' / Natura IVA mancante in una o più righe di dettaglio';
               end;
             Dettagli.Next;
           end;

         if Log<>'' then
           begin
             MemErrori.Append;
             MemErroriID_FATTURA.AsInteger:=QryFattureId_Fattura.AsInteger;
             MemErroriID_PAZIENTE.AsInteger:=QryFattureCod_Paziente.AsInteger;
             MemErroriDATA_DATTURA.AsString:=QryFattureData.AsString;
             MemErroriNUM_FATTURA.AsInteger:=QryFattureNumFattura.AsInteger;
             MemErroriERRORE.AsString:=Log;
             MemErrori.Post;
           end;
         QryFatture.Next;
         //if Log<>'' then Memo2.Lines.Add(log);
       end;
    end;
  //alla fine mostra un file di testo con gli errori riscontrati per ciascuna fattura
  if log<>'' then
    try
      Application.CreateForm(TFrmCF,FrmCF);
      FrmCF.Notebook1.PageIndex:=0;
      FrmCF.ShowModal;
    finally
      FrmCF.Free;
    end;
end;

procedure CopyToStream(const InArray:TByteDynArray; outStream:TStream );
var
  pTemp:Pointer;
begin
  pTemp := @InArray[0];
  outStream.Write( pTemp^, Length(InArray));
end;


function ByteArrayFromStream( inStream : TMemoryStream ) : TByteDynArray;
var pTemp : pointer;
begin
  SetLength(Result, inStream.Size );
  pTemp := @Result[0];
  inStream.Position := 0;
  inStream.Read(pTemp^, inStream.Size);
end;


procedure ByteArrayToFile( const ByteArray : TByteDynArray;
                            const FileName : string );
var Count : integer;
    F : FIle of Byte;
    pTemp : Pointer;
begin
  AssignFile( F, FileName );
  Rewrite(F);
  try
    Count := Length( ByteArray );
    pTemp := @ByteArray[0];
    BlockWrite(F, pTemp^, Count );
  finally
    CloseFile( F );
  end;
end;



procedure ApriEseguibileConAttesaFine(NomeDelFile: string; Parametri: string);
var
  exInfo:TShellExecuteInfo; Ph:DWORD;
begin
  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    ExInfo.lpVerb := 'open';
    ExInfo.lpParameters := PChar(Parametri);
    lpFile := PChar(NomeDelFile);
    nShow := 0;
  end;
  if ShellExecuteEx(@exInfo) then Ph := exInfo.HProcess
  else
    begin
      ShowMessage(SysErrorMessage(GetLastError));
      Exit;
    end;
  while WaitForSingleObject(ExInfo.hProcess, 150) <> WAIT_OBJECT_0 do Application.ProcessMessages;
  CloseHandle(Ph);
end;



procedure CreateTempFile(TFileName:String);
var
  myFile:TextFile;
  text:string;
begin
  // Try to open the Test.txt file for writing to
  AssignFile(myFile,TFileName);
  ReWrite(myFile);

  // Write a couple of well known words to this file
  WriteLn(myFile,'');
  // Close the file
  CloseFile(myFile);
end;


function GetCF_Cifrato(CF:String):String;
var
  Str:TStringList;
  Command1,Command2:String;
begin
  Str:=TStringList.Create;
  Str.Add(Trim(CF));
  Str.SaveToFile('.\CF.txt');
  ApriEseguibileConAttesaFine('.\fnCodificatore.bat','');

  if FileExists('.\CF64.enc') then
    begin
      Str.Clear;
      Str.LoadFromFile('.\CF64.enc');
      Result:=Trim(Str.Text);
    end;
  Str.Free;
  DeleteFile('.\CF.enc');
  DeleteFile('.\CF64.enc');
end;




function GetPIN_Cifrato(PIN:String):String;
var
  Str:TStringList;
  Command1,Command2:String;
begin
  try
    Str:=TStringList.Create;
    //salva il codice fiscale nella stringlist MEMO per poi salvarla nel file CF.TXT
    Str.Add(Trim(PIN));
    Str.SaveToFile('.\PIN.txt');
    ApriEseguibileConAttesaFine('.\fnCodificatorePIN.bat','');
    Str.Clear;
    Str.LoadFromFile('.\PIN64.enc');
    Result:=Trim(Str.Text);
    Str.Clear;
  finally
    Str.Free;
  end;
end;




function FirstDayOfMonth(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function LastDayOfMonth(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Inc(Month);
  if Month = 13 then
    begin
      Month := 1;
      Inc(Year)
    end;
  Result := EncodeDate(Year, Month, 1) - 1;
end;


procedure TFrmTS.ChiudiFinestra1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmTS.ChkNonInviateClick(Sender: TObject);
begin
 GetSpese(Sender);
  if ChkNonInviate.Checked then
    begin
      QryFatture.Filter:='(Esito_Invio_TS IS NULL)OR(Esito_Invio_TS = 0)';
      QryFatture.Filtered:=True;
    end
  else
    begin
      QryFatture.Filter:='';
      QryFatture.Filtered:=False;
    end;
end;

function TFrmTS.ControllaCF(cf:String):String;
const
  SetDisp:array [0..25] of Integer= (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20, 11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23);
var
  i,n,s:Integer;
  cf2:string;
begin
  Result:='';
	if Length(cf)=0 then Exit;
  if Length(cf)=11 then Exit;
  if (Length(cf)<>16)then
   Begin
    Result:='';
    Result:='La lunghezza del codice fiscale non è corretta';
    Exit;
   End;

	cf2:=UpperCase(cf);

  for i:=1 to 16 do
    if not(((cf2[I]>='0')and(cf2[I]<='9'))or((cf2[I]>='A')and(cf2[I]<='Z')))then
      begin
        Result:='';
        Result:='Il Codice Fiscale contiene dei caratteri non validi';
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
      Result:='';
      Result:='Il Codice Fiscale non è corretto: Il Codice di controllo non corrisponde';
    end;
end;



procedure TFrmTS.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if MEMId_Fattura.AsInteger>0 then
    ShowMessage('Si Posiziona sulla fattura da modificare nella finestra principale'+#13+
                'Fattura '+IntTostr(MEMNUM_FATTURA.AsInteger)+' del '+MEMDATA.AsString);
end;

procedure TFrmTS.DETTAGLICalcFields(DataSet: TDataSet);
begin
  DettagliCalcImporto.AsCurrency:=DettagliQta.AsInteger*DettagliPrezzoUnitario.AsCurrency;
  DettagliCalcImportoSconto.AsCurrency:=(DettagliCalcImporto.AsCurrency*DettagliSconto.AsInteger/100);
  DettagliCalcImportoScontato.AsCurrency:=DettagliCalcImporto.AsCurrency-
    (DettagliCalcImporto.AsCurrency*DettagliSconto.AsInteger/100);
  DettagliCalcImportoIva.AsCurrency:=(DettagliCalcImportoScontato.AsCurrency*DettagliAliquotaIva.AsFloat/100);
  DettagliCalcImpScontatoIvato.AsCurrency:=DettagliCalcImportoScontato.AsCurrency+DettagliCalcImportoIva.AsCurrency;
end;


procedure TFrmTS.GetSpese(Sender: TObject);
begin
  QryFatture.Close;
  QryFatture.ParamByName('iData1').AsDateTime:=EdDataInizio.Date;
  QryFatture.ParamByName('iData2').AsDateTime:=EdDataFine.Date;
  QryFatture.Open;
end;


procedure TFrmTS.AdvGlowButton1Click(Sender: TObject);
begin
  GetSpese(Sender);
  if ChkNonInviate.Checked then
    begin
      QryFatture.Filter:='(Esito_Invio_TS IS NULL)OR(Esito_Invio_TS = 0)';
      QryFatture.Filtered:=True;
    end
  else
    begin
      QryFatture.Filter:='';
      QryFatture.Filtered:=False;
    end;
end;


procedure TFrmTS.BtnEsciClick(Sender: TObject);
begin
  Close;
end;


function zipFile(ArchiveName, Filename: String): boolean;
var
 Zip:TZipFile;
begin
  Zip:=TZipFile.Create;
  try
   if FileExists(ArchiveName) then
    DeleteFile(ArchiveName);
   zip.Open(ArchiveName,zmWrite);
   zip.Add(Filename);
   zip.Close;
   Result:=true;
  except
   REsult:=false;
  end;
  FreeAndNil(zip);
end;


function UnZipFile(ArchiveName, Filename:String): boolean;
var
 Zip:TZipFile;
begin
  Zip:=TZipFile.Create;
  try
   zip.ExtractZipFile(ArchiveName,Filename);
   zip.Close;
   Result:=true;
  except
   REsult:=false;
  end;
  FreeAndNil(zip);
end;


procedure TFrmTS.btRicevutePDFInviiClick(Sender: TObject);
begin
  Get_RicevutePDF(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
  MAIN_PAGERS.ActivePageIndex:=2;
end;


procedure TFrmTS.CreaFileXML(Sender: TObject);
var
  S1,S2:string;
  PosPoint:Integer;
  Importo, Aliquota:String;
  Ini:TIniFile;
  DataOra:String;
  i:Integer;
  IsBollo:Boolean;
begin
  if cxGrid2DBTableView1.Controller.SelectedRowCount=0 then
    begin
      Application.MessageBox(PChar('Attenzione !!!'+#13+#13+
                                   'Non è stata selezionata alcuna fattura da inviare'+#13+
                                   'Selezionare almeno una riga nella griglia delle fatture emesse'),
                                   'Seleziona Fatture',MB_OK+MB_ICONERROR);
                                   Exit;
    end;

  //genera il file XML
  Memo1.Lines.Clear;
  Memo1.Lines.Add('<?xml version="1.0" encoding="UTF-8"?> '+
                  '<precompilata xsi:noNamespaceSchemaLocation="730_precompilata_new.xsd"  '+
                  'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">');

  Memo1.Lines.Add('<proprietario>');

  //Codice Fiscale Proprietario cifrato
  Memo1.Lines.Add('<cfProprietario>'+CF_PROPRIETARIO_CIFRATO+'</cfProprietario>');

  Memo1.Lines.Add('</proprietario>');

  for i:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount-1 do
    begin
      cxGrid2DBTableView1.Controller.SelectedRows[i].Focused:=True;
      cxGrid2DBTableView1.Controller.SelectedRows[i].Selected:=True;
      //PER OGNI FATTURA INSERISCE IL DOCUMENTO DI SPESA
      Memo1.Lines.Add('<documentoSpesa>');
        Memo1.Lines.Add('<idSpesa>');

           Memo1.Lines.Add('<pIva>'+PARTITA_IVA+'</pIva>');
           Memo1.Lines.Add('<dataEmissione>'+FormatDateTime('YYYY-MM-DD',QryFattureData.AsDateTime)+'</dataEmissione>');

          Memo1.Lines.Add('<numDocumentoFiscale>');
            Memo1.Lines.Add('<dispositivo>1</dispositivo>');
            Memo1.Lines.Add('<numDocumento>'+QryFattureNumFattura.AsString+'</numDocumento>');
          Memo1.Lines.Add('</numDocumentoFiscale>');
        Memo1.Lines.Add('</idSpesa>');

        if QryFattureDATA_PAGAMENTO.IsNull then
          begin
            Application.MessageBox(PChar('Attenzione !!!'+#13+#13+
                                         'Non è stata specificata la data di pagamento della fattura '+
                                         QryFattureNumFattura.AsString+ ' del '+QryFattureData.AsString),
                                         'Data Pagamento Mancante',MB_OK+MB_ICONERROR);
                                          Exit;
          end
        else
          begin
            Memo1.Lines.Add('<dataPagamento>'+FormatDateTime('YYYY-MM-DD',QryFattureDATA_PAGAMENTO.AsDateTime)+'</dataPagamento>');
          end;

        //Se la data di pagamento è anticipata rispetto alla data di emissione della fattura inserisce la sezione seguente
        if QryFattureDATA_PAGAMENTO.AsDateTime<QryFattureData.AsDateTime then
          Memo1.Lines.Add('<flagPagamentoAnticipato>1</flagPagamentoAnticipato>');
                Memo1.Lines.Add('<flagOperazione>I</flagOperazione>');
          Memo1.Lines.Add('<cfCittadino>');
            //Qui va calcolato in CF Cifrato dell'intestatario della fattura
            //Memo1.Lines.Add('iKvd9JQntqxPBT2UA/OFfztSNLidocP8Op+NfODzfTdxFWzkcdZrJz5gvCuqv7Dh/r3Cin1ZQMmg/BofIqYCyq2PcC+PJzbvQCocDdl6FrXVXs3W5JhnX7VpWFGCLPYYY2WL+RWKxhfkGqeY8+NCVfQ1lEA15g3W5AabJ15Tthk=');
            Memo1.Lines.Add(GetCF_Cifrato(QryFattureCodFisc.AsString));
          Memo1.Lines.Add('</cfCittadino>');

        if QryFatturePAGAMENTO_TRACCIATO.AsBoolean then
          Memo1.Lines.Add('<pagamentoTracciato>SI</pagamentoTracciato>')
        else Memo1.Lines.Add('<pagamentoTracciato>NO</pagamentoTracciato>');

        Memo1.Lines.Add('<tipoDocumento>F</tipoDocumento>');
        if QryFattureACCETTAZIONE_INVIO.IsNull then Memo1.Lines.Add('<flagOpposizione>0</flagOpposizione>')
        else if QryFattureACCETTAZIONE_INVIO.AsBoolean then Memo1.Lines.Add('<flagOpposizione>0</flagOpposizione>')
        else Memo1.Lines.Add('<flagOpposizione>1</flagOpposizione>');

        IsBollo:=QryFattureimportobolli.AsCurrency>0;

        //INSERISCE LE RIGHE DI DETTAGLIO DELLA FATTURA
        DETTAGLI.First;
        while not DETTAGLI.Eof do
          begin
            //in realtà dovrebbe inserire solo le voci per le quali l'importo è diverso da zero
            if DETTAGLICalcImpScontatoIvato.AsCurrency>0 then
              begin
                Memo1.Lines.Add('<voceSpesa>');
                Memo1.Lines.Add('<tipoSpesa>'+DETTAGLITIPO_SPESA.AsString+'</tipoSpesa>');
                //Memo1.Lines.Add('<importo>52.01</importo>');
                Importo:=FormatCurr('####0.#0',DETTAGLICalcImpScontatoIvato.AsCurrency);
                PosPoint:=Pos(',',Importo);
                S1:=Copy(Importo,0,PosPoint-1);
                S2:=Copy(Importo,PosPoint+1,3);
                Importo:=S1+'.'+S2;
                Memo1.Lines.Add('<importo>'+IMPORTO+'</importo>');

                if DETTAGLIAliquotaIva.AsFloat>0 then
                  begin
                    Aliquota:=FormatFloat('#0.#0',DETTAGLIAliquotaIva.AsFloat);
                    PosPoint:=Pos(',',Aliquota);
                    S1:=Copy(Aliquota,0,PosPoint-1);
                    S2:=Copy(Aliquota,PosPoint+1,3);
                    Aliquota:=S1+'.'+S2;

                    if Aliquota='10.00' then Memo1.Lines.Add('<aliquotaIVA>10.00</aliquotaIVA>')
                  end
                else if DETTAGLIAliquotaIva.AsFloat=0 then
                  Memo1.Lines.Add('<aliquotaIVA>0.00</aliquotaIVA>');
                  Memo1.Lines.Add('</voceSpesa>');
              end;
            DETTAGLI.Next;
          end;
      DETTAGLI.First;

      //Se presente lk'importo del bollo in fattura lo inserisce come voce di spesa "AA"

      if IsBollo then
        begin
          Memo1.Lines.Add('<voceSpesa>');
          Memo1.Lines.Add('<tipoSpesa>AA</tipoSpesa>');

          Importo:=FormatCurr('####0.#0',QryFattureimportobolli.AsCurrency);
          PosPoint:=Pos(',',Importo);
          S1:=Copy(Importo,0,PosPoint-1);
          S2:=Copy(Importo,PosPoint+1,3);
          Importo:=S1+'.'+S2;
          Memo1.Lines.Add('<importo>'+IMPORTO+'</importo>');
          Memo1.Lines.Add('<aliquotaIVA>0.00</aliquotaIVA>');
          Memo1.Lines.Add('</voceSpesa>');
        end;

      Memo1.Lines.Add('</documentoSpesa>');

      QryFatture.Next;
    end;

  Memo1.Lines.Add('</precompilata>');

  if not DirectoryExists('.\Temp')then CreateDir('.\Temp');
  Memo1.Lines.SaveToFile('.\Temp\TS.XML');

  //Crea il File ZIP
  DataOra:=FormatDateTime('DDMMYY-HHMM',Now);
  zipFile('.\Temp\TS-'+DataOra+'.zip','.\Temp\TS.XML');

  DeleteFile('.\Temp\TS.XML');
  //Scrive Nel file TS.ini il nome del file da inviare
  try
    Ini:=TIniFile.Create('.\TS.ini');
    Ini.WriteString('TS','ZIP','.\Temp\TS-'+DataOra+'.zip');
  finally
    Ini.Free;
  end;
  MAIN_PAGERS.ActivePageIndex:=1;
  LV_ZIP.Root:=PathEXE+'Temp';
  LV_ZIP.Refresh;
end;


procedure TFrmTS.AdvGlowButton3Click(Sender: TObject);
var
  TSIni:TIniFile;
begin
  case MAIN_PAGERS.ActivePageIndex of
    0:begin
        Esito:=-1;
        CreaFileXML(Sender);
      end;
    1:begin
        SendToSistemaTs('TS.ini',TS_TEST);
        Get_RicevutePDF(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
        LV_PDF.Root:=PathEXE+'RicevuteTS';
        MAIN_PAGERS.ActivePageIndex:=2;

        //La chiamata che segue prende come secondo Parametro il targetTest che assume valore true nel caso di invio Test
        //la chiamata all'ambiente definitivo di produzione deve essere dettaglioErroriInvio(REPORT_INVIIPROTOCOLLO.AsString,False);

        dettaglioErroriInvio(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
        if Esito=0 then
        begin
          LV_ERRORI.Refresh;
          Application.MessageBox('Attenzione'+#13+
                                 'Si sono verificati scarti durante l''invio dei dati',
                                 'Invio Dati TS',MB_OK+MB_ICONWARNING);
          MostraErroriUltimoInvio(Sender);
          MAIN_PAGERS.ActivePageIndex:=3;
        end
      else
        begin
          Application.MessageBox('Non si sono verificati scarti durante l''invio dei dati'+#13+
                                 'Tutte le voci di spesa sono state accolte con successo',
                                 'Invio Dati TS',MB_OK+MB_ICONINFORMATION);

          QryFatture.Filter:='Esito_Invio_TS<>False';
          QryFatture.Filtered:=True;
          if QryFatture.RecordCount>0 then
            begin
              QryFatture.First;
              while not QryFatture.Eof do
                begin
                  if Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[])then
                    begin
                      Fatture.Edit;
                      FattureData_Invio_TS.AsDateTime:=Now;
                      FattureEsito_Invio_TS.AsBoolean:=True;
                      FattureErrore_Invio_TS.AsString:='';
                      Fatture.Post;
                    end;
                  QryFatture.Next;
                end;
            end;
          QryFatture.Filter:='';
          QryFatture.Filtered:=False;
          QryFatture.Close;
          QryFatture.ParamByName('iData1').AsDateTime:=EdDataInizio.Date;
          QryFatture.ParamByName('iData2').AsDateTime:=EdDataFine.Date;
          QryFatture.Open;
          QryFatture.First;
          AdvGlowButton1Click(self);
          MAIN_PAGERS.ActivePageIndex:=0;
        end;
      end;
    2:{if ErroriInvio then
        begin
          ShowMessage('si sono verificati scarti durante l''invio dei dati');
          MostraErroriUltimoInvio(Sender);
          MAIN_PAGERS.ActivePageIndex:=3;
        end
      else
        begin
          ShowMessage('Non si sono verificati scarti durante l''invio dei dati'+#13+
                      'Tutte le voci di spesa sono state accolte con successo');
        end};
    3:begin
        MAIN_PAGERS.ActivePageIndex:=0;
        AdvGlowButton1Click(self);
    end;
  end;
end;



function TFrmTS.convertStringToTByteDynArray(data:string):TByteDynArray;
var
  binaryData: TByteDynArray;
begin
  //Copy over string to TByteDynArray
  SetLength(binaryData, Length(Data) * sizeof(Char));
  if Length(Data) > 0 then
    Move(Data[1], binaryData[0], Length(Data) * sizeof(Char));
    result:= binaryData;
end;


function TFrmTS.ByteStreamToByteArray(const FileName: TFileName): TByteDynArray;
var
    bs: TBytesStream;
begin
    bs := TBytesStream.Create;
    bs.LoadFromFile(FileName);
    Result := TByteDyNArray(bs.bytes);
    bs.Free;
end;


procedure TFrmTS.SendToSistemaTs(FileIni: string; TargetTest: boolean );
var
  Ini:TIniFile;
  FileToSend, DataToSend: string;

  // Strumenti di Connessione
  HTTPRIO: THTTPRIO;
  F730: InvioTelematicoSS730pMtom;

  // dati specifici
  datiProprietario: proprietario;
  nomefileallegato: tipoNomeFileAllegato;
  pincodeInvianteCifrato: string;
  opzionale1: string;
  opzionale2: string;
  opzionale3: string;

  documento: TByteDynArray;
  ricevuta: ricevutaInvio;

begin
  { --- Dati Proprietario --- }
  datiProprietario:=proprietario.Create;

  { --- Lettura File di Collegamento --- }
  Ini:=TIniFile.Create('.\TS.ini');

  { --- File da Inviare --- }
  FileToSend := Ini.ReadString('TS','Zip','' );

  { --- Dati Proprietario --- }
  //datiProprietario.codiceRegione := Ini.ReadString('TS','CODICE_REGIONE','' );
  //datiProprietario.codiceAsl := Ini.ReadString('TS','CODICE_ASL','' );
  //datiProprietario.codiceSSA := Ini.ReadString('TS','CODICE_SSA','' );

  if TargetTest then
    datiProprietario.cfProprietario := Ini.ReadString( 'TS','CF_PROPRIETARIO','' )
  else datiProprietario.cfProprietario:=CF_CIFRATO;

  { --- PinCode Cifrato --- }
  if TargetTest then
    pincodeInvianteCifrato := Ini.ReadString( 'TS','PINCODE_CIFRATO','')
  else pincodeInvianteCifrato := PINCODE_CIFRATO;

  { --- Credenziali --- }
  {FUserName := Ini.ReadString('TS','USER','' );
  FPassword := Ini.ReadString('TS','PASSWORD','' );}

  { --- Libera --- }
  Ini.Free;

  documento := convertStringToTByteDynArray(DataToSend);
  documento := ByteStreamToByteArray(FileToSend);

  { --- Nome Allegato --- }
  nomefileallegato := ExtractFileName(FileToSend);

  { --- Dati Opzionali --- }
  opzionale1 := '';
  opzionale2 := '';
  opzionale3 := '';

  { --- Supporto per Collegamento --- }
  HTTPRIO:=THTTPRIO.Create(Self);


  // --- Consente anche utilizzo di Certificati non verificati ---
  HTTPRIO.HTTPWebNode.InvokeOptions:=[soPickFirstClientCertificate,soIgnoreInvalidCerts];

  // --- Metodo per passare le credenziali di accesso ---
  HTTPRIO.HTTPWebNode.OnBeforePost:=DoHTTPRIOHTTPWebNodeBeforePost;


  { --- Collegamento Area Test / Produzione --- }
  if TargetTest
  then F730 := GetInvioTelematicoSS730pMtom(False,_Deb_SistemaTs_Send,HTTPRIO )
  else F730 := GetInvioTelematicoSS730pMtom( False,_Prd_SistemaTs_Send,HTTPRIO );

  { --- Esegue Invio --- }
  ricevuta:=F730.inviaFileMtom(nomefileallegato,pincodeInvianteCifrato,datiproprietario,
  opzionale1,opzionale2,opzionale3,documento);

  { --- Dump Risposta --- }
  REPORT_INVII.Append;
  REPORT_INVIIPROTOCOLLO.AsString:=Ricevuta.protocollo;
  REPORT_INVIIDATA_ACCOGLIENZA.AsString:=Ricevuta.dataAccoglienza;
  REPORT_INVIINOME_FILE_ALLEGATO.AsString:=Ricevuta.nomeFileAllegato;
  REPORT_INVIIDIMENSIONE_FILE_ALLEGATO.AsString:=Ricevuta.dimensioneFileAllegato;
  REPORT_INVIICODICE_ESITO.AsString:=Ricevuta.codiceEsito;
  REPORT_INVIIDESCRIZIONE_ESITO.AsString:=Ricevuta.descrizioneEsito;
  REPORT_INVIIID_ERRORE.AsString:=Ricevuta.idErrore;
  REPORT_INVII.Post;

  AdvGlowButton1Click(self);
end;


procedure TFrmTS.SaveBytesToFile(const Data: TByteDynArray; const FileName: string);
var
  stream: TMemoryStream;
begin
  stream := TMemoryStream.Create;
  try
    if length(data) > 0 then
      stream.WriteBuffer(data[0], length(data));
    stream.SaveToFile(FileName);
  finally
    stream.Free;
  end;
end;



procedure TFrmTS.GeneraFileeinviaalSistemaTS1Click(Sender: TObject);
begin
  AdvGlowButton3Click(Sender);
  SendToSistemaTs('TS.ini',TS_TEST);
  Get_RicevutePDF(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
  dettaglioErroriInvio(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
end;

procedure TFrmTS.GeneraFileTS1Click(Sender: TObject);
begin
  AdvGlowButton3Click(Sender);
end;


function KillTask(ExeFileName: string): integer;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,
  FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
    begin
      if(StrIComp(PChar(ExtractFileName(FProcessEntry32.szExeFile)),PChar(ExeFileName))=0)or(StrIComp(FProcessEntry32.szExeFile,PChar(ExeFileName))=0)then
        Result := Integer(TerminateProcess(OpenProcess(
      PROCESS_TERMINATE, BOOL(0),
      FProcessEntry32.th32ProcessID), 0));
      ContinueLoop := Process32Next(FSnapshotHandle,
      FProcessEntry32);
    end;
  CloseHandle(FSnapshotHandle);
end;


procedure TFrmTS.Get_RicevutePDF(Protocollo:String; TargetTest:Boolean);  //Procedura per ottenere la ricevuta PDF
var
  _RicevutaPDF: RicevutaPdf730;
  _ParametriRichiesta: datiInput2;
  _rio  : THTTPRIO;

  // dati specifici
  datiProprietario: proprietario;
  nomefileallegato: tipoNomeFileAllegato;
  pincodeInvianteCifrato: string;

  wf: string;
  i: integer;

  Ini:TIniFile;
begin
  try
    //Chiuse eventuali Processi attivi di Acrobat reader poichè se ancora aperti non viene generata la ricevuta dell'invio
    KillTask('AcroRd32.exe');
    KillTask('AcroRd32.exe');

    Ini:=TIniFile.Create('.\TS.ini');

    { --- Supporto per Collegamento --- }
    _rio := THTTPRIO.Create(Self);

    { --- Consente anche utilizzo di Certificati non verificati --- }
    _rio.HTTPWebNode.InvokeOptions := [soPickFirstClientCertificate,soIgnoreInvalidCerts];

    { --- Metodo per passare le credenziali di accesso --- }
    _rio.HTTPWebNode.OnBeforePost := DoHTTPRIOHTTPWebNodeBeforePost;

    { --- Collegamento Area Test / Produzione --- }

    if TargetTest then
      _RicevutaPDF := GetRicevutaPdf730( False,_Deb_SistemaTs_RicevutePDF,_rio )
    else
      _RicevutaPDF := GetRicevutaPdf730( False,_Prd_SistemaTs_RicevutePDF,_rio );

    _ParametriRichiesta:= datiInput2.Create;
    _ParametriRichiesta.pinCode:=Ini.ReadString('TS','PINCODE_CIFRATO','');
    _ParametriRichiesta.protocollo:=Protocollo;


    if _RicevutaPDF.RicevutaPdf(_ParametriRichiesta).esitoChiamata='0' then
      begin
        SaveBytesToFile((_RicevutaPDF.RicevutaPdf(_ParametriRichiesta).esitiPositivi.dettagliEsito.pdf),'.\RicevuteTS\'+Protocollo+'_ric.pdf');
        //ApriEseguibileConAttesaFine(PChar('.\RicevuteTS\'+Protocollo+'_ric.pdf'),'');
        ShellExecute(Handle,'Open',PChar('.\RicevuteTS\'+Protocollo+'_ric.pdf'),'',Nil,SW_SHOWNORMAL);
      end;
  finally

  end;
end;


procedure TFrmTS.MAIN_PAGERSChange(Sender: TObject);
begin
  case MAIN_PAGERS.ActivePageIndex of
    0:begin
        AdvGlowButton3.Caption:='GENERA FILE XML  >>>';
        LV_PDF.Root:='C:\';
        LV_ERRORI.Root:='C:\';
        LV_ZIP.Root:='C:\';

      end;
    1:begin
        AdvGlowButton3.Caption:='INVIA AL SISTEMA TS  >>>';
        LV_ZIP.Root:=PathEXE+'Temp';
        LV_ZIP.Refresh;
        LV_ZIP.Columns.Items[0].Width:=150;
      end;
    2:begin
        LV_PDF.Root:=PathEXE+'RicevuteTS';
        LV_ERRORI.Root:=PathEXE+'ErroriTS';
        LV_PDF.Refresh;
        LV_PDF.Columns.Items[0].Width:=200;
        LV_ERRORI.Refresh;
        LV_ERRORI.Columns.Items[0].Width:=200;
        AdvGlowButton3.Caption:='MOSTRA ERRORI INVIO';
        REPORT_INVII.Last;
      end;
     3:begin
         AdvGlowButton3.Caption:='<<< INDIETRO';
       end;
  end;
end;


procedure TFrmTS.ModificaDatiMancanti1Click(Sender: TObject);
begin
  //Apre una finestra di popup ove possibile inserire i dati mancandi
  //Alla fine in chiusura della finestra viene richiamato il refresh della query pricipale
  if Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[]) then
    try
      Application.CreateForm(TFrmEdit,FrmEdit);
      FrmEdit.ShowModal;
    finally
      FrmEdit.Free;
    end;
end;

procedure TFrmTS.MostraUltimoerrorediinvio1Click(Sender: TObject);
begin
  dettaglioErroriInvio(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
end;

procedure TFrmTS.MyConnection1BeforeConnect(Sender: TObject);
var
  SetIni:TInifile;
begin
  //Legge il file set.ini contenente i parametri di connessione
  {try
    SetIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Set.ini');
    MyConnection1.Username:=SetIni.ReadString('Accesso','USERNAME','');
    MyConnection1.Password:=SetIni.ReadString('Accesso','PASSWORD','');
    MyConnection1.Server:=SetIni.ReadString('Accesso','SERVER','');
  finally
    SetIni.Free;
  end;}
end;


procedure TFrmTS.OrrieniRicevutaUltimoInvio1Click(Sender: TObject);
begin
  Get_RicevutePDF(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
end;


procedure TFrmTS.dettaglioErroriInvio(Protocollo:String; TargetTest: Boolean);
var
  _DettaglioErrori: DettaglioErrori730;
  _ParametriRichiesta: DettaglioErrori730Service.datiInput2;

  fileCSV:TextFile;
  filecsvString:string;
  _rio  : THTTPRIO;
  wf: string;
  i: integer;
begin
  { --- Supporto per Collegamento --- }
  _rio := THTTPRIO.Create(Self);

  { --- Consente anche utilizzo di Certificati non verificati --- }
  _rio.HTTPWebNode.InvokeOptions := [soPickFirstClientCertificate,soIgnoreInvalidCerts];

  { --- Metodo per passare le credenziali di accesso --- }
  _rio.HTTPWebNode.OnBeforePost := DoHTTPRIOHTTPWebNodeBeforePost;

  { --- Collegamento Area Test / Produzione --- }

  if TargetTest then _DettaglioErrori:= GetDettaglioErrori730(False,_Deb_SistemaTs_DettaglioErrori,_rio )
  else _DettaglioErrori := GetDettaglioErrori730(False,_Prd_SistemaTs_DettaglioErrori,_rio);


  _ParametriRichiesta:=  DettaglioErrori730Service.datiInput2.Create;
  _ParametriRichiesta.pinCode:=PINCODE_CIFRATO;
  _ParametriRichiesta.protocollo:=REPORT_INVIIPROTOCOLLO.AsString;

  if _DettaglioErrori.DettaglioErrori(_ParametriRichiesta).esitoChiamata='0' then
    begin
      Esito:=0;
      filecsvString:= TEncoding.ANSI.GetString(_DettaglioErrori.DettaglioErrori(_ParametriRichiesta).esitiPositivi.dettagliEsito.csv);
      AssignFile(fileCSV, '.\ErroriTS\'+REPORT_INVIIPROTOCOLLO.AsString+'_ep.zip');
      Rewrite(fileCSV);
      Write(filecsv,filecsvString);
      CloseFile(filecsv);
      UnZipFile('.\ErroriTS\'+REPORT_INVIIPROTOCOLLO.AsString+'_ep.zip','.\ErroriTS\');
      DeleteFile('.\ErroriTS\'+REPORT_INVIIPROTOCOLLO.AsString+'_ep.zip');
    end;
end;


procedure TFrmTS.Button1Click(Sender: TObject);
begin
  SendToSistemaTs('TS.ini',TS_TEST);
  Get_RicevutePDF(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
  LV_PDF.Root:=PathEXE+'RicevuteTS';
  dettaglioErroriInvio(REPORT_INVIIPROTOCOLLO.AsString,TS_TEST);
end;



procedure TFrmTS.Button2Click(Sender: TObject);
begin
  MostraErroriUltimoInvio(Sender);
end;

procedure TFrmTS.MostraErroriUltimoInvio(Sender: TObject);
var
  i:Integer;
begin
  MAIN_PAGERS.ActivePageIndex:=2;
  REPORT_INVII.Last;
  AdvGridCSVPager1.Close;
  if FileExists('.\ErroriTS\'+REPORT_INVIIPROTOCOLLO.AsString+'.csv')then
    begin
      AdvGridCSVPager1.FileName:='.\ErroriTS\'+REPORT_INVIIPROTOCOLLO.AsString+'.csv';
      AdvGridCSVPager1.Open;
      CSVGrid.AutoSizeColumns(True);
      //Dopo aver aperto il file CSV degli errori travasa i dati nella MEM table in modo da poter utilizzare
      //i dati per individuare le fatture e segnarle come inviate con errori
      //Tutte le altre verranno segnate come gia inviare correttamente

      if CSVGrid.RowCount>1 then
        begin
          MemCSV_Errori.EmptyTable;
          for i:=1 to CSVGrid.RowCount-1 do
            begin
              CSVGrid.GotoCell(0,i);
              MemCSV_Errori.Append;
              MemCSV_ErroriPROTOCOLLO.AsString:=REPORT_INVIIPROTOCOLLO.AsString;
              MemCSV_ErroriCF_PROPRIETARIO.AsString:=CSVGrid.Cells[0,i];
              MemCSV_ErroriPARTITA_IVA.AsString:=CSVGrid.Cells[4,i];
              MemCSV_ErroriDATA_EMISSIONE.AsString:=CSVGrid.Cells[5,i];
              MemCSV_ErroriDOC_FISC_DISP.AsString:=CSVGrid.Cells[6,i];
              MemCSV_ErroriDOC_FISC_NUM.AsString:=CSVGrid.Cells[7,i];
              MemCSV_ErroriCODICE_ERRORE.AsString:=CSVGrid.Cells[9,i];
              MemCSV_ErroriDESCRIZIONE_ERRORE.AsString:=CSVGrid.Cells[10,i];
              MemCSV_Errori.Post;
            end;
        end;

        //Se si sono verificati errori
        //segna l'invio con errore nella tabella fatture
        if MemCSV_Errori.RecordCount>0 then
          begin
            MemCSV_Errori.First;
            while not MemCSV_Errori.Eof do
              begin
                if QryFatture.Locate('NumFattura',MemCSV_ErroriDOC_FISC_NUM.AsString,[])then
                  begin
                    Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[]);
                    Fatture.Edit;
                    FattureData_Invio_TS.AsDateTime:=Now;

                    //L'errore indica che il documento è già stato inviato e quindi viene segnata la fattura come esito invio a true
                    if MemCSV_ErroriCODICE_ERRORE.AsString='S017'then FattureEsito_Invio_TS.AsBoolean:=True
                    else
                    //Altrimenti segna come non inviato
                      begin
                        FattureEsito_Invio_TS.AsBoolean:=False;
                        FattureErrore_Invio_TS.AsString:=MemCSV_ErroriCODICE_ERRORE.AsString+':'+
                                                         MemCSV_ErroriDESCRIZIONE_ERRORE.AsString;
                      end;
                    Fatture.Post;
                  end;
                MemCSV_Errori.Next;
              end;
            QryFatture.Refresh;
          end;

        //Alla fine filtra la QryFatture per visualizzare tutte le fatture che non hanno presentato errori
        //quindi le segna come invio avvenuto con successo

        QryFatture.Filter:='Esito_Invio_TS<>False';
        QryFatture.Filtered:=True;
        if QryFatture.RecordCount>0 then
          begin
            QryFatture.First;
            while not QryFatture.Eof do
              begin
                if Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[])then
                  begin
                    Fatture.Edit;
                    FattureData_Invio_TS.AsDateTime:=Now;
                    FattureEsito_Invio_TS.AsBoolean:=True;
                    Fatture.Post;
                  end;
                QryFatture.Next;
              end;
          end;
        QryFatture.Filter:='';
        QryFatture.Filtered:=False;
        QryFatture.Close;
        QryFatture.ParamByName('iData1').AsDateTime:=EdDataInizio.Date;
        QryFatture.ParamByName('iData2').AsDateTime:=EdDataFine.Date;
        QryFatture.Open;
        QryFatture.First;
    end;
end;


procedure TFrmTS.Button3Click(Sender: TObject);
begin
  QryFatture.Filter:='Esito_Invio_TS<>False';
  QryFatture.Filtered:=True;
  if QryFatture.RecordCount>0 then
    begin
      QryFatture.First;
      while not QryFatture.Eof do
        begin
          if Fatture.Locate('Id_Fattura',QryFattureId_Fattura.AsInteger,[])then
            begin
              Fatture.Edit;
              FattureData_Invio_TS.AsDateTime:=Now;
              FattureEsito_Invio_TS.AsBoolean:=True;
              Fatture.Post;
            end;
          QryFatture.Next;
        end;
    end;
  QryFatture.Filter:='';
  QryFatture.Filtered:=False;
  QryFatture.Close;
  QryFatture.ParamByName('iData1').AsDateTime:=EdDataInizio.Date;
  QryFatture.ParamByName('iData2').AsDateTime:=EdDataFine.Date;
  QryFatture.Open;
  QryFatture.First;
end;

procedure TFrmTS.FattureCalcFields(DataSet: TDataSet);
begin
  FattureCalcImponibileNetto.AsCurrency:=FattureImponibile.AsCurrency-FattureImportoSconto.AsCurrency;
  FattureCalcImportoIva.AsCurrency:=(FattureCalcImponibileNetto.AsCurrency*FattureAliquotaIVA.AsInteger/100);
  FattureCalcImportoRitenuta.AsCurrency:=(FattureCalcImponibileNetto.AsCurrency*FattureAliquotaRitenuta.AsInteger/100);
  FattureCalcTotaleFattura.AsCurrency:=FattureCalcImponibileNetto.AsCurrency+FattureCalcImportoIva.AsCurrency-
    FattureCalcImportoRitenuta.AsCurrency+FattureImportoBolli.AsCurrency;
end;



procedure TFrmTS.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Si desidera chiudere la finestra Invio Dati al sistema TS?',
                            'Chiudi Finestra',MB_YESNO+MB_ICONQUESTION)=Id_Yes then CanClose:=True
                            else CanClose:=False;


end;

procedure TFrmTS.FormCreate(Sender: TObject);
var
  Ini:TIniFile;
begin
  //Legge il file ini contenente i parametri di accesso
  try
    PathEXE:=ExtractFilePath(Application.ExeName);
    Ini:=TIniFile.Create(PathEXE+'TS.ini');
    PARTITA_IVA:=Ini.ReadString('TS','PARTITA_IVA','');
    CF_CIFRATO:=GetCF_Cifrato(Ini.ReadString('TS','CF_PROPRIETARIO',''));
    PINCODE_CIFRATO:=Ini.ReadString('TS','PINCODE_CIFRATO','');
    CF_PROPRIETARIO_CIFRATO:=Ini.ReadString('TS','CF_PROPRIETARIO_CIFRATO','');
    FUserName := Ini.ReadString('TS','USER','' );
    FPassword := Ini.ReadString('TS','PASSWORD','' );

    //Legge se s'invio al sistema TS deve essere fatto in ambiente test oppure Produzione
    if Ini.ReadString('TS','AMBIENTE_TEST','')='1' then TS_TEST:=True
    else TS_TEST:=False;

    if not DirectoryExists(PathEXE+'Temp')then ForceDirectories(PathEXE+'Temp');
    if not DirectoryExists(PathEXE+'ErroriTS')then ForceDirectories(PathEXE+'ErroriTS');
    if not DirectoryExists(PathEXE+'RicevuteTS')then ForceDirectories(PathEXE+'RicevuteTS');


    LV_ZIP.Root:=PathEXE+'Temp';
    LV_ZIP.Refresh;
    LV_ZIP.Columns.Items[0].Width:=150;
  finally
    Ini.Free;
  end;
end;

procedure TFrmTS.FormShow(Sender: TObject);
begin
  EdDataInizio.Date:=FirstDayOfMonth(Now);
  EdDataFine.Date:=LastDayOfMonth(Now);
  MAIN_PAGERS.ActivePageIndex:=0;
  AdvGlowButton1Click(Sender);
end;

end.


