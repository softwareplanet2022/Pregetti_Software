unit U_Editor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Tx4oleLib_TLB, OleCtrls, ExtCtrls, SpeedBar, Menus, RxMenus, ComCtrls,
  ToolWin, ExtDlgs, Printers, StdCtrls, Db, DBTables, SplshWnd, DbOleCtl,
  SUIMgr, SUIMainMenu, SUIForm;

type
  TFrmEditor = class(TForm)
    OpenDlg: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    PrnDlg: TPrintDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Taglia1Click(Sender: TObject);
    procedure Copia1Click(Sender: TObject);
    procedure Incolla1Click(Sender: TObject);
    procedure Caratteri1Click(Sender: TObject);
    procedure Patagrafo1Click(Sender: TObject);
    procedure Apri1Click(Sender: TObject);
    procedure Salva1Click(Sender: TObject);
    procedure SalvaConNomeClick(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure Inserisci2Click(Sender: TObject);
    procedure GridClick(Sender: TObject);
    procedure CancellaLinea1Click(Sender: TObject);
    procedure Normale1Click(Sender: TObject);
    procedure Pagina1Click(Sender: TObject);
    procedure Estesa1Click(Sender: TObject);
    procedure Propriet1Click(Sender: TObject);
    procedure N351Click(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N751Click(Sender: TObject);
    procedure N1001Click(Sender: TObject);
    procedure N2001Click(Sender: TObject);
    procedure Immagine1Click(Sender: TObject);
    procedure Setuppagina1Click(Sender: TObject);
    procedure Stampa1Click(Sender: TObject);
    procedure Anteprimadistampa1Click(Sender: TObject);
    procedure Interruzionedipagina1Click(Sender: TObject);
    procedure Cognome1Click(Sender: TObject);
    procedure Nome1Click(Sender: TObject);
    procedure Indirizzo1Click(Sender: TObject);
    procedure Citt1Click(Sender: TObject);
    procedure Cap1Click(Sender: TObject);
    procedure Provincia1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Nuovo1Click(Sender: TObject);
  private
    { Private declarations }
    FHandle: Integer;
    FileType: Integer;
  public
    { Public declarations }
    procedure CreateTheFile(FileName: String);
    procedure TXSave(FileName: String);
    function FindField(Nome: String): Integer;
    procedure InsertCampo(Nome: String);
    function UserMsg(Titolo, Testo: string; Tipo: Integer): Integer;
  end;

  //procedure Call_Editor(h: THandle);stdcall;export;

const
  CLIP_CUT=1;
  CLIP_COPY=2;
  CLIP_PASTE=3;
  CLIP_CLEAR=4;
  TXT_FILE=3;
  HTML_FILE=4;
  RTF_FILE=5;
  TX_FILE=3;
  DOC_FILE=9;
  FILE_FILTERS='Rich Text Format (*.Rtf)|*.Rtf|File di testo (*.Txt)|*.Txt|Tx File (*.Tx)|*.Tx';
  UNTITLED='Documento senza nome';

var
  FrmEditor: TFrmEditor;
  Anteprima: OleVariant;

implementation

uses U_InsertTable, U_SetPage, U_Anteprima, SendKeys, U_Main;

{$R *.DFM}

{procedure Call_Editor(h: THandle);
begin
  try
    h:=Application.Handle;
    Application.CreateForm(TFrmEditor,FrmEditor);
    FrmEditor.ShowModal;
  finally
    FrmEditor.Free;
  end;
end;}


{************************************ Message Box by API **********************************}
function MsgBox(HWnd: Integer; Text, Caption: PChar; Flags: Integer): Integer;
  stdcall; external 'USER32.DLL' name 'MessageBoxA';


function TFrmEditor.UserMsg(Titolo, Testo: string; Tipo: Integer): Integer;
// Chiamata a procedura API per visualizzare una dialog box
begin
   try
     SetLength(Titolo,StrLen(PChar(Titolo)));
     SetLength(Testo,StrLen(PChar(Testo)));
     Result:=MsgBox(Application.Handle,
                    PChar(Testo),PChar(Titolo),Tipo+MB_TASKMODAL+MB_DEFBUTTON2);
   except
     on EWin32Error do Result := 0;	{ handle the exception only if needed }
   end;
end;


procedure TFrmEditor.InsertCampo(Nome: String);
begin
  BlankPage.FieldInsert(Nome);
  BlankPage.FieldEditAttr[BlankPage.FieldCurrent]:=$10+$8+$1;
  BlankPage.FieldData[BlankPage.FieldCurrent]:=Nome;
  BlankPage.FieldChangeable:=false;
end;

function TFrmEditor.FindField(Nome: String): Integer;
var
  Id,FoundId: Integer;
  NomeTmp: OleVariant;
begin
  FoundId:=0;
  Id:=BlankPage.FieldNext(0,0);
  while Id<>0 do
    begin
      if BlankPage.FieldData[Id]=Nome then FoundId:=Id;
      Id:=BlankPage.FieldNext(Id,0);
    end;
  if FoundId<>0 then Result:=FoundId
  else Result:=0;
end;

procedure TFrmEditor.CreateTheFile(FileName: String);
var
  f: File;
begin
  AssignFile(f, FileName);
  Rewrite(f);
  CloseFile(f);
end;

procedure TFrmEditor.TXSave(FileName: String);
begin
  if FileType<>HTML_File then
   begin
     if not FileExists(FileName) then CreateTheFile(FileName);
     BlankPage.Save(FileName, 0, FileType, True);
   end else Application.MessageBox('Formato di file non supportato!', 'Errore', mb_OK);
end;

procedure TFrmEditor.FormCreate(Sender: TObject);
begin
  BlankPage.ButtonBarHandle:=BtnBar.Handle;
  BlankPage.RulerHandle:=Rul.Handle;
  BlankPage.StatusBarHandle:=SBar.Handle;
  BlankPage.ViewMode:=2;
  BlankPage.ZoomFactor:=75;
  Caption:=UNTITLED;
  { Delphi specific: Required for selecting a word with
    double click and for using the OnDblClick event }
  BlankPage.ControlStyle:=BlankPage.ControlStyle+[csDoubleClicks]
end;

procedure TFrmEditor.FormResize(Sender: TObject);
begin
  BtnBar.Width:=ClientWidth;
  Rul.Width:=ClientWidth;
  SBar.Top:=ClientHeight-SBar.Height;
  BlankPage.Width:=ClientWidth;
  SBar.Width:=ClientWidth;
  BlankPage.Height:=ClientHeight-BtnBar.Height-Rul.Height-SBar.Height;
end;

procedure TFrmEditor.Taglia1Click(Sender: TObject);
begin
  BlankPage.Clip(CLIP_CUT);
end;

procedure TFrmEditor.Copia1Click(Sender: TObject);
begin
  BlankPage.Clip(CLIP_COPY);
end;

procedure TFrmEditor.Incolla1Click(Sender: TObject);
begin
  BlankPage.Clip(CLIP_PASTE);
end;

procedure TFrmEditor.Caratteri1Click(Sender: TObject);
begin
  BlankPage.FontDialog;
end;

procedure TFrmEditor.Patagrafo1Click(Sender: TObject);
begin
  BlankPage.ParagraphDialog;
end;

procedure TFrmEditor.Apri1Click(Sender: TObject);
var
  FExt: String;
begin
  OpenDlg.Filter := FILE_FILTERS;
  if OpenDlg.Execute then
   begin
     FileType:=0;
     FExt:=UpperCase(ExtractFileExt(OpenDlg.FileName));
     if fExt = '.TXT'  then FileType := TXT_FILE
     else if fExt = '.RTF' then FileType := RTF_FILE
     else if (fExt = '.HTM') or (fExt = '.HTML') then FileType := HTML_FILE
     else if (fExt = '.TX') then FileType := TX_FILE;
     if FileType<>0 then
      begin
        with BlankPage do
          begin
            Load(OpenDlg.FileName, 0, FileType, false);
            Caption := OpenDlg.FileName;
          end;
      end else Application.MessageBox('Formato di file non supportato!', 'Errore', mb_OK);
   end;
end;

procedure TFrmEditor.Salva1Click(Sender: TObject);
begin
  if Caption=UNTITLED then
    begin SalvaconNome.OnClick(Sender) end
  else begin TXSave(Caption) end;
end;

procedure TFrmEditor.SalvaConNomeClick(Sender: TObject);
var
  FExt: String;
begin
   SaveDialog1.Filter := FILE_FILTERS;
   SaveDialog1.DefaultExt := 'Txt';
   if SaveDialog1.Execute then begin
      FExt := UpperCase(ExtractFileExt(SaveDialog1.FileName));
           if FExt = '.TXT'  then FileType := TXT_FILE
      else if FExt = '.RTF' then FileType := RTF_FILE
      else if (fExt = '.HTM') or (fExt = '.HTML') then FileType := HTML_FILE
      else begin
        Application.MessageBox('Formato di file non supportato!', 'Errore', mb_OK);
        exit;
      end;
      TXSave(SaveDialog1.Filename);
      Caption := SaveDialog1.FileName;
   end;
end;

procedure TFrmEditor.Esci1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEditor.Inserisci2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmInsTable,FrmInsTable);
    FrmInsTable.ShowModal;
  finally
    FrmInsTable.Free;
  end;
end;

procedure TFrmEditor.GridClick(Sender: TObject);
begin
  if Grid.Checked then Grid.Checked:=False
  else Grid.Checked:=True;
  BlankPage.TableGridLines:=Grid.Checked;
end;

procedure TFrmEditor.CancellaLinea1Click(Sender: TObject);
begin
  if BlankPage.TableCanDeleteLines then BlankPage.TableDeleteLines;
end;

procedure TFrmEditor.Normale1Click(Sender: TObject);
begin
  Normale1.Checked:=True;
  BlankPage.ViewMode:=0;
end;

procedure TFrmEditor.Pagina1Click(Sender: TObject);
begin
  Pagina1.Checked:=True;
  BlankPage.ViewMode:=1;
end;

procedure TFrmEditor.Estesa1Click(Sender: TObject);
begin
  Estesa1.Checked:=True;
  BlankPage.ViewMode:=2;
end;

procedure TFrmEditor.Propriet1Click(Sender: TObject);
begin
  BlankPage.TableAttrDialog;
end;

procedure TFrmEditor.N351Click(Sender: TObject);
begin
  BlankPage.ZoomFactor:=30;
end;

procedure TFrmEditor.N501Click(Sender: TObject);
begin
  BlankPage.ZoomFactor:=50;
end;

procedure TFrmEditor.N751Click(Sender: TObject);
begin
  BlankPage.ZoomFactor:=75;
end;

procedure TFrmEditor.N1001Click(Sender: TObject);
begin
  BlankPage.ZoomFactor:=100;
end;

procedure TFrmEditor.N2001Click(Sender: TObject);
begin
  BlankPage.ZoomFactor:=200;
end;

procedure TFrmEditor.Immagine1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    begin
      BlankPage.ObjectInsertAsChar(OpenPictureDialog1.Handle,OpenPictureDialog1.FileName,-1,100,100,0,1);
    end;
end;

procedure TFrmEditor.Setuppagina1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSetPage,FrmSetPage);
    FrmSetPage.ShowModal;
  finally
    FrmSetPage.Free;
  end;
