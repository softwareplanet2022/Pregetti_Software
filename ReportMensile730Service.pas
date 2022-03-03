// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportMensile730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportMensile730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportMensile730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:19:15 - - $Rev: 69934 $)
// ************************************************************************ //

unit ReportMensile730Service;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  messaggio            = class;                 { "http://reportmensile.p730.sanita.finanze.it"[Cplx] }
  ProprietarioType     = class;                 { "http://reportmensile.p730.sanita.finanze.it"[GblCplx] }
  reportMensileRequest2 = class;                { "http://reportmensile.p730.sanita.finanze.it"[Lit][GblCplx] }
  reportMensileRequest = class;                 { "http://reportmensile.p730.sanita.finanze.it"[Lit][GblElm] }
  reportMensileResponse2 = class;               { "http://reportmensile.p730.sanita.finanze.it"[Lit][GblCplx] }
  reportMensileResponse = class;                { "http://reportmensile.p730.sanita.finanze.it"[Lit][GblElm] }

  AnnoMeseType    =  type Int64;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }
  String3Type     =  type string;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : messaggio, <complexType>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // ************************************************************************ //
  messaggio = class(TRemotable)
  private
    Fcodice: string;
    Fdescrizione: string;
    Ftipo: string;
  published
    property codice:      string  read Fcodice write Fcodice;
    property descrizione: string  read Fdescrizione write Fdescrizione;
    property tipo:        string  read Ftipo write Ftipo;
  end;

  CfType          =  type string;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }
  String6Type     =  type string;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ProprietarioType, global, <complexType>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // ************************************************************************ //
  ProprietarioType = class(TRemotable)
  private
    FcodiceRegione: String3Type;
    FcodiceRegione_Specified: boolean;
    FcodiceAsl: String3Type;
    FcodiceAsl_Specified: boolean;
    FcodiceSSA: String6Type;
    FcodiceSSA_Specified: boolean;
    FcfProprietario: CfType;
    FcfProprietario_Specified: boolean;
    procedure SetcodiceRegione(Index: Integer; const AString3Type: String3Type);
    function  codiceRegione_Specified(Index: Integer): boolean;
    procedure SetcodiceAsl(Index: Integer; const AString3Type: String3Type);
    function  codiceAsl_Specified(Index: Integer): boolean;
    procedure SetcodiceSSA(Index: Integer; const AString6Type: String6Type);
    function  codiceSSA_Specified(Index: Integer): boolean;
    procedure SetcfProprietario(Index: Integer; const ACfType: CfType);
    function  cfProprietario_Specified(Index: Integer): boolean;
  published
    property codiceRegione:  String3Type  Index (IS_OPTN) read FcodiceRegione write SetcodiceRegione stored codiceRegione_Specified;
    property codiceAsl:      String3Type  Index (IS_OPTN) read FcodiceAsl write SetcodiceAsl stored codiceAsl_Specified;
    property codiceSSA:      String6Type  Index (IS_OPTN) read FcodiceSSA write SetcodiceSSA stored codiceSSA_Specified;
    property cfProprietario: CfType       Index (IS_OPTN) read FcfProprietario write SetcfProprietario stored cfProprietario_Specified;
  end;

  FileType        =  type TByteDynArray;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }
  listaMessaggi = array of messaggio;           { "http://reportmensile.p730.sanita.finanze.it"[Cplx] }
  String1Type     =  type string;      { "http://reportmensile.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : reportMensileRequest, global, <complexType>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  reportMensileRequest2 = class(TRemotable)
  private
    Fopzionale1: string;
    Fopzionale1_Specified: boolean;
    Fopzionale2: string;
    Fopzionale2_Specified: boolean;
    Fopzionale3: string;
    Fopzionale3_Specified: boolean;
    Fpincode: string;
    FProprietario: ProprietarioType;
    FProprietario_Specified: boolean;
    FannoMese: AnnoMeseType;
    FtipoEstrazione: String1Type;
    procedure Setopzionale1(Index: Integer; const Astring: string);
    function  opzionale1_Specified(Index: Integer): boolean;
    procedure Setopzionale2(Index: Integer; const Astring: string);
    function  opzionale2_Specified(Index: Integer): boolean;
    procedure Setopzionale3(Index: Integer; const Astring: string);
    function  opzionale3_Specified(Index: Integer): boolean;
    procedure SetProprietario(Index: Integer; const AProprietarioType: ProprietarioType);
    function  Proprietario_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property opzionale1:     string            Index (IS_OPTN) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2:     string            Index (IS_OPTN) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3:     string            Index (IS_OPTN) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
    property pincode:        string            read Fpincode write Fpincode;
    property Proprietario:   ProprietarioType  Index (IS_OPTN) read FProprietario write SetProprietario stored Proprietario_Specified;
    property annoMese:       AnnoMeseType      read FannoMese write FannoMese;
    property tipoEstrazione: String1Type       read FtipoEstrazione write FtipoEstrazione;
  end;



  // ************************************************************************ //
  // XML       : reportMensileRequest, global, <element>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  reportMensileRequest = class(reportMensileRequest2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : reportMensileResponse, global, <complexType>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  reportMensileResponse2 = class(TRemotable)
  private
    FesitoChiamata: string;
    FfileCSV: FileType;
    FfileCSV_Specified: boolean;
    FlistaMessaggi: listaMessaggi;
    procedure SetfileCSV(Index: Integer; const AFileType: FileType);
    function  fileCSV_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property esitoChiamata: string         read FesitoChiamata write FesitoChiamata;
    property fileCSV:       FileType       Index (IS_OPTN) read FfileCSV write SetfileCSV stored fileCSV_Specified;
    property listaMessaggi: listaMessaggi  read FlistaMessaggi write FlistaMessaggi;
  end;



  // ************************************************************************ //
  // XML       : reportMensileResponse, global, <element>
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  reportMensileResponse = class(reportMensileResponse2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://reportmensile.p730.sanita.finanze.it
  // soapAction: reportmensile.p730.sanita.finanze.it
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ReportMensile730pServicePortBinding
  // service   : ReportMensile730pPort
  // port      : ReportMensile730pPort
  // URL       : http://localhost:9080/ReportMensile730Web/ReportMensilePort
  // ************************************************************************ //
  ReportMensile730pPort = interface(IInvokable)
  ['{34BC717C-5030-F6CF-60E1-46C98B6A6D26}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  ReportMensile(const reportMensileRequest: reportMensileRequest): reportMensileResponse; stdcall;
  end;

function GetReportMensile730pPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ReportMensile730pPort;


implementation
  uses System.SysUtils, DettaglioErrori730Service,
  DettaglioSegnalazione730Service, EsitoInvioDatiSpesa730Service, InterrogazionePuntuale730Service,
  InvioTelematicoSpeseSanitarie730p, ReportSegnalazioni730Service,
  RicevutaPdf730Service, U_TS;

function GetReportMensile730pPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ReportMensile730pPort;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportMensile730Service.wsdl';
  defURL  = 'http://localhost:9080/ReportMensile730Web/ReportMensilePort';
  defSvc  = 'ReportMensile730pPort';
  defPrt  = 'ReportMensile730pPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ReportMensile730pPort);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure ProprietarioType.SetcodiceRegione(Index: Integer; const AString3Type: String3Type);
begin
  FcodiceRegione := AString3Type;
  FcodiceRegione_Specified := True;
end;

function ProprietarioType.codiceRegione_Specified(Index: Integer): boolean;
begin
  Result := FcodiceRegione_Specified;
end;

procedure ProprietarioType.SetcodiceAsl(Index: Integer; const AString3Type: String3Type);
begin
  FcodiceAsl := AString3Type;
  FcodiceAsl_Specified := True;
end;

function ProprietarioType.codiceAsl_Specified(Index: Integer): boolean;
begin
  Result := FcodiceAsl_Specified;
end;

procedure ProprietarioType.SetcodiceSSA(Index: Integer; const AString6Type: String6Type);
begin
  FcodiceSSA := AString6Type;
  FcodiceSSA_Specified := True;
end;

function ProprietarioType.codiceSSA_Specified(Index: Integer): boolean;
begin
  Result := FcodiceSSA_Specified;
end;

procedure ProprietarioType.SetcfProprietario(Index: Integer; const ACfType: CfType);
begin
  FcfProprietario := ACfType;
  FcfProprietario_Specified := True;
end;

function ProprietarioType.cfProprietario_Specified(Index: Integer): boolean;
begin
  Result := FcfProprietario_Specified;
end;

constructor reportMensileRequest2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor reportMensileRequest2.Destroy;
begin
  System.SysUtils.FreeAndNil(FProprietario);
  inherited Destroy;
end;

procedure reportMensileRequest2.Setopzionale1(Index: Integer; const Astring: string);
begin
  Fopzionale1 := Astring;
  Fopzionale1_Specified := True;
end;

function reportMensileRequest2.opzionale1_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale1_Specified;
end;

procedure reportMensileRequest2.Setopzionale2(Index: Integer; const Astring: string);
begin
  Fopzionale2 := Astring;
  Fopzionale2_Specified := True;
end;

function reportMensileRequest2.opzionale2_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale2_Specified;
end;

procedure reportMensileRequest2.Setopzionale3(Index: Integer; const Astring: string);
begin
  Fopzionale3 := Astring;
  Fopzionale3_Specified := True;
end;

function reportMensileRequest2.opzionale3_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale3_Specified;
end;

procedure reportMensileRequest2.SetProprietario(Index: Integer; const AProprietarioType: ProprietarioType);
begin
  FProprietario := AProprietarioType;
  FProprietario_Specified := True;
end;

function reportMensileRequest2.Proprietario_Specified(Index: Integer): boolean;
begin
  Result := FProprietario_Specified;
end;

constructor reportMensileResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor reportMensileResponse2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaMessaggi)-1 do
    System.SysUtils.FreeAndNil(FlistaMessaggi[I]);
  System.SetLength(FlistaMessaggi, 0);
  inherited Destroy;
end;

procedure reportMensileResponse2.SetfileCSV(Index: Integer; const AFileType: FileType);
begin
  FfileCSV := AFileType;
  FfileCSV_Specified := True;
end;

function reportMensileResponse2.fileCSV_Specified(Index: Integer): boolean;
begin
  Result := FfileCSV_Specified;
end;

initialization
  { ReportMensile730pPort }
  InvRegistry.RegisterInterface(TypeInfo(ReportMensile730pPort), 'http://reportmensile.p730.sanita.finanze.it', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ReportMensile730pPort), 'reportmensile.p730.sanita.finanze.it');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReportMensile730pPort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReportMensile730pPort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(AnnoMeseType), 'http://reportmensile.p730.sanita.finanze.it', 'AnnoMeseType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String3Type), 'http://reportmensile.p730.sanita.finanze.it', 'String3Type');
  RemClassRegistry.RegisterXSClass(messaggio, 'http://reportmensile.p730.sanita.finanze.it', 'messaggio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CfType), 'http://reportmensile.p730.sanita.finanze.it', 'CfType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String6Type), 'http://reportmensile.p730.sanita.finanze.it', 'String6Type');
  RemClassRegistry.RegisterXSClass(ProprietarioType, 'http://reportmensile.p730.sanita.finanze.it', 'ProprietarioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FileType), 'http://reportmensile.p730.sanita.finanze.it', 'FileType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaMessaggi), 'http://reportmensile.p730.sanita.finanze.it', 'listaMessaggi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String1Type), 'http://reportmensile.p730.sanita.finanze.it', 'String1Type');
  RemClassRegistry.RegisterXSClass(reportMensileRequest2, 'http://reportmensile.p730.sanita.finanze.it', 'reportMensileRequest2', 'reportMensileRequest');
  RemClassRegistry.RegisterSerializeOptions(reportMensileRequest2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(reportMensileRequest, 'http://reportmensile.p730.sanita.finanze.it', 'reportMensileRequest');
  RemClassRegistry.RegisterXSClass(reportMensileResponse2, 'http://reportmensile.p730.sanita.finanze.it', 'reportMensileResponse2', 'reportMensileResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportMensileResponse2), 'listaMessaggi', '[ArrayItemName="messaggio"]');
  RemClassRegistry.RegisterSerializeOptions(reportMensileResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(reportMensileResponse, 'http://reportmensile.p730.sanita.finanze.it', 'reportMensileResponse');

end.
