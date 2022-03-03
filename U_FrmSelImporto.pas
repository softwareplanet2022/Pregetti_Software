unit U_FrmSelImporto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, AdvGlowButton, cxTextEdit, cxCurrencyEdit,
  Vcl.ExtCtrls, AdvPanel, Vcl.StdCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.Grids,
  Vcl.DBGrids, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFrmSelImporto = class(TForm)
    AdvPanel1: TAdvPanel;
    EdImporto: TcxCurrencyEdit;
    AdvGlowButton1: TAdvGlowButton;
    Label99: TLabel;
    Label98: TLabel;
    Label57: TLabel;
    StaticText3: TStaticText;
    CmbCausale: TcxComboBox;
    CmbTipoPag: TcxComboBox;
    CmbModPag: TcxComboBox;
    TipoPagamento: TMyTable;
    ModPag: TMyTable;
    ModPagId_ModPag: TAutoIncField;
    ModPagDescrizione: TStringField;
    ModPagDF_FM: TStringField;
    ModPagNumeroRate: TFloatField;
    ModPagUsaInFornitori: TBooleanField;
    ModPagUsaBancaCliente: TBooleanField;
    ModPagCOD_TIPO_PAGAMENTO: TStringField;
    ModPagtipo_pagamento_descr: TStringField;
    ModPagtracciato: TSmallintField;
    DsTipoPagamento: TDataSource;
    DsModPag: TDataSource;
    TipoPagamentocod_codifica: TStringField;
    TipoPagamentotipo: TStringField;
    TipoPagamentodescrizione: TStringField;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelImporto: TFrmSelImporto;


implementation

{$R *.dfm}

uses U_DM, U_Main;

procedure TFrmSelImporto.AdvGlowButton1Click(Sender: TObject);
begin
  ImportoFtAcconto:=FrmSelImporto.EdImporto.Value;
  if EdImporto.Value > DM.CartelleImpDaFatturare.AsCurrency then
    begin
      Application.MessageBox(PChar('Attenzione!'+#13+
                                   'L''importo che si è digitato supera il residuo ancora da fatturare'+#13+
                                   'Importo ancora da fatturare: '+CurrToStr(DM.CartelleImpDaFatturare.AsCurrency)),
                                   'Seleziona Importo',MB_OK+MB_ICONWARNING);
      EdImporto.SetFocus;
      ModalResult:=IDCANCEL;
    end
  else
    begin
      //Setta l'importo da Fatturare
      ImportoFtAcconto:=FrmSelImporto.EdImporto.Value;
      if ModPag.Locate('Descrizione',CmbModPag.Text,[loCaseInsensitive]) then Id_ModPag:=ModPagId_ModPag.AsInteger
      else Id_ModPag:=-1;

      if TipoPagamento.Locate('Descrizione',CmbTipoPag.Text,[loCaseInsensitive]) then Id_TipoPag:=TipoPagamentocod_codifica.AsString
      else Id_TipoPag:='';

      Causale:=CmbCausale.Text;

      ModalResult:=IdOk;
    end;
end;

procedure TFrmSelImporto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
end;

procedure TFrmSelImporto.FormCreate(Sender: TObject);
begin
  ModPag.First;
  while not ModPag.Eof do
    begin
      CmbModPag.Properties.Items.Add(ModPagDescrizione.AsString);
      ModPag.Next;
    end;
  ModPag.First;

  TipoPagamento.First;
  while not TipoPagamento.Eof do
    begin
      CmbTipoPag.Properties.Items.Add(TipoPagamentoDescrizione.AsString);
      TipoPagamento.Next;
    end;
  TipoPagamento.First;
end;

procedure TFrmSelImporto.FormShow(Sender: TObject);
begin
  //Imposta il valore massimo che è possibile fatturare
  EdImporto.Value:=DM.CartelleImpDaFatturare.AsCurrency;
end;

end.
