// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\RicevutaPdf730Service.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\RicevutaPdf730Service.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\RicevutaPdf730Service_schema.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 11:19:58 - - $Rev: 69934 $)
// ************************************************************************ //

unit RicevutaPdf730Service;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]

  datiInput2           = class;                 { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }
  datiInput            = class;                 { "http://ricevutapdf.p730.sanita.sogei.it/"[GblElm] }
  dettaglioEsitoNegativo = class;               { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }
  dettaglioEsitoPositivo = class;               { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }
  esitiPositivi        = class;                 { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }
  datiOutput2          = class;                 { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }
  datiOutput           = class;                 { "http://ricevutapdf.p730.sanita.sogei.it/"[GblElm] }



  // ************************************************************************ //
  // XML       : datiInput, global, <complexType>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiInput2 = class(TRemotable)
  private
    FpinCode: string;
    Fprotocollo: string;
    Fprotocollo_Specified: boolean;
    Fopzionale1: string;
    Fopzionale1_Specified: boolean;
    Fopzionale2: string;
    Fopzionale2_Specified: boolean;
    Fopzionale3: string;
    Fopzionale3_Specified: boolean;
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
    property protocollo: string  Index (IS_OPTN or IS_UNQL) read Fprotocollo write Setprotocollo stored protocollo_Specified;
    property opzionale1: string  Index (IS_OPTN or IS_UNQL) read Fopzionale1 write Setopzionale1 stored opzionale1_Specified;
    property opzionale2: string  Index (IS_OPTN or IS_UNQL) read Fopzionale2 write Setopzionale2 stored opzionale2_Specified;
    property opzionale3: string  Index (IS_OPTN or IS_UNQL) read Fopzionale3 write Setopzionale3 stored opzionale3_Specified;
  end;



  // ************************************************************************ //
  // XML       : datiInput, global, <element>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiInput = class(datiInput2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : dettaglioEsitoNegativo, global, <complexType>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
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
  // XML       : dettaglioEsitoPositivo, global, <complexType>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  dettaglioEsitoPositivo = class(TRemotable)
  private
    Fpdf: TByteDynArray;
  published
    property pdf: TByteDynArray  Index (IS_UNQL) read Fpdf write Fpdf;
  end;

  esitiNegativi = array of dettaglioEsitoNegativo;   { "http://ricevutapdf.p730.sanita.sogei.it/"[GblCplx] }


  // ************************************************************************ //
  // XML       : esitiPositivi, global, <complexType>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  esitiPositivi = class(TRemotable)
  private
    FdettagliEsito: dettaglioEsitoPositivo;
  public
    destructor Destroy; override;
  published
    property dettagliEsito: dettaglioEsitoPositivo  Index (IS_UNQL) read FdettagliEsito write FdettagliEsito;
  end;



  // ************************************************************************ //
  // XML       : datiOutput, global, <complexType>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiOutput2 = class(TRemotable)
  private
    FesitoChiamata: string;
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
    property esitoChiamata: string         Index (IS_UNQL) read FesitoChiamata write FesitoChiamata;
    property esitiPositivi: esitiPositivi  Index (IS_OPTN or IS_UNQL) read FesitiPositivi write SetesitiPositivi stored esitiPositivi_Specified;
    property esitiNegativi: esitiNegativi  Index (IS_OPTN or IS_UNQL) read FesitiNegativi write SetesitiNegativi stored esitiNegativi_Specified;
  end;



  // ************************************************************************ //
  // XML       : datiOutput, global, <element>
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // ************************************************************************ //
  datiOutput = class(datiOutput2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://ricevutapdf.p730.sanita.sogei.it/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : RicevutaPdf730PortBinding
  // service   : ricevutePdf
  // port      : RicevutaPdf730Port
  // URL       : https://invioSS730pTest.sanita.finanze.it/Ricevute730ServiceWeb/ricevutePdf
  // ************************************************************************ //
  RicevutaPdf730 = interface(IInvokable)
  ['{EA837E81-D273-6B0C-DEA7-B81919DA33A6}']
    function  RicevutaPdf(const DatiInputRichiesta: datiInput2): datiOutput2; stdcall;
  end;

function GetRicevutaPdf730(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): RicevutaPdf730;


implementation
  uses System.SysUtils, DettaglioErrori730Service,
  DettaglioSegnalazione730Service, EsitoInvioDatiSpesa730Service, InterrogazionePuntuale730Service,
  InvioTelematicoSpeseSanitarie730p, ReportMensile730Service,
  ReportSegnalazioni730Service, U_TS;

function GetRicevutaPdf730(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): RicevutaPdf730;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\RicevutaPdf730Service.wsdl';
  defURL  = 'https://invioSS730pTest.sanita.finanze.it/Ricevute730ServiceWeb/ricevutePdf';
  defSvc  = 'ricevutePdf';
  defPrt  = 'RicevutaPdf730Port';
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
    Result := (RIO as RicevutaPdf730);
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

destructor esitiPositivi.Destroy;
begin
  System.SysUtils.FreeAndNil(FdettagliEsito);
  inherited Destroy;
end;

destructor datiOutput2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FesitiNegativi)-1 do
    System.SysUtils.FreeAndNil(FesitiNegativi[I]);
  System.SetLength(FesitiNegativi, 0);
  System.SysUtils.FreeAndNil(FesitiPositivi);
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

initialization
  { RicevutaPdf730 }
  InvRegistry.RegisterInterface(TypeInfo(RicevutaPdf730), 'http://ricevutapdf.p730.sanita.sogei.it/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(RicevutaPdf730), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(RicevutaPdf730), ioDocument);
  { RicevutaPdf730.RicevutaPdf }
  InvRegistry.RegisterMethodInfo(TypeInfo(RicevutaPdf730), 'RicevutaPdf', '',
                                 '[ReturnName="DatiOutputRichiesta"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RicevutaPdf730), 'RicevutaPdf', 'DatiInputRichiesta', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RicevutaPdf730), 'RicevutaPdf', 'DatiOutputRichiesta', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(datiInput2, 'http://ricevutapdf.p730.sanita.sogei.it/', 'datiInput2', 'datiInput');
  RemClassRegistry.RegisterXSClass(datiInput, 'http://ricevutapdf.p730.sanita.sogei.it/', 'datiInput');
  RemClassRegistry.RegisterXSClass(dettaglioEsitoNegativo, 'http://ricevutapdf.p730.sanita.sogei.it/', 'dettaglioEsitoNegativo');
  RemClassRegistry.RegisterXSClass(dettaglioEsitoPositivo, 'http://ricevutapdf.p730.sanita.sogei.it/', 'dettaglioEsitoPositivo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(esitiNegativi), 'http://ricevutapdf.p730.sanita.sogei.it/', 'esitiNegativi');
  RemClassRegistry.RegisterXSClass(esitiPositivi, 'http://ricevutapdf.p730.sanita.sogei.it/', 'esitiPositivi');
  RemClassRegistry.RegisterXSClass(datiOutput2, 'http://ricevutapdf.p730.sanita.sogei.it/', 'datiOutput2', 'datiOutput');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(datiOutput2), 'esitiNegativi', '[ArrayItemName="dettaglioEsitoNegativo"]');
  RemClassRegistry.RegisterXSClass(datiOutput, 'http://ricevutapdf.p730.sanita.sogei.it/', 'datiOutput');

end.
