unit U_Firma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls;

type
  TFrmFirma = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    suiButton1: TButton;
    suiButton3: TButton;
    suiButton2: TButton;
    procedure suitempsuiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure suitempsuiButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFirma: TFrmFirma;
  Start,Stop:Boolean;
  StartX,StartY:Integer;
  Path:String;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmFirma.suitempsuiButton1Click(Sender: TObject);
begin
  Path:=ExtractFilePath(Application.ExeName);
  if FlgPaziente then
    try
      Image1.Picture.Bitmap.Monochrome:=True;
      Image1.Picture.SaveToFile(Path+'TempFirma.bmp');
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.LoadFromFile(Path+'TempFirma.bmp');
      DM.PazientiPADRE.AsBoolean:=False;
      DM.PazientiMADRE.AsBoolean:=False;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      FrmFirma.Close;
      FrmMain.ChkTutore.Checked:=False;
      FrmMain.ChkPadre.Checked:=False;
      FrmMain.ChkMadre.Checked:=False;
    except
      exit;
    end
  else if FlgPadre then
    try
      Image1.Picture.Bitmap.Monochrome:=True;
      Image1.Picture.SaveToFile(Path+'TempFirma.bmp');
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_PADRE.LoadFromFile(Path+'TempFirma.bmp');
      DM.PazientiPADRE.AsBoolean:=False;
      DM.PazientiMADRE.AsBoolean:=False;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      FrmMain.ChkPadre.Checked:=True;
    except
      exit;
    end
  else if FlgMadre then
    try
      Image1.Picture.Bitmap.Monochrome:=True;
      Image1.Picture.SaveToFile(PathEXE+'TempFirma.bmp');
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_MADRE.LoadFromFile(PathEXE+'TempFirma.bmp');
      DM.PazientiMADRE.AsBoolean:=True;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      FrmFirma.Close;
      FrmMain.ChkMadre.Checked:=True;
    except
      exit;
    end
  else if FlgTutore then
    try
      Image1.Picture.Bitmap.Monochrome:=True;
      Image1.Picture.SaveToFile(PathEXE+'TempFirma.bmp');
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_TUTORE.LoadFromFile(PathEXE+'TempFirma.bmp');
      DM.PazientiPADRE.AsBoolean:=False;
      DM.PazientiMADRE.AsBoolean:=False;
      DM.PazientiTUTORE.AsBoolean:=True;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      FrmFirma.Close;;
      FrmMain.ChkTutore.Checked:=True;
      FrmMain.ChkPadre.Checked:=False;
      FrmMain.ChkPadre.Checked:=False;
    except
      exit;
    end;
  FlgTutore:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgPaziente:=False;
  FrmFirma.Close;

end;

procedure TFrmFirma.FormShow(Sender: TObject);
begin
  Height:=800;
  Width:=1208;
  //sizing(wsMaximized);

  try
    if FlgPaziente then
      begin
        if not (DM.PazientiFIRMA.IsNull) then Image1.Picture.Assign(DM.PazientiFIRMA)
        else Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Blank.bmp');
      end
    else if FlgPadre then
      begin
        if not (DM.PazientiFIRMA_PADRE.IsNull) then Image1.Picture.Assign(DM.PazientiFIRMA_PADRE)
        else Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Blank.bmp');
      end
    else if FlgMadre then
      begin
        if not (DM.PazientiFIRMA_MADRE.IsNull) then Image1.Picture.Assign(DM.PazientiFIRMA_MADRE)
        else Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Blank.bmp');
      end
    else if FlgTutore then
      begin
        if not (DM.PazientiFIRMA_TUTORE.IsNull) then Image1.Picture.Assign(DM.PazientiFIRMA_TUTORE)
        else Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Blank.bmp');
      end
  except
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Blank.bmp');
  end;
end;

procedure TFrmFirma.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Tiene traccia che il mouse è stato premuto
  Start:=True;
  Stop:=False;
  StartX:=X;
  StartY:=Y;
  Image1.Canvas.MoveTo(StartX,StartY);
end;

procedure TFrmFirma.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Start:=False;
  Stop:=True;
end;

procedure TFrmFirma.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Image1.Canvas.Pen.Width:=5;
  StartX:=X;
  StartY:=Y;
  if Start then Image1.Canvas.LineTo(StartX+3,StartY+3)
  else exit;
end;

procedure TFrmFirma.suitempsuiButton2Click(Sender: TObject);
begin
  Close;
end;


procedure TFrmFirma.suitempsuiButton3Click(Sender: TObject);
begin
  if FlgPaziente then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end
  else if FlgPadre then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_PADRE.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end
  else if FlgMadre then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_MADRE.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end
  else if FlgTutore then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_TUTORE.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end
end;

procedure TFrmFirma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if Image1.Picture.Bitmap <>nil then
    try
      Image1.Picture.Bitmap.Monochrome:=True;
      Image1.Picture.SaveToFile(ExtractFilePath(Application.ExeName)+'TempFirma.bmp');
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.LoadFromFile(ExtractFilePath(Application.ExeName)+'TempFirma.bmp');
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end; }
end;


end.























































