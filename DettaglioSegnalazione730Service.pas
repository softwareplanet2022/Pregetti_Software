// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\DettaglioSegnalazione730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\DettaglioSegnalazione730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\DettaglioSegnalazione730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:17:12 - - $Rev: 69934 $)
// ************************************************************************ //

unit DettaglioSegnalazione730Service;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  dettaglioSegnalazioneRequest2 = class;        { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Lit][GblCplx] }
  dettaglioSegnalazioneRequest = class;         { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Lit][GblElm] }
  numDocumentoFiscale  = class;                 { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Cplx] }
  VoceSpesaSegnalazioneType = class;            { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblCplx] }
  DocumentoFiscaleType = class;                 { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblCplx] }
  IdDocumentoFiscaleType = class;               { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblCplx] }
  dettaglioSegnalazioneResponse2 = class;       { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Lit][GblCplx] }
  dettaglioSegnalazioneResponse = class;        { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Lit][GblElm] }
  messaggio            = class;                 { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Cplx] }
  ProprietarioType     = class;                 { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblCplx] }

  Int3Type        =  type Integer;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }
  Array_Of_VoceSpesaSegnalazioneType = array of VoceSpesaSegnalazioneType;   { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblUbnd] }
  DataMinType     = class(TXSDate) end;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : dettaglioSegnalazioneRequest, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  dettaglioSegnalazioneRequest2 = class(TRemotable)
  private
    Fpincode: string;
    FProprietario: ProprietarioType;
    FidDocumentoFiscale: IdDocumentoFiscaleType;
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
    property pincode:            string                  read Fpincode write Fpincode;
    property Proprietario:       ProprietarioType        read FProprietario write FProprietario;
    property idDocumentoFiscale: IdDocumentoFiscaleType  read FidDocumentoFiscale write FidDocumentoFiscale;
    property opzionale1:         string                  Index (IS_OPTN) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2:         string                  Index (IS_OPTN) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3:         string                  Index (IS_OPTN) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
  end;



  // ************************************************************************ //
  // XML       : dettaglioSegnalazioneRequest, global, <element>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  dettaglioSegnalazioneRequest = class(dettaglioSegnalazioneRequest2)
  private
  published
  end;

  NumDocType      =  type string;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : numDocumentoFiscale, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // ************************************************************************ //
  numDocumentoFiscale = class(TRemotable)
  private
    Fdispositivo: Int3Type;
    FnumDocumento: NumDocType;
  published
    property dispositivo:  Int3Type    read Fdispositivo write Fdispositivo;
    property numDocumento: NumDocType  read FnumDocumento write FnumDocumento;
  end;



  // ************************************************************************ //
  // XML       : VoceSpesaSegnalazioneType, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // ************************************************************************ //
  VoceSpesaSegnalazioneType = class(TRemotable)
  private
    FtipoSpesa: string;
    FtipoSpesa_Specified: boolean;
    Fimporto: Double;
    Fimporto_Specified: boolean;
    FsegnalazioneImporto: string;
    FsegnalazioneImporto_Specified: boolean;
    FsegnalazioneTipoVoceSpesa: string;
    FsegnalazioneTipoVoceSpesa_Specified: boolean;
    procedure SettipoSpesa(Index: Integer; const Astring: string);
    function  tipoSpesa_Specified(Index: Integer): boolean;
    procedure Setimporto(Index: Integer; const ADouble: Double);
    function  importo_Specified(Index: Integer): boolean;
    procedure SetsegnalazioneImporto(Index: Integer; const Astring: string);
    function  segnalazioneImporto_Specified(Index: Integer): boolean;
    procedure SetsegnalazioneTipoVoceSpesa(Index: Integer; const Astring: string);
    function  segnalazioneTipoVoceSpesa_Specified(Index: Integer): boolean;
  published
    property tipoSpesa:                 string  Index (IS_OPTN) read FtipoSpesa write SettipoSpesa stored tipoSpesa_Specified;
    property importo:                   Double  Index (IS_OPTN) read Fimporto write Setimporto stored importo_Specified;
    property segnalazioneImporto:       string  Index (IS_OPTN) read FsegnalazioneImporto write SetsegnalazioneImporto stored segnalazioneImporto_Specified;
    property segnalazioneTipoVoceSpesa: string  Index (IS_OPTN) read FsegnalazioneTipoVoceSpesa write SetsegnalazioneTipoVoceSpesa stored segnalazioneTipoVoceSpesa_Specified;
  end;

  listaSegnalazioniDocumento = array of string;   { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Cplx] }


  // ************************************************************************ //
  // XML       : DocumentoFiscaleType, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // ************************************************************************ //
  DocumentoFiscaleType = class(TRemotable)
  private
    FidDocumentoFiscale: IdDocumentoFiscaleType;
    FidDocumentoFiscale_Specified: boolean;
    FdataPagamento: DataMinType;
    FdataPagamento_Specified: boolean;
    FdataInvio: DataMinType;
    FdataInvio_Specified: boolean;
    Fprotocollo: string;
    Fprotocollo_Specified: boolean;
    FnomeFile: string;
    FnomeFile_Specified: boolean;
    FlistaSegnalazioniDocumento: listaSegnalazioniDocumento;
    FlistaSegnalazioniDocumento_Specified: boolean;
    FlistaVociSpesa: Array_Of_VoceSpesaSegnalazioneType;
    FlistaVociSpesa_Specified: boolean;
    FlistaVociSpesaRimborsate: Array_Of_VoceSpesaSegnalazioneType;
    FlistaVociSpesaRimborsate_Specified: boolean;
    procedure SetidDocumentoFiscale(Index: Integer; const AIdDocumentoFiscaleType: IdDocumentoFiscaleType);
    function  idDocumentoFiscale_Specified(Index: Integer): boolean;
    procedure SetdataPagamento(Index: Integer; const ADataMinType: DataMinType);
    function  dataPagamento_Specified(Index: Integer): boolean;
    procedure SetdataInvio(Index: Integer; const ADataMinType: DataMinType);
    function  dataInvio_Specified(Index: Integer): boolean;
    procedure Setprotocollo(Index: Integer; const Astring: string);
    function  protocollo_Specified(Index: Integer): boolean;
    procedure SetnomeFile(Index: Integer; const Astring: string);
    function  nomeFile_Specified(Index: Integer): boolean;
    procedure SetlistaSegnalazioniDocumento(Index: Integer; const AlistaSegnalazioniDocumento: listaSegnalazioniDocumento);
    function  listaSegnalazioniDocumento_Specified(Index: Integer): boolean;
    procedure SetlistaVociSpesa(Index: Integer; const AArray_Of_VoceSpesaSegnalazioneType: Array_Of_VoceSpesaSegnalazioneType);
    function  listaVociSpesa_Specified(Index: Integer): boolean;
    procedure SetlistaVociSpesaRimborsate(Index: Integer; const AArray_Of_VoceSpesaSegnalazioneType: Array_Of_VoceSpesaSegnalazioneType);
    function  listaVociSpesaRimborsate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property idDocumentoFiscale:         IdDocumentoFiscaleType              Index (IS_OPTN) read FidDocumentoFiscale write SetidDocumentoFiscale stored idDocumentoFiscale_Specified;
    property dataPagamento:              DataMinType                         Index (IS_OPTN) read FdataPagamento write SetdataPagamento stored dataPagamento_Specified;
    property dataInvio:                  DataMinType                         Index (IS_OPTN) read FdataInvio write SetdataInvio stored dataInvio_Specified;
    property protocollo:                 string                              Index (IS_OPTN) read Fprotocollo write Setprotocollo stored protocollo_Specified;
    property nomeFile:                   string                              Index (IS_OPTN) read FnomeFile write SetnomeFile stored nomeFile_Specified;
    property listaSegnalazioniDocumento: listaSegnalazioniDocumento          Index (IS_OPTN) read FlistaSegnalazioniDocumento write SetlistaSegnalazioniDocumento stored listaSegnalazioniDocumento_Specified;
    property listaVociSpesa:             Array_Of_VoceSpesaSegnalazioneType  Index (IS_OPTN or IS_UNBD) read FlistaVociSpesa write SetlistaVociSpesa stored listaVociSpesa_Specified;
    property listaVociSpesaRimborsate:   Array_Of_VoceSpesaSegnalazioneType  Index (IS_OPTN or IS_UNBD) read FlistaVociSpesaRimborsate write SetlistaVociSpesaRimborsate stored listaVociSpesaRimborsate_Specified;
  end;

  String6Type     =  type string;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }
  CfType          =  type string;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }
  String11Type    =  type string;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : IdDocumentoFiscaleType, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
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

  listaMessaggi = array of messaggio;           { "http://dettagliosegnalazione.p730.sanita.finanze.it"[Cplx] }


  // ************************************************************************ //
  // XML       : dettaglioSegnalazioneResponse, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  dettaglioSegnalazioneResponse2 = class(TRemotable)
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
  // XML       : dettaglioSegnalazioneResponse, global, <element>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // Info      : Wrapper
  // ************************************************************************ //
  dettaglioSegnalazioneResponse = class(dettaglioSegnalazioneResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : messaggio, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
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

  String3Type     =  type string;      { "http://dettagliosegnalazione.p730.sanita.finanze.it"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ProprietarioType, global, <complexType>
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
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


  // ************************************************************************ //
  // Namespace : http://dettagliosegnalazione.p730.sanita.finanze.it
  // soapAction: dettagliosegnalazione.p730.sanita.finanze.it
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : DettaglioSegnalazione730pServicePortBinding
  // service   : DettaglioSegnalazione730pPort
  // port      : DettaglioSegnalazione730pPort
  // URL       : http://localhost:9080/Interrogazioni730pWeb/DettaglioSegnalazione730pPort
  // ************************************************************************ //
  DettaglioSegnalazione730pPort = interface(IInvokable)
  ['{48FA28C9-E3F8-9424-CEB3-25F12FEA7B82}']

    // Cannot unwrap:
    //     - Input element wrapper name does not match operation's name
    //     - More than one strictly out element was found
    function  DettaglioSegnalazione(const dettaglioSegnalazioneRequest: dettaglioSegnalazioneRequest): dettaglioSegnalazioneResponse; stdcall;
  end;

function GetDettaglioSegnalazione730pPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DettaglioSegnalazione730pPort;


implementation
  uses System.SysUtils, DettaglioErrori730Service,
  EsitoInvioDatiSpesa730Service, InterrogazionePuntuale730Service,
  InvioTelematicoSpeseSanitarie730p, ReportMensile730Service,
  ReportSegnalazioni730Service, RicevutaPdf730Service, U_TS;

function GetDettaglioSegnalazione730pPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DettaglioSegnalazione730pPort;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\DettaglioSegnalazione730Service.wsdl';
  defURL  = 'http://localhost:9080/Interrogazioni730pWeb/DettaglioSegnalazione730pPort';
  defSvc  = 'DettaglioSegnalazione730pPort';
  defPrt  = 'DettaglioSegnalazione730pPort';
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
    Result := (RIO as DettaglioSegnalazione730pPort);
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


constructor dettaglioSegnalazioneRequest2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor dettaglioSegnalazioneRequest2.Destroy;
begin
  System.SysUtils.FreeAndNil(FProprietario);
  System.SysUtils.FreeAndNil(FidDocumentoFiscale);
  inherited Destroy;
end;

procedure dettaglioSegnalazioneRequest2.Setopzionale1(Index: Integer; const Astring: string);
begin
  Fopzionale1 := Astring;
  Fopzionale1_Specified := True;
end;

function dettaglioSegnalazioneRequest2.opzionale1_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale1_Specified;
end;

procedure dettaglioSegnalazioneRequest2.Setopzionale2(Index: Integer; const Astring: string);
begin
  Fopzionale2 := Astring;
  Fopzionale2_Specified := True;
end;

function dettaglioSegnalazioneRequest2.opzionale2_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale2_Specified;
end;

procedure dettaglioSegnalazioneRequest2.Setopzionale3(Index: Integer; const Astring: string);
begin
  Fopzionale3 := Astring;
  Fopzionale3_Specified := True;
end;

function dettaglioSegnalazioneRequest2.opzionale3_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale3_Specified;
end;

procedure VoceSpesaSegnalazioneType.SettipoSpesa(Index: Integer; const Astring: string);
begin
  FtipoSpesa := Astring;
  FtipoSpesa_Specified := True;
end;

function VoceSpesaSegnalazioneType.tipoSpesa_Specified(Index: Integer): boolean;
begin
  Result := FtipoSpesa_Specified;
end;

procedure VoceSpesaSegnalazioneType.Setimporto(Index: Integer; const ADouble: Double);
begin
  Fimporto := ADouble;
  Fimporto_Specified := True;
end;

function VoceSpesaSegnalazioneType.importo_Specified(Index: Integer): boolean;
begin
  Result := Fimporto_Specified;
end;

procedure VoceSpesaSegnalazioneType.SetsegnalazioneImporto(Index: Integer; const Astring: string);
begin
  FsegnalazioneImporto := Astring;
  FsegnalazioneImporto_Specified := True;
end;

function VoceSpesaSegnalazioneType.segnalazioneImporto_Specified(Index: Integer): boolean;
begin
  Result := FsegnalazioneImporto_Specified;
end;

procedure VoceSpesaSegnalazioneType.SetsegnalazioneTipoVoceSpesa(Index: Integer; const Astring: string);
begin
  FsegnalazioneTipoVoceSpesa := Astring;
  FsegnalazioneTipoVoceSpesa_Specified := True;
end;

function VoceSpesaSegnalazioneType.segnalazioneTipoVoceSpesa_Specified(Index: Integer): boolean;
begin
  Result := FsegnalazioneTipoVoceSpesa_Specified;
end;

destructor DocumentoFiscaleType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaVociSpesa)-1 do
    System.SysUtils.FreeAndNil(FlistaVociSpesa[I]);
  System.SetLength(FlistaVociSpesa, 0);
  for I := 0 to System.Length(FlistaVociSpesaRimborsate)-1 do
    System.SysUtils.FreeAndNil(FlistaVociSpesaRimborsate[I]);
  System.SetLength(FlistaVociSpesaRimborsate, 0);
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

procedure DocumentoFiscaleType.SetdataInvio(Index: Integer; const ADataMinType: DataMinType);
begin
  FdataInvio := ADataMinType;
  FdataInvio_Specified := True;
end;

function DocumentoFiscaleType.dataInvio_Specified(Index: Integer): boolean;
begin
  Result := FdataInvio_Specified;
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

procedure DocumentoFiscaleType.SetlistaSegnalazioniDocumento(Index: Integer; const AlistaSegnalazioniDocumento: listaSegnalazioniDocumento);
begin
  FlistaSegnalazioniDocumento := AlistaSegnalazioniDocumento;
  FlistaSegnalazioniDocumento_Specified := True;
end;

function DocumentoFiscaleType.listaSegnalazioniDocumento_Specified(Index: Integer): boolean;
begin
  Result := FlistaSegnalazioniDocumento_Specified;
end;

procedure DocumentoFiscaleType.SetlistaVociSpesa(Index: Integer; const AArray_Of_VoceSpesaSegnalazioneType: Array_Of_VoceSpesaSegnalazioneType);
begin
  FlistaVociSpesa := AArray_Of_VoceSpesaSegnalazioneType;
  FlistaVociSpesa_Specified := True;
end;

function DocumentoFiscaleType.listaVociSpesa_Specified(Index: Integer): boolean;
begin
  Result := FlistaVociSpesa_Specified;
end;

procedure DocumentoFiscaleType.SetlistaVociSpesaRimborsate(Index: Integer; const AArray_Of_VoceSpesaSegnalazioneType: Array_Of_VoceSpesaSegnalazioneType);
begin
  FlistaVociSpesaRimborsate := AArray_Of_VoceSpesaSegnalazioneType;
  FlistaVociSpesaRimborsate_Specified := True;
end;

function DocumentoFiscaleType.listaVociSpesaRimborsate_Specified(Index: Integer): boolean;
begin
  Result := FlistaVociSpesaRimborsate_Specified;
end;

destructor IdDocumentoFiscaleType.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataEmissione);
  System.SysUtils.FreeAndNil(FnumDocumentoFiscale);
  inherited Destroy;
