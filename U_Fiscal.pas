unit U_Fiscal;

interface

uses SysUtils, Dialogs, Forms;

type
  TCodFData = array[1..5] of string;
  TFiscal = class(TObject)
    CodeFData: TCodFData;
    function CodFNew (Cognome, Nome, Data, Sesso, CodComune: string): string;
    function CodFCogn(Cognome: string): string;
    function CodFNome(Nome: string): string;
    function CodFDtSe(Data, Sesso: string): string;
    function CodFCtrl(PseudoCod: string): string;
    function CodFExSe(Code: string): Char;
    function CodFExDt(Code: string): string;
    function CodFExLg(Code: string): string;
    function IsCodF(PseudoCod: string): Integer;
    function TestCodFisc(Txt: string): TCodFData;
    function CreateCodFisc(Data: TCodFData):string;
    function CarContrPIva(PseudoCod: string): string;
    function TestPIva(PseudoCod: string):Boolean;
  end;


const
   NoValid=' 0123456789!?.,;:+-*/^=<>_|\§°#@[]()&%$£"''çàèéìòù';
var
   Fiscal: TFiscal;

implementation

uses U_DM;


{************************* Funzioni Codice Fiscale ****************************}
function TFiscal.CodFNew (Cognome, Nome, Data, Sesso, CodComune: string):string;
// Genera un nuovo Codice Fiscale
begin
   if (Cognome='') or (Nome='') or (Data='') or (Sesso='') or (CodComune='') then
     begin
        Result:='';
        Exit;
     end;
   Result:= Fiscal.CodFCogn(Cognome) + Fiscal.CodFNome(Nome) +
            Fiscal.CodFDtSe(Data,Sesso) + CodComune;
   Result:= Result + Fiscal.CodFCtrl(Result);
end;


function TFiscal.CodFCogn(Cognome: string):string;
// Genera il campo del cognome nel codice fiscale
const
    Voc='AEIOU';
var
    i: Integer;
    CognVoc, CognCons: string;
begin
   //Scomposizione del cognome in due stringhe contenenti le vocali e le consonanti
   CognVoc:='';
   CognCons:='';
   for i:=1 to Length(Cognome) do
     if Pos(Cognome[i],Voc)>0 then CognVoc:=CognVoc+Cognome[i]
     else if Pos(Cognome[i],NoValid)=0 then CognCons:=CognCons+Cognome[i];
   //Analisi del numero di caratteri
   case Length(CognCons) of
     0:    Result:=CognVoc+'X';                               // 2 Voc.
     1:    if Length(CognVoc)>1 then Result:=CognCons+CognVoc // 1 cons. e 2 voc.
           else Result:=CognCons+CognVoc+'X';                 // 1 cons. e 1 voc.
     2:    Result:=CognCons+CognVoc[1];                       // 2 cons.
   else
           for i:=1 to 3 do Result:=Result+CognCons[i];       // 3 o più cons.
   end;
end;


function TFiscal.CodFNome(Nome: string):string;
// Genera il campo del nome nel codice fiscale
const
    Voc='AEIOU';
var
    i: Integer;
    NomeVoc, NomeCons: string;
begin
   //Scomposizione del nome in due stringhe contenenti le vocali e le consonanti
   NomeVoc:='';
   NomeCons:='';
   for i:=1 to Length(Nome) do
     if Pos(Nome[i],Voc)>0 then NomeVoc:=NomeVoc+Nome[i]
     else if Pos(Nome[i],NoValid)=0 then NomeCons:=NomeCons+Nome[i];
   //Analisi del numero di caratteri
   case Length(NomeCons) of
     0:    Result:=NomeVoc+'X';                               // 2 Voc.
     1:    if Length(NomeVoc)>1 then Result:=NomeCons+NomeVoc // 1 cons. e 2 voc.
           else Result:=NomeCons+NomeVoc+'X';                 // 1 cons. e 1 voc.
     2:    Result:=NomeCons+NomeVoc[1];                       // 2 cons.
   else
           if Length(NomeCons)=3 then Result:=NomeCons        // 3 cons.
           else Result:=NomeCons[1]+NomeCons[3]+NomeCons[4];  // 4 o più cons.
   end;
end;


function TFiscal.CodFDtSe(Data, Sesso: string): string;
// Genera il campo della data di nascita e sesso nel codice fiscale
// N.B.: Data in formato GG/MM/AA o GG/MM/AAAA
const
    CarMese='ABCDEHLMPRST';
