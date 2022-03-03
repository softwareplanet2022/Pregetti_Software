unit U_Omonimie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, cyBaseDBGrid, cyDBAdvGrid, ExtCtrls, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmOmonimie = class(TForm)
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1cognome: TcxGridDBColumn;
    cxGrid3DBTableView1nome: TcxGridDBColumn;
    cxGrid3DBTableView1indirizzo: TcxGridDBColumn;
    cxGrid3DBTableView1citta: TcxGridDBColumn;
    cxGrid3DBTableView1datanascita: TcxGridDBColumn;
    cxGrid3DBTableView1codicefiscale: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOmonimie: TFrmOmonimie;

implementation

uses U_DM, U_Main, U_Paziente;

{$R *.dfm}

end.
