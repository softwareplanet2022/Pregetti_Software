// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InterrogazionePuntuale730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InterrogazionePuntuale730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InterrogazionePuntuale730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:18:47 - - $Rev: 69934 $)
// ************************************************************************ //

unit InterrogazionePuntuale730Service;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  interrogazionePuntualeRequest2 = class;       { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Lit][GblCplx] }
  interrogazionePuntualeRequest = class;        { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Lit][GblElm] }
  interrogazionePuntualeResponse2 = class;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Lit][GblCplx] }
  interrogazionePuntualeResponse = class;       { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Lit][GblElm] }
  errore               = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  totaliVociSpesa      = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  totaliVociSpesaRimborsate = class;            { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  IdDocumentoFiscaleType = class;               { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblCplx] }
  DocumentoFiscaleType = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblCplx] }
  numDocumentoFiscale  = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  messaggio            = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  ProprietarioType     = class;                 { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblCplx] }

  listaErroriDocumento = array of errore;       { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }
  Array_Of_totaliVociSpesa = array of totaliVociSpesa;   { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Ubnd] }
  Array_Of_totaliVociSpesaRimborsate = array of totaliVociSpesaRimborsate;   { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Ubnd] }
  Int3Type        =  type Integer;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }
  listaMessaggi = array of messaggio;           { "http://interrogazionepuntuale.p730.sanita.finanze.it"[Cplx] }


  // ************************************************************************ //
  // XML       : interrogazionePuntualeRequest, global, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  interrogazionePuntualeRequest2 = class(TRemotable)
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
    FidDocumentoFiscale: IdDocumentoFiscaleType;
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
    property opzionale1:         string                  Index (IS_OPTN) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2:         string                  Index (IS_OPTN) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3:         string                  Index (IS_OPTN) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
    property pincode:            string                  read Fpincode write Fpincode;
    property Proprietario:       ProprietarioType        Index (IS_OPTN) read FProprietario write SetProprietario stored Proprietario_Specified;
    property idDocumentoFiscale: IdDocumentoFiscaleType  read FidDocumentoFiscale write FidDocumentoFiscale;
  end;



  // ************************************************************************ //
  // XML       : interrogazionePuntualeRequest, global, <element>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  interrogazionePuntualeRequest = class(interrogazionePuntualeRequest2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : interrogazionePuntualeResponse, global, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  interrogazionePuntualeResponse2 = class(TRemotable)
  private
    FesitoChiamata: string;
    FdocumentoFiscale: DocumentoFiscaleType;
    FdocumentoFiscale_Specified: boolean;
    FlistaMessaggi: listaMessaggi;
    procedure SetdocumentoFiscale(Index: Integer; const ADocumentoFiscaleType: DocumentoFiscaleType);
    function  documentoFiscale_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property esitoChiamata:    string                read FesitoChiamata write FesitoChiamata;
    property documentoFiscale: DocumentoFiscaleType  Index (IS_OPTN) read FdocumentoFiscale write SetdocumentoFiscale stored documentoFiscale_Specified;
    property listaMessaggi:    listaMessaggi         read FlistaMessaggi write FlistaMessaggi;
  end;



  // ************************************************************************ //
  // XML       : interrogazionePuntualeResponse, global, <element>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  interrogazionePuntualeResponse = class(interrogazionePuntualeResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : errore, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  errore = class(TRemotable)
  private
    Fcodice: string;
    Fdescrizione: string;
    Ftipo: string;
  published
    property codice:      string  read Fcodice write Fcodice;
    property descrizione: string  read Fdescrizione write Fdescrizione;
    property tipo:        string  read Ftipo write Ftipo;
  end;



  // ************************************************************************ //
  // XML       : totaliVociSpesa, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  totaliVociSpesa = class(TRemotable)
  private
    FtipoSpesa: string;
    Fimporto: Double;
  published
    property tipoSpesa: string  read FtipoSpesa write FtipoSpesa;
    property importo:   Double  read Fimporto write Fimporto;
  end;

  NumDocType      =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }
  String1Type     =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : totaliVociSpesaRimborsate, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  totaliVociSpesaRimborsate = class(TRemotable)
  private
    FtipoSpesa: string;
    Fimporto: Double;
  published
    property tipoSpesa: string  read FtipoSpesa write FtipoSpesa;
    property importo:   Double  read Fimporto write Fimporto;
  end;

  String11Type    =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }
  DataMinType     = class(TXSDate) end;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : IdDocumentoFiscaleType, global, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  IdDocumentoFiscaleType = class(TRemotable)
  private
    FpIva: String11Type;
    FdataEmissione: DataMinType;
    FnumDocumentoFiscale: numDocumentoFiscale;
  public
    destructor Destroy; override;
  published
    property pIva:                String11Type         read FpIva write FpIva;
    property dataEmissione:       DataMinType          read FdataEmissione write FdataEmissione;
    property numDocumentoFiscale: numDocumentoFiscale  read FnumDocumentoFiscale write FnumDocumentoFiscale;
  end;



  // ************************************************************************ //
  // XML       : DocumentoFiscaleType, global, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  DocumentoFiscaleType = class(TRemotable)
  private
    FidDocumentoFiscale: IdDocumentoFiscaleType;
    FidDocumentoFiscale_Specified: boolean;
    FdataPagamento: DataMinType;
    FdataPagamento_Specified: boolean;
    FtotaliVociSpesa: Array_Of_totaliVociSpesa;
    FtotaliVociSpesa_Specified: boolean;
    FtotaliVociSpesaRimborsate: Array_Of_totaliVociSpesaRimborsate;
    FtotaliVociSpesaRimborsate_Specified: boolean;
    Fprotocollo: string;
    Fprotocollo_Specified: boolean;
    FnomeFile: string;
    FnomeFile_Specified: boolean;
    FdataInvio: DataMinType;
    FdataInvio_Specified: boolean;
    FtipoInvio: String1Type;
    FtipoInvio_Specified: boolean;
    FlistaErroriDocumento: listaErroriDocumento;
    FlistaErroriDocumento_Specified: boolean;
    procedure SetidDocumentoFiscale(Index: Integer; const AIdDocumentoFiscaleType: IdDocumentoFiscaleType);
    function  idDocumentoFiscale_Specified(Index: Integer): boolean;
    procedure SetdataPagamento(Index: Integer; const ADataMinType: DataMinType);
    function  dataPagamento_Specified(Index: Integer): boolean;
    procedure SettotaliVociSpesa(Index: Integer; const AArray_Of_totaliVociSpesa: Array_Of_totaliVociSpesa);
    function  totaliVociSpesa_Specified(Index: Integer): boolean;
    procedure SettotaliVociSpesaRimborsate(Index: Integer; const AArray_Of_totaliVociSpesaRimborsate: Array_Of_totaliVociSpesaRimborsate);
    function  totaliVociSpesaRimborsate_Specified(Index: Integer): boolean;
    procedure Setprotocollo(Index: Integer; const Astring: string);
    function  protocollo_Specified(Index: Integer): boolean;
    procedure SetnomeFile(Index: Integer; const Astring: string);
    function  nomeFile_Specified(Index: Integer): boolean;
    procedure SetdataInvio(Index: Integer; const ADataMinType: DataMinType);
    function  dataInvio_Specified(Index: Integer): boolean;
    procedure SettipoInvio(Index: Integer; const AString1Type: String1Type);
    function  tipoInvio_Specified(Index: Integer): boolean;
    procedure SetlistaErroriDocumento(Index: Integer; const AlistaErroriDocumento: listaErroriDocumento);
    function  listaErroriDocumento_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property idDocumentoFiscale:        IdDocumentoFiscaleType              Index (IS_OPTN) read FidDocumentoFiscale write SetidDocumentoFiscale stored idDocumentoFiscale_Specified;
    property dataPagamento:             DataMinType                         Index (IS_OPTN) read FdataPagamento write SetdataPagamento stored dataPagamento_Specified;
    property totaliVociSpesa:           Array_Of_totaliVociSpesa            Index (IS_OPTN or IS_UNBD) read FtotaliVociSpesa write SettotaliVociSpesa stored totaliVociSpesa_Specified;
    property totaliVociSpesaRimborsate: Array_Of_totaliVociSpesaRimborsate  Index (IS_OPTN or IS_UNBD) read FtotaliVociSpesaRimborsate write SettotaliVociSpesaRimborsate stored totaliVociSpesaRimborsate_Specified;
    property protocollo:                string                              Index (IS_OPTN) read Fprotocollo write Setprotocollo stored protocollo_Specified;
    property nomeFile:                  string                              Index (IS_OPTN) read FnomeFile write SetnomeFile stored nomeFile_Specified;
    property dataInvio:                 DataMinType                         Index (IS_OPTN) read FdataInvio write SetdataInvio stored dataInvio_Specified;
    property tipoInvio:                 String1Type                         Index (IS_OPTN) read FtipoInvio write SettipoInvio stored tipoInvio_Specified;
    property listaErroriDocumento:      listaErroriDocumento                Index (IS_OPTN) read FlistaErroriDocumento write SetlistaErroriDocumento stored listaErroriDocumento_Specified;
  end;



  // ************************************************************************ //
  // XML       : numDocumentoFiscale, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // ************************************************************************ //
  numDocumentoFiscale = class(TRemotable)
  private
    Fdispositivo: Int3Type;
    FnumDocumento: NumDocType;
  published
    property dispositivo:  Int3Type    read Fdispositivo write Fdispositivo;
    property numDocumento: NumDocType  read FnumDocumento write FnumDocumento;
  end;

  CfType          =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : messaggio, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
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

  String3Type     =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }
  String6Type     =  type string;      { "http://interrogazionepuntuale.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ProprietarioType, global, <complexType>
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
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


  // ************************************************************************ //
  // Namespace : http://interrogazionepuntuale.p730.sanita.finanze.it
  // soapAction: interrogazionepuntuale.p730.sanita.finanze.it
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : InterrogazionePuntuale730pServicePortBinding
  // service   : InterrogazionePuntuale730pPort
  // port      : InterrogazionePuntuale730pPort
  // URL       : http://localhost:9080/InterrogazionePuntuale730Web/InterrogazionePuntuale730Port
  // ************************************************************************ //
  InterrogazionePuntuale730pPort = interface(IInvokable)
  ['{B1D1FBD4-7D59-1CED-9961-DDA187D0A71E}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  InterrogazionePuntuale(const interrogazionePuntualeRequest: interrogazionePuntualeRequest): interrogazionePuntualeResponse; stdcall;
  end;

function GetInterrogazionePuntuale730pPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): InterrogazionePuntuale730pPort;


implementation
  uses System.SysUtils, DettaglioErrori730Service,
  DettaglioSegnalazione730Service, EsitoInvioDatiSpesa730Service,
  InvioTelematicoSpeseSanitarie730p, ReportMensile730Service,
  ReportSegnalazioni730Service, RicevutaPdf730Service, U_TS;

function GetInterrogazionePuntuale730pPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): InterrogazionePuntuale730pPort;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InterrogazionePuntuale730Service.wsdl';
  defURL  = 'http://localhost:9080/InterrogazionePuntuale730Web/InterrogazionePuntuale730Port';
  defSvc  = 'InterrogazionePuntuale730pPort';
  defPrt  = 'InterrogazionePuntuale730pPort';
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
    Result := (RIO as InterrogazionePuntuale730pPort);
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


