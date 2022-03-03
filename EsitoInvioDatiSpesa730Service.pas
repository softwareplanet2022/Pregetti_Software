// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\EsitoInvioDatiSpesa730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\EsitoInvioDatiSpesa730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\EsitoInvioDatiSpesa730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:18:23 - - $Rev: 69934 $)
// ************************************************************************ //

unit EsitoInvioDatiSpesa730Service;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  dettaglioEsitoNegativo = class;               { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }
  Exception            = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[Flt][GblElm] }
  datiInput2           = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }
  datiInput            = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[GblElm] }
  datiOutput2          = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }
  datiOutput           = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[GblElm] }
  dettaglioEsitoPositivo = class;               { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }
  Exception2           = class;                 { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }

  esitiNegativi = array of dettaglioEsitoNegativo;   { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }


  // ************************************************************************ //
  // XML       : dettaglioEsitoNegativo, global, <complexType>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  dettaglioEsitoNegativo = class(TRemotable)
  private
    Fcodice: string;
    Fdescrizione: string;
  published
    property codice:      string  Index (IS_UNQL) read Fcodice write Fcodice;
    property descrizione: string  Index (IS_UNQL) read Fdescrizione write Fdescrizione;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // Info      : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : datiInput, global, <complexType>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiInput2 = class(TRemotable)
  private
    FpinCode: string;
    FdataInizio: string;
    FdataInizio_Specified: boolean;
    FdataFine: string;
    FdataFine_Specified: boolean;
    Fprotocollo: string;
    Fprotocollo_Specified: boolean;
    Fopzionale1: string;
    Fopzionale1_Specified: boolean;
    Fopzionale2: string;
    Fopzionale2_Specified: boolean;
    Fopzionale3: string;
    Fopzionale3_Specified: boolean;
    procedure SetdataInizio(Index: Integer; const Astring: string);
    function  dataInizio_Specified(Index: Integer): boolean;
    procedure SetdataFine(Index: Integer; const Astring: string);
    function  dataFine_Specified(Index: Integer): boolean;
    procedure Setprotocollo(Index: Integer; const Astring: string);
    function  protocollo_Specified(Index: Integer): boolean;
    procedure Setopzionale1(Index: Integer; const Astring: string);
    function  opzionale1_Specified(Index: Integer): boolean;
    procedure Setopzionale2(Index: Integer; const Astring: string);
    function  opzionale2_Specified(Index: Integer): boolean;
    procedure Setopzionale3(Index: Integer; const Astring: string);
    function  opzionale3_Specified(Index: Integer): boolean;
  published
    property pinCode:    string  Index (IS_UNQL) read FpinCode write FpinCode;
    property dataInizio: string  Index (IS_OPTN or IS_UNQL) read FdataInizio write SetdataInizio stored dataInizio_Specified;
    property dataFine:   string  Index (IS_OPTN or IS_UNQL) read FdataFine write SetdataFine stored dataFine_Specified;
    property protocollo: string  Index (IS_OPTN or IS_UNQL) read Fprotocollo write Setprotocollo stored protocollo_Specified;
    property opzionale1: string  Index (IS_OPTN or IS_UNQL) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2: string  Index (IS_OPTN or IS_UNQL) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3: string  Index (IS_OPTN or IS_UNQL) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
  end;



  // ************************************************************************ //
  // XML       : datiInput, global, <element>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiInput = class(datiInput2)
  private
  published
  end;

  esitiPositivi = array of dettaglioEsitoPositivo;   { "http://esitoinvio.p730.sanita.sogei.it/"[GblCplx] }


  // ************************************************************************ //
  // XML       : datiOutput, global, <complexType>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiOutput2 = class(TRemotable)
  private
    FesitoChiamata: string;
    FdescrizioneEsito: string;
    FesitiPositivi: esitiPositivi;
    FesitiPositivi_Specified: boolean;
    FesitiNegativi: esitiNegativi;
    FesitiNegativi_Specified: boolean;
    procedure SetesitiPositivi(Index: Integer; const AesitiPositivi: esitiPositivi);
    function  esitiPositivi_Specified(Index: Integer): boolean;
    procedure SetesitiNegativi(Index: Integer; const AesitiNegativi: esitiNegativi);
    function  esitiNegativi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property esitoChiamata:    string         Index (IS_UNQL) read FesitoChiamata write FesitoChiamata;
    property descrizioneEsito: string         Index (IS_UNQL) read FdescrizioneEsito write FdescrizioneEsito;
    property esitiPositivi:    esitiPositivi  Index (IS_OPTN or IS_UNQL) read FesitiPositivi write SetesitiPositivi stored esitiPositivi_Specified;
    property esitiNegativi:    esitiNegativi  Index (IS_OPTN or IS_UNQL) read FesitiNegativi write SetesitiNegativi stored esitiNegativi_Specified;
  end;



  // ************************************************************************ //
  // XML       : datiOutput, global, <element>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiOutput = class(datiOutput2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : dettaglioEsitoPositivo, global, <complexType>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  dettaglioEsitoPositivo = class(TRemotable)
  private
    Fprotocollo: string;
    FdataInvio: string;
    Fstato: Integer;
    Fdescrizione: string;
    FnInviati: Int64;
    FnAccolti: Int64;
    FnWarnings: Int64;
    FnErrori: Int64;
  published
    property protocollo:  string   Index (IS_UNQL) read Fprotocollo write Fprotocollo;
    property dataInvio:   string   Index (IS_UNQL) read FdataInvio write FdataInvio;
    property stato:       Integer  Index (IS_UNQL) read Fstato write Fstato;
    property descrizione: string   Index (IS_UNQL) read Fdescrizione write Fdescrizione;
    property nInviati:    Int64    Index (IS_UNQL) read FnInviati write FnInviati;
    property nAccolti:    Int64    Index (IS_UNQL) read FnAccolti write FnAccolti;
    property nWarnings:   Int64    Index (IS_UNQL) read FnWarnings write FnWarnings;
    property nErrori:     Int64    Index (IS_UNQL) read FnErrori write FnErrori;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://esitoinvio.p730.sanita.sogei.it/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : EsitoInvioDatiSpesa730PortBinding
  // service   : EsitoInvioDatiSpesa730Service
  // port      : EsitoInvioDatiSpesa730Port
  // URL       : http://localhost:9083/EsitoStatoInviiWEB/EsitoInvioDatiSpesa730Service
  // ************************************************************************ //
  EsitoInvioDatiSpesa730 = interface(IInvokable)
  ['{78505EA5-2462-1F90-5B6A-0B065872A853}']
    function  EsitoInvii(const DatiInputRichiesta: datiInput2): datiOutput2; stdcall;
  end;

