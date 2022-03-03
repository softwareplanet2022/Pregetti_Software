// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportSegnalazioni730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportSegnalazioni730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportSegnalazioni730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:19:39 - - $Rev: 69934 $)
// ************************************************************************ //

unit ReportSegnalazioni730Service;

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
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  reportSegnalazioniRequest2 = class;           { "http://reportsegnalazioni.p730.sanita.finanze.it"[Lit][GblCplx] }
  reportSegnalazioniRequest = class;            { "http://reportsegnalazioni.p730.sanita.finanze.it"[Lit][GblElm] }
  messaggio            = class;                 { "http://reportsegnalazioni.p730.sanita.finanze.it"[Cplx] }
  ProprietarioType     = class;                 { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblCplx] }
  reportSegnalazioniResponse2 = class;          { "http://reportsegnalazioni.p730.sanita.finanze.it"[Lit][GblCplx] }
  reportSegnalazioniResponse = class;           { "http://reportsegnalazioni.p730.sanita.finanze.it"[Lit][GblElm] }

  DataType        = class(TXSDate) end;      { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : reportSegnalazioniRequest, global, <complexType>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  reportSegnalazioniRequest2 = class(TRemotable)
  private
    Fpincode: string;
    FProprietario: ProprietarioType;
    FdataIniPeriodoSegnalazione: DataType;
    FdataFinPeriodoSegnalazione: DataType;
    Fopzionale1: string;
    Fopzionale1_Specified: boolean;
    Fopzionale2: string;
    Fopzionale2_Specified: boolean;
    Fopzionale3: string;
    Fopzionale3_Specified: boolean;
    procedure Setopzionale1(Index: Integer; const Astring: string);
    function  opzionale1_Specified(Index: Integer): boolean;
    procedure Setopzionale2(Index: Integer; const Astring: string);
    function  opzionale2_Specified(Index: Integer): boolean;
    procedure Setopzionale3(Index: Integer; const Astring: string);
    function  opzionale3_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property pincode:                    string            read Fpincode write Fpincode;
    property Proprietario:               ProprietarioType  read FProprietario write FProprietario;
    property dataIniPeriodoSegnalazione: DataType          read FdataIniPeriodoSegnalazione write FdataIniPeriodoSegnalazione;
    property dataFinPeriodoSegnalazione: DataType          read FdataFinPeriodoSegnalazione write FdataFinPeriodoSegnalazione;
    property opzionale1:                 string            Index (IS_OPTN) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2:                 string            Index (IS_OPTN) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3:                 string            Index (IS_OPTN) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
  end;



  // ************************************************************************ //
  // XML       : reportSegnalazioniRequest, global, <element>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  reportSegnalazioniRequest = class(reportSegnalazioniRequest2)
  private
  published
  end;

  String6Type     =  type string;      { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblSmpl] }
  CfType          =  type string;      { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : messaggio, <complexType>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
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

  String3Type     =  type string;      { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ProprietarioType, global, <complexType>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
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
    procedure SetcodiceRegione(Index: Integer; const AString3Type: String3Type);
    function  codiceRegione_Specified(Index: Integer): boolean;
    procedure SetcodiceAsl(Index: Integer; const AString3Type: String3Type);
    function  codiceAsl_Specified(Index: Integer): boolean;
    procedure SetcodiceSSA(Index: Integer; const AString6Type: String6Type);
    function  codiceSSA_Specified(Index: Integer): boolean;
  published
    property codiceRegione:  String3Type  Index (IS_OPTN) read FcodiceRegione write SetcodiceRegione stored codiceRegione_Specified;
    property codiceAsl:      String3Type  Index (IS_OPTN) read FcodiceAsl write SetcodiceAsl stored codiceAsl_Specified;
    property codiceSSA:      String6Type  Index (IS_OPTN) read FcodiceSSA write SetcodiceSSA stored codiceSSA_Specified;
    property cfProprietario: CfType       read FcfProprietario write FcfProprietario;
  end;

  FileType        =  type TByteDynArray;      { "http://reportsegnalazioni.p730.sanita.finanze.it"[GblSmpl] }
  listaMessaggi = array of messaggio;           { "http://reportsegnalazioni.p730.sanita.finanze.it"[Cplx] }


  // ************************************************************************ //
  // XML       : reportSegnalazioniResponse, global, <complexType>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  reportSegnalazioniResponse2 = class(TRemotable)
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
  // XML       : reportSegnalazioniResponse, global, <element>
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  reportSegnalazioniResponse = class(reportSegnalazioniResponse2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://reportsegnalazioni.p730.sanita.finanze.it
  // soapAction: reportsegnalazioni.p730.sanita.finanze.it
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ReportSegnalazioni730pServicePortBinding
  // service   : ReportSegnalazioni730pPort
  // port      : ReportSegnalazioni730pPort
  // URL       : http://localhost:9080/Interrogazioni730pWeb/ReportSegnalazioni730pPort
  // ************************************************************************ //
  ReportSegnalazioni730pPort = interface(IInvokable)
  ['{2B4ABA14-98EF-571C-7DD2-A406A82CD22B}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  ReportSegnalazioni(const reportSegnalazioniRequest: reportSegnalazioniRequest): reportSegnalazioniResponse; stdcall;
  end;

function GetReportSegnalazioni730pPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ReportSegnalazioni730pPort;


implementation
  uses System.SysUtils, DettaglioErrori730Service,
  DettaglioSegnalazione730Service, EsitoInvioDatiSpesa730Service,
  InterrogazionePuntuale730Service,  InvioTelematicoSpeseSanitarie730p, ReportMensile730Service,
  RicevutaPdf730Service, U_TS;

function GetReportSegnalazioni730pPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ReportSegnalazioni730pPort;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\ReportSegnalazioni730Service.wsdl';
  defURL  = 'http://localhost:9080/Interrogazioni730pWeb/ReportSegnalazioni730pPort';
  defSvc  = 'ReportSegnalazioni730pPort';
  defPrt  = 'ReportSegnalazioni730pPort';
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
    Result := (RIO as ReportSegnalazioni730pPort);
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


constructor reportSegnalazioniRequest2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor reportSegnalazioniRequest2.Destroy;
begin
  System.SysUtils.FreeAndNil(FProprietario);
  System.SysUtils.FreeAndNil(FdataIniPeriodoSegnalazione);
  System.SysUtils.FreeAndNil(FdataFinPeriodoSegnalazione);
  inherited Destroy;
end;

procedure reportSegnalazioniRequest2.Setopzionale1(Index: Integer; const Astring: string);
begin
  Fopzionale1 := Astring;
  Fopzionale1_Specified := True;
end;

function reportSegnalazioniRequest2.opzionale1_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale1_Specified;
end;

procedure reportSegnalazioniRequest2.Setopzionale2(Index: Integer; const Astring: string);
begin
  Fopzionale2 := Astring;
  Fopzionale2_Specified := True;
end;

function reportSegnalazioniRequest2.opzionale2_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale2_Specified;
end;

procedure reportSegnalazioniRequest2.Setopzionale3(Index: Integer; const Astring: string);
begin
  Fopzionale3 := Astring;
  Fopzionale3_Specified := True;
end;

function reportSegnalazioniRequest2.opzionale3_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale3_Specified;
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

constructor reportSegnalazioniResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor reportSegnalazioniResponse2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaMessaggi)-1 do
    System.SysUtils.FreeAndNil(FlistaMessaggi[I]);
  System.SetLength(FlistaMessaggi, 0);
  inherited Destroy;
end;

procedure reportSegnalazioniResponse2.SetfileCSV(Index: Integer; const AFileType: FileType);
begin
  FfileCSV := AFileType;
  FfileCSV_Specified := True;
end;

function reportSegnalazioniResponse2.fileCSV_Specified(Index: Integer): boolean;
begin
  Result := FfileCSV_Specified;
end;

initialization
  { ReportSegnalazioni730pPort }
  InvRegistry.RegisterInterface(TypeInfo(ReportSegnalazioni730pPort), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ReportSegnalazioni730pPort), 'reportsegnalazioni.p730.sanita.finanze.it');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReportSegnalazioni730pPort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(ReportSegnalazioni730pPort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(DataType), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'DataType');
  RemClassRegistry.RegisterXSClass(reportSegnalazioniRequest2, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'reportSegnalazioniRequest2', 'reportSegnalazioniRequest');
  RemClassRegistry.RegisterSerializeOptions(reportSegnalazioniRequest2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(reportSegnalazioniRequest, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'reportSegnalazioniRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String6Type), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'String6Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CfType), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'CfType');
  RemClassRegistry.RegisterXSClass(messaggio, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'messaggio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String3Type), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'String3Type');
  RemClassRegistry.RegisterXSClass(ProprietarioType, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'ProprietarioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FileType), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'FileType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaMessaggi), 'http://reportsegnalazioni.p730.sanita.finanze.it', 'listaMessaggi');
  RemClassRegistry.RegisterXSClass(reportSegnalazioniResponse2, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'reportSegnalazioniResponse2', 'reportSegnalazioniResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(reportSegnalazioniResponse2), 'listaMessaggi', '[ArrayItemName="messaggio"]');
  RemClassRegistry.RegisterSerializeOptions(reportSegnalazioniResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(reportSegnalazioniResponse, 'http://reportsegnalazioni.p730.sanita.finanze.it', 'reportSegnalazioniResponse');

end.