constructor interrogazionePuntualeRequest2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor interrogazionePuntualeRequest2.Destroy;
begin
  System.SysUtils.FreeAndNil(FProprietario);
  System.SysUtils.FreeAndNil(FidDocumentoFiscale);
  inherited Destroy;
end;

procedure interrogazionePuntualeRequest2.Setopzionale1(Index: Integer; const Astring: string);
begin
  Fopzionale1 := Astring;
  Fopzionale1_Specified := True;
end;

function interrogazionePuntualeRequest2.opzionale1_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale1_Specified;
end;

procedure interrogazionePuntualeRequest2.Setopzionale2(Index: Integer; const Astring: string);
begin
  Fopzionale2 := Astring;
  Fopzionale2_Specified := True;
end;

function interrogazionePuntualeRequest2.opzionale2_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale2_Specified;
end;

procedure interrogazionePuntualeRequest2.Setopzionale3(Index: Integer; const Astring: string);
begin
  Fopzionale3 := Astring;
  Fopzionale3_Specified := True;
end;

function interrogazionePuntualeRequest2.opzionale3_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale3_Specified;
end;

procedure interrogazionePuntualeRequest2.SetProprietario(Index: Integer; const AProprietarioType: ProprietarioType);
begin
  FProprietario := AProprietarioType;
  FProprietario_Specified := True;
