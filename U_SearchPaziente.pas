unit U_SearchPaziente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, BaseGrid, AdvGrid, DBAdvGrid, ExtCtrls,
  DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS, AdvObj, StdCtrls, AdvGlowButton, AdvPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFrmSearchPaziente = class(TForm)
    Pazienti: TMyTable;
    PazientiCod_Paziente: TAutoIncField;
    PazientiCognome: TStringField;
    PazientiNome: TStringField;
    PazientiIndirizzo: TStringField;
    PazientiCap: TStringField;
    PazientiCitta: TStringField;
    PazientiProv: TStringField;
    PazientiStato: TStringField;
    PazientiSesso: TStringField;
    PazientiDataNascita: TDateField;
    PazientiCittaNascita: TStringField;
    PazientiCodiceFiscale: TStringField;
    PazientiTelefono: TStringField;
    PazientiCellulare: TStringField;
    PazientiEMail: TStringField;
    PazientiConsensoPrivacy: TBooleanField;
    PazientiNominativoFatt: TStringField;
    PazientiIndirizzoFatt: TStringField;
    PazientiComuneFatt: TStringField;
    PazientiCapfatt: TStringField;
    PazientiProvFatt: TStringField;
    PazientiPIva: TStringField;
    PazientiCodFiscFatt: TStringField;
    PazientiCalcNominativo: TStringField;
    DSPazienti: TDataSource;
    AdvPanel1: TAdvPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1Cognome: TcxGridDBColumn;
    cxGrid3DBTableView1Nome: TcxGridDBColumn;
    cxGrid3DBTableView1Indirizzo: TcxGridDBColumn;
    cxGrid3DBTableView1Citta: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    procedure suitempsuiButton1Click(Sender: TObject);
    procedure suitempsuiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchPaziente: TFrmSearchPaziente;
 
implementation

uses U_DM, U_Main, U_Cartella, U_Ins_Fattura, U_Ins_Preventivo, U_Prescrizione;

{$R *.dfm}

procedure TFrmSearchPaziente.suitempsuiButton1Click(Sender: TObject);
var
  Cartella:Integer;
begin
  if InsCartella then
    begin
      if Pazienti.RecordCount>0 then
        begin
          FrmCartella.CartelleCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          Close;
        end;
    end;

  if ModCartella then
    begin
      if Pazienti.RecordCount>0 then
        begin
          Cartella:=DM.CartelleCod_Cartella.AsInteger;
          if not (DM.Cartelle.State in [dsEdit,dsInsert])then DM.Cartelle.Edit;
          DM.CartelleCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          if (DM.Cartelle.State in [dsEdit,dsInsert])then DM.Cartelle.Post;
          DM.Pazienti.Locate('Cod_Paziente',PazientiCod_Paziente.AsInteger,[]);
          DM.Cartelle.Locate('Cod_Cartella',Cartella,[]);
          Close;
        end;
    end

  else if (ModPreventivo)or(InsPreventivo) then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          DM.PreventiviCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          DM.PreventiviRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          DM.PreventiviIndirizzo.AsString:=PazientiIndirizzo.AsString;
          DM.PreventiviCap.AsString:=PazientiCap.AsString;
          DM.PreventiviCitta.AsString:=PazientiCitta.AsString;
          DM.PreventiviProv.AsString:=PazientiProv.AsString;
          DM.PreventiviCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          DM.PreventiviPartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else if ModFattura then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          DM.FattureCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          DM.FattureRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          DM.FattureIndirizzo.AsString:=PazientiIndirizzo.AsString;
          DM.FattureCap.AsString:=PazientiCap.AsString;
          DM.FattureCitta.AsString:=PazientiCitta.AsString;
          DM.FattureProv.AsString:=PazientiProv.AsString;
          DM.FattureCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          DM.FatturePartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else if InsFattura then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          FrmInsFattura.FattureCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          FrmInsFattura.FattureRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          FrmInsFattura.FattureIndirizzo.AsString:=PazientiIndirizzo.AsString;
          FrmInsFattura.FattureCap.AsString:=PazientiCap.AsString;
          FrmInsFattura.FattureCitta.AsString:=PazientiCitta.AsString;
          FrmInsFattura.FattureProv.AsString:=PazientiProv.AsString;
          FrmInsFattura.FattureCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          FrmInsFattura.FatturePartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else Close;
