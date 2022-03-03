unit U_Licenza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, AdvPanel, StdCtrls, Registry;

type
  TFrmLicenza = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdUtente: TLabel;
    EdIndirizzo: TLabel;
    EdCap: TLabel;
    EdCitta: TLabel;
    EdCode: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelMessage: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLicenza: TFrmLicenza;
  Reg:TRegistry;

implementation

uses U_DM, U_Main;

{$R *.dfm}


procedure DisableProcessWindowsGhosting;
var
  DisableProcessWindowsGhostingProc: procedure;
begin
  DisableProcessWindowsGhostingProc := GetProcAddress(GetModuleHandle('user32.dll'),
  'DisableProcessWindowsGhosting');
  if Assigned(DisableProcessWindowsGhostingProc) then
  DisableProcessWindowsGhostingProc;
end;


procedure TFrmLicenza.FormShow(Sender: TObject);
begin
 try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\ORAL-DB',True);
    EdUtente.Caption:=Reg.ReadString('Ragione Sociale');
    EdIndirizzo.Caption:=Reg.ReadString('Indirizzo');
    EdCap.Caption:=Reg.ReadString('Cap');
    EdCitta.Caption:=Reg.ReadString('Città')+' ('+Reg.ReadString('Prov')+')';
    EdCode.Caption:=Reg.ReadString('Code');
    Label5.Caption:=Reg.ReadString('HDID');
  finally
    Reg.Free;
  end;
end;

end.
