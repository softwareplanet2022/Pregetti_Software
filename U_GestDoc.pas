unit U_GestDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, StdCtrls, RXSpin,BDE,DBTables, MyAccess, MyClasses,
  MyCall, DBAccess, MemDS, ExtCtrls,DB,
  ToolWin, ShellAPI, AdvGlowButton, AdvOfficeHint, AdvPanel, Vcl.Mask;

type
  TFrmGestDoc = class(TForm)
    ImGestione: TImageList;
    StaticText2: TStaticText;
    RxSpAnno: TRxSpinEdit;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    SICrea: TAdvGlowButton;
    SIApri: TAdvGlowButton;
    SIElimina: TAdvGlowButton;
    SIUscita: TAdvGlowButton;
    TVRaccoglitori: TTreeView;
    ProgressBar: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure CreaTabelle;
    procedure CreaRaccoglitore(Sender: TObject);
    procedure SICreaClick(Sender: TObject);
    procedure SIUscitaClick(Sender: TObject);
    procedure SIApriClick(Sender: TObject);
    procedure SIEliminaClick(Sender: TObject);
    procedure Copiafile(sorgente,destinazione : string);
    procedure suitempTVRaccoglitoriGetSelectedIndex(Sender: TObject;Node: TTreeNode);
    function DeleteDir(DirName : string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  AliasDocumenti='ORALDBDOC';


var
  FrmGestDoc: TFrmGestDoc;
  PathEXE:String;
  PathDoc:String;
  AnnoDocumentazione:Integer;
  RootNode:TTreeNode;
  PathAlias:String;
  CurrAzienda:String;
  function GetPathAlias(NomeAlias:String):String;

implementation

uses U_DM, U_Main;


{$R *.dfm}

function GetPathAlias(NomeAlias:String):String;
var
  MyStringList:TStringList;
begin
  MyStringList:=TStringList.Create;
  Session.GetAliasParams(NomeAlias,MyStringList);
  Result:=Copy(MyStringList.Strings[0],6,255);
end;


procedure TFrmGestDoc.FormShow(Sender: TObject);
var
  i:Integer;
  AnnoDocumentazione:Integer;
  AnnoCorrente:Integer;
begin
  ProgressBar.Height:=21;
  PathEXE:=GetPathAlias(AliasDocumenti);
  AnnoDocumentazione:=StrToInt(Copy(PathEXE,(Length(PathEXE)-3),4));
  Delete(PathEXE,(Length(PathEXE)-13),15);
  Caption:='Gestione Documenti - Anno Attivo: '+IntToStr(AnnoDocumentazione);
  AnnoCorrente:=CurrentYear;
  RxSpAnno.AsInteger:=CurrentYear;
  if DirectoryExists(PathEXE+'\Documenti'+IntToStr(CurrentYear)) then
    begin
      Caption:='Gestione Documenti - Anno Corrente: '+IntToStr(AnnoDocumentazione);
      RxSpAnno.Value:=AnnoDocumentazione;
    end;

  with TVRaccoglitori.Items do
  begin
    Clear;
    //aggiunge un nodo radice
    Add(nil,'Archivio');
    //primo Nodo
    RootNode:=TVRaccoglitori.Items[0];
    Item[0].ImageIndex:=0;
    Item[0].SelectedIndex:=0;
    for i:=2013 to 2023do
      if DirectoryExists(PathEXE+'\Documenti'+IntToStr(i)) then
        begin
          AddChild (RootNode,'Documenti'+IntToStr(i));
          Item[Count-1].ImageIndex:=0;
          Item[Count-1].SelectedIndex:=0;
          //se l'anno e quello corrente
          if i=AnnoDocumentazione then Item[Count-1].Selected := True;
     end;
  end;
  TVRaccoglitori.Items.Item[0].Selected:=True;
  Caption := 'Anno Documentazione corrente: ['+IntToStr(AnnoDocumentazione)+']';
  TVRaccoglitori.Items[0].Expand(True);
end;


procedure ModificaPathAlias(NomeAlias,NewPathAlias:String);
var
  MyStringList:TStringList;
begin
  MyStringList:=TStringList.Create;
  if Session.IsAlias(NomeAlias) then
    begin
      Session.GetAliasParams(NomeAlias,MyStringList);
      MyStringList.Clear;
      MyStringList.Add('PATH=' + NewPathAlias);
      Session.ModifyAlias(NomeAlias,MyStringList);
      Session.SaveConfigFile;
      MyStringList.Free;
    end
  else Session.AddStandardAlias(AliasDocumenti,NewPathAlias,'PARADOX');
  Session.SaveConfigFile;
end;




procedure TFrmGestDoc.Copiafile(sorgente,destinazione : string);
var
  FromF,ToF:file;
  NumRead,NumWritten:Integer;
  Buf: array[1..2048] of Char;
begin
  AssignFile(FromF, sorgente);
  Reset(FromF, 1);	{ Record size = 1 }
  AssignFile(ToF, destinazione);	{ Open output file }
  Rewrite(ToF, 1);	{ Record size = 1 }
  repeat
    BlockRead(FromF, Buf, SizeOf(Buf), NumRead);
    BlockWrite(ToF, Buf, NumRead, NumWritten);
  until (NumRead = 0) or (NumWritten <> NumRead);
    CloseFile(FromF);
    CloseFile(ToF);
end;



procedure TFrmGestDoc.CreaTabelle;
var
  DirBaseDoc,DirNewDoc:string;
  SearchRec:TSearchrec;
  Path:String;
begin
  DirBaseDoc:=PathEXE+'\Documenti';
  DirNewdoc:=PathEXE+'\Documenti'+IntToStr(RxSpAnno.AsInteger);
  if not DirectoryExists(DirNewDoc)then CreateDir(DirNewDoc);
  if FindFirst(DirBaseDoc+'\*.*',faAnyFile, SearchRec)=0 then;
      while FindNext(Searchrec)=0 do
        if(searchrec.name<>'.')and(searchrec.name<>'..')and(searchRec.Attr<>faDirectory)then
          begin
            Copiafile(DirBaseDoc+'\'+searchrec.name,DirNewDoc+'\'+searchrec.name);
            ProgressBar.Position:=ProgressBar.Position+1;
          end;

    ProgressBar.Position:=0;

    if Application.MessageBox(PChar('Raccoglitore Creato con Successo'+#13+#13+
                                    'Si desidera rendere attivo il raccoglitore appena creato?'),
                                    'Conferma',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
      begin
        ModificaPathAlias('ORALDBDOC',DirNewdoc);
        Session.SaveConfigFile;
        Application.MessageBox('Riavviare il Programma per rendere effettive le modifiche apportate',
                               'Riavvio Programma',MB_OK+MB_ICONINFORMATION);
        Close;
        Application.Terminate;
      end;
end;


procedure TFrmGestDoc.CreaRaccoglitore(Sender: TObject);
var
  Temp:String;
begin
  if not DirectoryExists(PathEXE+'\Documenti'+IntToStr(RxSpAnno.AsInteger))then
    if Application.MessageBox(Pchar('Verrà ora creato un nuovo raccoglitore relativo all''anno '+
      FloatToStr(RxSpAnno.Value)+ '.' + #13 + '                         Si desidera proseguire? '),
      'Controllo Directory',MB_YESNO+MB_ICONQUESTION)=IDYes then
        begin
          CreateDir(PathEXE+'\Documenti'+FloatToStr(RxSpAnno.Value));
          RootNode := TVRaccoglitori.Items[0];
          TVRaccoglitori.Items.AddChild(RootNode,'Documenti'+FloatToStr(RxSpAnno.Value));
          TVRaccoglitori.Items.Item[TVRaccoglitori.Items.Count-1].ImageIndex:=1;
          TVRaccoglitori.Items.Item[TVRaccoglitori.Items.Count-1].SelectedIndex:=2;
          TVRaccoglitori.Items.Item[TVRaccoglitori.Items.Count-1].Selected:=True;
          //Modifica il path dell'Alias**************************************
          PathAlias:=PathEXE+'\Documenti'+FloatToStr(RxSpAnno.Value);
          CreaTabelle;
          Temp := PathEXE+'\Documenti';
          Delete(PathAlias,Pos(Temp,PathAlias),Length(Temp));
          AnnoDocumentazione := StrToInt(PathAlias);
          Caption := 'Anno di Documentazione corrente: ['+IntToStr(AnnoDocumentazione)+']';
       end;
end;




procedure TFrmGestDoc.SICreaClick(Sender: TObject);
begin
  CreaRaccoglitore(Sender);
end;


procedure TFrmGestDoc.SIUscitaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmGestDoc.SIApriClick(Sender: TObject);
var
  Path:String;
begin
  if TVRaccoglitori.Selected.Text='Archivio' then Exit;
  { memorizza il path dell'alias da aprire }
  PathAlias:=GetPathAlias(AliasDocumenti);
  Path:=Copy(PathAlias,0,length(PathAlias)-14);

  PathAlias:=Path+'\'+TVRaccoglitori.Selected.Text;
  ModificaPathAlias(AliasDocumenti,PathAlias);
  Session.SaveConfigFile;

  Application.MessageBox('Riavviare il Programma per rendere effettive le modifiche apportate',
                         'Riavvio Programma',MB_OK+MB_ICONINFORMATION);
  Close;
  Application.Terminate;
end;


function TFrmGestDoc.DeleteDir(DirName : string): Boolean;
var
  SHFileOpStruct:TSHFileOpStruct;
  DirBuf : array [0..255] of char;
begin
  try
   Fillchar(SHFileOpStruct,Sizeof(SHFileOpStruct),0) ;
   FillChar(DirBuf, Sizeof(DirBuf), 0 ) ;
   StrPCopy(DirBuf, DirName) ;
   with SHFileOpStruct do begin
    Wnd := 0;
    pFrom := @DirBuf;
    wFunc := FO_DELETE;
    fFlags := FOF_ALLOWUNDO;
    fFlags := fFlags or FOF_NOCONFIRMATION;
    fFlags := fFlags or FOF_SILENT;
   end;
    Result := (SHFileOperation(SHFileOpStruct) = 0) ;
   except
    Result := False;
  end;
end;



procedure TFrmGestDoc.SIEliminaClick(Sender: TObject);
var
  AnnoDocumentazione:Integer;
  OldPathAlias,NewPathAlias:String;
  Path:String;
  SearchRec:TSearchrec;
begin
  AnnoDocumentazione:=CurrentYear;
  if (TVRaccoglitori.Selected.Text <> 'Documenti'+IntToStr(AnnoDocumentazione))and
     (TVRaccoglitori.Selected.Text <> 'Archivio')then
    begin
      if Application.MessageBox(PChar('ATTENZIONE! L''eliminazione di un raccoglitore comporta la perdita definitiva di tutti i dati in esso contenuti. '+
                                      'Si desidera proseguire con la cancellazione del raccoglitore   ['+UpperCase(TVRaccoglitori.Selected.Text)+'] ?'),
                                      'Elimina Raccoglitore',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        try
          OldPathAlias:=GetPathAlias(AliasDocumenti);
          Path:=Copy(OldPathAlias,0,length(OldPathAlias)-14);
          NewPathAlias:=Path+'\'+TVRaccoglitori.Selected.Text;
          DeleteDir(NewPathAlias);
          TVRaccoglitori.Selected.Delete;
          TVRaccoglitori.Items.Item[TVRaccoglitori.Items.Count-1].Selected;
        except
          Application.MessageBox('Si è verificato un errore in fase di eliminazione del raccoglitore',
                                 'Elimina Raccoglitore',MB_ok+MB_ICONERROR);
        end;
    end
  else
    begin
      Application.MessageBox('Attenzione! non è possibile eliminare il Raccoglitore per l''anno corrente.',
                             'Elimina Raccoglitore',MB_OK+MB_ICONWARNING);
    end;
end;


procedure TFrmGestDoc.suitempTVRaccoglitoriGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  if TVRaccoglitori.Selected.Text<>'Archivio' then
    TVRaccoglitori.Selected.SelectedIndex:=1;
end;

end.

