unit U_SelTrattamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  AdvGlowButton, Vcl.ExtCtrls, AdvPanel, IniFiles, Data.DB;

type
  TFrmSelTrattamento = class(TForm)
    AdvPanel1: TAdvPanel;
    BtnEsci: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    CmbTrattamenti: TcxComboBox;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelTrattamento: TFrmSelTrattamento;

implementation

{$R *.dfm}

uses U_Cartella, U_DM, U_Ins_Fattura, U_Ins_Preventivo, U_Main;

procedure TFrmSelTrattamento.AdvGlowButton2Click(Sender: TObject);
begin
  if InsFattura then
    begin
      if not (FrmInsFattura.MemDettagli.State in [dsEdit]) then FrmInsFattura.MemDettagli.Edit;
      FrmInsFattura.MemDettagliDescrizione.AsString:=CmbTrattamenti.Text;
    end
  else if ModFattura then
    begin
      if not (DM.DettFatture.State in [dsEdit]) then DM.DettFatture.Edit;
      DM.DettFattureDescrizione.AsString:=CmbTrattamenti.Text;
    end
  else if InsPreventivo then
    begin
      if not (FrmInsPreventivo.Mem.State in [dsEdit]) then FrmInsPreventivo.Mem.Edit;
      FrmInsPreventivo.MemDescrizione.AsString:=CmbTrattamenti.Text;
    end
  else if ModPreventivo then
    begin
      if not (DM.DettPreventivi.State in [dsEdit]) then DM.DettPreventivi.Edit;
      DM.DettPreventiviDescrizione.AsString:=CmbTrattamenti.Text;
    end
  else if InsCartella then
    begin
      if not (FrmCartella.DettCartella.State in [dsEdit]) then FrmCartella.DettCartella.Edit;
      FrmCartella.DettCartellatrattamento.AsString:=CmbTrattamenti.Text;
    end
  else if ModCartella then
    begin
      if not (DM.DettCartella.State in [dsEdit]) then DM.DettCartella.Edit;
      if CmbTrattamenti.Text<>'' then DM.DettCartellatrattamento.AsString:=CmbTrattamenti.Text;
    end;
  Close;
end;

procedure TFrmSelTrattamento.AdvGlowButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelTrattamento.FormCreate(Sender: TObject);
var
  ListeIni:TIniFile;
begin
  //Carica la lista dei trattamenti nel combobox
  PathEXE:=ExtractFilePath(Application.ExeName);
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        //ReadSection('Trattamenti',TcxComboBoxProperties(cxGridDBTableView10Trattamento.Properties).Items);
        ReadSection('Trattamenti',CmbTrattamenti.Properties.Items);
      end;
  finally
    ListeIni.Free;
  end;
end;

end.