end;

constructor dettaglioSegnalazioneResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor dettaglioSegnalazioneResponse2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaMessaggi)-1 do
    System.SysUtils.FreeAndNil(FlistaMessaggi[I]);
  System.SetLength(FlistaMessaggi, 0);
  System.SysUtils.FreeAndNil(FdocumentoFiscale);
  inherited Destroy;
end;

procedure dettaglioSegnalazioneResponse2.SetdocumentoFiscale(Index: Integer; const ADocumentoFiscaleType: DocumentoFiscaleType);
begin
  FdocumentoFiscale := ADocumentoFiscaleType;
  FdocumentoFiscale_Specified := True;
end;

function dettaglioSegnalazioneResponse2.documentoFiscale_Specified(Index: Integer): boolean;
begin
  Result := FdocumentoFiscale_Specified;
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

initialization
  { DettaglioSegnalazione730pPort }
  InvRegistry.RegisterInterface(TypeInfo(DettaglioSegnalazione730pPort), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DettaglioSegnalazione730pPort), 'dettagliosegnalazione.p730.sanita.finanze.it');
  InvRegistry.RegisterInvokeOptions(TypeInfo(DettaglioSegnalazione730pPort), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(DettaglioSegnalazione730pPort), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Int3Type), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'Int3Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_VoceSpesaSegnalazioneType), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'Array_Of_VoceSpesaSegnalazioneType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DataMinType), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'DataMinType');
  RemClassRegistry.RegisterXSClass(dettaglioSegnalazioneRequest2, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'dettaglioSegnalazioneRequest2', 'dettaglioSegnalazioneRequest');
  RemClassRegistry.RegisterSerializeOptions(dettaglioSegnalazioneRequest2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(dettaglioSegnalazioneRequest, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'dettaglioSegnalazioneRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NumDocType), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'NumDocType');
  RemClassRegistry.RegisterXSClass(numDocumentoFiscale, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'numDocumentoFiscale');
  RemClassRegistry.RegisterXSClass(VoceSpesaSegnalazioneType, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'VoceSpesaSegnalazioneType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaSegnalazioniDocumento), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'listaSegnalazioniDocumento');
  RemClassRegistry.RegisterXSClass(DocumentoFiscaleType, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'DocumentoFiscaleType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DocumentoFiscaleType), 'listaSegnalazioniDocumento', '[ArrayItemName="segnalazione"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String6Type), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'String6Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CfType), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'CfType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String11Type), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'String11Type');
  RemClassRegistry.RegisterXSClass(IdDocumentoFiscaleType, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'IdDocumentoFiscaleType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(listaMessaggi), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'listaMessaggi');
  RemClassRegistry.RegisterXSClass(dettaglioSegnalazioneResponse2, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'dettaglioSegnalazioneResponse2', 'dettaglioSegnalazioneResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(dettaglioSegnalazioneResponse2), 'listaMessaggi', '[ArrayItemName="messaggio"]');
  RemClassRegistry.RegisterSerializeOptions(dettaglioSegnalazioneResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(dettaglioSegnalazioneResponse, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'dettaglioSegnalazioneResponse');
  RemClassRegistry.RegisterXSClass(messaggio, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'messaggio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(String3Type), 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'String3Type');
  RemClassRegistry.RegisterXSClass(ProprietarioType, 'http://dettagliosegnalazione.p730.sanita.finanze.it', 'ProprietarioType');

end.