end;

function interrogazionePuntualeRequest2.Proprietario_Specified(Index: Integer): boolean;
begin
  Result := FProprietario_Specified;
end;

constructor interrogazionePuntualeResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor interrogazionePuntualeResponse2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaMessaggi)-1 do
    System.SysUtils.FreeAndNil(FlistaMessaggi[I]);
  System.SetLength(FlistaMessaggi, 0);
  System.SysUtils.FreeAndNil(FdocumentoFiscale);
  inherited Destroy;
end;

procedure interrogazionePuntualeResponse2.SetdocumentoFiscale(Index: Integer; const ADocumentoFiscaleType: DocumentoFiscaleType);
begin
  FdocumentoFiscale := ADocumentoFiscaleType;
  FdocumentoFiscale_Specified := True;
end;

function interrogazionePuntualeResponse2.documentoFiscale_Specified(Index: Integer): boolean;
begin
  Result := FdocumentoFiscale_Specified;
end;

destructor IdDocumentoFiscaleType.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataEmissione);
  System.SysUtils.FreeAndNil(FnumDocumentoFiscale);
  inherited Destroy;
end;

destructor DocumentoFiscaleType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtotaliVociSpesa)-1 do
    System.SysUtils.FreeAndNil(FtotaliVociSpesa[I]);
  System.SetLength(FtotaliVociSpesa, 0);
  for I := 0 to System.Length(FtotaliVociSpesaRimborsate)-1 do
    System.SysUtils.FreeAndNil(FtotaliVociSpesaRimborsate[I]);
  System.SetLength(FtotaliVociSpesaRimborsate, 0);
  for I := 0 to System.Length(FlistaErroriDocumento)-1 do
    System.SysUtils.FreeAndNil(FlistaErroriDocumento[I]);
  System.SetLength(FlistaErroriDocumento, 0);
  System.SysUtils.FreeAndNil(FidDocumentoFiscale);
  System.SysUtils.FreeAndNil(FdataPagamento);
  System.SysUtils.FreeAndNil(FdataInvio);
  inherited Destroy;
