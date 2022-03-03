unit U_InsertTable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RXSpin, SUIButton, ExtCtrls, SUIForm;

type
  TFrmInsTable = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    TableRows: TRxSpinEdit;
    TableCol: TRxSpinEdit;
    suiForm1: TsuiForm;
    Button1: TsuiButton;
    Button2: TsuiButton;
    procedure suitempButton1Click(Sender: TObject);
    procedure suitempButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInsTable: TFrmInsTable;

implementation

uses U_Main, U_Editor;

{$R *.DFM}

procedure TFrmInsTable.suitempButton1Click(Sender: TObject);
begin
  with FrmEditor do
    begin
      if BlankPage.TableCanInsert=True then
        begin
         BlankPage.TableInsert(TableRows.AsInteger,TableCol.AsInteger,-1,10);
         //BlankPage.TableCellText[10,1,1]:='Ciao';
        end;
    end;
  ModalResult:=IdOk;
end;

procedure TFrmInsTable.suitempButton2Click(Sender: TObject);
begin
  ModalResult:=IdCancel;
end;

end.
