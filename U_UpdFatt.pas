unit U_UpdFatt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Bde.DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS, Vcl.ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxTextEdit,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxGridCustomView, cxGrid, AdvPanel, Vcl.ExtCtrls;

type
  TFrmUpdFatture = class(TForm)
    FATTURE: TMyTable;
    DETTAGLI: TMyTable;
    DsDETTAGLI: TDataSource;
    DsFATTURE: TDataSource;
    DETTAGLIId_Dettaglio: TAutoIncField;
    DETTAGLIId_Fattura: TFloatField;
    DETTAGLIQta: TFloatField;
    DETTAGLIDescrizione: TStringField;
    DETTAGLIPrezzoUnitario: TCurrencyField;
    DETTAGLISconto: TFloatField;
    DETTAGLIAliquotaIva: TFloatField;
    DETTAGLICod_Articolo: TStringField;
    DETTAGLINroDente: TFloatField;
    DETTAGLINATURA_IVA: TStringField;
    DETTAGLITIPO_SPESA: TStringField;
    FATTUREAnno: TFloatField;
    FATTURENumFattura: TFloatField;
    FATTUREId_Fattura: TAutoIncField;
    FATTURECod_Paziente: TFloatField;
    FATTUREModalitaPagamento: TStringField;
    FATTUREData: TDateField;
    FATTURENote: TMemoField;
    FATTUREAliquotaIVA: TFloatField;
    FATTUREAliquotaRitenuta: TFloatField;
    FATTUREImponibile: TCurrencyField;
    FATTUREImportoSconto: TCurrencyField;
    FATTUREImportoBolli: TCurrencyField;
    FATTURERagioneSociale: TStringField;
    FATTUREIndirizzo: TStringField;
    FATTURECap: TStringField;
    FATTURECitta: TStringField;
    FATTUREProv: TStringField;
    FATTURECodFisc: TStringField;
    FATTUREPartitaIVA: TStringField;
    FATTUREBanca: TMemoField;
    FATTURENumPreventivo: TStringField;
    FATTURECODICENAZIONE: TStringField;
    FATTURECAUSALE: TStringField;
    FATTUREESIGIBILITA_IVA: TStringField;
    FATTURECOD_COND_PAGAM: TStringField;
    FATTURECOD_MOD_PAGAM: TStringField;
    FATTUREBANCA_APPOGGIO: TStringField;
    FATTUREIBAN_APPOGGIO: TStringField;
    FATTURECOD_PAGAMENTO: TStringField;
    FATTUREID_MODPAG: TFloatField;
    FATTURECOGNOME_QUIETANZANTE: TStringField;
    FATTURENOME_QUIETANZANTE: TStringField;
    FATTURECF_QUIETANZANTE: TStringField;
    FATTUREPAGAMENTO_TRACCIATO: TBooleanField;
    FATTUREPAGATA: TBooleanField;
    FATTUREDATA_PAGAMENTO: TDateField;
    FATTURENATURA_IVA: TStringField;
    FATTUREACCETTAZIONE_INVIO: TBooleanField;
    FATTUREIMPORTO_IVA: TCurrencyField;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3DBTableView1Qta: TcxGridDBColumn;
    cxGrid3DBTableView1Descrizione: TcxGridDBColumn;
    cxGrid3DBTableView1PrezzoUnitario: TcxGridDBColumn;
    cxGrid3DBTableView1Sconto: TcxGridDBColumn;
    cxGrid3DBTableView1AliquotaIva: TcxGridDBColumn;
    cxGrid3DBTableView1NATURA_IVA: TcxGridDBColumn;
    cxGrid3DBTableView1TIPO_SPESA: TcxGridDBColumn;
    BtnUpdateFatture: TButton;
    PB: TProgressBar;
    StaticText3: TStaticText;
    procedure BtnUpdateFattureClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUpdFatture: TFrmUpdFatture;

implementation

{$R *.dfm}

uses U_TS;

procedure TFrmUpdFatture.BtnUpdateFattureClick(Sender: TObject);
begin
  if Application.MessageBox('Attenzione'+#13+#13+
                            'Questa procedura provvederà a:'+#13+#13+
                            '- Segnare tutte le fatture come pagate'+#13+
                            '- Se non indicata la data di pagamento verrà assegnata la data stessa di emissione della fattura'+#13+
                            '- In tutte le righe di dettaglio ove non è stata specificata una aliquota iva verrà impostata l''aliquota zero'+#13+
                            '- A tutte le prestazioni con aliquota zero verrà asseganata la natura N4'+#13+
                            '- Tutte le prestazioni verranno assegnate alla tipologia SR'+#13+#13+
                            'Se non si è sicuri di voler procedere premere il pulsante NO e chiedere informazioni al servizio di assistenza tecnica ',
                            'Update Fatture',MB_YESNO+MB_ICONWARNING)=ID_YES then
    begin
      PB.Position:=0;
      PB.Max:=Fatture.RecordCount;
      Fatture.First;
      while not Fatture.Eof do
        begin
          FATTURE.Edit;
          FATTUREPAGATA.AsBoolean:=True;
          FATTUREDATA_PAGAMENTO.AsDateTime:=FATTUREData.AsDateTime;
          FATTUREACCETTAZIONE_INVIO.AsBoolean:=True;
          FATTURE.Post;

          DETTAGLI.First;
          while not Dettagli.Eof do
            begin
              Dettagli.Edit;
              if DETTAGLIAliquotaIva.IsNull then DETTAGLIAliquotaIva.AsFloat:=0;
              if(DETTAGLIAliquotaIva.AsFloat=0)or(DETTAGLIAliquotaIva.IsNull)then DETTAGLINATURA_IVA.AsString:='N4';
              DETTAGLITIPO_SPESA.AsString:='SR';
              Dettagli.Post;
              Dettagli.Next;
            end;
          Fatture.Next;
          PB.Position:=PB.Position+1;
        end;
      PB.Position:=0;
      Application.MessageBox('Aggiornamento Terminato con successo','Aggiorna Fatture',MB_OK+MB_ICONINFORMATION);
    end;

end;

end.