end;

procedure DocumentoFiscaleType.SetidDocumentoFiscale(Index: Integer; const AIdDocumentoFiscaleType: IdDocumentoFiscaleType);
begin
  FidDocumentoFiscale := AIdDocumentoFiscaleType;
  FidDocumentoFiscale_Specified := True;
end;

function DocumentoFiscaleType.idDocumentoFiscale_Specified(Index: Integer): boolean;
begin
  Result := FidDocumentoFiscale_Specified;
end;

procedure DocumentoFiscaleType.SetdataPagamento(Index: Integer; const ADataMinType: DataMinType);
begin
  FdataPagamento := ADataMinType;
  FdataPagamento_Specified := True;
end;

function DocumentoFiscaleType.dataPagamento_Specified(Index: Integer): boolean;
begin
  Result := FdataPagamento_Specified;
end;

procedure DocumentoFiscaleType.SettotaliVociSpesa(Index: Integer; const AArray_Of_totaliVociSpesa: Array_Of_totaliVociSpesa);
begin
  FtotaliVociSpesa := AArray_Of_totaliVociSpesa;
  FtotaliVociSpesa_Specified := True;
end;

function DocumentoFiscaleType.totaliVociSpesa_Specified(Index: Integer): boolean;
begin
  Result := FtotaliVociSpesa_Specified;
end;

procedure DocumentoFiscaleType.SettotaliVociSpesaRimborsate(Index: Integer; const AArray_Of_totaliVociSpesaRimborsate: Array_Of_totaliVociSpesaRimborsate);
begin
  FtotaliVociSpesaRimborsate := AArray_Of_totaliVociSpesaRimborsate;
  FtotaliVociSpesaRimborsate_Specified := True;
end;

function DocumentoFiscaleType.totaliVociSpesaRimborsate_Specified(Index: Integer): boolean;
begin
  Result := FtotaliVociSpesaRimborsate_Specified;
end;

procedure DocumentoFiscaleType.Setprotocollo(Index: Integer; const Astring: string);
begin
  Fprotocollo := Astring;
  Fprotocollo_Specified := True;
end;

