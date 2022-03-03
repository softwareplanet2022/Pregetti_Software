unit U_Ed_TS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCheckBox, cxDBEdit,
  cxCalc, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, StdCtrls,
  Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, IniFiles, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFrmEdit_FT_TS = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Label4: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid9: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBTableView14Cod_Articolo: TcxGridDBColumn;
    cxGridDBTableView14Qta: TcxGridDBColumn;
    cxGridDBTableView14Descrizione: TcxGridDBColumn;
    cxGridDBTableView14AliquotaIva: TcxGridDBColumn;
    cxGridDBTableView14PrezzoUnitario: TcxGridDBColumn;
    cxGridDBTableView14Sconto: TcxGridDBColumn;
    cxGridDBTableView14CalcImportoScontato: TcxGridDBColumn;
    cxGridDBTableView14TIPO_SPESA: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    procedure suiButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView14QtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView14DescrizionePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdit_FT_TS: TFrmEdit_FT_TS;

implementation

uses U_DM, U_Main, U_TS, U_Paziente, U_SearchArticoli;

{$R *.dfm}

procedure TFrmEdit_FT_TS.suiButton2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPaziente,FrmPaziente);
    TS:=True;
    FrmPaziente.Pazienti.Locate('Cod_Paziente',DM.FattureCod_Paziente.AsInteger,[]);
    FrmPaziente.Pazienti.Edit;
    FrmPaziente.ShowModal;
  finally
    FrmPaziente.Free;
  end;
end;

procedure TFrmEdit_FT_TS.cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmEdit_FT_TS.cxGridDBTableView14DescrizionePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmEdit_FT_TS.cxGridDBTableView14QtaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModFattura:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmEdit_FT_TS.FormCreate(Sender: TObject);
var
  ListeIni:TIniFile;
begin
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        // Carica le sezioni negli Items delle griglie
        ReadSection('Aliquote IVA',TcxComboBoxProperties(cxGridDBTableView14AliquotaIva.Properties).Items);
        ReadSection('TIPO_SPESA',TcxComboBoxProperties(cxGridDBTableView14TIPO_SPESA.Properties).Items);
        //ReadSection('Descrizioni Fattura',DBAdvGrid6.Columns[3].ComboItems);
      end;
  finally
    ListeIni.Free;
  end;
end;

procedure TFrmEdit_FT_TS.FormShow(Sender: TObject);
begin
  Height:=525;
  Width:=800;
end;

end.