end;

procedure TFrmEditor.Stampa1Click(Sender: TObject);
var
  wPages,No,Start,Stop: Integer;
begin
  PrnDlg.Options:=[poPageNums, poWarning];
  PrnDlg.FromPage:=1;
  PrnDlg.MinPage:=1;
  PrnDlg.ToPage:=BlankPage.CurrentPages;
  PrnDlg.MaxPage:=BlankPage.CurrentPages;
  if PrnDlg.Execute then
    begin
      with PrnDlg do
        begin
          if PrintRange=prAllPages then
            begin
              Start:=MinPage-1;
              Stop:=MaxPage-1;
            end
          else if PrintRange=prPageNums then
                 begin
                   Start:=FromPage-1;
                   Stop:=ToPage-1;
                 end;
        end;
      wPages:=BlankPage.CurrentPages;
      Printer.BeginDoc;
      for no:=Start to Stop do
        begin
          BlankPage.PrintDevice:=Printer.Handle;
          BlankPage.PrintPage(no);
          if no<>Stop then Printer.NewPage;
        end;
      Printer.EndDoc;
    end;
end;

procedure TFrmEditor.Anteprimadistampa1Click(Sender: TObject);
begin
  Anteprima:=BlankPage.SaveToMemory(RTF_FILE,True);
  try
    Application.CreateForm(TFrmAnteprima,FrmAnteprima);
    FrmAnteprima.ShowModal;
  finally
    FrmAnteprima.Free;
  end;