end;


procedure TFrmSearchPaziente.suitempsuiButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSearchPaziente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  InsCartella:=False;
  ModCartella:=False;
  Prescrizione:=False;
  InsFattura:=False;
  ModFattura:=False;
  InsPreventivo:=False;
  ModPreventivo:=False;
end;

procedure TFrmSearchPaziente.DBAdvGrid1DblClick(Sender: TObject);
begin
  suitempsuiButton1Click(Sender);
end;

procedure TFrmSearchPaziente.FormShow(Sender: TObject);
begin
  Height:=500;
  Width:=800;
end;

procedure TFrmSearchPaziente.AdvGlowButton2Click(Sender: TObject);
var
  Cartella:Integer;
begin
  if InsCartella then
    begin
      if Pazienti.RecordCount>0 then
        begin
          FrmCartella.CartelleCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          Close;
        end;
    end;

  if ModCartella then
    begin
      if Pazienti.RecordCount>0 then
        begin
          Cartella:=DM.CartelleCod_Cartella.AsInteger;
          if not (DM.Cartelle.State in [dsEdit,dsInsert])then DM.Cartelle.Edit;
          DM.CartelleCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          if (DM.Cartelle.State in [dsEdit,dsInsert])then DM.Cartelle.Post;
          DM.Pazienti.Locate('Cod_Paziente',PazientiCod_Paziente.AsInteger,[]);
          DM.Cartelle.Locate('Cod_Cartella',Cartella,[]);
          Close;
        end;
    end

  else if (ModPreventivo)or(InsPreventivo) then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          DM.PreventiviCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          DM.PreventiviRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          DM.PreventiviIndirizzo.AsString:=PazientiIndirizzo.AsString;
          DM.PreventiviCap.AsString:=PazientiCap.AsString;
          DM.PreventiviCitta.AsString:=PazientiCitta.AsString;
          DM.PreventiviProv.AsString:=PazientiProv.AsString;
          DM.PreventiviCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          DM.PreventiviPartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else if ModFattura then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          DM.FattureCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          DM.FattureRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          DM.FattureIndirizzo.AsString:=PazientiIndirizzo.AsString;
          DM.FattureCap.AsString:=PazientiCap.AsString;
          DM.FattureCitta.AsString:=PazientiCitta.AsString;
          DM.FattureProv.AsString:=PazientiProv.AsString;
          DM.FattureCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          DM.FatturePartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else if InsFattura then
    begin
      if DM.Pazienti.RecordCount>0 then
        begin
          if not(FrmInsFattura.Fatture.State in [dsEdit,dsInsert])then FrmInsFattura.Fatture.Edit;
          FrmInsFattura.FattureCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
          FrmInsFattura.FattureRagioneSociale.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
          FrmInsFattura.FattureIndirizzo.AsString:=PazientiIndirizzo.AsString;
          FrmInsFattura.FattureCap.AsString:=PazientiCap.AsString;
          FrmInsFattura.FattureCitta.AsString:=PazientiCitta.AsString;
          FrmInsFattura.FattureProv.AsString:=PazientiProv.AsString;
          FrmInsFattura.FattureCodFisc.AsString:=PazientiCodiceFiscale.AsString;
          FrmInsFattura.FatturePartitaIva.AsString:=PazientiPIva.AsString;
          Close;
        end;
    end
  else if Prescrizione then
    begin
      DM.PrescrizioniCod_Paziente.AsInteger:=PazientiCod_Paziente.AsInteger;
      DM.PrescrizioniCognome_Nome.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
      DM.PrescrizioniCod_Fisc.AsString:=PazientiCodiceFiscale.AsString;
      DM.PrescrizioniData_Nascita.AsDateTime:=PazientiDataNascita.AsDateTime;
      DM.PrescrizioniSesso.AsString:=PazientiSesso.AsString;
      Close;
    end
  else Close;
end;

procedure TFrmSearchPaziente.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  suitempsuiButton1Click(Sender);
end;

procedure TFrmSearchPaziente.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

end.
