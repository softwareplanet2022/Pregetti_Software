unit U_Service;

interface

uses
    Windows, SysUtils, Controls, ComCtrls, Forms, DBTables, StdCtrls, Registry,
    DB, DbiProcs, DBCtrls, Graphics, DBGrids, RxDBCtrl, FileCtrl, Classes, Dialogs,
    MemTable, SplshWnd,SUIMemo;

{ funzioni }
function ConvertDiottrieToMm(Diottrie: Real): Real;
function ConvertMmToDiottrie(Mm: Real): Real;
function UserMsg(Titolo, Testo: string; Tipo: Integer): Integer;
function UserMsg2(Hwnd: Integer; Titolo, Testo: string; Tipo: Integer): Integer;
function Check_Giacenza(ID_Prod: string; QtaScarico: Integer): Integer;
function Determina_Apertura(Tab: TTable): Boolean;
function Check_Form (NomeForm : TForm) : Boolean;
function DemoVersion: Boolean;
function Insert_Prodotti_InFattura (Codice : String; Flag : Boolean; Importo : Currency) : Boolean;
function Get_Path_Alias (NomeAlias : String) : String;
function LireToEuroStr(Value: Extended; Sign: Integer): string;
function PrintRtf(RtfTitle, RtfFileName: string): Boolean;
function Read_Program_Path(Chiave : String) : String;
function Registra_Movimento(Tipo,Id_Prodotto,Rif,Filiale: String; Qta: Integer; Id_Fornitore: Variant; DataRif: TDateTime): Boolean;
function CostoMedio(OldPrezzo_Acquisto, NewPrezzo_Acquisto, ImportoGiacenzaMag: Currency; Giacenza, QtaCarico: Integer): Currency;
function Ok_Scarico(QtaInScarico,QtaAttuale: Integer): Boolean;
function Check_Dll(NomeDll: String): Boolean;
function Check_LogDate: Boolean;
function IsRecordLocked(Table: TTable; ByAnyone: Boolean): Boolean;
function fDbiIsTableLocked(Tbl: TTable; Lock: DBILockType): Boolean;
function GetNetUsers(Strings: TStrings): Integer;
function AcqPersistTableLock(T: TTable): Word;
function GetWinDirectory: String;
function CercaNominativo(Cognome, Nome: String): Boolean;
function CalcCheckDigit(Codice: String): String;

{ procedure }
procedure CreaTabelleFatturazione;
procedure CreaTabelleDdt;
procedure Cambia_Colore (GrpBox : TWinControl; Switch : Boolean);      { by Maverick }
procedure Setta_Testo   (GrpBox :TWinControl; Testo : String);         { by Maverick }
procedure ModificaPathAlias (NomeAlias : String; Path : String);       { by Maverick }
procedure CancellaTabelleFatturazione;
procedure Insert_Prodotti_BustaLavoro (Importo : Currency; Tipo : Integer);
procedure CheckRefreshTables;
procedure ForceReRead(Table: TTable);
procedure Registra_MagLifo(Tipo,Id_Prodotto: String; Qta: Integer; Valore: Currency);
procedure fDbiAcqTableLock(hTmpCur: hDBICur);
procedure RelPersistTableLock(T: TTable);
procedure fDbiRegenIndexes(TblName: TTable);
procedure fDbiAddIndex(Tbl: TTable);
procedure CheckClientServer(Valore: String);
procedure CheckVersione(Valore: String);
procedure ShowSessionName(Lb: TSuiMemo);

implementation

uses U_Dm, U_DmFatture, U_Main, U_Carico, U_InsFattura, U_Fattura;

procedure ShowSessionName(Lb: TsuiMemo);
var
  SessionCount: Integer;
  SessionNames: TStrings;
begin
  SessionNames:=TStringList.Create;
  try
    Sessions.GetSessionNames(SessionNames);
    for SessionCount:= 0 to (Sessions.Count - 1) do
        Lb.Lines.AddStrings(SessionNames);
  finally
    SessionNames.Free;
  end;
end;

function CalcCheckDigit(Codice: String): String;
var
  Pari,Dispari,TmpRes,resto,Check,i: Integer;
  index: byte;
begin
  Dispari:=0;
  Pari:=0;
  for i:=1 to 11 do
    begin
      Index:=i;
      case Odd(i) of
        True: Dispari:=Dispari+StrToInt(Codice[index]);
        False: Pari:=Pari+StrToInt(Codice[index]);
      end;
    end;
  Dispari:=Dispari*3;
  TmpRes:=Dispari+Pari;
  i:=TmpRes;
  while resto<>0 do
    begin
      resto:=i mod 10;
      inc(i);
    end;
  Check:=(i-1)-TmpRes;
  Result:=Codice+IntToStr(Check);
end;

function CercaNominativo(Cognome, Nome: String): Boolean;
var
  ListaRicerca: Variant;
begin
  { ListaRicerca:=VarArrayCreate([0,1],varVariant);
  ListaRicerca[0]:=Cognome;
  ListaRicerca[1]:=Nome;
  Result:=Dm.Anagrafica.Locate('Cognome;Nome',ListaRicerca,[loCaseInsensitive,loPartialKey]);}
end;

procedure fDbiAddIndex(Tbl: TTable);
var
  NewIndex: IDXDesc;
  Buffer: PChar;
begin
  Tbl.Active:=False;
  Tbl.Exclusive:=True;
  Tbl.Active:=True;
  if not Tbl.Exclusive then raise EDataBaseError.Create('La tabella deve essere Exclusive');
  with NewIndex do
    begin
      szName:='NewIndex';
      bPrimary:=False;
      bUnique:=False;
      bDescending:=False;
      bMaintained:=True;
      bSubSet:=False;
      bExpIdx:=False;
      iFldsInKey:=2;
      aiKeyFld[0]:=2;
      aiKeyFld[1]:=3;
      bCaseInsensitive:=True;
    end;
  Check(DbiAddIndex(Tbl.DbHandle,Tbl.Handle,PChar(Tbl.TableName),szParadox,NewIndex,nil));
end;

procedure fDbiRegenIndexes(TblName: TTable);
begin
  Check(DbiRegenIndexes(TblName.Handle));
end;


{procedure ExplainControl(Frm: TForm; Agente: IAgentCtlCharacterEx; aControl: TControl; aText: string; fast: integer);
var
  aX, aY: integer;
  ThisRequest: IAgentCtlRequest;
begin
  if not Agente.Get_Visible then Agente.Show(False);
  // locate it
  aX:=aControl.parent.left+aControl.Left;
  aY:=aControl.parent.Top+aControl.Top;
  // move to the right of it
  Agente.Moveto(aX+(Agente.Width),aY+5, fast);
  Agente.GestureAt(aX, aY);
  // make the speech
  ThisRequest:=Agente.Speak(aText,'');
  if Agente.Get_Visible then Agente.Hide(False);
end;}

function GetWinDirectory: String;
var
  WinDir: array[0..255] of Char;
begin
  GetWindowsDirectory(@WinDir, 255);
  Result := StrPas(WinDir);
