unit U_CF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, AdvGlowButton, AdvPanel, Vcl.StdCtrls, cxTextEdit;

type
  TFrmCF = class(TForm)
    AdvPanel1: TAdvPanel;
    BtnEsci: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Notebook1: TNotebook;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ERRORE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ID_FATTURA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_PAZIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_DATTURA: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCF: TFrmCF;

implementation

{$R *.dfm}

uses U_TS, U_Edit;

procedure TFrmCF.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //Si posiziona sulla fattura da modificare

  if FrmTS.Fatture.Locate('Id_Fattura',FrmTS.MemErroriID_FATTURA.AsInteger,[])then
    try
      Application.CreateForm(TFrmEdit,FrmEdit);
      FrmEdit.ShowModal;
    finally
      FrmEdit.Free;
    end;
end;

end.
