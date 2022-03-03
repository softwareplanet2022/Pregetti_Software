unit U_BCK;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, FileCtrl, ImgList, Db, INIFiles, DateUtils,
  DBTables, ShellAPI, regware2,Registry,DBAccess, MyDacVcl,
  MyAccess, MyBackup, DADump, MyDump, AdvGlowButton, AdvPanel, AdvOfficeHint,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxProgressBar, dxGDIPlusClasses,
  AdvReflectionLabel, RxCtrls, RxGIF;

type
  TFrmBackup = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Label2: TLabel;
    Bevel1: TBevel;
    TbCrea: TAdvGlowButton;
    TbRipristina: TAdvGlowButton;
    TbAnnulla: TAdvGlowButton;
    MyConnection1: TMyConnection;
    MyDump1: TMyDump;
    ImageList1: TImageList;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    AdvOfficeHint1: TAdvOfficeHint;
    PB: TcxProgressBar;
    Image1: TImage;
    RxLabel1: TRxLabel;
    Timer1: TTimer;
    procedure TbCreaClick(Sender: TObject);
    procedure TbRipristinaClick(Sender: TObject);
    procedure TbAnnullaClick(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure MyDump1BackupProgress(Sender: TObject; ObjectName: String;
      ObjectNum, ObjectCount, Percent: Integer);
    procedure MyDump1RestoreProgress(Sender: TObject; Percent: Integer);
    procedure MyConnection1BeforeConnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrmBackup: TFrmBackup;
  Reg:TRegistry;
  SaveDir:String;
  Dt,ListaFiles:TStrings;
  BtnIndex:integer=0;
  OpticSetIni:TIniFile;
  SetIni,ListeIni:TIniFile;
  CurrServer, CurrDatabase,
  CurrUserName, CurrPassword:String;
  PathEXE:String;
  PathBackup:String;
  BCK:String;

implementation


{$R *.DFM}

uses U_Main;



procedure TFrmBackup.TbCreaClick(Sender: TObject);
var
 Anno,Mese,Giorno:String;
 BckFile:String;
begin
  PathEXE:=ExtractFilePath(Application.ExeName);
  TbAnnulla.Enabled:=False;
  Anno:=IntToStr(YearOf(Now));
  Mese:=IntToStr(MonthOf(Now));
  Giorno:=IntToStr(DayOf(Now));

  {Se non esiste una directory di default specificata nel file set.ini allora
  viene creata una nella directory principale del programma}
  if PathBackup='' then
    begin
      if not DirectoryExists(PathEXE+'BACKUP')then CreateDir(PathEXE+'BACKUP');
      PathBackup:=PathEXE+'BACKUP';
    end;

  BckFile:='Backup-'+Giorno+'-'+Mese+'-'+Anno+'.sql';

  SaveDialog.InitialDir:=PathBackup;
  SaveDialog.FileName:=BckFile;

  if SaveDialog.Execute then
    try
      PB.Height:=20;
      PB.Visible:=True;
      MyDump1.BackupToFile(SaveDialog.FileName);
      TbAnnulla.Enabled:=True;
      TbAnnulla.Caption:='Chiudi';
      TbAnnulla.ImageIndex:=7;
      TbAnnulla.Enabled:=True;
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('Copia di Backup dati creata con successo in '+#13+#13+
                              Uppercase(PathBackup)),'Backup Dati',MB_OK+MB_ICONINFORMATION);
      Close;

    except
      TbAnnulla.Caption:='Chiudi';
      TbAnnulla.ImageIndex:=5;
      TbAnnulla.Enabled:=True;
      Screen.Cursor:=crDefault;
      Application.MessageBox('Procedura di Backup dati fallita.'+
                             'Si consiglia consultare l''assistenza tecnica',
                             'Backup Dati',MB_OK+MB_ICONERROR);
    end;
end;

