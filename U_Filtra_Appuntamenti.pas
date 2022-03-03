unit U_Filtra_Appuntamenti;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  AdvGlowButton, ExtCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AdvProgr, cxProgressBar,
  AdvGroupBox, AdvPanel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmFiltraAppuntamenti = class(TForm)
    AGENDA: TMyTable;
    DSPlanner: TDataSource;
    AGENDAPLANNERKEY: TStringField;
    AGENDAPAZIENTE: TStringField;
    AGENDASTARTTIME: TDateTimeField;
    AGENDAENDTIME: TDateTimeField;
    AGENDADATA: TDateField;
    AGENDANOTES: TMemoField;
    AGENDASUBJECT: TStringField;
    PB: TcxProgressBar;
    AdvPanel1: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdInizio: TcxDateEdit;
    EdFine: TcxDateEdit;
    BtnScheda: TAdvGlowButton;
    BtnReport: TAdvGlowButton;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PAZIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1STARTTIME: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    procedure FiltraAppuntamenti(Sender: TObject);
    procedure EdFinePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure BtnReportClick(Sender: TObject);
    procedure BtnSchedaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdInizioPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure AGENDAAfterOpen(DataSet: TDataSet);
    procedure AGENDAAfterClose(DataSet: TDataSet);
    procedure AGENDAFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraAppuntamenti: TFrmFiltraAppuntamenti;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmFiltraAppuntamenti.FiltraAppuntamenti(Sender: TObject);
var
  Flt:String;
begin
  Screen.Cursor:=crHourGlass;
  Flt:='';
  if (EdInizio.Date>0)and(EdFine.Date>0)then
    Flt:='Data >= '+''''+DateToStr(EdInizio.Date)+''''+' AND Data <= '+''''+DateToStr(EdFine.Date)+''''
  else if (EdInizio.Date>0)and(EdFine.Date<0)then
    Flt:='Data >= '+''''+DateToStr(EdInizio.Date)+''''
  else if (EdInizio.Date<0)and(EdFine.Date>0)then
    Flt:='Data <= '+''''+DateToStr(EdFine.Date)+'''';

  if Flt<>'' then
    begin
      AGENDA.Filter:=Flt;
      AGENDA.Filtered:=True;
    end
  else
    begin
      AGENDA.Filter:='';
      AGENDA.Filtered:=False;
    end;
  Screen.Cursor:=crDefault;
  BtnScheda.Enabled:=Agenda.RecordCount>0;
end;


procedure TFrmFiltraAppuntamenti.EdFinePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  FiltraAppuntamenti(Sender);
end;

procedure TFrmFiltraAppuntamenti.BtnReportClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFiltraAppuntamenti.BtnSchedaClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Si desidera avviare la procedura di eliminazione degli appuntamenti in griglia?'+#13+
                                  IntToStr(Agenda.RecordCount)+' Appuntamenti da Eliminare'),
                                  'Elimina Appuntamenti',MB_YesNO+MB_ICONWARNING)=idYes then
    begin
      Height:=600;
      PB.Visible:=True;
      Label1.Visible:=True;
      PB.Properties.Max:=Agenda.RecordCount;
      PB.Position:=0;
      Agenda.First;
      Agenda.DisableControls;
      while not Agenda.IsEmpty do
        begin
          if not AGENDADATA.IsNull then
            Label1.Caption:='Elimino Appuntamento del '+DateToStr(AGENDADATA.AsDateTime)+#13+
                             AGENDANOTES.AsString
          else Label1.Caption:='Elimino l''appuntamento di '+AGENDANOTES.AsString;
          Application.ProcessMessages;
          Agenda.Delete;
          Agenda.Next;
          PB.Position:=PB.Position+1;
        end;
      PB.Visible:=False;
      Label1.Visible:=False;
      Height:=560;
      Application.MessageBox('Eliminazione completata con successo',
                             'Elimina Appuntamenti',MB_OK+MB_ICONINFORMATION);
    end;
    Agenda.EnableControls;
    FiltraAppuntamenti(Sender);

end;

procedure TFrmFiltraAppuntamenti.FormShow(Sender: TObject);
begin
  Height:=550;
  Width:=620;
end;

procedure TFrmFiltraAppuntamenti.EdInizioPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  FiltraAppuntamenti(Sender);
end;

procedure TFrmFiltraAppuntamenti.AGENDAAfterOpen(DataSet: TDataSet);
begin
  //BtnScheda.Enabled:=True;
end;

procedure TFrmFiltraAppuntamenti.AGENDAAfterClose(DataSet: TDataSet);
begin
  //BtnScheda.Enabled:=False;
end;

procedure TFrmFiltraAppuntamenti.AGENDAFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  //BtnScheda.Enabled:=Agenda.RecordCount>0;
end;

procedure TFrmFiltraAppuntamenti.AdvGlowButton1Click(Sender: TObject);
var
  Flt:String;
  Paziente:String;
begin
  Screen.Cursor:=crHourGlass;
  //Agenda.Open;
  FiltraAppuntamenti(Sender);
  Screen.Cursor:=crDefault;
end;

end.