var
    i: Integer;
begin
    if Length(Data)=10 then Result:=Copy(Data,9,2)             // Anno
                       else Result:=Copy(Data,7,2);
    Result:=Result+CarMese[StrToInt(Copy(Data,4,2))];          // Mese
    i:=StrToInt(Copy(Data,1,2));                               // Giorno + Sesso
    if Sesso='F' then i:=i+40;
    if i<10 then Result:=Result+'0'+IntToStr(i)
            else Result:=Result+IntToStr(i);
end;


function TFiscal.CodFCtrl(PseudoCod: string): string;
// Genera il codice di controllo del codice fiscale
const
   CarPari='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   NumPari='0123456789';
   CarDisp='BAKPLCQDREVOSFTGUHMINJWZYX';
   NumDisp='10   2 3 4   5 6 7 8 9';
var
   i: Integer;
   Control: Integer;
   Car: Char;
begin
   Control:=0;
   for i:=1 to 15 do
   begin
      Car:= PseudoCod[i];
      if Pos(Car,CarPari)>0 then                              //carattere
         if (i mod 2)=0 then Inc(Control,Pos(Car,CarPari)-1)           //pari
         else Inc(Control,Pos(Car,CarDisp)-1)                          //dispari
      else                                                    //numero
         if (i mod 2)=0 then Inc(Control,Pos(Car,NumPari)-1)           //pari
         else Inc(Control,Pos(Car,NumDisp)-1);                         //dispari
   end;
   Result:=CarPari[(Control mod 26)+1];
end;


function TFiscal.CodFExSe(Code: string): char;
// Estrae dal Codice Fiscale il Sesso
begin
   if Fiscal.IsCodF(Code)=0 then
     if Copy(Code,10,1)>'3' then Result:='F' else Result:='M'
   else
     Result:=Chr(0);
end;


function TFiscal.CodFExDt(Code: string): string;
// Estrae dal Codice Fiscale la Data di Nascita
const
   CarMese='ABCDEHLMPRST';
var
   i,j: integer;
begin
   if Fiscal.IsCodF(Code)<>0 then Exit;
   Val(Copy(Code,10,2),i,j);
   if i>40 then i:=i-40;
   Result:=IntToStr(i)+'/'+ IntToStr(Pos(Copy(Code,9,1),CarMese))+'/'
           + Copy(Code,7,2);
end;


function TFiscal.CodFExLg(Code: string): string;
// Estrae dal Codice Fiscale il codice del Luogo di Nascita
begin
   if Fiscal.IsCodF(Code)=0 then Result:=Copy(Code,12,4);
end;


function TFiscal.IsCodF(PseudoCod: string): integer;
// Verifica se una stringa di 16 caratteri è in formato Codice Fiscale
// (AAAAAA NNANN ANNNA). Restituisce un codice numerico indicante il
// tipo di errore
//       -1  ---> Lunghezza codice errata
//        0  ---> Nessun Errore
//    1..16  ---> Posizione carattere errato
//   65..90  ---> Codice fiscale errato (codice carattere di controllo esatto)
var
   i: integer;
   a: char;
begin
   Result:=0;
   // Verifica lunghezza stringa
   if Length(PseudoCod)<>16 then
     begin
        Result:=-1;
        Exit;
     end;
   // Verifica del formato
   for i:=1 to 16 do
     case i of
       1..6, 9, 12, 16     : if (PseudoCod[i]<'A')or(PseudoCod[i]>'Z') then
                                 Result:=i;
       7, 8, 10, 11, 13..15: if (PseudoCod[i]<'0')or(PseudoCod[i]>'9') then
                                 Result:=i;
     end;
   // Verifica del codice di controllo
   if Result=0 then
     begin
        a:=CodFCtrl(PseudoCod)[1];
        if PseudoCod[16]<>a then Result:=Ord(a);
     end;
end;


// ***************************** Funzioni di utilizzo *************************
function TFiscal.TestCodFisc(Txt: string): TCodFData;
// Controlla se la stringa è un Codice Fiscale esatto,
// segnala eventuali errori ed estrae i dati
const
   TitleDlg='Controllo Codice Fiscale';
   LungErr ='Numero di caratteri insufficiente!';
   PosErr  ='Codice Fiscale Errato!'+Chr(13)+'Carattere errato (posizione): ';
   CodErr  ='Codice Fiscale Errato!'+Chr(13)+'Carattere di controllo esatto: ';
