unit cpuid;

interface

uses System.Classes, System.SysUtils;

var
  VendorId:ShortString;
  SerialNumber:longbool;

  procedure GetCPUInfo(var AInfo: TStringList);
  function GetCPUID2:string;

implementation



//get CPU info
procedure GetCPUInfo(var AInfo: TStringList);
var
  _eax, _ebx, _ecx, _edx: Longword;
  i: Integer;
  b: Byte;
  b1: Word;
  s, s1, s2, s3, s_all: string;
begin
  AInfo.Clear;

  asm                //asm call to the CPUID inst.
    mov eax,0        //sub. func call
    db $0F,$A2        //db $0F,$A2 = CPUID instruction
    mov _ebx,ebx
    mov _ecx,ecx
    mov _edx,edx
  end;
  for i := 0 to 3 do  //extract vendor id
  begin
    b := lo(_ebx);
    s := s + chr(b);
    b := lo(_ecx);
    s1:= s1 + chr(b);
    b := lo(_edx);
    s2:= s2 + chr(b);
    _ebx := _ebx shr 8;
    _ecx := _ecx shr 8;
    _edx := _edx shr 8;
  end;
  AInfo.Add('CPU');
  AInfo.Add('  - Vendor ID: ' + s + s2 + s1);
  asm
    mov eax,1
    db $0F,$A2
    mov _eax,eax
    mov _ebx,ebx
    mov _ecx,ecx
    mov _edx,edx
  end;
  //06B1
  //|0000| |0000 0000| |0000| |00| |00| |0110| |1011| |0001|
  b := lo(_eax) and 15;
  AInfo.Add('  - Stepping ID: ' + IntToStr(b));
  b := lo(_eax) shr 4;
  AInfo.Add('  - Model Number: ' + IntToHex(b, 1));
  b := hi(_eax) and 15;
  AInfo.Add('  - Family Code: ' + IntToStr(b));
  b := hi(_eax) shr 4;
  AInfo.Add('  - Processor Type: ' + IntToStr(b));
  //31.  28. 27.  24. 23.  20. 19.  16.
  //  0 0 0 0  0 0 0 0  0 0 0 0  0 0 0 0
  b := lo((_eax shr 16)) and 15;
  AInfo.Add('  - Extended Model: ' + IntToStr(b));
  b := lo((_eax shr 20));
  AInfo.Add('  - Extended Family: ' + IntToStr(b));
  b := lo(_ebx);
  AInfo.Add('  - Brand ID: ' + IntToStr(b));
  b := hi(_ebx);
  AInfo.Add('  - Chunks: ' + IntToStr(b));
  b := lo(_ebx shr 16);
  AInfo.Add('  - Count: ' + IntToStr(b));
  b := hi(_ebx shr 16);
  AInfo.Add('  - APIC ID: ' + IntToStr(b));
  //Bit 18 =? 1    //is serial number enabled?
  if (_edx and $40000) = $40000 then
    AInfo.Add('  - Serial Number Enabled')
  else
    AInfo.Add('  - Serial Number Disabled');
  s := IntToHex(_eax, 8);
  asm                  //determine the serial number
    mov eax,3
    db $0F,$A2
    mov _ecx,ecx
    mov _edx,edx
  end;
  s1 := IntToHex(_edx, 8);
  s2 := IntToHex(_ecx, 8);
  Insert('-', s, 5);
  Insert('-', s1, 5);
  Insert('-', s2, 5);
  AInfo.Add('  - Serial Number: ' + s + '-' + s1 + '-' + s2);
  asm
    mov eax,1
    db $0F,$A2
    mov _edx,edx
  end;
  AInfo.Add('');
  //Bit 23 =? 1
  if (_edx and $800000) = $800000 then
    AInfo.Add('MMX Supported')
  else
    AInfo.Add('MMX Not Supported');
  //Bit 24 =? 1
  if (_edx and $01000000) = $01000000 then
    AInfo.Add('FXSAVE & FXRSTOR Instructions Supported')
  else
    AInfo.Add('FXSAVE & FXRSTOR Instructions Not Supported');
  //Bit 25 =? 1
  if (_edx and $02000000) = $02000000 then
    AInfo.Add('SSE Supported')
  else
    AInfo.Add('SSE Not Supported');
  //Bit 26 =? 1
  if (_edx and $04000000) = $04000000 then
    AInfo.Add('SSE2 Supported')
  else
    AInfo.Add('SSE2 Not Supported');
  AInfo.Add('');
  asm    //execute the extended CPUID inst.
    mov eax,$80000000  //sub. func call
    db $0F,$A2
    mov _eax,eax
  end;
  if _eax > $80000000 then  //any other sub. funct avail. ?
  begin
    AInfo.Add('Extended CPUID: Supported');
    AInfo.Add('  - Largest Function Supported: ' + IntToStr(_eax -
$80000000));
    asm    //get brand ID
      mov eax,$80000002
      db $0F
      db $A2
      mov _eax,eax
      mov _ebx,ebx
      mov _ecx,ecx
      mov _edx,edx
    end;
    s  := '';
    s1 := '';
    s2 := '';
    s3 := '';
    for i := 0 to 3 do
    begin
      b := lo(_eax);
      s3:= s3 + chr(b);
      b := lo(_ebx);
      s := s + chr(b);
      b := lo(_ecx);
      s1 := s1 + chr(b);
      b := lo(_edx);
      s2 := s2 + chr(b);
      _eax := _eax shr 8;
      _ebx := _ebx shr 8;
      _ecx := _ecx shr 8;
      _edx := _edx shr 8;
    end;
    s_all := s3 + s + s1 + s2;
    asm
      mov eax,$80000003
      db $0F
      db $A2
      mov _eax,eax
      mov _ebx,ebx
      mov _ecx,ecx
    mov _edx,edx
    end;
    s  := '';
    s1 := '';
    s2 := '';
    s3 := '';
    for i := 0 to 3 do
    begin
      b := lo(_eax);
      s3 := s3 + chr(b);
      b := lo(_ebx);
      s := s + chr(b);
      b := lo(_ecx);
      s1 := s1 + chr(b);
      b := lo(_edx);
      s2 := s2 + chr(b);
      _eax := _eax shr 8;
      _ebx := _ebx shr 8;
      _ecx := _ecx shr 8;
      _edx := _edx shr 8;
    end;
    s_all := s_all + s3 + s + s1 + s2;
    asm
      mov eax,$80000004
      db $0F
      db $A2
      mov _eax,eax
      mov _ebx,ebx
      mov _ecx,ecx
      mov _edx,edx
    end;
    s  := '';
    s1 := '';
    s2 := '';
    s3 := '';
    for i := 0 to 3 do
    begin
      b  := lo(_eax);
      s3 := s3 + chr(b);
      b := lo(_ebx);
      s := s + chr(b);
      b := lo(_ecx);
      s1 := s1 + chr(b);
      b  := lo(_edx);
      s2 := s2 + chr(b);
      _eax := _eax shr 8;
      _ebx := _ebx shr 8;
      _ecx := _ecx shr 8;
      _edx := _edx shr 8;
    end;
    AInfo.Add('Brand String:');
    if s2[Length(s2)] = #0 then setlength(s2, Length(s2) - 1);
    AInfo.Add('  - ' + s_all + s3 + s + s1 + s2);
  end
  else
    AInfo.Add('  - Extended CPUID Not Supported.');
end;


function GetCPUID2:string;
var
  a,b,c,d : Longword;
  x:Pchar;
  sysdir : Array[0..144] of char;
  yyil:string;
begin
  // CPU Serial No
  try
    asm
      mov eax,1 // eax registeri cpuid komutunun parametresidir
      db $0F, $A2 // cpuid komutu
      mov a,EAX
      mov b,EBX
      mov c,ECX
      mov d,EDX
    end;
      Result:=inttohex(a,8) + '-' + inttohex(b,8) + '-' + inttohex(c,8) + '-' + inttohex(d,8);
  except
    Result:='4176DDFA-7B7F-4A6E-AB07-BFD63A9730EE';
  end;
end;


end.