procedure TFrmBackup.TbRipristinaClick(Sender: TObject);
begin
  OpenDialog.InitialDir:=PathEXE+'BACKUP';
  if OpenDialog.Execute then
    try
      TbAnnulla.Enabled:=False;
      TbCrea.Enabled:=False;
      Application.ProcessMessages;
      PB.Position:=0;
      PB.Height:=20;
      PB.Visible:=True;
      MyDump1.RestoreFromFile(OpenDialog.FileName);
      TbAnnulla.Enabled:=True;
      TbCrea.Enabled:=True;
      Application.MessageBox('Ripristino Dati completato con successo.'+#13+#13+
                             'Riavviare il programma per rendere effettive le modifiche apportate',
                             'Ripristino Dati',MB_OK+MB_ICONINFORMATION);
      Close;
    except
      Application.MessageBox('Ripristino Dati Fallito. E'' consigliabile rivolgersi all''assistenza tecnica',
                             'Ripristino Dati',MB_OK+MB_ICONERROR);
      Close;
    end;
end;

procedure TFrmBackup.Timer1Timer(Sender: TObject);
var
 Anno,Mese,Giorno:String;
 BckFile:String;
begin
  PathEXE:=ExtractFilePath(Application.EXEName);
  Timer1.Enabled:=False;
  if AutoBackup then
    begin
      if PathBackup='' then
        begin
          if not DirectoryExists(PathEXE+'BACKUP')then CreateDir(PathEXE+'BACKUP');
          PathBackup:=PathEXE+'BACKUP';
        end;

      Anno:=IntToStr(YearOf(Now));
      Mese:=IntToStr(MonthOf(Now));
      Giorno:=IntToStr(DayOf(Now));

      BckFile:='Backup-'+Giorno+'-'+Mese+'-'+Anno+'.sql';
      PB.Height:=20;
      PB.Visible:=True;
      TbAnnulla.Enabled:=True;
      TbAnnulla.Caption:='Chiudi';
      TbAnnulla.ImageIndex:=7;
      TbAnnulla.Enabled:=True;
      Application.ProcessMessages;
      MyDump1.BackupToFile(PathBackup+'\'+BckFile);
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('Copia di Backup dati creata con successo in '+#13+#13+
                              Uppercase(PathBackup)),'Backup Dati',MB_OK+MB_ICONINFORMATION);
      Close;
    end;
end;

procedure TFrmBackup.TbAnnullaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBackup.DirectoryListBox1Change(Sender: TObject);
begin
  TbRipristina.Enabled:=False;
end;


procedure TFrmBackup.MyDump1BackupProgress(Sender: TObject;
  ObjectName: String; ObjectNum, ObjectCount, Percent: Integer);
begin
  PB.Position:=Percent;
  Application.ProcessMessages;
end;

procedure TFrmBackup.MyDump1RestoreProgress(Sender: TObject;
  Percent: Integer);
begin
  PB.Position:=Percent+1;
  Application.ProcessMessages;
end;

procedure TFrmBackup.FormShow(Sender: TObject);
begin
  Height:=265;
  Timer1.Enabled:=InChiusura;
end;

procedure TFrmBackup.MyConnection1BeforeConnect(Sender: TObject);
var
  SetIni:TInifile;
begin
  try
    SetIni:=TIniFile.Create(GetCurrentDir+'\SET.ini');
    MyConnection1.Server:=SetIni.ReadString('Accesso','SERVER','localhost');
    MyConnection1.Database:=SetIni.ReadString('Accesso','DATABASE','oral-db');
    MyConnection1.Username:=SetIni.ReadString('Accesso','USERNAME','root');
    MyConnection1.Password:=SetIni.ReadString('Accesso','PASSWORD','');
  finally
    SetIni.Free;
  end;
end;


procedure TFrmBackup.FormCreate(Sender: TObject);
var
  ListeIni:TInifile;
begin
  try
    ListeIni:=TIniFile.Create('.\Liste.ini');
    PathBackup:=ListeIni.ReadString('IMPOSTAZIONI VARIE','BACKUP','');
  finally
    ListeIni.Free;
  end;
end;


end.
