unit U_Edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, AdvGlowButton, cxCheckBox, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.StdCtrls, Data.DB,
  Vcl.ExtCtrls, AdvPanel, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess,
  MyAccess;

type
  TFrmEdit = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    Label2: TLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label5: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    BtnEsci: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    cxCheckBox1: TcxCheckBox;
    DETTAGLI: TMyTable;
    DETTAGLIId_Dettaglio: TAutoIncField;
    DETTAGLIId_Fattura: TFloatField;
    DETTAGLIQta: TFloatField;
    DETTAGLIDescrizione: TStringField;
    DETTAGLIPrezzoUnitario: TCurrencyField;
    DETTAGLISconto: TFloatField;
    DETTAGLIAliquotaIva: TFloatField;
    DETTAGLINATURA_IVA: TStringField;
    DETTAGLITIPO_SPESA: TStringField;
    DETTAGLICalcImporto: TCurrencyField;
    DETTAGLICalcImportoSconto: TCurrencyField;
    DETTAGLICalcImportoScontato: TCurrencyField;
    DETTAGLICalcImportoIva: TCurrencyField;
    DETTAGLICalcImpScontatoIvato: TCurrencyField;
    DsDETTAGLI: TDataSource;
    procedure BtnEsciClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdit: TFrmEdit;

implementation

{$R *.dfm}

uses U_TS, U_UpdFatt;

procedure TFrmEdit.AdvGlowButton1Click(Sender: TObject);
begin
  if (FrmTS.Fatture.State in [dsEdit]) then
    begin
      if Application.MessageBox('Attendione.'+#13+
                                'Sei ancora in fase di modifica dati fattura'+#13+
                                'Desideri condermare le modifiche apportate prima'+#13+
                                'di chiudere la finestra corrente?','Conferma Dati',MB_YESNO+MB_ICONWARNING)=mrOk then FrmTS.Fatture.Post;
    end;
  Close;
end;

procedure TFrmEdit.BtnEsciClick(Sender: TObject);
begin
  if (FrmTS.Fatture.State in [dsEdit]) then FrmTS.Fatture.Post;
  Close;
end;

procedure TFrmEdit.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
    begin
      FrmEdit.Height:=545;
      FrmEdit.AdvGlowButton1.Top:=465;
      FrmEdit.BtnEsci.Top:=465;
      FrmEdit.DBGrid1.Visible:=True;
      FrmEdit.DBNavigator1.Visible:=True;
    end
  else
    begin
      FrmEdit.Height:=365;
      FrmEdit.AdvGlowButton1.Top:=285;
      FrmEdit.BtnEsci.Top:=285;
      FrmEdit.DBGrid1.Visible:=False;
      FrmEdit.DBNavigator1.Visible:=False;
    end;
end;

procedure TFrmEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Aggiorna La quaryPrincipale e si posiziona sulla fattura appena modificata
  FrmTS.QryFatture.Close;
  FrmTS.QryFatture.ParamByName('iData1').AsDateTime:=FrmTS.EdDataInizio.Date;
  FrmTS.QryFatture.ParamByName('iData2').AsDateTime:=FrmTS.EdDataFine.Date;
  FrmTS.QryFatture.Open;

  FrmTS.QryFatture.Locate('Id_Fattura',FrmTS.FattureId_Fattura.AsInteger,[]);

end;

procedure TFrmEdit.FormShow(Sender: TObject);
begin
  Height:=365;
  AdvGlowButton1.Top:=285;
  BtnEsci.Top:=285;
  DBGrid1.Visible:=False;
  DBNavigator1.Visible:=False;
end;

end.
