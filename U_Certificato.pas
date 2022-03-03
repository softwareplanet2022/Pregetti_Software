unit U_Certificato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, WPRuler, WPCTRRich, WPTbar, WPRTEDefs,
  WPCTRMemo, DB, DBTables, Buttons, WPPanel, IniFiles, MemDS, DBAccess,
  MyAccess;

type
  TFrmCertificato = class(TForm)
    WPRichText1: TWPRichText;
    WPToolbar1: TWPToolbar;
    WPVertRuler1: TWPVertRuler;
    WPRuler1: TWPRuler;
    WPToolButton1: TWPToolButton;
    procedure FormShow(Sender: TObject);
    procedure WPToolButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AllegaDocumento;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FrmCertificato: TFrmCertificato;
  ListeIni:TIniFile;
  PathCertificati:String;
  FileSaved:Boolean=False;

  ID_CLIENTE:Integer;

implementation

uses U_DM, U_Main;

{$R *.dfm}


procedure TFrmCertificato.AllegaDocumento;
var
  Path:String;
  Destinazione:String;
  NomeFile:String;
  DateStr:String;
  DD,MM,YYYY:String;
begin
  try
    DateStr:=DateToStr(Now);
    DD:=Copy(DateStr,0,2);
    MM:=Copy(DateStr,4,2);
    YYYY:=Copy(DateStr,7,4);
    DateStr:=DD+'-'+MM+'-'+YYYY;
    ListeIni:=TIniFile.Create('.\Liste.ini');
    PathCertificati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');
    if PathCertificati<>''then
      begin
        if not DirectoryExists(PathCertificati)then ForceDirectories(PathCertificati);
        if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then
          CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
        Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
        if FileToOpen='Ricetta.rtf' then NomeFile:='Ricetta del '+DateStr+' - '+DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString+'.rtf'
        else if FileToOpen='Certificato.rtf' then NomeFile:='Certificato del '+DateStr+' - '+DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString+'.rtf'
        else NomeFile:='Certificato del '+DateStr+'.rtf';
        try
          WPRichText1.SaveToFile(Destinazione+'\'+NomeFile);
          Application.MessageBox('Salvataggio file avvenuto con successo','Documento Salvato',MB_OK+MB_ICONINFORMATION);
          FileSaved:=True;
          FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
          FrmMain.ShellListView2.Root:=Destinazione;
          FrmMain.ShellListView2.Repaint;
        except
          Application.MessageBox('Errore salvataggio file?','Errore',MB_OK+MB_IConError);
        end;
      end;
  finally
    ListeIni.Free;
  end;
end;




procedure TFrmCertificato.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if FileSaved then Exit
  else if Application.MessageBox('Si desidera salvate il documento corrente?',
                                 'Salva Documento',MB_YESNO+MB_ICONWARNING)=Id_Yes then
    AllegaDocumento;
end;

procedure TFrmCertificato.FormShow(Sender: TObject);
var
  Path:String;
  Tab:char;
  i:integer;
begin
  FileSaved:=False;
  Tab:=chr(9);
  WPToolButton1.Left:=2;
  WPToolButton1.Top:=2;
  WPToolButton1.Visible:=True;
  WPToolButton1.BringToFront;

  Path:=ExtractFilePath(Application.Exename);

  if FileToOpen<>''then WPRichText1.LoadFromFile(Path+FileToOpen)
  else WPRichText1.LoadFromFile(Path+'Certificato.rtf');

  WPRichText1.CPPosition := 4;


  WPRichText1.InputString(#13);

  for i:=1 to 9 do WPRichText1.InputString(tab);
  WPRichText1.InputString('Sig./Sig.ra');
  WPRichText1.InputString(#13);

  for i:=1 to 9 do WPRichText1.InputString(tab);
  WPRichText1.InputString(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString);
  WPRichText1.InputString(#13);
  for i:=1 to 9 do WPRichText1.InputString(tab);
  WPRichText1.InputString(DM.PazientiIndirizzo.AsString);
  WPRichText1.InputString(#13);

  for i:=1 to 9 do WPRichText1.InputString(tab);
  WPRichText1.InputString(DM.PazientiCap.AsString+'  '+DM.PazientiCitta.AsString+'  '+DM.PazientiProv.AsString);
  WPRichText1.InputString(#13);
  WPRichText1.InputString(#13);
  WPRichText1.InputString(#13);

  WIDTH:=WIDTH+1;
  WIDTH:=WIDTH-1;
end;



procedure TFrmCertificato.WPToolButton1Click(Sender: TObject);
begin
  AllegaDocumento;
end;

end.

