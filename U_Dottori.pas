unit U_Dottori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, BaseGrid,
  AdvGrid, DBAdvGrid, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxDBColorComboBox, ExtDlgs,
  DB, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, AdvObj, AdvPanel,
  cxImage, cxDBEdit, cxMemo, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmDottori = class(TForm)
    PictureDialog: TOpenPictureDialog;
    AdvPanel1: TAdvPanel;
    EdIndirizzo: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBColorComboBox1: TcxDBColorComboBox;
    suiDBNavigator1: TDBNavigator;
    cxDBMemo1: TcxDBMemo;
    cxDBImage1: TcxDBImage;
    Label66: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label76: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Id_Dottore: TcxGridDBColumn;
    cxGridDBTableView3Indirizzo: TcxGridDBColumn;
    cxGridDBTableView3Citta: TcxGridDBColumn;
    cxGridDBTableView3Telefono: TcxGridDBColumn;
    cxGridDBTableView3Cellulare2: TcxGridDBColumn;
    cxGridDBTableView3CognomeNome: TcxGridDBColumn;
    procedure suitempsuiDBImage1DblClick(Sender: TObject);
    procedure suitempsuiDBImage1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDottori: TFrmDottori;

implementation

uses U_DM, U_Main;

{$R *.dfm}

procedure TFrmDottori.suitempsuiDBImage1DblClick(Sender: TObject);
begin
  //Se la tabella è in fase di inserimento/modifica apre la finestra di selezione della foto in formato BMP
  if PictureDialog.Execute then
    begin
      if PictureDialog.FileName <> '' then
        begin
          if not (DM.Dottori.State in [dsEdit]) then DM.Dottori.Edit;
          DM.DottoriFoto.LoadFromFile(PictureDialog.FileName);
          DM.Dottori.Post;
        end;
    end;

end;



procedure TFrmDottori.suitempsuiDBImage1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_DELETE then
    begin
      if not DM.DottoriFoto.IsNull then
        begin
          if Application.MessageBox(PChar('Si desidera eliminare la foto dal profilo del medico '+#13+#13+
                                          UpperCase(DM.DottoriCognomeNome.AsString)+'?'),
                                          'Elimina Foto',MB_YESNO+MB_ICONWARNING)=Id_Yes then
            begin
              if not (DM.Dottori.State in [dsEdit]) then DM.Dottori.Edit;
              DM.DottoriFoto.Clear;
              DM.Dottori.Post;
            end;
        end;
    end;
end;

procedure TFrmDottori.FormShow(Sender: TObject);
begin
  Height:=600;
  Width:=800;
end;

end.
