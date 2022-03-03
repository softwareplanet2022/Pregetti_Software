unit U_Etichette;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, DB, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, ExtCtrls,
  DBGrids, Menus, frxClass,
  frxDBSet, RxMemDS, AdvGlowButton, AdvPanel, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFrmEtichette = class(TForm)
    AdvPanel1: TAdvPanel;
    Label89: TLabel;
    Label150: TLabel;
    Label152: TLabel;
    EdInizio: TcxDateEdit;
    EdFine: TcxDateEdit;
    QryPazienti: TMyQuery;
    QryPazientiCod_Paziente: TIntegerField;
    PlannerTable: TMyTable;
    PlannerTableSTARTTIME: TDateTimeField;
    PlannerTableENDTIME: TDateTimeField;
    PlannerTableNOTES: TMemoField;
    PlannerTableSUBJECT: TStringField;
    PlannerTableFROMCOLOR: TFloatField;
    PlannerTableTOCOLOR: TFloatField;
    PlannerTableTRACKCOLOR: TFloatField;
    PlannerTableSELECTCOLOR: TFloatField;
    PlannerTableSELECTCOLORTO: TFloatField;
    PlannerTableCAPTION: TBooleanField;
    PlannerTableSHAPE: TFloatField;
    PlannerTablePRINTCOLOR: TFloatField;
    PlannerTableFONTSIZE: TFloatField;
    PlannerTableFONTNAME: TStringField;
    PlannerTableDATA: TDateField;
    PlannerTablePLANNERKEY: TStringField;
    PlannerTablePAZIENTE: TStringField;
    PlannerTableID_PAZIENTE: TFloatField;
    PlannerTableID_DOTTORE: TFloatField;
    PlannerTableALARM: TBooleanField;
    PlannerTableALARM_MESSAGE: TStringField;
    PlannerTableTIMEBEFORE: TTimeField;
    DSPlanner: TDataSource;
    DsMemSel: TDataSource;
    PopEtichette: TPopupMenu;
    SelezionaTutti: TMenuItem;
    DeselezionaTutti1: TMenuItem;
    MemSel: TRxMemoryData;
    MemSelPAZIENTE: TStringField;
    MemSelDATA: TStringField;
    MemSelINIZIO: TStringField;
    MemSelFINE: TStringField;
    MemSelPLANNERKEY: TStringField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    CmbPazienti: TcxComboBox;
    QryPazientiNominativo: TStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2Qta: TcxGridDBColumn;
    cxGrid2DBTableView2Descrizione: TcxGridDBColumn;
    cxGrid2DBTableView2PrezzoUnitario: TcxGridDBColumn;
    cxGrid2DBTableView2Sconto: TcxGridDBColumn;
    cxGrid2DBTableView2AliquotaIva: TcxGridDBColumn;
    cxGrid2DBTableView2NATURA_IVA: TcxGridDBColumn;
    cxGrid2DBTableView2TIPO_SPESA: TcxGridDBColumn;
    cxGrid2DBTableView2CalcImpScontatoIvato: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1STARTTIME: TcxGridDBColumn;
    cxGrid2DBTableView1ENDTIME: TcxGridDBColumn;
    cxGrid2DBTableView1PAZIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    procedure FiltraAppuntamenti(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdInizioPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdInizioPropertiesEditValueChanged(Sender: TObject);
    procedure EdFinePropertiesEditValueChanged(Sender: TObject);
    procedure EdFinePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DeselezionaTutti1Click(Sender: TObject);
    procedure SelezionaTuttiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure CmbPazientiPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtichette: TFrmEtichette;

implementation

uses U_DM, U_Main, DateUtils;

{$R *.dfm}


procedure TFrmEtichette.FiltraAppuntamenti(Sender: TObject);
var
  Flt:String;
  Paziente:String;
  ID_Paziente:Integer;
begin
  Screen.Cursor:=crHourGlass;
  PlannerTable.DisableControls;
  Flt:='';
  if (EdInizio.Date>0)and(EdFine.Date>0)then
    Flt:='Data >= '+''''+DateToStr(EdInizio.Date)+''''+' AND Data <= '+''''+DateToStr(EdFine.Date)+''''
  else if (EdInizio.Date>0)and(EdFine.Date<0)then
    Flt:='Data >= '+''''+DateToStr(EdInizio.Date)+''''
  else if (EdInizio.Date<0)and(EdFine.Date>0)then
    Flt:='Data <= '+''''+DateToStr(EdFine.Date)+'''';

  if CmbPazienti.Text<>'' then
    begin
      if QryPazienti.Locate('Nominativo',CmbPazienti.Text,[loCaseInsensitive])then
        begin
          ID_Paziente:=QryPazientiCod_Paziente.AsInteger;
          Paziente:=QryPazientiNominativo.AsString;
        end;
      if Flt<>'' then Flt:=Flt+' AND ID_PAZIENTE = '''+IntToStr(ID_Paziente)+''''
      else Flt:='ID_PAZIENTE = '''+IntToStr(ID_Paziente)+'''';
    end;

  {if (CmbDottori.Text<>'')and(DM.Dottori.Locate('CognomeNome',CmbDottori.Text,[loCaseInsensitive]))then
    if Flt<>'' then Flt:=Flt+' AND ID_DOTTORE = '''+DM.DottoriId_Dottore.AsString+''''
      else Flt:='ID_DOTTORE = '''+DM.DottoriId_Dottore.AsString+''''; }

  if Flt<>'' then
    begin
      PlannerTable.Filter:=Flt;
      PlannerTable.Filtered:=True;
    end
  else
    begin
      PlannerTable.Filter:='';
      PlannerTable.Filtered:=False;
    end;
  Screen.Cursor:=crDefault;
  PlannerTable.EnableControls;
end;



procedure TFrmEtichette.FormCreate(Sender: TObject);
begin
  QryPazienti.First;
  while not QryPazienti.Eof do
    begin
      CmbPazienti.Properties.Items.Add(QryPazientiNominativo.AsString);
      QryPazienti.Next;
    end;
  QryPazienti.First;

  EdInizio.Date:=Now;
  EdFine.Date:=Now;
end;

procedure TFrmEtichette.EdInizioPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFrmEtichette.EdInizioPropertiesEditValueChanged(
  Sender: TObject);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFrmEtichette.EdFinePropertiesEditValueChanged(Sender: TObject);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFrmEtichette.EdFinePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFrmEtichette.FormShow(Sender: TObject);
begin
  Height:=490;
end;

procedure TFrmEtichette.DeselezionaTutti1Click(Sender: TObject);
var
  i:Integer;
begin
  cxGrid2DBTableView1.Controller.ClearSelection;
end;

procedure TFrmEtichette.SelezionaTuttiClick(Sender: TObject);
var
  i:Integer;
begin
  cxGrid2DBTableView1.Controller.SelectAll;
end;


procedure TFrmEtichette.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //A questo punto svuota la Tabella Etichette

  DM.ETICHETTE.First;
  while not DM.ETICHETTE.IsEmpty do
    begin
      DM.ETICHETTE.Delete;
      DM.ETICHETTE.Next;
    end;
  DM.ETICHETTE.First;
end;



procedure TFrmEtichette.AdvGlowButton1Click(Sender: TObject);
var
  i:Integer;
begin
  DM.ETICHETTE.EmptyTable;

  //Effettua il travaso nella MemSel Table che conterrà gli appuntamenti da stampare
   if cxGrid2DBTableView1.Controller.SelectedRowCount>0 then
    begin
      Screen.Cursor:=crHourGlass;
      for i:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount-1 do
        begin
          cxGrid2DBTableView1.Controller.SelectedRows[i].Focused:=True;
          cxGrid2DBTableView1.Controller.SelectedRows[i].Selected:=True;

          if not DM.ETICHETTE.Locate('PLANNERKEY',PlannerTablePLANNERKEY.AsString,[])then
          begin
            DM.ETICHETTE.Insert;
            DM.ETICHETTEPLANNERKEY.AsString:=PlannerTablePLANNERKEY.AsString;
            DM.ETICHETTEPAZIENTE.AsString:=PlannerTablePAZIENTE.AsString;
            DM.ETICHETTEDATA.AsDateTime:=PlannerTableDATA.AsDateTime;
            DM.ETICHETTEINIZIO.AsDateTime:=PlannerTableSTARTTIME.AsDateTime;
            //FormatDateTime('HH:MM',PlannerTableSTARTTIME.AsDateTime);
            DM.ETICHETTEFINE.AsDateTime:=PlannerTableENDTIME.AsDateTime;
            //FormatDateTime('HH:MM',PlannerTableENDTIME.AsDateTime);
            DM.ETICHETTE.Post;
          end;
        end;
    end;

  if DM.ETICHETTE.RecordCount>0 then
    begin
      //Avvia l'anteprima di stampa
      //se ok inviare direttamente alla stampante
      DM.frEtichette.LoadFromFile('.\REPORT\Etichetta.fr3');
      DM.frEtichette.ShowReport;
    end
  else
    begin
      Application.MessageBox('Attenzione!!!'+#13+#13+
                             'Non ci sono etichette da stampare.'+#13+
                             'Selezionare una o più righe nella griglia e '+#13+
                             'riprovare con la generazione delle etichette',
                             'Stampa Etichette',MB_OK+MB_ICONWARNING);
    end;
end;



procedure TFrmEtichette.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmEtichette.AdvGlowButton3Click(Sender: TObject);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFrmEtichette.CmbPazientiPropertiesChange(Sender: TObject);
begin
  //GetQueryEtichette(sender);
  Screen.Cursor:=crHourGlass;
  if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')then
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end
  else
    try
      FiltraAppuntamenti(Sender);
    except
      FiltraAppuntamenti(Sender);
    end;
  Screen.Cursor:=crDefault;
end;

end.