end;

//*********************** Funzionalità di rete *********************************
function AcqPersistTableLock(T: TTable): Word;
var
  Drv: PChar;
begin
  with T do begin
    if (TableType = ttParadox) then
      Drv := StrNew(szParadox)
    else if (TableType = ttdBASE) then
      Drv := StrNew(szdBASE)
    else Drv := nil;
    try
      Result:=DbiAcqPersistTableLock(DBHandle, PChar(TableName), Drv);
    finally
      if Assigned(Drv) then StrDispose(Drv);
    end;
  end;
end;

procedure RelPersistTableLock(T: TTable);
var
  Drv: PChar;
begin
  with T do begin
    if (TableType = ttParadox) then
      Drv := StrNew(szParadox)
    else if (TableType = ttdBASE) then
      Drv := StrNew(szdBASE)
    else Drv := nil;
    try
      Check(DbiRelPersistTableLock(DBHandle, PChar(TableName), Drv));
    finally
      if Assigned(Drv) then StrDispose(Drv);
    end;
  end;
end;

function IsRecordLocked(Table: TTable; ByAnyone: Boolean): Boolean;
var
  Locked: Bool;
  hCur: hDBICur;
  rslt: DBIResult;
begin
  Table.UpdateCursorPos;
  Check(DbiIsRecordLocked(Table.Handle,Locked));
  Result:=Locked;
  if (Result=False) and (ByAnyone=True) then
    begin
      Check(DbiCloneCursor(Table.Handle,false,false,hCur));
      try
        rslt:=DbiGetRecord(hCur,dbiWRITELOCK,nil,nil);
        if rslt<>DBIERR_NONE then
          if HiByte(rslt)=ERRCAT_LOCKCONFLICT then Result:=True
          else Check(rslt)
        else Check(DbiRelRecordLock(hCur,false));
      finally
        Check(DbiCloseCursor(hCur));
      end;
    end;
end;

procedure fDbiAcqTableLock(hTmpCur: hDBICur);
begin
  Check(DbiAcqTableLock(hTmpCur, dbiWRITELOCK));
end;

function fDbiIsTableLocked(Tbl: TTable; Lock: DBILockType): Boolean;
var
  NumLocks: Word;
begin
  Check(DbiIsTableLocked(Tbl.Handle, Lock, NumLocks));
  Result:=NumLocks>=1;
end;

function GetNetUsers(Strings: TStrings): Integer;
var
  hCur: hDBICur;
  rslt: DBIResult;
  User: USERDesc;
begin
  Strings.Clear;
  Check(DbiOpenUserList(hCur));
  repeat
    rslt:=DbiGetNextRecord(hCur,dbiNOLOCK,@User,nil);
    if rslt=DBIERR_NONE then Strings.Add(User.szUserName)
    else if rslt<>DBIERR_EOF then Check(rslt);
  until rslt<>DBIERR_NONE;
  Result:=Strings.Count;
  DbiCheckRefresh
end;

procedure CheckRefreshTables;
var
  OldSession: TSession;
  B: Byte;
begin
  OldSession:=Sessions.CurrentSession;
  for B:=0 to (Sessions.Count-1) do
    begin
      Sessions.CurrentSession:=Sessions.Sessions[B];
      Check(DbiCheckRefresh);
    end;
  Sessions.CurrentSession:=OldSession;
end;

procedure ForceReRead(Table: TTable);
begin
  Check(DbiForceReread(Table.Handle));
end;
//******************************************************************************

// ********************** Funzioni di conversione Diottrie-Mm ******************
function ConvertDiottrieToMm(Diottrie: Real): Real;
// Funzione interpolatrice per conversione Diottrie ==> Mm
// Inserire valori tra 37,00 e 53,00 diottrie
type
   TVector= array [1..7] of real;
const
   NroNodi=7;                                                 // numero nodi
   X: TVector = (37.00,40.00,43.00,45.00,47.00,50.00,53.00);  // nodi considerati
   Y: TVector = ( 9.12, 8.44, 7.85, 7.50, 7.18, 6.75, 6.37);  // valore nei nodi
var
   Num, Den: real;
   i, j: integer;
begin
   Result:=0;
   for j:=1 to NroNodi do
     begin
        Num:=1;
        Den:=1;
        for i:=1 to NroNodi do
           if i<>j then
             begin
                Num:= Num*(Diottrie-X[i]);
                Den:= Den*(X[j]-X[i]);
             end;
        Result:= Result + (Num*Y[j])/Den;
     end;
end;


function ConvertMmToDiottrie(Mm: Real): Real;
// Funzione interpolatrice per conversione Mm ==> Diottrie
// Inserire valori tra 9,12 e 6,37 mm
type
   TVector= array [1..7] of real;
const
   NroNodi=7;                                                // numero nodi
   X:TVector=( 9.12, 8.44, 7.85, 7.50, 7.18, 6.75, 6.37);    // nodi considerati
   Y:TVector=(37.00,40.00,43.00,45.00,47.00,50.00,53.00);    // valore dei nodi
var
   Molt, Num, Den: real;
   i, j: integer;
begin
   Result:=0;
   for j:=1 to NroNodi do
     begin
        Num:=1;
        Den:=1;
        for i:=1 to NroNodi do
           if i<>j then
             begin
                Num:= Num*(Mm-X[i]);
                Den:= Den*(X[j]-X[i]);
             end;
        Result:= Result + (Num*Y[j])/Den;
     end;
   // Arrotonda a 0,00 0,25 0,50 0,75
   if ((Result*100)-((Trunc(Result*100) div 25)*25))>12.5 then Molt:=1 else Molt:=-1;
   while (Trunc((Result*1000)) mod 250)>0 do Result:=Result+(Molt*0.001);
end;


// ************************** Conversione Lire => Euro ************************
function LireToEuroStr(Value: Extended; Sign: Integer): string;
begin
   if Value=0 then
     Result:=''
   else
     begin
        Result:=FloatToStrF(Value/OneEuro,ffFixed,15,2);
        case Sign of                                      // 0:  xxx,xx
          1: Result:=Result+' Euro';                      // 1:  xxx,xx Euro
          2: Result:='Euro '+Result;                      // 2:  Euro xxx,xx
          3: Result:='('+Result+')';                      // 3:  (xxx,xx)
          4: Result:='('+Result+' Euro)';                 // 4:  (xxx,xx Euro)
          5: Result:='(Euro '+Result+')';                 // 5:  (Euro xxx,xx)
          6: Result:='['+Result+']';                      // 6:  [xxx,xx]
          7: Result:='['+Result+' Euro]';                 // 7:  [xxx,xx Euro]
          8: Result:='[Euro '+Result+']';                 // 8:  [Euro xxx,xx]
        end;
     end;
end;

