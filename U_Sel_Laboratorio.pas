unit U_Sel_Laboratorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, Vcl.ExtCtrls, AdvPanel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvGlowButton;

type
  TFrmSelect_Lab = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Ragione_Sociale: TcxGridDBColumn;
    cxGridDBTableView3Indirizzo: TcxGridDBColumn;
    cxGridDBTableView3Cap: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3Prov: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    BtnConferma: TAdvGlowButton;
    BtnAnnulla: TAdvGlowButton;
    procedure BtnAnnullaClick(Sender: TObject);
    procedure BtnConfermaClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelect_Lab: TFrmSelect_Lab;

implementation

{$R *.dfm}

uses U_DM, U_Prescrizione, U_Main;

procedure TFrmSelect_Lab.BtnAnnullaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelect_Lab.BtnConfermaClick(Sender: TObject);
var
  Laboratorio:String;
begin
  if DM.Laboratori.RecordCount>0 then
    begin
      if (DM.Prescrizioni.State in [dsEdit,dsInsert]) then
        begin
          DM.PrescrizioniId_Laboratorio.AsInteger:=DM.LaboratoriId_Laboratorio.AsInteger;
          Laboratorio:=DM.LaboratoriRagione_Sociale.AsString;

          if Laboratorio='' then Laboratorio:=DM.LaboratoriIndirizzo.AsString;

          if DM.LaboratoriIndirizzo.AsString<>''then
            begin
              if Laboratorio='' then Laboratorio:=DM.LaboratoriIndirizzo.AsString
              else Laboratorio:=Laboratorio+#13+DM.LaboratoriIndirizzo.AsString;
            end;

          if (DM.LaboratoriCap.AsString<>'')then
            begin
              if Laboratorio='' then Laboratorio:=DM.LaboratoriCap.AsString
              else Laboratorio:=Laboratorio+#13+DM.LaboratoriCap.AsString;
            end;

          if (DM.LaboratoriCitta.AsString<>'')then
            begin
              if Laboratorio='' then Laboratorio:=DM.LaboratoriCitta.AsString
              else Laboratorio:=Laboratorio+' '+DM.LaboratoriCitta.AsString;
            end;

          if (DM.LaboratoriProv.AsString<>'')then
            begin
              if Laboratorio='' then Laboratorio:=DM.LaboratoriProv.AsString
              else Laboratorio:=Laboratorio+' '+DM.LaboratoriProv.AsString;
            end;

          if (DM.LaboratoriPiva_CF.AsString<>'')then
            begin
              if Laboratorio='' then Laboratorio:='CF/PIVA: '+DM.LaboratoriPiva_CF.AsString
              else Laboratorio:=Laboratorio+#13+'CF/PIVA: '+DM.LaboratoriPiva_CF.AsString;
            end;

          if (DM.LaboratoriReg_Min_Sanita.AsString<>'')then
            begin
              if Laboratorio='' then Laboratorio:='REG. MIN. SANITA'': '+DM.LaboratoriReg_Min_Sanita.AsString
              else Laboratorio:=Laboratorio+#13+'REG. MIN. SANITA'': '+DM.LaboratoriReg_Min_Sanita.AsString;
            end;

          DM.PrescrizioniLaboratorio.AsString:=Laboratorio;

          {DM.PrescrizioniLaboratorio.AsString:=DM.LaboratoriRagione_Sociale.AsString+#13+
            DM.LaboratoriIndirizzo.AsString+#13+
            DM.LaboratoriCap.AsString+' '+DM.LaboratoriCitta.AsString+' '+DM.LaboratoriProv.AsString+#13+
            'CF/PIVA: '+DM.LaboratoriPiva_CF.AsString+#13+
            'REG. MIN. SANITA'': '+DM.LaboratoriReg_Min_Sanita.AsString;}

        end;
      Close;
    end;
end;

procedure TFrmSelect_Lab.cxGridDBTableView3DblClick(Sender: TObject);
begin
  BtnConfermaClick(sender);
end;

end.