function DocumentoFiscaleType.protocollo_Specified(Index: Integer): boolean;
begin
  Result := Fprotocollo_Specified;
end;

procedure DocumentoFiscaleType.SetnomeFile(Index: Integer; const Astring: string);
begin
  FnomeFile := Astring;
  FnomeFile_Specified := True;
end;

function DocumentoFiscaleType.nomeFile_Specified(Index: Integer): boolean;
begin
  Result := FnomeFile_Specified;
end;

procedure DocumentoFiscaleType.SetdataInvio(Index: Integer; const ADataMinType: DataMinType);
begin
  FdataInvio := ADataMinType;
  FdataInvio_Specified := True;
end;

function DocumentoFiscaleType.dataInvio_Specified(Index: Integer): boolean;
begin
  Result := FdataInvio_Specified;
end;

procedure DocumentoFiscaleType.SettipoInvio(Index: Integer; const AString1Type: String1Type);
begin
  FtipoInvio := AString1Type;
  FtipoInvio_Specified := True;
end;

function DocumentoFiscaleType.tipoInvio_Specified(Index: Integer): boolean;
begin
  Result := FtipoInvio_Specified;
end;

procedure DocumentoFiscaleType.SetlistaErroriDocumento(Index: Integer; const AlistaErroriDocumento: listaErroriDocumento);
begin
  FlistaErroriDocumento := AlistaErroriDocumento;
  FlistaErroriDocumento_Specified := True;
end;

function DocumentoFiscaleType.listaErroriDocumento_Specified(Index: Integer): boolean;
begin
  Result := FlistaErroriDocumento_Specified;
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

initialization
  { InterrogazionePuntuale730pPort }
  InvRegistry.RegisterInterface(TypeInfo(InterrogazionePuntuale730pPort), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(InterrogazionePuntuale730pPort), 'interrogazionepuntuale.p730.sanita.finanze.it');
  InvRegistry.RegisterInvokeOptions(TypeInfo(InterrogazionePuntuale730pPort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(InterrogazionePuntuale730pPort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaErroriDocumento), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'listaErroriDocumento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_totaliVociSpesa), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'Array_Of_totaliVociSpesa');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_totaliVociSpesaRimborsate), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'Array_Of_totaliVociSpesaRimborsate');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Int3Type), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'Int3Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaMessaggi), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'listaMessaggi');
  RemClassRegistry.RegisterXSClass(interrogazionePuntualeRequest2, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'interrogazionePuntualeRequest2', 'interrogazionePuntualeRequest');
  RemClassRegistry.RegisterSerializeOptions(interrogazionePuntualeRequest2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(interrogazionePuntualeRequest, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'interrogazionePuntualeRequest');
  RemClassRegistry.RegisterXSClass(interrogazionePuntualeResponse2, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'interrogazionePuntualeResponse2', 'interrogazionePuntualeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(interrogazionePuntualeResponse2), 'listaMessaggi', '[ArrayItemName="messaggio"]');
  RemClassRegistry.RegisterSerializeOptions(interrogazionePuntualeResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(interrogazionePuntualeResponse, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'interrogazionePuntualeResponse');
  RemClassRegistry.RegisterXSClass(errore, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'errore');
  RemClassRegistry.RegisterXSClass(totaliVociSpesa, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'totaliVociSpesa');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NumDocType), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'NumDocType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String1Type), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'String1Type');
  RemClassRegistry.RegisterXSClass(totaliVociSpesaRimborsate, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'totaliVociSpesaRimborsate');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String11Type), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'String11Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DataMinType), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'DataMinType');
  RemClassRegistry.RegisterXSClass(IdDocumentoFiscaleType, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'IdDocumentoFiscaleType');
  RemClassRegistry.RegisterXSClass(DocumentoFiscaleType, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'DocumentoFiscaleType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DocumentoFiscaleType), 'listaErroriDocumento', '[ArrayItemName="errore"]');
  RemClassRegistry.RegisterXSClass(numDocumentoFiscale, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'numDocumentoFiscale');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CfType), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'CfType');
  RemClassRegistry.RegisterXSClass(messaggio, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'messaggio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String3Type), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'String3Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String6Type), 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'String6Type');
  RemClassRegistry.RegisterXSClass(ProprietarioType, 'http://interrogazionepuntuale.p730.sanita.finanze.it', 'ProprietarioType');

end.