// *************************** Controllo versione DEMO ************************
function DemoVersion: Boolean;
begin
   Result:=False;
   if UpperCase(NameReg)=DemoReg then
    begin
       // Controllo sui file se aperti
       if (Dm.Anagrafica.Active) and (Dm.Anagrafica.RecordCount>14) then Result:=True;
       if (Dm.Prodotti.Active) and (Dm.Prodotti.RecordCount>14) then Result:=True;
       if (DmFatture.Fatture.Active) and (DmFatture.Fatture.RecordCount>14) then Result:=True;
       if (Dm.Fornitori.Active) and (Dm.Fornitori.RecordCount>14) then Result:=True;
       // Controllo sulla data
       if DemoDate<>'' then if (Date>=StrToDate(DemoDate)) then Result:=True;
       if Result then
         begin
            // Cancellazione delle dll
            DeleteFile('Splash.dll');
            DeleteFile('Info.dll');
            DeleteFile('Reg.dll');
            // Cancellare o svuotare le tabelle
            //Dm.Anagrafica.Close;
            //Dm.Anagrafica.EmptyTable;
            //Dm.Fornitori.Close;
            //Dm.Fornitori.EmptyTable;
            //Dm.Prodotti.Close;
            //Dm.Prodotti.EmptyTable;
            // Messaggio d'avviso
            U_Service.UserMsg(VerIni + NameReg,
                              'ATTENZIONE! I limiti per la Versione Demo sono stati raggiunti.'+#13+
                              'Il programma non potrà essere più avviato.'+#13+
                              'Per ulteriori informazioni, contattare:'+#13+#13+
                              '    EASY-D-ROM - Soluzioni Multimediali snc'+#13+
                              '    Via L. Ranieri, 11/D - 70124 BARI'+#13+
                              '    Tel/Fax 080-5036983',MB_ICONWARNING+MB_OK);
         end
       else
         U_Service.UserMsg(VerIni + NameReg,
                           'ATTENZIONE! Questa è una Versione Demo.'+#13+#13+
                           'Il programma cesserà di funzionare automaticamente'+#13+
                           'dopo 15 giorni di utilizzo o dopo aver inserito più'+#13+
                           'di 15 clienti, prodotti, fatture o fornitori.',MB_ICONASTERISK+MB_OK);
    end;
end;

function PrintRtf(RtfTitle, RtfFileName: string): Boolean;
var
  PrnDlg: TPrintDialog;
  RchEd: TRichEdit;
  i: Integer;
begin
   Result:=False;
   PrnDlg:=TPrintDialog.Create(FrmMain);
   if PrnDlg.Execute then
     begin
        RchEd:=TRichEdit.Create(FrmMain);
        with RchEd do
          begin
             PlainText:=False;
             Visible:=False;
             Parent:=FrmMain;
             try
               Lines.LoadFromFile(RtfFileName);
               for i:=1 to PrnDlg.Copies do
                 Print(RtfTitle);
               Result:=True;
             except
               Result:=False;
             end;
               Free;
          end;
     end;
   PrnDlg.Free;
end;

function CostoMedio(OldPrezzo_Acquisto, NewPrezzo_Acquisto, ImportoGiacenzaMag: Currency; Giacenza, QtaCarico: Integer): Currency;
var
  NewGiacenza: Integer;
  NewImpGiac: Currency;
begin
  NewGiacenza:=0;
  NewImpGiac:=0;
  NewGiacenza:=Giacenza+QtaCarico;
  NewImpGiac:=NewPrezzo_Acquisto*QtaCarico;
  //if NewPrezzo_Acquisto<>0 then
  //begin
  ImportoGiacenzaMag:=ImportoGiacenzaMag+NewImpGiac;
  U_Carico.ImpGiacenzaMag:=ImportoGiacenzaMag;
  //end;
  Result:=ImportoGiacenzaMag/NewGiacenza;
end;

{* crea le tabelle per il Ddt *}
procedure CreaTabelleDdt;
begin
  {Ddt.Db }
  with TTable.Create(Application) do
  begin
    Active:=False;
    DatabaseName :='EasyOptFat';
    TableName:='Ddt.DB';
    TableType:=ttParadox;

    with FieldDefs do
    begin
      Clear;
      Add('Id_Ddt', ftFloat,  0, False);
      Add('Anno', ftFloat,  0, False);
      Add('Data', ftDate,  0, False);
      Add('Trasporto', ftString,  30, False);
      Add('Cessionario', ftString,  30, False);
      Add('LuogoDest', ftString,  30, False);
      Add('Causale', ftString,  30, False);
      Add('Aspetto', ftString,  30, False);
      Add('Colli', ftFloat,  0, False);
      Add('Peso', ftFloat,  0, False);
      Add('Porto', ftString,  30, False);
      Add('Vettore1', ftString,  30, False);
      Add('Vettore2', ftString,  30, False);
      Add('DataRitiro', ftDate,  0, False);
    end;

    CreateTable;

    with IndexDefs do
    begin
      Clear;
      Addindex('', 'Id_Ddt;Anno', [ixPrimary, ixUnique]);
    end;
  end;

  {* Dettagli Ddt *}
  with TTable.Create(Application) do
  begin
    Active := False; 
    DatabaseName := 'EasyOptFat';
    TableName := 'DettagliDDT.DB';
    TableType := ttParadox;

    with FieldDefs do 
    begin 
      Clear; 
      Add('Id_Ddt', ftFloat,  0, False);
      Add('Id_Riga', ftFloat,  0, False);
      Add('Id_Prodotto', ftString,  19, False);
      Add('Id_Magazzino', ftFloat,  0, False);
      Add('Id_Barre', ftString,  13, False);
      Add('Id_Fornitore', ftString,  10, False);
      Add('Modello', ftString,  30, False);
      Add('Linea', ftString,  30, False);
      Add('Calibro', ftFloat,  0, False);
      Add('Ponte', ftFloat,  0, False);
      Add('Asta', ftFloat,  0, False);
      Add('Utente', ftString,  15, False);
      Add('Materiale', ftString,  30, False);
      Add('Colore', ftString,  30, False);
      Add('Sfera', ftFloat,  0, False);
      Add('Cyl', ftFloat,  0, False);
      Add('Diametro', ftFloat,  0, False);
      Add('Descrizione', ftString,  60, False);
      Add('Rb', ftFloat,  0, False);
      Add('Asse', ftFloat,  0, False);
      Add('Addizione', ftFloat,  0, False);
      Add('Marca', ftString,  30, False);
      Add('Perc_Colore', ftFloat,  0, False);
      Add('CE', ftBoolean,  0, False);
      Add('Scadenza', ftDate,  0, False);
      Add('Trattamento', ftString,  45, False);
      Add('Tipo_Lente', ftString,  30, False);
      Add('Tipo_Lenti', ftString,  30, False);
      Add('Qta_Attuale', ftFloat,  0, False);
      Add('Scorta_Minima', ftFloat,  0, False);
      Add('Prezzo_Acq', ftCurrency,  0, False);
      Add('CostoMedio', ftCurrency,  0, False);
      Add('DataUltimoAcquisto', ftDate,  0, False);
      Add('Ricarico', ftFloat,  0, False);
      Add('Aliquota_Iva', ftFloat,  0, False);
      Add('Prezzo_Netto', ftCurrency,  0, False);
      Add('Prezzo_Vendita', ftCurrency,  0, False);
      Add('Flag_Lista', ftBoolean,  0, False);
      Add('ImportoGiacenza', ftCurrency,  0, False);
    end; 

    CreateTable; 

    with IndexDefs do 
    begin 
      Clear; 
      Addindex('', 'Id_Ddt;Id_Riga', [ixPrimary, ixUnique]);
    end;
  end;

  {* Next Id Ddt*}
  with TTable.Create(Application) do
  begin
    Active := False;
    DatabaseName := 'EasyOptFat';
    TableName := 'NextIdDdt.db';
    TableType := ttParadox;

    with FieldDefs do
    begin
      Clear;
      Add('NextIdDdt', ftFloat,  0, False);
    end;

    CreateTable;

    with IndexDefs do
    begin
      Clear;
    end;
  end;

  {* Next Id Rg Ddt*}
  with TTable.Create(Application) do
  begin
    Active := False;
    DatabaseName := 'EasyOptFat';
    TableName := 'NextIdRgDdt.db';
    TableType := ttParadox;

    with FieldDefs do
    begin
      Clear;
      Add('NextIdRgDdt', ftFloat,  0, False);
    end; 

    CreateTable; 

    with IndexDefs do 
    begin 
      Clear; 
    end;
  end;

