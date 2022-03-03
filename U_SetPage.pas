unit U_SetPage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RXSpin, ComCtrls, ExtCtrls, SUIButton, SUIComboBox,
  SUIImagePanel, SUIGroupBox, SUIPageControl, SUITabControl, SUIForm;

type
  TFrmSetPage = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxSpinEdit1: TRxSpinEdit;
    RxSpinEdit2: TRxSpinEdit;
    RxSpinEdit3: TRxSpinEdit;
    RxSpinEdit4: TRxSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    RxSpinEdit5: TRxSpinEdit;
    RxSpinEdit6: TRxSpinEdit;
    Label7: TLabel;
    Image1: TImage;
    suiForm1: TsuiForm;
    Pc: TsuiPageControl;
    TbMargini: TsuiTabSheet;
    GroupBox1: TsuiGroupBox;
    TbDimPg: TsuiTabSheet;
    ComboBox1: TsuiComboBox;
    GroupBox2: TsuiGroupBox;
    RbVert: TsuiRadioButton;
    RbOriz: TsuiRadioButton;
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
  FrmSetPage: TFrmSetPage;

implementation

uses SendKeys, U_Anteprima, U_InsertTable, U_Main;

{$R *.DFM}

procedure TFrmSetPage.suitempButton1Click(Sender: TObject);
begin
  
  ModalResult:=IdOk;
end;

procedure TFrmSetPage.suitempButton2Click(Sender: TObject);
begin
  ModalResult:=IdCancel;
end;

end.