function GetEsitoInvioDatiSpesa730(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EsitoInvioDatiSpesa730;


implementation
  uses System.SysUtils, DettaglioSegnalazione730Service,
  InterrogazionePuntuale730Service, InvioTelematicoSpeseSanitarie730p,
  ReportMensile730Service, ReportSegnalazioni730Service, RicevutaPdf730Service,
  U_TS, DettaglioErrori730Service;

function GetEsitoInvioDatiSpesa730(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EsitoInvioDatiSpesa730;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\EsitoInvioDatiSpesa730Service.wsdl';
  defURL  = 'http://localhost:9083/EsitoStatoInviiWEB/EsitoInvioDatiSpesa730Service';
  defSvc  = 'EsitoInvioDatiSpesa730Service';
  defPrt  = 'EsitoInvioDatiSpesa730Port';
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
    Result := (RIO as EsitoInvioDatiSpesa730);
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


procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure datiInput2.SetdataInizio(Index: Integer; const Astring: string);
begin
  FdataInizio := Astring;
  FdataInizio_Specified := True;
end;

function datiInput2.dataInizio_Specified(Index: Integer): boolean;
begin
  Result := FdataInizio_Specified;
end;

procedure datiInput2.SetdataFine(Index: Integer; const Astring: string);
begin
  FdataFine := Astring;
  FdataFine_Specified := True;
end;

function datiInput2.dataFine_Specified(Index: Integer): boolean;
begin
  Result := FdataFine_Specified;
end;

procedure datiInput2.Setprotocollo(Index: Integer; const Astring: string);
begin
  Fprotocollo := Astring;
  Fprotocollo_Specified := True;
end;

function datiInput2.protocollo_Specified(Index: Integer): boolean;
begin
  Result := Fprotocollo_Specified;
end;

procedure datiInput2.Setopzionale1(Index: Integer; const Astring: string);
begin
  Fopzionale1 := Astring;
  Fopzionale1_Specified := True;
end;

function datiInput2.opzionale1_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale1_Specified;
end;

procedure datiInput2.Setopzionale2(Index: Integer; const Astring: string);
begin
  Fopzionale2 := Astring;
  Fopzionale2_Specified := True;
end;

function datiInput2.opzionale2_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale2_Specified;
end;

procedure datiInput2.Setopzionale3(Index: Integer; const Astring: string);
begin
  Fopzionale3 := Astring;
  Fopzionale3_Specified := True;
end;

function datiInput2.opzionale3_Specified(Index: Integer): boolean;
begin
  Result := Fopzionale3_Specified;
end;

destructor datiOutput2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FesitiPositivi)-1 do
    System.SysUtils.FreeAndNil(FesitiPositivi[I]);
  System.SetLength(FesitiPositivi, 0);
  for I := 0 to System.Length(FesitiNegativi)-1 do
    System.SysUtils.FreeAndNil(FesitiNegativi[I]);
  System.SetLength(FesitiNegativi, 0);
  inherited Destroy;
end;

procedure datiOutput2.SetesitiPositivi(Index: Integer; const AesitiPositivi: esitiPositivi);
begin
  FesitiPositivi := AesitiPositivi;
  FesitiPositivi_Specified := True;
end;

function datiOutput2.esitiPositivi_Specified(Index: Integer): boolean;
begin
  Result := FesitiPositivi_Specified;
end;

procedure datiOutput2.SetesitiNegativi(Index: Integer; const AesitiNegativi: esitiNegativi);
begin
  FesitiNegativi := AesitiNegativi;
  FesitiNegativi_Specified := True;
end;

function datiOutput2.esitiNegativi_Specified(Index: Integer): boolean;
begin
  Result := FesitiNegativi_Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

initialization
  { EsitoInvioDatiSpesa730 }
  InvRegistry.RegisterInterface(TypeInfo(EsitoInvioDatiSpesa730), 'http://esitoinvio.p730.sanita.sogei.it/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EsitoInvioDatiSpesa730), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(EsitoInvioDatiSpesa730), ioDocument);
  { EsitoInvioDatiSpesa730.EsitoInvii }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsitoInvioDatiSpesa730), 'EsitoInvii', '',
                                 '[ReturnName="DatiOutputRichiesta"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EsitoInvioDatiSpesa730), 'EsitoInvii', 'DatiInputRichiesta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(EsitoInvioDatiSpesa730), 'EsitoInvii', 'DatiOutputRichiesta', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(esitiNegativi), 'http://esitoinvio.p730.sanita.sogei.it/', 'esitiNegativi');
  RemClassRegistry.RegisterXSClass(dettaglioEsitoNegativo, 'http://esitoinvio.p730.sanita.sogei.it/', 'dettaglioEsitoNegativo');
  RemClassRegistry.RegisterXSClass(Exception, 'http://esitoinvio.p730.sanita.sogei.it/', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(datiInput2, 'http://esitoinvio.p730.sanita.sogei.it/', 'datiInput2', 'datiInput');
  RemClassRegistry.RegisterXSClass(datiInput, 'http://esitoinvio.p730.sanita.sogei.it/', 'datiInput');
  RemClassRegistry.RegisterXSInfo(TypeInfo(esitiPositivi), 'http://esitoinvio.p730.sanita.sogei.it/', 'esitiPositivi');
  RemClassRegistry.RegisterXSClass(datiOutput2, 'http://esitoinvio.p730.sanita.sogei.it/', 'datiOutput2', 'datiOutput');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(datiOutput2), 'esitiPositivi', '[ArrayItemName="dettagliEsito"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(datiOutput2), 'esitiNegativi', '[ArrayItemName="dettaglioEsitoNegativo"]');
  RemClassRegistry.RegisterXSClass(datiOutput, 'http://esitoinvio.p730.sanita.sogei.it/', 'datiOutput');
  RemClassRegistry.RegisterXSClass(dettaglioEsitoPositivo, 'http://esitoinvio.p730.sanita.sogei.it/', 'dettaglioEsitoPositivo');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://esitoinvio.p730.sanita.sogei.it/', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');

end.
