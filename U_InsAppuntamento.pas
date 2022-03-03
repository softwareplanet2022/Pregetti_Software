unit U_InsAppuntamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxSpinEdit, cxTimeEdit, cxDBEdit, StdCtrls, DBCtrls,
  Mask, cxControls, cxContainer, cxEdit, cxTextEdit,DB, DateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, AdvEdit,
  AdvEdBtn, PlannerDatePicker, PlannerDBDatePicker, AdvMEdBtn,
  PlannerMaskDatePicker, PlannerDBMaskDatePicker, DBTables, MyAccess, MyClasses, MyCall, DBAccess, MemDS,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvPanel,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, AdvGlowButton;

type
  TFrmNewAppuntamento = class(TForm)
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
    DSPlanner: TDataSource;
    PlannerTablePAZIENTE: TStringField;
    Pazienti: TMyTable;
    DsPazienti: TDataSource;
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
    PazientiAnnotazioni: TMemoField;
    PazientiCalcCognomeNome: TStringField;
    PlannerTableID_PAZIENTE: TFloatField;
    PlannerTableALARM: TBooleanField;
    PlannerTableALARM_MESSAGE: TStringField;
    PlannerTableTIMEBEFORE: TTimeField;
    PlannerTableLkpPaziente: TStringField;
    PlannerTableID_DOTTORE: TFloatField;
    PlannerTableLkpDottore: TStringField;
    PlannerTableLkpColore: TIntegerField;
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label1: TLabel;
    suiDBMemo1: TDBMemo;
    StaticText38: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    EdDataInizio: TcxDBTimeEdit;
    EdDataFine: TcxDBTimeEdit;
    EdData: TcxDBDateEdit;
    StaticText3: TStaticText;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PlannerTableBeforePost(DataSet: TDataSet);
    procedure PlannerTableNewRecord(DataSet: TDataSet);
    procedure PazientiCalcFields(DataSet: TDataSet);
    procedure EdDataExit(Sender: TObject);
    procedure suitempsuiDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suitempsuiDBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure cxDBDateEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure EdDataPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNewAppuntamento: TFrmNewAppuntamento;

implementation

uses U_DM, U_Main;

{$R *.dfm}


procedure TFrmNewAppuntamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  NuovoAppuntamento:=False;
end;

procedure TFrmNewAppuntamento.FormShow(Sender: TObject);
begin
  Height:=390;
  Width:=450;
  if PlannerTable.State in [dsInsert] then
    begin
      PlannerTableDATA.AsDateTime:=Now;
      PlannerTableSTARTTIME.AsDateTime:=EncodeDateTime(YearOf(Now),MonthOf(Now),DayOf(Now),9,0,0,0);
      PlannerTableENDTIME.AsDateTime:=EncodeDateTime(YearOf(Now),MonthOf(Now),Dayof(Now),11,0,0,0);;
    end;
end;


procedure TFrmNewAppuntamento.PlannerTableBeforePost(DataSet: TDataSet);
begin

  PlannerTableDATA.AsDateTime:=EdData.Date;

  if PlannerTableID_PAZIENTE.AsInteger>0 then
    begin
      //PlannerTableID_PAZIENTE.AsInteger:=PazientiCod_Paziente.AsInteger;
      PlannerTablePAZIENTE.AsString:=PlannerTableLkpPaziente.AsString;
      PlannerTableSUBJECT.AsString:=PlannerTablePAZIENTE.AsString;
    end
  else
    begin
      PlannerTableID_PAZIENTE.AsInteger:=-1;
      PlannerTablePAZIENTE.AsString:='';
    end;
end;

procedure TFrmNewAppuntamento.PlannerTableNewRecord(DataSet: TDataSet);
begin
  PlannerTablePLANNERKEY.AsString:=DM.DBDaySource1.CreateKey;

  PlannerTableFONTSIZE.AsInteger:=8;
  PlannerTableFONTNAME.AsString:='Verdana';
  PlannerTableFROMCOLOR.AsInteger:=Integer(FrmMain.Planner.DefaultItem.Color);
  PlannerTableTOCOLOR.AsInteger:=Integer(FrmMain.Planner.DefaultItem.ColorTo);
  PlannerTableSELECTCOLOR.AsInteger:=Integer(FrmMain.Planner.DefaultItem.SelectColor);
  PlannerTableSELECTCOLORTO.AsInteger:=Integer(FrmMain.Planner.DefaultItem.SelectColorTo);
  PlannerTableTRACKCOLOR.AsInteger:=Integer(FrmMain.Planner.DefaultItem.TrackColor);
  PlannerTableTOCOLOR.AsInteger:=Integer(FrmMain.Planner.DefaultItem.ColorTo);