end;


procedure TFrmEditor.Interruzionedipagina1Click(Sender: TObject);
begin
  SendKeysToHandle(BlankPage.Handle,SK_CTRL_DN+SK_ENTER);
  SendKeysToHandle(BlankPage.Handle,SK_CTRL_UP);
end;

procedure TFrmEditor.Cognome1Click(Sender: TObject);
begin
  InsertCampo('Cognome');
end;

procedure TFrmEditor.Nome1Click(Sender: TObject);
begin
  InsertCampo('Nome');
end;

procedure TFrmEditor.Indirizzo1Click(Sender: TObject);
begin
  InsertCampo('Indirizzo');
end;

procedure TFrmEditor.Citt1Click(Sender: TObject);
begin
  InsertCampo('Citta');
end;

procedure TFrmEditor.Cap1Click(Sender: TObject);
begin
  InsertCampo('Cap');
end;

procedure TFrmEditor.Provincia1Click(Sender: TObject);
begin
  InsertCampo('Prov');
end;

procedure TFrmEditor.FormShow(Sender: TObject);
begin
  MainMenu.BarColor:=$0094E6FB;
  MainMenu.BarToColor:=$0078C4F5;
  MainMenu.SelectedBorderColor:=$0078C4F5;
  MainMenu.SelectedColor:=$0078C4F5;
  MainMenu.SelectedFontColor:=clBlack;
  MainMenu.MenuItemHeight:=22;

  FileType:=0;
  FileType := RTF_FILE;
  BlankPage.Load('Ricetta.rtf', 0, FileType, false);
  Caption:='Ricetta.rtf';

  {FileType:=0;
  FileType:=DOC_FILE;
  BlankPage.Load('Ricetta.DOC', 0, FileType, false);
  Caption:='RICETTA.DOC';}
end;

procedure TFrmEditor.Nuovo1Click(Sender: TObject);
begin
  {if BlankPage.Text='' then }BlankPage.ResetContents;
end;


end.
