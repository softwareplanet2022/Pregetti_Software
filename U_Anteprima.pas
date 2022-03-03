unit U_Anteprima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, OleCtrls, Tx4oleLib_TLB, SpeedBar, DbOleCtl, SUIForm;

type
  TAnteprima = class(TPanel)
  public
    property Canvas;
  end;
  TFrmAnteprima = class(TForm)
    Anteprima: TTXTextControl;
    SbMain: TSpeedBar;
    SpeedbarSection1: TSpeedbarSection;
    SiStampa: TSpeedItem;
    SINext: TSpeedItem;
    SIPrev: TSpeedItem;
    SIZoomIn: TSpeedItem;
    SpeedItem1: TSpeedItem;
    SIChiudi: TSpeedItem;
    suiForm1: TsuiForm;
    procedure FormShow(Sender: TObject);
    procedure SIZoomInClick(Sender: TObject);
    procedure SpeedItem1Click(Sender: TObject);
    procedure SIChiudiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    PrintPrev: TAnteprima;
  public
    { Public declarations }
  end;

const
  ZM_ANT=50;
var
  FrmAnteprima: TFrmAnteprima;

implementation

uses U_Main, U_Editor;

{$R *.DFM}

procedure TFrmAnteprima.FormShow(Sender: TObject);
begin
  Anteprima.LoadFromMemory(U_Editor.Anteprima,U_Editor.RTF_FILE,False);
  Anteprima.EditMode:=2;
  Anteprima.ZoomFactor:=ZM_ANT;
end;

procedure TFrmAnteprima.SIZoomInClick(Sender: TObject);
var
  ZmF: Integer;
begin
  ZmF:=Anteprima.ZoomFactor+35;
  if (ZmF<=200) And (ZmF>=ZM_ANT) then Anteprima.ZoomFactor:=ZmF
  else Anteprima.ZoomFactor:=ZM_ANT;
end;

procedure TFrmAnteprima.SpeedItem1Click(Sender: TObject);
var
  ZmF: Integer;
begin
  ZmF:=Anteprima.ZoomFactor-35;
  if (ZmF<=200) And (ZmF>=ZM_ANT) then Anteprima.ZoomFactor:=ZmF
  else Anteprima.ZoomFactor:=ZM_ANT;
end;

procedure TFrmAnteprima.SIChiudiClick(Sender: TObject);
begin
  ModalResult:=IdOk;
end;

procedure TFrmAnteprima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Anteprima.EditMode:=0;
end;

end.
 