end;

procedure TFrmNewAppuntamento.PazientiCalcFields(DataSet: TDataSet);
begin
  PazientiCalcCognomeNome.AsString:=PazientiCognome.AsString+' '+PazientiNome.AsString;
end;



procedure TFrmNewAppuntamento.EdDataExit(Sender: TObject);
begin
  if (PlannerTable.State in [dsEdit,dsInsert])then
    begin
      PlannerTableSTARTTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),9,0,0,0);
      PlannerTableENDTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),11,0,0,0);
    end;
end;

procedure TFrmNewAppuntamento.EdDataPropertiesChange(Sender: TObject);
var
  START_HH:Word;
  START_MM:Word;
  END_HH:Word;
  END_MM:Word;
begin
  if (PlannerTable.State in [dsEdit,dsInsert])then
    begin
      START_HH:=HourOf(EdDataInizio.Time);
      START_MM:=MinuteOf(EdDataInizio.Time);
      END_HH:=HourOf(EdDataFine.Time);
      END_MM:=MinuteOf(EdDataFine.Time);

      PlannerTableSTARTTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),START_HH,START_MM,0,0);

      PlannerTableENDTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),END_HH,END_MM,0,0);
    end;
end;

procedure TFrmNewAppuntamento.cxDBDateEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  START_HH:Word;
  START_MM:Word;
  END_HH:Word;
  END_MM:Word;
begin
  if (PlannerTable.State in [dsEdit,dsInsert])then
    begin
      START_HH:=HourOf(EdDataInizio.Time);
      START_MM:=MinuteOf(EdDataInizio.Time);
      END_HH:=HourOf(EdDataFine.Time);
      END_MM:=MinuteOf(EdDataFine.Time);

      PlannerTableSTARTTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),START_HH,START_MM,0,0);

      PlannerTableENDTIME.AsDateTime:=
        EncodeDateTime(YearOf(PlannerTableSTARTTIME.AsDateTime),
        MonthOf(PlannerTableSTARTTIME.AsDateTime),
        DayOf(PlannerTableSTARTTIME.AsDateTime),END_HH,END_MM,0,0);
    end;
end;

procedure TFrmNewAppuntamento.suitempsuiDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then PlannerTableID_PAZIENTE.AsInteger:=-1;
end;

procedure TFrmNewAppuntamento.suitempsuiDBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then PlannerTableID_DOTTORE.AsInteger:=-1;
end;

procedure TFrmNewAppuntamento.AdvGlowButton1Click(Sender: TObject);
var
  CurrAppuntamento:String;
  START_HH:Word;
  START_MM:Word;
  END_HH:Word;
  END_MM:Word;
begin
  if (PlannerTable.State in [dsEdit,dsInsert])then
    begin
      PlannerTableFROMCOLOR.AsInteger:=clWhite;
      if (PlannerTableID_DOTTORE.AsInteger>0)and(not DM.DottoriColore.IsNull) then
        begin
          PlannerTableTOCOLOR.AsInteger:=DM.DottoriColore.AsInteger;
          PlannerTableFROMCOLOR.AsInteger:=clWhite;
        end;
     end;
  PlannerTableDATA.AsDateTime:=EdData.Date;
  START_HH:=HourOf(EdDataInizio.Time);
  START_MM:=MinuteOf(EdDataInizio.Time);
  END_HH:=HourOf(EdDataFine.Time);
  END_MM:=MinuteOf(EdDataFine.Time);

  PlannerTableSTARTTIME.AsDateTime:=
      EncodeDateTime(YearOf(EdData.Date),
      MonthOf(EdData.Date),
      DayOf(EdData.Date),START_HH,START_MM,0,0);

  PlannerTableENDTIME.AsDateTime:=
      EncodeDateTime(YearOf(EdData.Date),
      MonthOf(EdData.Date),
      DayOf(EdData.Date),END_HH,END_MM,0,0);


  if (PlannerTable.State in [dsEdit,dsInsert])then PlannerTable.Post;
  CurrAppuntamento:=PlannerTablePLANNERKEY.AsString;


  DM.PlannerTable.DisableControls;
  DM.PlannerTable.Refresh;
  DM.PlannerTable.Locate('PLANNERKEY',CurrAppuntamento,[]);
  DM.PlannerTable.EnableControls;
  Close;
  FrmMain.UpdateHeaders;
end;

procedure TFrmNewAppuntamento.AdvGlowButton2Click(Sender: TObject);
begin
  //if DM.PlannerTable.Locate('PLANNERKEY',PKey,[])then DM.PlannerTable.Delete;
  if (PlannerTable.State in [dsEdit,dsInsert]) then PlannerTable.Cancel;
  Close;
end;

end.
