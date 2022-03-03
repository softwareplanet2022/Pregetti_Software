unit U_Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls;

type
  TSplashScreen = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashScreen: TSplashScreen;

implementation

uses U_Main;

{$R *.dfm}

procedure TSplashScreen.FormShow(Sender: TObject);
begin
  Width:=582;
  Height:=360;
end;

procedure TSplashScreen.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
