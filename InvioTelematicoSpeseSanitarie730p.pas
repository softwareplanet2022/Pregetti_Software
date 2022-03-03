// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InvioTelematicoSpeseSanitarie730p.wsdl
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InvioTelematicoSpeseSanitarie730p.wsdl>0
//  >Import : C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InvioTelematicoSpeseSanitarie730p_schema1.xsd
// Encoding : UTF-8
// Version  : 1.0
// (27/02/2021 10:55:40 - - $Rev: 69934 $)
// ************************************************************************ //

unit InvioTelematicoSpeseSanitarie730p;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
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

  ricevutaInvio        = class;                 { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblCplx] }
  proprietario         = class;                 { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblCplx] }

  varChar3Type    =  type string;      { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblSmpl] }
  cfType          =  type string;      { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblSmpl] }
  codSsaType      =  type string;      { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ricevutaInvio, global, <complexType>
  // Namespace : http://ejb.invioTelematicoSS730p.sanita.finanze.it/
  // ************************************************************************ //
  ricevutaInvio = class(TRemotable)
  private
    FcodiceEsito: string;
    FdataAccoglienza: string;
    FdescrizioneEsito: string;
    FdimensioneFileAllegato: string;
    FnomeFileAllegato: string;
    Fprotocollo: string;
    FidErrore: string;
    FidErrore_Specified: boolean;
    procedure SetidErrore(Index: Integer; const Astring: string);
    function  idErrore_Specified(Index: Integer): boolean;
  published
    property codiceEsito:            string  Index (IS_UNQL) read FcodiceEsito write FcodiceEsito;
    property dataAccoglienza:        string  Index (IS_UNQL) read FdataAccoglienza write FdataAccoglienza;
    property descrizioneEsito:       string  Index (IS_UNQL) read FdescrizioneEsito write FdescrizioneEsito;
    property dimensioneFileAllegato: string  Index (IS_UNQL) read FdimensioneFileAllegato write FdimensioneFileAllegato;
    property nomeFileAllegato:       string  Index (IS_UNQL) read FnomeFileAllegato write FnomeFileAllegato;
    property protocollo:             string  Index (IS_UNQL) read Fprotocollo write Fprotocollo;
    property idErrore:               string  Index (IS_OPTN or IS_UNQL) read FidErrore write SetidErrore stored idErrore_Specified;
  end;

  tipoNomeFileAllegato =  type string;      { "http://ejb.invioTelematicoSS730p.sanita.finanze.it/"[GblSmpl] }


  // ************************************************************************ //
  // XML       : proprietario, global, <complexType>
  // Namespace : http://ejb.invioTelematicoSS730p.sanita.finanze.it/
  // ************************************************************************ //
  proprietario = class(TRemotable)
  private
    FcodiceRegione: varChar3Type;
    FcodiceRegione_Specified: boolean;
    FcodiceAsl: varChar3Type;
    FcodiceAsl_Specified: boolean;
    FcodiceSSA: codSsaType;
    FcodiceSSA_Specified: boolean;
    FcfProprietario: cfType;
    FcfProprietario_Specified: boolean;
    procedure SetcodiceRegione(Index: Integer; const AvarChar3Type: varChar3Type);
    function  codiceRegione_Specified(Index: Integer): boolean;
    procedure SetcodiceAsl(Index: Integer; const AvarChar3Type: varChar3Type);
    function  codiceAsl_Specified(Index: Integer): boolean;
    procedure SetcodiceSSA(Index: Integer; const AcodSsaType: codSsaType);
    function  codiceSSA_Specified(Index: Integer): boolean;
    procedure SetcfProprietario(Index: Integer; const AcfType: cfType);
    function  cfProprietario_Specified(Index: Integer): boolean;
  published
    property codiceRegione:  varChar3Type  Index (IS_OPTN or IS_UNQL) read FcodiceRegione write SetcodiceRegione stored codiceRegione_Specified;
    property codiceAsl:      varChar3Type  Index (IS_OPTN or IS_UNQL) read FcodiceAsl write SetcodiceAsl stored codiceAsl_Specified;
    property codiceSSA:      codSsaType    Index (IS_OPTN or IS_UNQL) read FcodiceSSA write SetcodiceSSA stored codiceSSA_Specified;
    property cfProprietario: cfType        Index (IS_OPTN or IS_UNQL) read FcfProprietario write SetcfProprietario stored cfProprietario_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://ejb.invioTelematicoSS730p.sanita.finanze.it/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : InvioTelematicoSS730pMtomPortBinding
  // service   : InvioTelematicoSpeseSanitarie730pService
  // port      : InvioTelematicoSS730pMtomPort
  // URL       : http://localhost:9080/InvioTelematicoSS730pMtomWeb/InvioTelematicoSS730pMtomPort
  // ************************************************************************ //
  InvioTelematicoSS730pMtom = interface(IInvokable)
  ['{1F58756D-A2E0-C47D-0817-8E685DCE51B1}']
    function  inviaFileMtom(const nomeFileAllegato: tipoNomeFileAllegato; const pincodeInvianteCifrato: string;
                            const datiProprietario: proprietario; const opzionale1: string; const opzionale2: string; const opzionale3: string;
                            const documento: TByteDynArray): ricevutaInvio; stdcall;
  end;

function GetInvioTelematicoSS730pMtom(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): InvioTelematicoSS730pMtom;


implementation
  uses System.SysUtils, U_TS, DettaglioErrori730Service,
  DettaglioSegnalazione730Service, EsitoInvioDatiSpesa730Service, InterrogazionePuntuale730Service,
  ReportMensile730Service, ReportSegnalazioni730Service, RicevutaPdf730Service;

function GetInvioTelematicoSS730pMtom(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): InvioTelematicoSS730pMtom;
const
  defWSDL = 'C:\Users\buttonclick\Documents\Embarcadero\Studio\Projects\TEST INVIO 730\InvioTelematicoSpeseSanitarie730p.wsdl';
  defURL  = 'http://localhost:9080/InvioTelematicoSS730pMtomWeb/InvioTelematicoSS730pMtomPort';
  defSvc  = 'InvioTelematicoSpeseSanitarie730pService';
  defPrt  = 'InvioTelematicoSS730pMtomPort';
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
    Result := (RIO as InvioTelematicoSS730pMtom);
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


procedure ricevutaInvio.SetidErrore(Index: Integer; const Astring: string);
begin
  FidErrore := Astring;
  FidErrore_Specified := True;
end;

function ricevutaInvio.idErrore_Specified(Index: Integer): boolean;
begin
  Result := FidErrore_Specified;
end;

procedure proprietario.SetcodiceRegione(Index: Integer; const AvarChar3Type: varChar3Type);
begin
  FcodiceRegione := AvarChar3Type;
  FcodiceRegione_Specified := True;
end;

function proprietario.codiceRegione_Specified(Index: Integer): boolean;
begin
  Result := FcodiceRegione_Specified;
end;

procedure proprietario.SetcodiceAsl(Index: Integer; const AvarChar3Type: varChar3Type);
begin
  FcodiceAsl := AvarChar3Type;
  FcodiceAsl_Specified := True;
end;

function proprietario.codiceAsl_Specified(Index: Integer): boolean;
begin
  Result := FcodiceAsl_Specified;
end;

procedure proprietario.SetcodiceSSA(Index: Integer; const AcodSsaType: codSsaType);
begin
  FcodiceSSA := AcodSsaType;
  FcodiceSSA_Specified := True;
end;

function proprietario.codiceSSA_Specified(Index: Integer): boolean;
begin
  Result := FcodiceSSA_Specified;
end;

procedure proprietario.SetcfProprietario(Index: Integer; const AcfType: cfType);
begin
  FcfProprietario := AcfType;
  FcfProprietario_Specified := True;
end;

function proprietario.cfProprietario_Specified(Index: Integer): boolean;
begin
  Result := FcfProprietario_Specified;
end;

initialization
  { InvioTelematicoSS730pMtom }
  InvRegistry.RegisterInterface(TypeInfo(InvioTelematicoSS730pMtom), 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(InvioTelematicoSS730pMtom), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(InvioTelematicoSS730pMtom), ioDocument);
  { InvioTelematicoSS730pMtom.inviaFileMtom }
  InvRegistry.RegisterMethodInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', '',
                                 '[ReturnName="return"]', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'nomeFileAllegato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'pincodeInvianteCifrato', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'datiProprietario', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'opzionale1', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'opzionale2', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'opzionale3', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'documento', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(InvioTelematicoSS730pMtom), 'inviaFileMtom', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(varChar3Type), 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'varChar3Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(cfType), 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'cfType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(codSsaType), 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'codSsaType');
  RemClassRegistry.RegisterXSClass(ricevutaInvio, 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'ricevutaInvio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoNomeFileAllegato), 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'tipoNomeFileAllegato');
  RemClassRegistry.RegisterXSClass(proprietario, 'http://ejb.invioTelematicoSS730p.sanita.finanze.it/', 'proprietario');

end.