end;
{* -------------------------- *}

// ******************* Creazione delle tabelle di fatturazione ****************
procedure CreaTabelleFatturazione;
var
  Splash: TForm;
begin
    Splash:=ShowSplashWindow(nil,'Creazione archivi di fatturazione in corso...',false,Application.MainForm);
    {Fatture.DB }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'Fatture.DB';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('Id_Fattura', ftFloat,  0, False);
        Add('Anno_Fattura', ftFloat,  0, False);
        Add('Id_Cliente', ftFloat,  0, False);
        Add('Data_Fattura', ftDate,  0, False);
        Add('Scontrino_Fiscale', ftString,  20, False);
        Add('Data_Scontrino', ftDate,  0, False);
        Add('Pagamento', ftString,  30, False);
        Add('Cognome_Nome', ftString,  60, False);
        Add('Indirizzo', ftString,  45, False);
        Add('Cap', ftString,  5, False);
        Add('Citta', ftString,  45, False);
        Add('Prov', ftString,  2, False);
        Add('Codice_Fiscale', ftString,  16, False);
        Add('Ali_1', ftFloat,  0, False);
        Add('Ali_2', ftFloat,  0, False);
        Add('Ali_3', ftFloat,  0, False);
        Add('Imponibile_1', ftCurrency,  0, False);
        Add('Imponibile_2', ftCurrency,  0, False);
        Add('Imponibile_3', ftCurrency,  0, False);
        Add('Importo_1', ftCurrency,  0, False);
        Add('Importo_2', ftCurrency,  0, False);
        Add('Importo_3', ftCurrency,  0, False);
        Add('Totale_Fattura', ftCurrency,  0, False);
        Add('Totale_Euro', ftString,  12, False);
        Add('Note', ftMemo,  200, False);
      end;

      CreateTable;

      with IndexDefs do
      begin
        Clear;
        Addindex('', 'Id_Fattura;Anno_Fattura', [ixPrimary, ixUnique]);
        Addindex('CodCognome_NomeNdx', 'Cognome_Nome', [ixCaseInsensitive]);
        Addindex('CodData_FatturaNdx', 'Data_Fattura', [ixCaseInsensitive]);
        Addindex('CodId_ClienteNdx',   'Id_Cliente',   [ixCaseInsensitive]);
      end;
    end;

    {Dettagli.DB }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'Dettagli.DB';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('Id_Fattura', ftFloat,  0, False);
        Add('Id_Riga', ftFloat,   0, False);
        Add('Id_Prodotto', ftString,  19, False);
        Add('Id_Codice_Barre', ftFloat,  0, False);
        Add('Descrizione', ftString,  200, False);
        Add('Qta', ftFloat,  0, False);
        Add('Sconto', ftFloat,  0, False);
        Add('Prezzo', ftCurrency,  0, False);
        Add('Iva', ftFloat,  0, False);
      end;

      CreateTable;

      with IndexDefs do
      begin
        Clear;
        Addindex('', 'Id_Fattura;Id_Riga', [ixPrimary, ixUnique]);
        Addindex('CodId_ProdottoNdx', 'Id_Prodotto', [ixCaseInsensitive]);
        Addindex('CodId_BarreNdx', 'Id_Codice_Barre', [ixCaseInsensitive]);
      end;
    end;

    {NextIdFt.db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'NextIdFt.db';
      TableType := ttParadox;
  
      with FieldDefs do
      begin 
        Clear; 
        Add('NextIdFt', ftFloat,  0, False);
      end;
  
      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;

    {NextIdRg.db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'NextIdRg.db';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('NextIdRg', ftFloat,  0, False);
      end;

      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;

    {Ddt.Db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'Ddt.DB';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('Id_ddt',ftFloat,0,false);
        Add('Anno',ftFloat,0,false);
        Add('Data',ftDate,0,false);
        Add('Trasporto',ftString,30,false);
        Add('Cedente',ftString,30,false);
        Add('Indirizzo',ftString,100,false);
        Add('Cessionario',ftString,30,false);
        Add('Luogodest',ftString,30,false);
        Add('Causale',ftString,100,false);
        Add('Aspetto',ftString,30,false);
        Add('Colli',ftFloat,0,false);
        Add('Peso',ftFloat,0,false);
        Add('Porto',ftString,30,false);
        Add('Vettore1',ftString,30,false);
        Add('Vettore2',ftString,30,false);
        Add('Dataritiro',ftDateTime,0,false);
      end;

      with IndexDefs do
      begin
        Add('','Id_ddt;Anno',[ixPrimary,ixUnique]);
      end;
      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;

    {DettagliDdt.Db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'DettagliDdt.DB';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('Id_Ddt',ftFloat,0,false);
        Add('Id_Riga',ftFloat,0,false);
        Add('Id_Prodotto',ftString,19,false);
        Add('Id_Magazzino',ftFloat,0,false);
        Add('Id_Barre',ftString,13,false);
        Add('Id_Fornitore',ftString,10,false);
        Add('Modello',ftString,30,false);
        Add('Linea',ftString,30,false);
        Add('Calibro',ftFloat,0,false);
        Add('Ponte',ftFloat,0,false);
        Add('Asta',ftFloat,0,false);
        Add('Utente',ftString,15,false);
        Add('Materiale',ftString,30,false);
        Add('Colore',ftString,30,false);
        Add('Sfera',ftFloat,0,false);
        Add('Cyl',ftFloat,0,false);
        Add('Diametro',ftFloat,0,false);
        Add('Descrizione',ftString,60,false);
        Add('Rb',ftFloat,0,false);
        Add('Asse',ftFloat,0,false);
        Add('Addizione',ftFloat,0,false);
        Add('Marca',ftString,30,false);
        Add('Perc_Colore',ftFloat,0,false);
        Add('CE',ftBoolean,0,false);
        Add('Scadenza',ftDate,0,false);
        Add('Trattamento',ftString,45,false);
        Add('Tipo_Lente',ftString,30,false);
        Add('Tipo_Lenti',ftString,30,false);
        Add('Qta_Attuale',ftFloat,0,false);
        Add('Scorta_Minima',ftFloat,0,false);
        Add('Prezzo_Acq',ftCurrency,0,false);
        Add('CostoMedio',ftCurrency,0,false);
        Add('DataUltimoAcquisto',ftDate,0,false);
        Add('Ricarico',ftFloat,0,false);
        Add('Aliquota_Iva',ftFloat,0,false);
        Add('Prezzo_Netto',ftCurrency,0,false);
        Add('Prezzo_Vendita',ftCurrency,0,false);
        Add('Flag_Lista',ftBoolean,0,false);
        Add('ImportoGiacenza',ftCurrency,0,false);
      end;

      with IndexDefs do
      begin
        Add('','Id_Ddt;Id_Riga',[ixPrimary,ixUnique]);
      end;
      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;

    {NextIdRgDdt.Db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'NextIdRgDdt.DB';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('NextIdRgDdt',ftFloat,0,false);
      end;

      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;

    {NextIdDdt.Db }
    with TTable.Create(Application) do
    begin
      Active := False;
      DatabaseName := 'EasyOptFat';
      TableName := 'NextIdDdt.Db';
      TableType := ttParadox;

      with FieldDefs do
      begin
        Clear;
        Add('NextIdDdt',ftFloat,0,false);
      end;

      CreateTable;

      with IndexDefs do
      begin
        Clear;
      end;
    end;
    Splash.Free;
end;


// ****************************************************************************
function Ok_Scarico(QtaInScarico,QtaAttuale: Integer): Boolean;
begin
  if QtaAttuale-QtaInScarico>=0 then Result:=True
  else Result:=False;
end;

function Check_Giacenza (ID_Prod: string; QtaScarico: Integer): Integer;
{ La funzione controlla la giacenza effettiva del prodotto selezionato e
ritorna 4 valori:
0 --> Nessuna corrispondenza trovata in archivio oppure prodotto immesso
      manualmente tramite l'introduzione di codice 0.
1 --> Prodotto SottoScorta minima.
2 --> Prodotto non disponibile in magazzino in quanto la quantità è zero.
3 --> Il prodotto è disponibile allo scarico; }
var
   Flag_Open: Boolean;
begin
  Result := -1;
  if Dm.Prodotti.Active = false then
  begin
       Dm.Prodotti.Open;
       Flag_Open:= True;
  end
  else Flag_Open:= False;

  if Dm.Prodotti.FindKey([Id_Prod]) then
    begin
      // se si gestisce la scorta minima
      if ((Id_Prod<>'0') and (not Dm.ProdottiScorta_Minima.IsNull)) then
        if (Dm.Prodotti.FindKey([ID_Prod]) and (Ok_Scarico(QtaScarico,Dm.ProdottiQta_Attuale.AsInteger))) then
          if Dm.ProdottiQta_Attuale.AsInteger<=Dm.ProdottiScorta_Minima.AsInteger then
            if Dm.ProdottiQta_Attuale.AsInteger=0 then Result:= 2
            else Result:= 1
          else Result:= 3
        else Result:= 0    { Se non è stata trovata alcuna corrispondenza in archivio
                             prodotti comunque assegna un valore zero. Probabilmente è stato
                             immesso '0' come codice prodotto. Questo codice identifica
                             l'immissione di un prodotto non in magazzino}
      else if Id_Prod<>'0' then
             begin
               if (Dm.Prodotti.FindKey([ID_Prod]) and (Ok_Scarico(QtaScarico,Dm.ProdottiQta_Attuale.AsInteger))) then Result:=3
               else Result:=2;
             end
    end;
  //else ShowMessage('Inserito codice zero e non movimentato');
  if Flag_Open = True then Dm.Prodotti.Close;
end;



function Determina_Apertura (Tab: TTable): Boolean;
{Se la tabella specificata non è ancora aperta, la apre, altrimenti lascia
 invariata la situazione. Altrettanto fa per la chiusura della tabella}
begin
   if Tab.Active = False then
     begin
        Tab.Open;
        Result:= True;
     end
   else Result:= False;
end;

function Check_Form (NomeForm : TForm) : Boolean;
var
   i : Integer;
begin
     Result := False;
     i := 0;
     while i < Screen.FormCount do
     begin
          if Screen.Forms[i] = NomeForm then Result := True;
          inc(i);
     end;    // while
end;

function Insert_Prodotti_InFattura (Codice : String; Flag : Boolean; Importo : Currency) : Boolean;
begin
  Dm.Prodotti.Open;
  if NewFattura then
    begin
      if Dm.Prodotti.Locate('Id_Prodotto',Codice,[loCaseInsensitive])then
        begin
          { pone in insert/edit la tabella }
          if Flag = True then FrmInsFattura.TempMem.Insert
          else FrmInsFattura.TempMem.Edit;

          { scinde i dati a seconda della tipologia }
          case Dm.ProdottiId_Magazzino.AsInteger of    //
            0:FrmInsFattura.TempMemDescrizione.AsString := 'Montatura | ' +
      	      ' Linea: '      + Dm.ProdottiLinea.AsString              +
      				' Cal: '        + IntToStr(Dm.ProdottiCalibro.AsInteger) +
      				' Pnt: '        + IntToStr(Dm.ProdottiPonte.AsInteger)   +
      				' Asta: '       + IntToStr(Dm.ProdottiAsta.AsInteger);
            1:FrmInsFattura.TempMemDescrizione.AsString := 'LOF       | ' +
      				' Sf: '          + FloatToStr(Dm.ProdottiSfera.AsFloat)    +
      				' Cyl: '         + FloatToStr(Dm.ProdottiCyl.AsFloat)      +
      				' Dia: '         + FloatToStr(Dm.ProdottiDiametro.AsFloat) +
      				' Descrizione: ' + Dm.ProdottiDescrizione.AsString;
            2:FrmInsFattura.TempMemDescrizione.AsString := 'LAC       | ' +
      				' Sf: '    + FloatToStr(Dm.ProdottiSfera.AsFloat)    +
      				' Cyl: '   + FloatToStr(Dm.ProdottiCyl.AsFloat)      +
      				' Dia: '   + FloatToStr(Dm.ProdottiDiametro.AsFloat) +
      				' RB: '    + FloatToStr(Dm.ProdottiRb.AsFloat)       +
      				' Marca: ' + Dm.ProdottiMarca.AsString;
            3:FrmInsFattura.TempMemDescrizione.AsString := 'Descrizione: ' + Dm.ProdottiDescrizione.AsString +
      			  ' Marca: '      + Dm.ProdottiMarca.AsString;
          end;  // case

          { se si tratta di una fattura da busta lavoro ... }


          if Busta then FrmInsFattura.TempMemId_Prodotto.AsString:=Dm.ProdottiId_Prodotto.AsString;
          if Busta then FrmInsFattura.TempMemPrezzo.Value := (Importo * 100) / (100 + Dm.ProdottiAliquota_Iva.AsInteger)
          else FrmInsFattura.TempMemPrezzo.AsCurrency := Dm.ProdottiPrezzo_Netto.AsCurrency;

          FrmInsFattura.TempMem.Edit;
          FrmInsFattura.TempMemQta.AsInteger:=1;
          FrmInsFattura.TempMemIva.AsInteger:=Dm.ProdottiAliquota_Iva.AsInteger;
          FrmInsFattura.TempMemSconto.AsInteger:=0;
          FrmInsFattura.TempMemId_Magazzino.AsInteger:=Dm.ProdottiId_Magazzino.AsInteger;

          { registra i cambiamenti }
          FrmInsFattura.TempMem.Post;

          { fornisce il risultato }
          Result := True;
        end
    end
  else
    begin
      if Dm.Prodotti.Locate('Id_Prodotto',Codice,[loCaseInsensitive])then
        begin
          { pone in insert/edit la tabella }
          if Flag = True then DmFatture.TempMem.Insert
          else DmFatture.TempMem.Edit;

          { scinde i dati a seconda della tipologia }
          case Dm.ProdottiId_Magazzino.AsInteger of    //
            0:DmFatture.TempMemDescrizione.AsString := 'Montatura | ' +
      	      ' Linea: '      + Dm.ProdottiLinea.AsString              +
      				' Cal: '        + IntToStr(Dm.ProdottiCalibro.AsInteger) +
      				' Pnt: '        + IntToStr(Dm.ProdottiPonte.AsInteger)   +
      				' Asta: '       + IntToStr(Dm.ProdottiAsta.AsInteger);
            1:DmFatture.TempMemDescrizione.AsString := 'LOF       | ' +
      				' Sf: '          + FloatToStr(Dm.ProdottiSfera.AsFloat)    +
      				' Cyl: '         + FloatToStr(Dm.ProdottiCyl.AsFloat)      +
      				' Dia: '         + FloatToStr(Dm.ProdottiDiametro.AsFloat) +
      				' Descrizione: ' + Dm.ProdottiDescrizione.AsString;
            2:DmFatture.TempMemDescrizione.AsString := 'LAC       | ' +
      				' Sf: '    + FloatToStr(Dm.ProdottiSfera.AsFloat)    +
      				' Cyl: '   + FloatToStr(Dm.ProdottiCyl.AsFloat)      +
      				' Dia: '   + FloatToStr(Dm.ProdottiDiametro.AsFloat) +
      				' RB: '    + FloatToStr(Dm.ProdottiRb.AsFloat)       +
      				' Marca: ' + Dm.ProdottiMarca.AsString;
            3: DmFatture.TempMemDescrizione.AsString := 'Descrizione: ' + Dm.ProdottiDescrizione.AsString +
      			 ' Marca: '      + Dm.ProdottiMarca.AsString;
          end;  // case

          { se si tratta di una fattura da busta lavoro ... }
          if Flag = True then DmFatture.TempMemId_Prodotto.AsString:=Dm.ProdottiId_Prodotto.AsString;

          if Flag = True then DmFatture.TempMemPrezzo.Value := (Importo * 100) / (100 + Dm.ProdottiAliquota_Iva.AsInteger)
          else DmFatture.TempMemPrezzo.AsCurrency := Dm.ProdottiPrezzo_Netto.AsCurrency;

          DmFatture.TempMemQta.AsInteger:=1;
          DmFatture.TempMemIva.AsInteger:=Dm.ProdottiAliquota_Iva.AsInteger;
          DmFatture.TempMemSconto.AsInteger:=0;
          DmFatture.TempMemId_Magazzino.AsInteger:=Dm.ProdottiId_Magazzino.AsInteger;

          { registra i cambiamenti }
          DmFatture.TempMem.Post;

          { fornisce il risultato }
          Result := True;
        end;
    end;
end;

function Get_Path_Alias (NomeAlias : String) : String;
var
   TempList : TStrings;
begin
     { crea la lista }
     TempList := TStringList.Create;

     { ottiene i parametri dell'alias }
     try
       with Dm.Lazzaro do
       begin
            Close;
            GetAliasParams(NomeAlias,TempList);
            Open;
            { restituisce il percorso dell'alias }
            Result := TempList[0];
            { estrae l'anno }
            Delete(Result,Pos('PATH=',Result),5);

       end;    // with
     finally // wrap up
             TempList.Free;
     end;    // try/finally
end;

function Read_Program_Path (Chiave : String) : String;
var
   Registro : TRegistry;
begin
     Registro := TRegistry.Create;
     with Registro do
     begin
          RootKey := HKEY_LOCAL_MACHINE;
          if OpenKey(AddrReg,True) then
          begin
               Result := ReadString(Chiave);
               CloseKey;
          end;
          Free;
     end;    // with
end;

{************************************ Message Box by API **********************************}
function MsgBox(HWnd: Integer; Text, Caption: PChar; Flags: Integer): Integer;
  stdcall; external 'USER32.DLL' name 'MessageBoxA';


function UserMsg2(Hwnd: Integer; Titolo, Testo: string; Tipo: Integer): Integer;
begin
   try
     SetLength(Titolo,StrLen(PChar(Titolo)));
     SetLength(Testo,StrLen(PChar(Testo)));
     Result:=MsgBox(Hwnd,
                    PChar(Testo),PChar(Titolo),Tipo+MB_APPLMODAL+MB_DEFBUTTON2);
   except
     on EWin32Error do Result := 0;	{ handle the exception only if needed }
   end;
end;

function UserMsg(Titolo, Testo: string; Tipo: Integer): Integer;
// Chiamata a procedura API per visualizzare una dialog box
begin
   try
     SetLength(Titolo,StrLen(PChar(Titolo)));
     SetLength(Testo,StrLen(PChar(Testo)));
     Result:=MsgBox(Application.Handle,
                    PChar(Testo),PChar(Titolo),Tipo+MB_APPLMODAL+MB_DEFBUTTON2);
   except
     on EWin32Error do Result := 0;	{ handle the exception only if needed }
   end;
end;

function Registra_Movimento(Tipo,Id_Prodotto,Rif,Filiale: String; Qta: Integer; Id_Fornitore: Variant; DataRif: TDateTime): Boolean;
begin
  with Dm do
    begin
      //if Dm.Prodotti.FindKey([Id_Prodotto]) then
      if Dm.Prodotti.locate('Id_Prodotto',Id_Prodotto,[]) then
        begin
          Movimenti.Open;
          Movimenti.Insert;
          MovimentiId_Prodotto.AsString:=Id_Prodotto;
          MovimentiId_Magazzino.AsInteger:=Dm.ProdottiId_Magazzino.AsInteger;
          MovimentiQta.AsInteger:=Qta;
          MovimentiPrezzo_Acquisto.AsCurrency:=Dm.ProdottiPrezzo_Acq.AsCurrency;
          MovimentiPrezzo_Vendita.AsCurrency:=Dm.ProdottiPrezzo_Vendita.AsCurrency;
          MovimentiTipo_Operazione.AsString:=Tipo;
          MovimentiData.AsDateTime:=Date;
          MovimentiFlag.AsBoolean:=False;// indica che il prodotto è stato scaricato manualmente
          if Id_Fornitore='' then MovimentiId_Fornitore.AsString:=''
          else MovimentiId_Fornitore.AsString:=Id_Fornitore;
          MovimentiRif_FatBol.AsString:=Rif;
          MovimentiData_FatBol.AsDateTime:=DataRif;
          MovimentiFiliale.AsString:=Filiale;
          Movimenti.Post;
          Movimenti.Close;
          Result:=True;
        end
      else
        begin
          UserMsg('Check Prodotti',
                  'Prodotto non trovato in magazzino. Controllare la giacenza',Mb_IconError+Mb_Ok);
          Result:=False;
        end;
    end;
end;

function Check_Dll(NomeDll: String): Boolean;
var
  Src: TSearchRec;
  i: Integer;
begin
  i:=0;
  Result:=False;
  FindFirst(ExtractFileDir(ParamStr(0))+'\*.DLL', faAnyFile, Src);
  repeat
    if UpperCase(Src.Name)=UpperCase(NomeDll) then
      begin
        Result:=True;
        Break;
      end;
  until (FindNext(Src)<> 0);
  FindClose(Src);
end;

function Check_LogDate: Boolean;
var
  DataLog: TDateTime;
begin
  {DataLog:=StrToDate(OpticLog.ReadString('Creazione File Log','Data','21/01/1997'));
  if DataLog<Date then Result:=True // elimina il file .Ini
  else Result:=False;}
end;

//********************************  procedure  ******************************************************
procedure Cambia_Colore (GrpBox : TWinControl; Switch : Boolean); { by Maverick }
var
   j : Integer;
begin
     with GrpBox do
     begin
          for j := 0 to ControlCount - 1 do    // Iterate
          begin
               case Switch of    //
                 True:
                 begin
                      if Controls[j] is TDBEdit then (Controls[j] as TDBEdit).Color := clWindow;
                      if Controls[j] is TDBComboBox then (Controls[j] as TDBComboBox).Color := clWindow;
                      if Controls[j] is TDBDateEdit then (Controls[j] as TDBDateEdit).Color := clWindow;
                      if Controls[j] is TDBGrid then (Controls[j] as TDBGrid).Color := clWindow;
                      if Controls[j] is TDBMemo then (Controls[j] as TDBMemo).Color := clWindow;
                 end;
                 False:
                 begin
                      if Controls[j] is TDBEdit then (Controls[j] as TDBEdit).Color := $00E4ECF1;
                      if Controls[j] is TDBComboBox then (Controls[j] as TDBComboBox).Color := $00E4ECF1;
                      if Controls[j] is TDBDateEdit then (Controls[j] as TDBDateEdit).Color := $00E4ECF1;
                      if Controls[j] is TDBGrid then (Controls[j] as TDBGrid).Color := $00E4ECF1;
                      if Controls[j] is TDBMemo then (Controls[j] as TDBMemo).Color := $00E4ECF1;
                 end;
               end;    // case
          end;    // for
     end;    // with
end;

procedure Setta_Testo (GrpBox :TWinControl; Testo : String);
var
   j : Integer;
begin
     with GrpBox do
     begin
          for j := 0 to ControlCount -1 do    // Iterate
          begin
               if Controls[j] is TDBEdit then (Controls[j] as TDBEdit).Text := Testo;
               if Controls[j] is TDBComboBox then (Controls[j] as TDBComboBox).Text := Testo;
               if Controls[j] is TDBDateEdit then (Controls[j] as TDBDateEdit).Date := Date;
               if Controls[j] is TDBMemo then (Controls[j] as TDBMemo).Text := Testo;
          end;    // for
     end;    // with
end;


procedure ModificaPathAlias (NomeAlias : String; Path : String);
var
   TempList : TStrings;
begin
  { crea la lista temporanea }
  TempList := TStringList.Create;
  { aggiunge la stringa del path }
  TempList.Add('PATH='+Path);
  try
    with Dm.Lazzaro do
    begin
         Close;
         ModifyAlias(NomeAlias,TempList);
         SaveConfigFile;
         Open;
    end;    // with
  finally // wrap up
          TempList.Free;
  end;    // try/finally
end;

procedure CancellaTabelleFatturazione;
begin
  with DmFatture do
    begin
      SesBaseDatiFT.Active:=False;
      BaseDatiFT.Connected:=False;
      Fatture.Close;
      Fatture.DeleteTable;
      Dettagli.Close;
      Dettagli.DeleteTable;
      NextIdFt.Close;
      NextIdFt.DeleteTable;
      NextIdRg.Close;
      NextIdRg.DeleteTable;
      SesBaseDatiFT.Active:=True;
      BaseDatiFT.Connected:=True;
    end;    // with
end;

procedure Registra_MagLifo(Tipo,Id_Prodotto: String; Qta: Integer; Valore: Currency);
// ACQ denota un acquisto
// VEN denota una vendita
// REF denota un Reso a Fornitore
// FRS denota un primo inserimento
var
  aa,mm,gg: Word;
begin
  DecodeDate(Date,aa,mm,gg);
  with Dm do
    begin
      MagLifo.Open;
      MagLifo.Edit;
      if Tipo='FRS' then
        begin
          MagLifoQuantita_Acquistata.AsInteger:=Qta;
          MagLifoQuantita_Magazzino.AsInteger:=Qta;
          MagLifoValore_Totale.AsCurrency:=Qta*Valore;
          MagLifoCostoMedio.AsCurrency:=Valore;
          MagLifoAnno.AsInteger:=aa;
        end;
      if Tipo='ACQ' then
        begin
          MagLifoQuantita_Acquistata.AsInteger:=MagLifoQuantita_Acquistata.AsInteger+Qta;
          MagLifoQuantita_Magazzino.AsInteger:=MagLifoQuantita_Magazzino.AsInteger+Qta;
          MagLifoValore_Totale.AsCurrency:=MagLifoValore_Totale.AsCurrency+(Qta*Valore);
          MagLifoCostoMedio.AsCurrency:=MagLifoValore_Totale.AsCurrency/MagLifoQuantita_Acquistata.AsInteger;
        end;
      if (Tipo='VEN')or(Tipo='REF') then MagLifoQuantita_Magazzino.AsInteger:=MagLifoQuantita_Magazzino.AsInteger-Qta;
      MagLifo.Post;
    end;
end;

procedure CheckClientServer(Valore: String);
begin
  if Valore='Server' then
    begin
      with FrmMain do
        begin
          MnAnnoFatturazione.Enabled:=True;
          MnPrimaNota.Enabled:=True;
          MnScadenziario.Enabled:=True;
          MnGeneraLenti.Enabled:=True;
          MnBackup.Enabled:=True;
          MnuMultiMagazzino.Enabled:=True;
          SICassa.Enabled:=True;
          SIBackup.Enabled:=True;
        end;
    end
  else
    begin
      with FrmMain do
        begin
          MnAnnoFatturazione.Enabled:=True;
          MnPrimaNota.Enabled:=False;
          MnScadenziario.Enabled:=True;
          MnGeneraLenti.Enabled:=False;
          MnBackup.Enabled:=False;
          MnuMultiMagazzino.Enabled:=False;
          SICassa.Enabled:=False;
          SIBackup.Enabled:=False;
        end;
    end
end;

procedure CheckVersione(Valore: String);
begin
  if Valore='Astigmatico' then
    begin
      with FrmMain do
        begin
          MnPrimaNota.Enabled:=False;
          MnScadenziario.Enabled:=False;
          MnGeneraLenti.Enabled:=False;
          MnuMultiMagazzino.Enabled:=False;
          SICassa.Enabled:=False;
        end;
    end
  else
    begin
      with FrmMain do
        begin
          MnPrimaNota.Enabled:=True;
          MnScadenziario.Enabled:=True;
          MnGeneraLenti.Enabled:=True;
          MnuMultiMagazzino.Enabled:=True;
          SICassa.Enabled:=True;
        end;
    end
end;

procedure Insert_Prodotti_BustaLavoro (Importo : Currency; Tipo : Integer);
{ Tipo = 0 --> Lente Oftalmica Dx
  Tipo = 1 --> Lente Oftalmica Sx
  Tipo = 2 --> Montatura }
begin
  if NewFattura then
    begin
      {altrimenti carica i valori contenuti in busta lavoro }
      FrmInsFattura.TempMem.Insert;
      FrmInsFattura.TempMemId_Prodotto.AsString := '0';

      {descrizione prodotto}
      case Tipo of    //
        0: FrmInsFattura.TempMemDescrizione.AsString := 'Lente Oftalmica Dx [' + Dm.MontatureMarcaLenteDx.AsString + ']';
        1: FrmInsFattura.TempMemDescrizione.AsString := 'Lente Oftalmica Sx [' + Dm.MontatureMarcaLenteSx.AsString + ']';
        2: FrmInsFattura.TempMemDescrizione.AsString := 'Montatura [' + Dm.MontatureModello.AsString + ']';
      end;    // case

      FrmInsFattura.TempMemQta.AsInteger        := 1;
      FrmInsFattura.TempMemIva.AsInteger        := 4;
      {prezzo}
      FrmInsFattura.TempMemPrezzo.AsCurrency := Importo / 1.04;
      FrmInsFattura.TempMem.Post;
    end
  else
    begin
      {altrimenti carica i valori contenuti in busta lavoro }
      DmFatture.TempMem.Insert;
      DmFatture.TempMemId_Prodotto.AsString := '0';

      {descrizione prodotto}
      case Tipo of    //
        0: DmFatture.TempMemDescrizione.AsString := 'Lente Oftalmica Dx [' + Dm.MontatureMarcaLenteDx.AsString + ']';
        1: DmFatture.TempMemDescrizione.AsString := 'Lente Oftalmica Sx [' + Dm.MontatureMarcaLenteSx.AsString + ']';
        2: DmFatture.TempMemDescrizione.AsString := 'Montatura [' + Dm.MontatureModello.AsString + ']';
      end;    // case

      DmFatture.TempMemQta.AsInteger        := 1;
      DmFatture.TempMemIva.AsInteger        := 4;

      {prezzo}
      DmFatture.TempMemPrezzo.AsCurrency := Importo / 1.04;
      DmFatture.TempMem.Post;
    end;
end;

{**** Icons *****
MB_ICONEXCLAMATION, MB_ICONWARNING: An exclamation-point icon appears in the message box(47).
MB_ICONINFORMATION, MB_ICONASTERISK: An icon consisting of a lowercase letter i in a circle
                                     appears in the message box (63).
MB_ICONQUESTION: A question-mark icon appears in the message box (31).
MB_ICONSTOP, MB_ICONHAND, MB_ICONERROR: A stop-sign icon appears in the message box (15).

***** Buttons *****
MB_ABORTRETRYIGNORE (2)
MB_OK (0)
MB_OKCANCEL (1)
MB_RETRYCANCEL (5)
MB_YESNO (4)
MB_YESNOCANCEL (3)
MB_HELP: Windows 95: Adds a Help button to the message box. Choosing the Help button or
         pressing F1 generates a Help event (6).

***** Def Buttons *****
MB_DEFBUTTON1:	The first button is the default button. Note that the first button is always
               the default unless MB_DEFBUTTON2, MB_DEFBUTTON3, or MB_DEFBUTTON4 is specified.
MB_DEFBUTTON2:	The second button is a default button.
MB_DEFBUTTON3:	The third button is a default button.
MB_DEFBUTTON4:	The fourth button is a default button.

***** Modal *****
MB_APPLMODAL: The user must respond to the message box before continuing work in the window
              identified by the hWnd parameter. However, the user can move to the windows of
              other applications and work in those windows. Depending on the hierarchy of
              windows in the application, the user may be able to move to other windows
              within the application. All child windows of the parent of the message box are
              automatically disabled, but popup windows are not.
              MB_APPLMODAL is the default value if neither MB_SYSTEMMODAL nor MB_TASKMODAL
              is specified.
MB_SYSTEMMODAL: All applications are suspended until the user responds to the message box.
                Unless the application specifies MB_ICONHAND, the message box does not
                become modal until after it is created; consequently, the owner window and
                other windows continue to receive messages resulting from its activation.
                Use system-modal message boxes to notify the user of serious, potentially
                damaging errors that require immediate attention (for example, running out
                of memory).
MB_TASKMODAL: Same as MB_APPLMODAL except that all the top-level windows belonging to the
              current task are disabled if the hWnd parameter is NULL. Use this flag when
              the calling application or library does not have a window handle available but
              still needs to prevent input to other windows in the current application
              without suspending other applications.

***** Other *****
MB_RTLREADING: Windows 95: Displays message and caption text using right-to-left reading
               order on Hebrew and Arabic systems.
MB_SERVICE_NOTIFICATION: Windows NT: The caller is a service notifying the user of an event.
                         The function displays a message box on the current active desktop,
                         even if there is no user logged on to the computer. If this flag is
                         set, the hWnd parameter must be NULL. This is so the message box can
                         appear on a desktop other than the desktop corresponding to the hWnd.
MB_SETFOREGROUND: The message box becomes the foreground window. Internally, Windows calls
                  the SetForegroundWindow function for the message box.
MB_RIGHT: Windows 95: The text is right-justified.
MB_DEFAULT_DESKTOP_ONLY: The desktop currently receiving input must be a default desktop;
                         otherwise, the function fails. A default desktop is one an
                         application runs on after the user has logged on.}

end.
