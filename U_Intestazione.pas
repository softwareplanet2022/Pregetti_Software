unit U_Intestazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, AdvGlowButton, AdvPanel, ExtCtrls, ShellAPI;

type
  TFrmIntestazione = class(TForm)
    AdvPanel1: TAdvPanel;
    SIConferma: TAdvGlowButton;
    SIAnnulla: TAdvGlowButton;
    ImageList1: TImageList;
    RichEdit1: TRichEdit;
    AdvGlowButton1: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure SIAnnullaClick(Sender: TObject);
    procedure SIConfermaClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIntestazione: TFrmIntestazione;
  PathEXE:String;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmIntestazione.FormShow(Sender: TObject);
begin
  PathEXE:=ExtractFilePath(Application.ExeName);
  RichEdit1.Lines.LoadFromFile(PathEXE+'Intestazione.rtf');
end;

procedure TFrmIntestazione.SIAnnullaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmIntestazione.SIConfermaClick(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(PathEXE+'Intestazione.rtf');
  Close;
end;

procedure TFrmIntestazione.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
  ShellExecute(Handle,'Open',PChar(PathEXE+'Intestazione.rtf'),'',Nil,SW_SHOWNORMAL);
end;

end.
