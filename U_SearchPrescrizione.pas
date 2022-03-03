unit U_SearchPrescrizione;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxTextEdit, cxMemo,
  AdvGlowButton, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFrmCercaPrescrizione = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid9: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridDBTableView16Num_Prescrizione: TcxGridDBColumn;
    cxGridDBTableView16Data: TcxGridDBColumn;
    cxGridDBTableView16TipoPrescrizione: TcxGridDBColumn;
    cxGridDBTableView16Cognome_Nome: TcxGridDBColumn;
    cxGridDBTableView16Cod_Fisc: TcxGridDBColumn;
    cxGridDBTableView16Laboratorio: TcxGridDBColumn;
    cxGridDBTableView16Data_Consegna: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCercaPrescrizione: TFrmCercaPrescrizione;

implementation

{$R *.dfm}

uses U_Main;

procedure TFrmCercaPrescrizione.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCercaPrescrizione.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

end.
