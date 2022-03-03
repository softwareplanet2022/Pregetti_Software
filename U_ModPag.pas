unit U_ModPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, StdCtrls, Mask, DBCtrls,
  AdvPanel, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFrmModPag = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    StaticText5: TStaticText;
    DBNavigator3: TDBNavigator;
    DBNavigator5: TDBNavigator;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    DBAdvGrid4: TcxGrid;
    DBAdvGrid4DBTableView1: TcxGridDBTableView;
    DBAdvGrid4Level1: TcxGridLevel;
    DBAdvGrid4DBTableView1Giorni: TcxGridDBColumn;
    DBAdvGrid4DBTableView1Frazione: TcxGridDBColumn;
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator5Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModPag: TFrmModPag;

implementation

uses U_DM, U_Main, U_Anagrafiche;

{$R *.dfm}

procedure TFrmModPag.DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbInsert,
    nbEdit:begin
             DBAdvGrid4.Enabled:=False;
             DBNavigator5.Enabled:=False;
           end;
    nbPost,
    nbCancel:begin
               DBAdvGrid4.Enabled:=True;
               DBNavigator5.Enabled:=True;
             end;
  end;
end;

procedure TFrmModPag.DBNavigator5Click(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
    nbInsert,
    nbEdit:begin
             cxDBTextEdit1.Enabled:=False;
             DBNavigator3.Enabled:=False;
             cxDBRadioGroup1.Enabled:=False;
           end;
    nbPost,
    nbCancel:begin
               cxDBTextEdit1.Enabled:=True;
               DBNavigator3.Enabled:=True;
               cxDBRadioGroup1.Enabled:=True;
             end;
  end;
end;

end.