var
   ErrCode, i: integer;
   ErrMsg: string;
begin
   for i:=1 to 5 do Result[i]:='';
   ErrCode:=IsCodF(Txt);
   case ErrCode of
    -1:  ErrMsg:=LungErr;
     0:  begin
            // Estrae dal codice fiscale tutti i dati possibili
            Result[1]:=Fiscal.CodFExSe(Txt);
            Result[2]:=Fiscal.CodFExDt(Txt);
            // Apre il file Comuni
            Dm.Comuni.Open;
            // Cerca il codice comune
            if Dm.Comuni.Locate('CodFisc',CodFExLg(Txt),[]) then
              Result[3]:=Dm.Comuni.FieldByName('Comune').AsString;
            // Chiude il file Comuni
            Dm.Comuni.Close;
         end;
    1..16: ErrMsg:=PosErr + IntToStr(ErrCode);
   65..90: ErrMsg:=CodErr + Chr(ErrCode);
   end;
   if not (ErrCode=0) then Application.MessageBox(PChar(ErrMsg),PChar(TitleDlg),16);
end;


function TFiscal.CreateCodFisc(Data: TCodFData):string;
// Genera il Codice Fiscale
const
   TitleDlg='Generazione Codice Fiscale';
   DataErr ='Impossibile determinare il codice fiscale!';
   DataErr1='Cognome o Nome';
   DataErr2='Data di Nascita';
   DataErr3='Sesso';
   DataErr4='Luogo di Nascita';
   DataErr5='Comune non presente in archivio!';
var
  StrErr: string;
begin
   Result:='';
   StrErr:='';
   // Verifica presenza dati
   if  Data[5]='' then StrErr:=DataErr4;
   if  Data[4]='' then StrErr:=DataErr3;
   if  Data[3]='' then StrErr:=DataErr2;
   if (Data[1]='') or (Data[2]='') then StrErr:=DataErr1;
   if StrErr<>'' then
     begin
        Application.MessageBox(Pchar('Dati incompleti: '+StrErr+' non presente!'),PChar(TitleDlg),16);
        Exit;
     end;
   // Apre il file Comuni
    Dm.Comuni.Open;
   // Verifica presenza dati in tabella Comuni
   if not Dm.Comuni.Locate('Comune',Data[5],[]) then
     begin
        Application.MessageBox(Pchar(DataErr5),PChar(TitleDlg),16);
        Exit;
     end
   else
     Data[5]:=Dm.Comuni.FieldByName('CodFisc').AsString;
   // Close il file Comuni
    Dm.Comuni.Close;
   // Richiama funzione per generazione del codice fiscale
   with Dm.Pazienti do
     begin
        Result:=Fiscal.CodFNew(Data[1], Data[2], Data[3], Data[4], Data[5]);
        if Length(Result)<16 then
          Application.MessageBox(PChar(DataErr),PChar(TitleDlg),16);
     end;
end;

// ******************************* Partita Iva ********************************
function TFiscal.CarContrPIva(PseudoCod: string): string;
//Genera il codice di controllo della partita Iva
const
   NumDisp='0987654321';
   NumPari='0948372615';
var
   i, Cod: integer;
begin
   Cod:=0;
   for i:=1 to 10 do
     if (i mod 2)=0 then
       Inc(Cod,Pos(PseudoCod[i],NumPari)-1)         // posizione pari
     else
       Inc(Cod,Pos(PseudoCod[i],NumDisp)-1);        // posizione dispari
   i:= Cod mod 10;
   Result:=IntToStr(i);
end;


function TFiscal.TestPIva(PseudoCod: string):Boolean;
const
   TitleDlg='Controllo Partita Iva';
   LungErr ='Numero di caratteri insufficiente!';
   CodErr  ='Partita Iva Errata!'+Chr(13)+'Carattere di controllo esatto: ';
var
   Car: string;
begin
   Result:=False;
   if Length(PseudoCod)=11 then
     begin
        Car:=CarContrPIva(Copy(PseudoCod,1,10));
        if Car<>Copy(PseudoCod,11,1) then Application.MessageBox(PChar(CodErr+Car),PChar(TitleDlg),16)
        else Result:=True;
     end
   else
     Application.MessageBox(PChar(LungErr),PChar(TitleDlg),16);
end;


end.
