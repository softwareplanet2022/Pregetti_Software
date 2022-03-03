unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, InspectorBar, AdvGlowButton, AdvNavBar,
  AdvPreviewMenu, AdvPreviewMenuStylers, AdvToolBar, AdvToolBarStylers,
  AdvShapeButton, AdvOfficePager, AdvOfficePagerStylers, INIInspectorBar,
  StdCtrls, Mask, DBCtrls, Grids, BaseGrid, AdvGrid, DBAdvGrid,
  DB, cxContainer, cxEdit, cxControls, cxCheckBox, cxDBEdit, DBGrids, ComCtrls, dxtree, dxdbtree,
  AdvPanel, ToolPanels, jpeg, Planner, DBPlanner, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, RxGIF, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImage, IniFiles, AdvOfficeHint, ImgList,
  Menus, regware2, ShellAPI, DateUtils, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxGridLnk, ActnList, ShellCtrls, cxLabel,
  cyBaseLed, cyLed, DBGridEh, DBTables, MyCall, DBAccess, MemDS, backup,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  ToolCtrlsEh, dxCore,  cxDateUtils, dxSkinscxPCPainter, cxNavigator, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPScxCommon, AdvObj, cxGroupBox, cxRadioGroup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxGDIPlusClasses, Buttons, RxMemDS,
  frxClass, frxExportPDF, frxDBSet, ComObj, OleCtrls, TeEngine, Series,
  TeeProcs, Chart, DbChart, AdvGroupBox, MyAccess, midas, AdvSmoothLabel,
  DBAdvSmoothLabel, AdvReflectionLabel, cxMemo, Registry, DBGridEhGrouping,
  DBGridEhToolCtrls, DynVarsEh, dxDateRanges, VclTee.TeeGDIPlus, System.Actions,
  RxPicClip, EhLibVCL, GridsEh, DBAxisGridsEh, RxDateUtil, RxCtrls,
  dxOfficeSearchBox, cxButtonEdit, cxSpinEdit, AdvOfficeButtons, frxPreview,
  Vcl.DBCGrids, CurvyControls, RxSplshWnd, cxImageComboBox;

type
  TFrmMain = class(TForm)
    Panel2: TPanel;
    Notebook: TAdvOfficePager;
    Page1: TAdvOfficePage;
    Page2: TAdvOfficePage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    AdvPanelStyler1: TAdvPanelStyler;
    Panel1: TPanel;
    dxDBTreeView1: TdxDBTreeView;
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvOfficePage3: TAdvOfficePage;
    AdvOfficePage4: TAdvOfficePage;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    AdvOfficePager2: TAdvOfficePager;
    AdvOfficePager21: TAdvOfficePage;
    AdvOfficePager22: TAdvOfficePage;
    Label36: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    AdvOfficePager3: TAdvOfficePager;
    AdvOfficePage5: TAdvOfficePage;
    AdvOfficePage6: TAdvOfficePage;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label69: TLabel;
    Chk16: TImage;
    Chk17: TImage;
    Chk15: TImage;
    Chk14: TImage;
    Chk13: TImage;
    Chk12: TImage;
    Chk11: TImage;
    Chk18: TImage;
    Chk21: TImage;
    Chk22: TImage;
    Chk23: TImage;
    Chk24: TImage;
    Chk25: TImage;
    Chk26: TImage;
    Chk27: TImage;
    Chk28: TImage;
    Chk38: TImage;
    EdDataNasc: TcxDBDateEdit;
    suiDBEdit25: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    Chk48: TImage;
    Chk41: TImage;
    Chk47: TImage;
    Chk46: TImage;
    Chk45: TImage;
    Chk44: TImage;
    Chk43: TImage;
    Chk42: TImage;
    Chk37: TImage;
    Chk36: TImage;
    Chk35: TImage;
    Chk34: TImage;
    Chk33: TImage;
    Chk32: TImage;
    Chk31: TImage;
    Label28: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label76: TLabel;
    Label66: TLabel;
    BtnUscita: TAdvGlowButton;
    AdvOfficeHint1: TAdvOfficeHint;
    TVImageList: TImageList;
    ConvertiinPREVENTIVO1: TMenuItem;
    ConvertiinFATTURA1: TMenuItem;
    ImageList1: TImageList;
    Panel6: TPanel;
    DBText1: TDBText;
    cxDBCheckBox1: TcxDBCheckBox;
    Label67: TLabel;
    Label61: TLabel;
    Label78: TLabel;
    File1: TMenuItem;
    Consultazione1: TMenuItem;
    Inserimento1: TMenuItem;
    Opzioni1: TMenuItem;
    Info1: TMenuItem;
    Uscita1: TMenuItem;
    Backup1: TMenuItem;
    AnagraficaPazienti1: TMenuItem;
    CartelleCliniche1: TMenuItem;
    StoricoRichiami1: TMenuItem;
    N1: TMenuItem;
    DocumentiEmessi1: TMenuItem;
    Magazzino1: TMenuItem;
    Appuntamenti1: TMenuItem;
    NuovoPaziente1: TMenuItem;
    NuovaCartellaClinica1: TMenuItem;
    NuovaAttivit1: TMenuItem;
    N2: TMenuItem;
    NuovoPreventivo1: TMenuItem;
    NuovaFattura1: TMenuItem;
    N3: TMenuItem;
    NuovoAppuntamento1: TMenuItem;
    ImpostazioniAvanzate1: TMenuItem;
    ORALDB1: TMenuItem;
    Registrazione1: TMenuItem;
    MenuList: TImageList;
    Label37: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    IM2: TImageList;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    AdvOfficePage7: TAdvOfficePage;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    EdDataInizio: TcxDateEdit;
    EdDataFine: TcxDateEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    Label83: TLabel;
    Azzeralagiacenzadellarticolocorrente1: TMenuItem;
    Azzeralegiacenzedellinteromagazzino1: TMenuItem;
    AdvOfficePager4: TAdvOfficePager;
    AdvOfficePager41: TAdvOfficePage;
    AdvOfficePager42: TAdvOfficePage;
    Scadenzario1: TMenuItem;
    NuovaScadenza1: TMenuItem;
    NB_DETT_SCHEDA: TAdvOfficePager;
    AdvOfficePager51: TAdvOfficePage;
    AdvOfficePager52: TAdvOfficePage;
    AdvOfficePager53: TAdvOfficePage;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    dxPrinter: TdxComponentPrinter;
    LinkScadenze: TdxGridReportLink;
    Label84: TLabel;
    AdvOfficePage9: TAdvOfficePage;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    EdData1: TcxDateEdit;
    EdData2: TcxDateEdit;
    GridBanca: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label88: TLabel;
    cxGridDBTableView1DataOperazione: TcxGridDBColumn;
    cxGridDBTableView1DataValuta: TcxGridDBColumn;
    cxGridDBTableView1ContoCorrente: TcxGridDBColumn;
    cxGridDBTableView1Descrizione: TcxGridDBColumn;
    cxGridDBTableView1Dare: TcxGridDBColumn;
    LinkBanca: TdxGridReportLink;
    cxGridDBTableView1Avere: TcxGridDBColumn;
    cxGridDBTableView1Calcsaldo: TcxGridDBColumn;
    GestioneAnnidifatturazione1: TMenuItem;
    AdvOfficePage10: TAdvOfficePage;
    AdvOfficePage11: TAdvOfficePage;
    AllegaFile1: TMenuItem;
    ODialog: TOpenDialog;
    AdvGlowButton1: TAdvGlowButton;
    VisualizzaSchedaCliente1: TMenuItem;
    Image1: TImage;
    Led11: TcyLed;
    Led12: TcyLed;
    Led13: TcyLed;
    Led14: TcyLed;
    Led15: TcyLed;
    Led16: TcyLed;
    Led17: TcyLed;
    Led18: TcyLed;
    Led21: TcyLed;
    Led22: TcyLed;
    Led23: TcyLed;
    Led24: TcyLed;
    Led25: TcyLed;
    Led26: TcyLed;
    Led27: TcyLed;
    Led28: TcyLed;
    Led48: TcyLed;
    Led47: TcyLed;
    Led45: TcyLed;
    Led46: TcyLed;
    Led44: TcyLed;
    Led43: TcyLed;
    Led42: TcyLed;
    Led41: TcyLed;
    Led38: TcyLed;
    Led37: TcyLed;
    Led36: TcyLed;
    Led35: TcyLed;
    Led34: TcyLed;
    Led33: TcyLed;
    Led32: TcyLed;
    Led31: TcyLed;
    MenuItem5: TMenuItem;
    AnagraficaMedici1: TMenuItem;
    NuovoMedico1: TMenuItem;
    QryPazienti: TMyQuery;
    PicClip1: TPicClip;
    CreaRicetta: TMenuItem;
    CreaCertificato: TMenuItem;
    ShellListView1: TShellListView;
    ActionList1: TActionList;
    AggiornaStati: TAction;
    AdvOfficePage12: TAdvOfficePage;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label63: TLabel;
    ModalitdiPagamento1: TMenuItem;
    Label57: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBAdvGrid9: TDBAdvGrid;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    StampaConsensoInformato: TMenuItem;
    StampaInformativaGDPR1: TMenuItem;
    AdvOfficePage14: TAdvOfficePage;
    AdvOfficePage16: TAdvOfficePage;
    N5: TMenuItem;
    IntestazioneDocumenti1: TMenuItem;
    Label98: TLabel;
    Label99: TLabel;
    anagraficaComuni1: TMenuItem;
    AdvOfficePage18: TAdvOfficePage;
    Label109: TLabel;
    Label106: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label107: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label108: TLabel;
    EdCF: TcxDBTextEdit;
    cxDBRadioGroup2: TcxDBRadioGroup;
    Label111: TLabel;
    Label110: TLabel;
    AdvOfficePage19: TAdvOfficePage;
    Memo1: TMemo;
    DsMEM_E_FATT: TDataSource;
    MEM_E_FATT: TRxMemoryData;
    MEM_E_FATTTRASMITTENTE_PAESE: TStringField;
    MEM_E_FATTTRASMITTENTE_CODICE: TStringField;
    MEM_E_FATTCEDENTE_PAESE: TStringField;
    MEM_E_FATTDENOMINAZIONE: TStringField;
    MEM_E_FATTNOME: TStringField;
    MEM_E_FATTCOGNOME: TStringField;
    MEM_E_FATTREGIME_FISCALE: TStringField;
    MEM_E_FATTINDIRIZZO: TStringField;
    MEM_E_FATTCAP: TStringField;
    MEM_E_FATTCOMUNE: TStringField;
    MEM_E_FATTPROV: TStringField;
    MEM_E_FATTNAZIONE: TStringField;
    MEM_E_FATTCEDENTE_PIVA: TStringField;
    DBFattura: TfrxDBDataset;
    DBDettFattura: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    frFattura: TfrxReport;
    AdvOfficePager7: TAdvOfficePager;
    AdvOfficePager71: TAdvOfficePage;
    AdvOfficePager72: TAdvOfficePage;
    LVFatture: TShellListView;
    AdvOfficePager6: TAdvOfficePager;
    AdvOfficePage17: TAdvOfficePage;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AdvOfficePager61: TAdvOfficePage;
    AdvOfficePager62: TAdvOfficePage;
    ShellListView2: TShellListView;
    AdvGlowButton8: TAdvGlowButton;
    AdvOfficePage13: TAdvOfficePage;
    Label100: TLabel;
    Label97: TLabel;
    cxDBImage2: TcxDBImage;
    cxDBImage1: TcxDBImage;
    AdvOfficePage15: TAdvOfficePage;
    Label101: TLabel;
    Label102: TLabel;
    cxDBImage3: TcxDBImage;
    cxDBImage4: TcxDBImage;
    PersonalizzaStampe1: TMenuItem;
    PersonalizzaStampaFattura1: TMenuItem;
    PersonalizzaStampaPreventivo1: TMenuItem;
    AdvOfficePage20: TAdvOfficePage;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    PGHOME: TAdvOfficePage;
    Panel4: TPanel;
    BtnPAZIENTI: TAdvGlowButton;
    BtnCartelle: TAdvGlowButton;
    BtnStorico: TAdvGlowButton;
    BtnDOCUMENTI: TAdvGlowButton;
    BtnMAGAZZINO: TAdvGlowButton;
    BtnAGENDA: TAdvGlowButton;
    BtnSCADENZARIO: TAdvGlowButton;
    BtnBANCA: TAdvGlowButton;
    BtnFATTURATO: TAdvGlowButton;
    BtnESCI: TAdvGlowButton;
    Label30: TLabel;
    DBChart1: TDBChart;
    Series1: THorizBarSeries;
    BtnDA_INCASSARE: TAdvGlowButton;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    BtnManuale: TAdvGlowButton;
    N6: TMenuItem;
    ManualeUtente1: TMenuItem;
    OperazioniBancarie1: TMenuItem;
    AnalisidelFatturato1: TMenuItem;
    RendicontoPazienti1: TMenuItem;
    N7: TMenuItem;
    StampaEtichetteAppuntamenti1: TMenuItem;
    N8: TMenuItem;
    PersonalizzaStampaEtichetteAppuntamenti1: TMenuItem;
    StampaAnamnesi: TMenuItem;
    AdvGroupBox1: TAdvGroupBox;
    StaticText1: TStaticText;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    EdDataPagamento: TcxDBDateEdit;
    N9: TMenuItem;
    ElaboraReportTS1: TMenuItem;
    UPD_IVA: TAction;
    UPD_SCADENZARIO: TAction;
    Label48: TLabel;
    PagerAgenda: TAdvOfficePager;
    AdvOfficePager81: TAdvOfficePage;
    AdvOfficePager82: TAdvOfficePage;
    Panel30: TPanel;
    Planner: TDBPlanner;
    DBPlanner1: TDBPlanner;
    DBDaySource1: TDBDaySource;
    PopConverti: TPopupMenu;
    MainMenu: TMainMenu;
    PopStampaAgenda: TPopupMenu;
    PopMagazzino: TPopupMenu;
    PopCartella: TPopupMenu;
    PopAllega: TPopupMenu;
    PopCliente: TPopupMenu;
    PopMag: TPopupMenu;
    PopRicette: TPopupMenu;
    PopPrivacy: TPopupMenu;
    PopStampa: TPopupMenu;
    suiDBMemo7: TDBMemo;
    suiDBNavigator11: TDBNavigator;
    suiDBNavigator12: TDBNavigator;
    suiDBNavigator13: TDBNavigator;
    suiDBEdit24: TDBEdit;
    suiDBNavigator1: TDBNavigator;
    suiDBNavigator10: TDBNavigator;
    suiDBMemo2: TDBMemo;
    suiDBMemo1: TDBMemo;
    suiDBNavigator6: TDBNavigator;
    suiDBMemo4: TDBMemo;
    suiDBNavigator7: TDBNavigator;
    NavDettFatt: TDBNavigator;
    suiDBMemo5: TDBMemo;
    suiDBMemo9: TDBMemo;
    suiDBLookupComboBox2: TDBLookupComboBox;
    suiDBComboBox2: TDBComboBox;
    suiDBMemo8: TDBMemo;
    suiDBNavigator5: TDBNavigator;
    suiDBEdit19: TDBEdit;
    suiDBNavigator9: TDBNavigator;
    suiTreeView1: TTreeView;
    QryPazientiNominativo: TStringField;
    QryPazientiCod_Paziente: TIntegerField;
    AdvPanel3: TAdvPanel;
    MonthCalendar1: TMonthCalendar;
    AdvPanel4: TAdvPanel;
    StaticText3: TStaticText;
    Label149: TLabel;
    Label150: TLabel;
    Label152: TLabel;
    Label89: TLabel;
    EdFine: TcxDateEdit;
    EdInizio: TcxDateEdit;
    Button1: TButton;
    GridUtenti: TDBGridEh;
    EdIndirizzo: TcxDBTextEdit;
    EdCap: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    EdProv: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    EdLuogoNasc: TcxDBTextEdit;
    EdSesso: TcxDBComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    EdCodFisc: TcxDBTextEdit;
    EdRagioneSociale: TcxDBTextEdit;
    EdIndirizzoFatt: TcxDBTextEdit;
    EdCapFatt: TcxDBTextEdit;
    EdCittaFatt: TcxDBTextEdit;
    EdProvFatt: TcxDBTextEdit;
    EdPiva: TcxDBTextEdit;
    EdCodFiscFiscFatt: TcxDBTextEdit;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    ChkTutore: TcxCheckBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    ChkPadre: TcxCheckBox;
    ChkMadre: TcxCheckBox;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    CmbModPag: TcxDBComboBox;
    GBCercaPazientePrev: TAdvGlowButton;
    GBConvertiPreventivi: TAdvGlowButton;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    GBCercaPazienteFatt: TAdvGlowButton;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    EdCodiceFiscale: TcxDBTextEdit;
    EdPartitaIva: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    CmbRitenuta: TcxDBComboBox;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    EdAliquotaIVA: TcxDBComboBox;
    EdCategoriaTerapia: TcxDBComboBox;
    AdvGlowButton21: TAdvGlowButton;
    cxDBMemo1: TcxDBMemo;
    CmbDottori: TcxComboBox;
    CmbPazienti: TcxComboBox;
    suiCheckBox1: TcxCheckBox;
    CbSoggetti: TcxComboBox;
    EdPartita: TcxComboBox;
    ChkSaldate: TcxCheckBox;
    ChkFiltra: TcxCheckBox;
    CmbTipoOperazione: TcxComboBox;
    CmbTipoPartita: TcxComboBox;
    ChkFiltra2: TcxCheckBox;
    RegWarell: TRegwareII;
    NbNavBar: TAdvOfficePager;
    PG_HOME: TAdvOfficePage;
    PG_PAZIENTI: TAdvOfficePage;
    PG_CARTELLE: TAdvOfficePage;
    PG_RICHIAMI: TAdvOfficePage;
    PG_DOCUMENTI: TAdvOfficePage;
    BtnNuovoPaziente: TAdvGlowButton;
    BtnModificaPaziente: TAdvGlowButton;
    BtnEliminaPaziente: TAdvGlowButton;
    BtnConsenso: TAdvGlowButton;
    BtnRicetta: TAdvGlowButton;
    BtnCercaPaziente: TAdvGlowButton;
    BtnRendiconto: TAdvGlowButton;
    BtnStampaPazienti: TAdvGlowButton;
    BtnNuovaCartella: TAdvGlowButton;
    BtnModificaCartella: TAdvGlowButton;
    BtnEliminaCartella: TAdvGlowButton;
    BtnCercaCartella: TAdvGlowButton;
    BtnConvertiCartella: TAdvGlowButton;
    BtnStampaCartella: TAdvGlowButton;
    BtnSchedaPaziente: TAdvGlowButton;
    BtnNuovoRichiamo: TAdvGlowButton;
    BtnModificaRichiamo: TAdvGlowButton;
    BtnEliminaRichiamo: TAdvGlowButton;
    BtnStampaRichiami: TAdvGlowButton;
    BtnNuovoDoc: TAdvGlowButton;
    BtnModificaDoc: TAdvGlowButton;
    BtnEliminaDoc: TAdvGlowButton;
    BtnConfermaDoc: TAdvGlowButton;
    BtnAnnullaDoc: TAdvGlowButton;
    BtnCercaDoc: TAdvGlowButton;
    BtnStampaDoc: TAdvGlowButton;
    BtnE_Fattura: TAdvGlowButton;
    PG_MAGAZZINO: TAdvOfficePage;
    btnNuovoArticolo: TAdvGlowButton;
    btnModificaArticolo: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    btnStampaArticoli: TAdvGlowButton;
    PG_AGENDA: TAdvOfficePage;
    btnEliminaArticolo: TAdvGlowButton;
    GBNuovoAppuntamento: TAdvGlowButton;
    GBModificaAppuntamento: TAdvGlowButton;
    GBEliminaAppuntamento: TAdvGlowButton;
    GBCercaAppuntamento: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    GBStampaAgenda: TAdvGlowButton;
    PG_SCADENZARIO: TAdvOfficePage;
    SINuovaScadenza: TAdvGlowButton;
    SIModificaScadenza: TAdvGlowButton;
    SIEliminaScadenza: TAdvGlowButton;
    SIStampaScadenze: TAdvGlowButton;
    PG_BANCA: TAdvOfficePage;
    SINuovaBanca: TAdvGlowButton;
    SIModificaBanca: TAdvGlowButton;
    SIEliminaBanca: TAdvGlowButton;
    SIStampaBanca: TAdvGlowButton;
    PG_FATTURATO: TAdvOfficePage;
    Panel5: TPanel;
    GridScadenze: TcxGrid;
    GridScadenzeDBTableView1: TcxGridDBTableView;
    GridScadenzeDBTableView1DataScadenza: TcxGridDBColumn;
    GridScadenzeDBTableView1Soggetto: TcxGridDBColumn;
    GridScadenzeDBTableView1Descrizione: TcxGridDBColumn;
    GridScadenzeDBTableView1Dare: TcxGridDBColumn;
    GridScadenzeDBTableView1Avere: TcxGridDBColumn;
    GridScadenzeDBTableView1Saldato: TcxGridDBColumn;
    GridScadenzeDBTableView1Column1: TcxGridDBColumn;
    GridScadenzeLevel1: TcxGridLevel;
    PanelInterventi: TAdvGroupBox;
    Panel3: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    glLabel1: TAdvReflectionLabel;
    glLabel4: TAdvReflectionLabel;
    suiDBEdit1: TDBEdit;
    suiDBNavigator3: TDBNavigator;
    EdCognome: TcxDBTextEdit;
    EdNome: TcxDBTextEdit;
    AdvOfficePage8: TAdvOfficePage;
    DBNavigator1: TDBNavigator;
    N10: TMenuItem;
    StampaDiarioClinico1: TMenuItem;
    Image4: TImage;
    VisualizzaAnamnesi: TMenuItem;
    BtnCodFiscale: TSpeedButton;
    TimerRefresh: TTimer;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1Cognome: TcxGridDBColumn;
    cxGrid3DBTableView1Nome: TcxGridDBColumn;
    cxGrid3DBTableView1Indirizzo: TcxGridDBColumn;
    cxGrid3DBTableView1Citta: TcxGridDBColumn;
    cxGrid3DBTableView1Prov: TcxGridDBColumn;
    cxGrid3DBTableView1Telefono: TcxGridDBColumn;
    cxGrid3DBTableView1Cellulare: TcxGridDBColumn;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    GridDiario: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Data: TcxGridDBColumn;
    cxGridDBTableView2Operatore: TcxGridDBColumn;
    cxGridDBTableView2DiarioClinico: TcxGridDBColumn;
    cxGridDBTableView2DataSterilizzazione: TcxGridDBColumn;
    GridRichiami: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4DataInserimento: TcxGridDBColumn;
    cxGridDBTableView4DataRichiamo: TcxGridDBColumn;
    cxGridDBTableView4Motivo: TcxGridDBColumn;
    cxGridDBTableView4Esito: TcxGridDBColumn;
    cxGridDBTableView4Annotazioni: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxGridDBTableView5cod_articolo: TcxGridDBColumn;
    cxGridDBTableView5Descrizione: TcxGridDBColumn;
    cxGridDBTableView5Costo: TcxGridDBColumn;
    cxGridDBTableView5Prezzo: TcxGridDBColumn;
    cxGridDBTableView5Peso_UM: TcxGridDBColumn;
    cxGridDBTableView5Barcode: TcxGridDBColumn;
    cxGridDBTableView5Categoria_Terapia: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxGridDBTableView6Data: TcxGridDBColumn;
    cxGridDBTableView6Operazione: TcxGridDBColumn;
    cxGridDBTableView6Qta: TcxGridDBColumn;
    cxGridDBTableView6CostoUnitario: TcxGridDBColumn;
    cxGridDBTableView6Descrizione: TcxGridDBColumn;
    cxGridDBTableView6LkpArticolo: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBTableView7STARTTIME: TcxGridDBColumn;
    cxGridDBTableView7ENDTIME: TcxGridDBColumn;
    cxGridDBTableView7NOTES: TcxGridDBColumn;
    cxGridDBTableView7DATA: TcxGridDBColumn;
    cxGridDBTableView7LkpDottore: TcxGridDBColumn;
    cxGrid6: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView9Data: TcxGridDBColumn;
    cxGridDBTableView9Descrizione: TcxGridDBColumn;
    cxGridDBTableView9Importo: TcxGridDBColumn;
    GridPreventivi: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    cxGridDBTableView11CalcNumPrev: TcxGridDBColumn;
    cxGrid8: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    cxGridDBTableView12Cod_Articolo: TcxGridDBColumn;
    cxGridDBTableView12Qta: TcxGridDBColumn;
    cxGridDBTableView12Descrizione: TcxGridDBColumn;
    cxGridDBTableView12PrezzoUnitario: TcxGridDBColumn;
    cxGridDBTableView12Sconto: TcxGridDBColumn;
    cxGridDBTableView12CalcImportoScontato: TcxGridDBColumn;
    cxGridDBTableView11DATA: TcxGridDBColumn;
    cxGridDBTableView11NUM_PREV: TcxGridDBColumn;
    GridFatture: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    cxGridDBTableView13NumFattura: TcxGridDBColumn;
    cxGridDBTableView13Data: TcxGridDBColumn;
    cxGridDBTableView13CalcNumFattura: TcxGridDBColumn;
    GridDettFatt: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    cxGridDBTableView14Cod_Articolo: TcxGridDBColumn;
    cxGridDBTableView14Qta: TcxGridDBColumn;
    cxGridDBTableView14Descrizione: TcxGridDBColumn;
    cxGridDBTableView14PrezzoUnitario: TcxGridDBColumn;
    cxGridDBTableView14CalcImportoScontato: TcxGridDBColumn;
    cxGridDBTableView14Sconto: TcxGridDBColumn;
    cxGridDBTableView14AliquotaIva: TcxGridDBColumn;
    cxGridDBTableView14TIPO_SPESA: TcxGridDBColumn;
    cxGrid10: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    cxGridDBTableView15Descrizione: TcxGridDBColumn;
    cxGridDBTableView15DataScadenza: TcxGridDBColumn;
    cxGridDBTableView15Avere: TcxGridDBColumn;
    cxGridDBTableView15Saldato: TcxGridDBColumn;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    MEM_E_FATTCEDENTE_CF: TStringField;
    AdvPanel1: TAdvPanel;
    Label25: TLabel;
    TrackBar1: TTrackBar;
    RadioGroup1: TAdvOfficeRadioGroup;
    BtnPrescrizione: TAdvGlowButton;
    PopPrescrizioni: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    AdvOfficePage21: TAdvOfficePage;
    Prescrizioni1: TMenuItem;
    N4: TMenuItem;
    NuovaPrescrizione1: TMenuItem;
    DispositiviProtesici1: TMenuItem;
    DispositivoOrtodontico1: TMenuItem;
    AnagraficaLaboratori1: TMenuItem;
    Nuovolaboratorio1: TMenuItem;
    PG_PRESCRIZIONI: TAdvOfficePage;
    SINuovaPrescrizione: TAdvGlowButton;
    SIModPrescrizione: TAdvGlowButton;
    SIEliminaPrescrizione: TAdvGlowButton;
    SIStampaPrescrizione: TAdvGlowButton;
    FlowPanel1: TFlowPanel;
    ScrollBox1: TScrollBox;
    NBDispositivi: TNotebook;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    AdvGroupBox3: TAdvGroupBox;
    Label35: TLabel;
    Label49: TLabel;
    Label68: TLabel;
    Label75: TLabel;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBComboBox4: TcxDBComboBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    AdvGroupBox4: TAdvGroupBox;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    AdvGroupBox6: TAdvGroupBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBCheckBox35: TcxDBCheckBox;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox46: TcxDBCheckBox;
    cxDBCheckBox47: TcxDBCheckBox;
    cxDBCheckBox48: TcxDBCheckBox;
    cxDBCheckBox49: TcxDBCheckBox;
    cxDBCheckBox50: TcxDBCheckBox;
    cxDBCheckBox51: TcxDBCheckBox;
    cxDBCheckBox52: TcxDBCheckBox;
    cxDBCheckBox53: TcxDBCheckBox;
    cxDBCheckBox54: TcxDBCheckBox;
    cxDBCheckBox55: TcxDBCheckBox;
    AdvGroupBox14: TAdvGroupBox;
    Label77: TLabel;
    Label90: TLabel;
    Label112: TLabel;
    cxDBMemo4: TcxDBMemo;
    cxDBTextEdit56: TcxDBTextEdit;
    CmbLega: TcxDBComboBox;
    CmbTipoDispositivo: TcxDBComboBox;
    AdvGroupBox11: TAdvGroupBox;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    CmbMorfologia: TcxDBComboBox;
    AdvGroupBox5: TAdvGroupBox;
    Label117: TLabel;
    cxDBCheckBox56: TcxDBCheckBox;
    cxDBCheckBox57: TcxDBCheckBox;
    cxDBCheckBox58: TcxDBCheckBox;
    cxDBCheckBox59: TcxDBCheckBox;
    cxDBCheckBox60: TcxDBCheckBox;
    cxDBCheckBox61: TcxDBCheckBox;
    cxDBCheckBox62: TcxDBCheckBox;
    cxDBCheckBox63: TcxDBCheckBox;
    cxDBCheckBox64: TcxDBCheckBox;
    cxDBCheckBox65: TcxDBCheckBox;
    cxDBTextEdit57: TcxDBTextEdit;
    AdvGroupBox13: TAdvGroupBox;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBDateEdit12: TcxDBDateEdit;
    CmbImpronte: TcxDBComboBox;
    AdvGroupBox7: TAdvGroupBox;
    Label118: TLabel;
    Label119: TLabel;
    cxDBTextEdit58: TcxDBTextEdit;
    CmbRegOcclusale: TcxDBComboBox;
    AdvGroupBox12: TAdvGroupBox;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit9: TcxDBDateEdit;
    cxDBDateEdit10: TcxDBDateEdit;
    cxDBDateEdit11: TcxDBDateEdit;
    SICercaPrescrizione: TAdvGlowButton;
    Label132: TLabel;
    AdvGroupBox17: TAdvGroupBox;
    Label137: TLabel;
    Label138: TLabel;
    cxDBMemo5: TcxDBMemo;
    cxDBTextEdit67: TcxDBTextEdit;
    AdvGroupBox8: TAdvGroupBox;
    cxDBCheckBox67: TcxDBCheckBox;
    cxDBCheckBox68: TcxDBCheckBox;
    cxDBCheckBox69: TcxDBCheckBox;
    cxDBCheckBox70: TcxDBCheckBox;
    cxDBCheckBox71: TcxDBCheckBox;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBMemo6: TcxDBMemo;
    AdvGroupBox15: TAdvGroupBox;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label151: TLabel;
    cxDBCheckBox72: TcxDBCheckBox;
    cxDBCheckBox73: TcxDBCheckBox;
    cxDBCheckBox74: TcxDBCheckBox;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBCheckBox75: TcxDBCheckBox;
    cxDBCheckBox76: TcxDBCheckBox;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBCheckBox77: TcxDBCheckBox;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBCheckBox78: TcxDBCheckBox;
    cxDBCheckBox79: TcxDBCheckBox;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBCheckBox80: TcxDBCheckBox;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBCheckBox81: TcxDBCheckBox;
    cxDBCheckBox82: TcxDBCheckBox;
    cxDBTextEdit78: TcxDBTextEdit;
    cxDBCheckBox83: TcxDBCheckBox;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBCheckBox84: TcxDBCheckBox;
    cxDBCheckBox85: TcxDBCheckBox;
    cxDBTextEdit80: TcxDBTextEdit;
    AdvGroupBox16: TAdvGroupBox;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    cxDBCheckBox86: TcxDBCheckBox;
    cxDBCheckBox87: TcxDBCheckBox;
    cxDBCheckBox88: TcxDBCheckBox;
    cxDBCheckBox89: TcxDBCheckBox;
    cxDBTextEdit81: TcxDBTextEdit;
    cxDBCheckBox90: TcxDBCheckBox;
    cxDBCheckBox91: TcxDBCheckBox;
    cxDBCheckBox92: TcxDBCheckBox;
    cxDBTextEdit82: TcxDBTextEdit;
    AdvGroupBox18: TAdvGroupBox;
    Label153: TLabel;
    Label154: TLabel;
    cxDBCheckBox93: TcxDBCheckBox;
    cxDBCheckBox94: TcxDBCheckBox;
    cxDBCheckBox95: TcxDBCheckBox;
    cxDBCheckBox96: TcxDBCheckBox;
    cxDBCheckBox97: TcxDBCheckBox;
    cxDBCheckBox98: TcxDBCheckBox;
    cxDBCheckBox99: TcxDBCheckBox;
    cxDBCheckBox100: TcxDBCheckBox;
    cxDBCheckBox101: TcxDBCheckBox;
    cxDBCheckBox102: TcxDBCheckBox;
    cxDBCheckBox103: TcxDBCheckBox;
    cxDBTextEdit83: TcxDBTextEdit;
    cxDBTextEdit84: TcxDBTextEdit;
    cxDBDateEdit8: TcxDBDateEdit;
    AdvGroupBox19: TAdvGroupBox;
    cxDBCheckBox104: TcxDBCheckBox;
    cxDBCheckBox105: TcxDBCheckBox;
    cxDBCheckBox106: TcxDBCheckBox;
    cxDBTextEdit85: TcxDBTextEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    cxDBCheckBox107: TcxDBCheckBox;
    cxDBCheckBox108: TcxDBCheckBox;
    cxDBCheckBox109: TcxDBCheckBox;
    cxDBTextEdit86: TcxDBTextEdit;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label133: TLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    AdvGroupBox9: TAdvGroupBox;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label139: TLabel;
    cxDBTextEdit64: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBCheckBox66: TcxDBCheckBox;
    cxDBComboBox5: TcxDBComboBox;
    cxDBDateEdit7: TcxDBDateEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    AdvGroupBox10: TAdvGroupBox;
    cxDBMemo3: TcxDBMemo;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBComboBox6: TcxDBComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    AdvPanel2: TAdvPanel;
    DBNavigator2: TDBNavigator;
    cxGrid9: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGridDBTableView16Num_Prescrizione: TcxGridDBColumn;
    cxGridDBTableView16Data: TcxGridDBColumn;
    cxGridDBTableView16TipoPrescrizione: TcxGridDBColumn;
    cxGridDBTableView16Cognome_Nome: TcxGridDBColumn;
    cxGridDBTableView16Cod_Fisc: TcxGridDBColumn;
    cxGridDBTableView16Laboratorio: TcxGridDBColumn;
    cxGridDBTableView16Data_Consegna: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    GridInterventi: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10DataInizio: TcxGridDBColumn;
    cxGridDBTableView10DataTermine: TcxGridDBColumn;
    cxGridDBTableView10NroDente: TcxGridDBColumn;
    cxGridDBTableView10Diagnosi: TcxGridDBColumn;
    cxGridDBTableView10Trattamento: TcxGridDBColumn;
    cxGridDBTableView10LkpStato: TcxGridDBColumn;
    cxGridDBTableView10Importo: TcxGridDBColumn;
    cxGridDBTableView10Dottore: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    suiDBNavigator2: TDBNavigator;
    cxDBTextEdit87: TcxDBTextEdit;
    Label140: TLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Panel7: TPanel;
    ImgLock: TImage;
    EmettiFatturadiAcconto1: TMenuItem;
    cxDBCheckBox6: TcxDBCheckBox;
    QryTotCartella: TMyQuery;
    QryTotFattura: TMyQuery;
    QryTotCartellaTotCartella: TFloatField;
    QryTotFatturanumfattura: TFloatField;
    QryTotFatturaTotFattura: TFloatField;
    AdvOfficePage22: TAdvOfficePage;
    Panel8: TPanel;
    Label141: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label155: TLabel;
    cxGrid11: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridDBFATTURA: TcxGridDBColumn;
    cxGridDBDATA: TcxGridDBColumn;
    cxGridDBNUMFATTURA: TcxGridDBColumn;
    cxGridLevel17: TcxGridLevel;
    cxGridDBTableView17TotFattura: TcxGridDBColumn;
    CheckBox1: TCheckBox;
    InserisciAnamnesi: TMenuItem;
    ImgPagata: TImage;
    CheckBox2: TCheckBox;
    AdvOfficePage23: TAdvOfficePage;
    AdvOfficePage24: TAdvOfficePage;
    AdvOfficePage25: TAdvOfficePage;
    cxGrid12: TcxGrid;
    cxGridDBTableView18: TcxGridDBTableView;
    cxGridLevel18: TcxGridLevel;
    cxGrid13: TcxGrid;
    cxGridDBTableView19: TcxGridDBTableView;
    cxGridLevel19: TcxGridLevel;
    cxGridDBTableView19NumPreventivo: TcxGridDBColumn;
    cxGridDBTableView19RagioneSociale: TcxGridDBColumn;
    cxGridDBTableView19Citta: TcxGridDBColumn;
    cxGridDBTableView19Data: TcxGridDBColumn;
    cxGridDBTableView19Totale: TcxGridDBColumn;
    cxGridDBTableView19ModalitaPagamento: TcxGridDBColumn;
    cxGrid14: TcxGrid;
    cxGridDBTableView20: TcxGridDBTableView;
    cxGridLevel20: TcxGridLevel;
    cxGridDBTableView18numfattura: TcxGridDBColumn;
    cxGridDBTableView18data: TcxGridDBColumn;
    cxGridDBTableView18ragionesociale: TcxGridDBColumn;
    cxGridDBTableView18citta: TcxGridDBColumn;
    cxGridDBTableView18pagata: TcxGridDBColumn;
    cxGridDBTableView18CalcTotaleFattura: TcxGridDBColumn;
    cxGridDBTableView18LkpModPag: TcxGridDBColumn;
    cxGridDBTableView18LkpTipoPagamento: TcxGridDBColumn;
    cxGridDBTableView19Column1: TcxGridDBColumn;
    N11: TMenuItem;
    DispositivoProtesico1: TMenuItem;
    DispositivoOrtodontico2: TMenuItem;
    AdvGlowButton5: TAdvGlowButton;
    cxGridDBTableView20Column1: TcxGridDBColumn;
    cxGrid15: TcxGrid;
    cxGridDBTableView21: TcxGridDBTableView;
    cxGridDBDaFatturare: TcxGridDBColumn;
    cxGridDBFatturate: TcxGridDBColumn;
    cxGridLevel21: TcxGridLevel;
    cxCheckBox1: TcxCheckBox;
    cxGridDBTableView20CalcPaziente: TcxGridDBColumn;
    cxGridDBTableView20CalcCartella: TcxGridDBColumn;
    cxGridDBTableView20LkpDottore: TcxGridDBColumn;
    cxGridDBTableView20fatturata: TcxGridDBColumn;
    cxGridDBTableView20ImpFatturati: TcxGridDBColumn;
    cxGridDBTableView20ImpDaFatturare: TcxGridDBColumn;
    cxGridDBTableView21Cartella: TcxGridDBColumn;
    cxGridDBTableView21Dottore: TcxGridDBColumn;
    cxGridDBTableView21Img: TcxGridDBColumn;
    ProgressBar1: TProgressBar;
    UPD_IMP_DA_FATTURARE: TAction;
    QryTotCartellacod_cartella: TIntegerField;
    Label156: TLabel;
    DBText6: TDBText;
    Label157: TLabel;
    LblTotCartella: TLabel;
    Label158: TLabel;
    Panel9: TPanel;
    Label161: TLabel;
    LblSaldo: TLabel;
    procedure BtnNuovoPazienteClick(Sender: TObject);
    procedure BtnModificaPazienteClick(Sender: TObject);
    procedure BtnConfermaPazienteClick(Sender: TObject);
    procedure BtnAnnullaPazienteClick(Sender: TObject);
    procedure BtnEliminaPazienteClick(Sender: TObject);
    procedure AbilitaInvio(Sender:TObject;var Key: Char);
    procedure AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel,
      NewActivePanel: Integer; var Allow: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnNuovaCartellaClick(Sender: TObject);
    procedure BtnModificaCartellaClick(Sender: TObject);
    procedure BtnEliminaCartellaClick(Sender: TObject);
    procedure BtnConfermaCartellaClick(Sender: TObject);
    procedure BtnAnnullaCartellaClick(Sender: TObject);
    procedure BtnCercaCartellaClick(Sender: TObject);
    procedure BtnStampaCartellaClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure NotebookChange(Sender: TObject);
    procedure suitempsuiTreeView1GetSelectedIndex(Sender: TObject;
      Node: TTreeNode);
    procedure suitempsuiTreeView1Click(Sender: TObject);
    procedure suitempsuiTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure AdvOfficePager1Change(Sender: TObject);
    procedure UpDateSchema;
    procedure UpDateSchema2;
    procedure FormCreate(Sender: TObject);
    procedure BtnCercaPazienteClick(Sender: TObject);
    procedure suitempEdCognomeChange(Sender: TObject);
    procedure suitempEdNomeChange(Sender: TObject);
    procedure suitempEdCittaChange(Sender: TObject);
    procedure BtnNuovaAttivitaClick(Sender: TObject);
    procedure BtnModificaAttivitaClick(Sender: TObject);
    procedure BtnEliminaAttivitaClick(Sender: TObject);
    procedure BtnConfermaAttivitaClick(Sender: TObject);
    procedure BtnAnnullaAttivitaClick(Sender: TObject);
    procedure BtnStampaAttivitaClick(Sender: TObject);
    procedure BtnStampaRichiamiClick(Sender: TObject);
    procedure BtnNuovoRichiamoClick(Sender: TObject);
    procedure BtnModificaRichiamoClick(Sender: TObject);
    procedure BtnConfermaRichiamoClick(Sender: TObject);
    procedure BtnAnnullaRichiamoClick(Sender: TObject);
    procedure BtnEliminaRichiamoClick(Sender: TObject);
    procedure BtnNuovoDocClick(Sender: TObject);
    procedure BtnEliminaDocClick(Sender: TObject);
    procedure btnNuovoArticoloClick(Sender: TObject);
    procedure btnModificaArticoloClick(Sender: TObject);
    procedure btnEliminaArticoloClick(Sender: TObject);
    procedure btnAnnullaArticoloClick(Sender: TObject);
    procedure btnConfermaArticoloClick(Sender: TObject);
    procedure btnStampaArticoliClick(Sender: TObject);
    procedure BtnUscitaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GridAttivitaDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBAdvGrid7DblClick(Sender: TObject);
    procedure ConvertiinPREVENTIVO1Click(Sender: TObject);
    procedure ConvertiinFATTURA1Click(Sender: TObject);
    procedure BtnModificaDocClick(Sender: TObject);
    procedure BtnConfermaDocClick(Sender: TObject);
    procedure BtnAnnullaDocClick(Sender: TObject);
    procedure BtnCercaDocClick(Sender: TObject);
    procedure BtnStampaDocClick(Sender: TObject);
    procedure Uscita1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure AnagraficaPazienti1Click(Sender: TObject);
    procedure CartelleCliniche1Click(Sender: TObject);
    procedure AttivitSvolte1Click(Sender: TObject);
    procedure StoricoRichiami1Click(Sender: TObject);
    procedure DocumentiEmessi1Click(Sender: TObject);
    procedure Magazzino1Click(Sender: TObject);
    procedure Appuntamenti1Click(Sender: TObject);
    procedure NuovoPaziente1Click(Sender: TObject);
    procedure NuovaCartellaClinica1Click(Sender: TObject);
    procedure NuovaAttivit1Click(Sender: TObject);
    procedure NuovoPreventivo1Click(Sender: TObject);
    procedure NuovaFattura1Click(Sender: TObject);
    procedure NuovoAppuntamento1Click(Sender: TObject);
    procedure ImpostazioniAvanzate1Click(Sender: TObject);
    procedure ORALDB1Click(Sender: TObject);
    procedure Registrazione1Click(Sender: TObject);
    procedure RegExpire(Sender: TObject);
    procedure GBNuovoAppuntamentoClick(Sender: TObject);
    procedure GBModificaAppuntamentoClick(Sender: TObject);
    procedure UpdateHeaders;
    procedure PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemHint(Sender: TObject; Item: TPlannerItem;
      var Hint: String);
    procedure PlannerItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemSelect(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemUnSelect(Sender: TObject; Item: TPlannerItem);
    procedure PlannerPlannerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState; Position, FromSel, FromSelPrecis, ToSel,
      ToSelPrecis: Integer);
    procedure PlannerPlannerNext(Sender: TObject);
    procedure PlannerPlannerPrev(Sender: TObject);
    procedure PlannerPlannerSelectCell(Sender: TObject; Index,
      Pos: Integer; var CanSelect: Boolean);
    procedure GBEliminaAppuntamentoClick(Sender: TObject);
    procedure PlannerItemEnter(Sender: TObject; Item: TPlannerItem);
    procedure PlannerItemExit(Sender: TObject; Item: TPlannerItem);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure GBStampaAgendaClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure FiltraScadenze;
    procedure suitempChkFiltraClick(Sender: TObject);
    procedure suitempEdPartitaChange(Sender: TObject);
    procedure SINuovaScadenzaClick(Sender: TObject);
    procedure SIModificaScadenzaClick(Sender: TObject);
    procedure SIEliminaScadenzaClick(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Azzeralagiacenzadellarticolocorrente1Click(Sender: TObject);
    procedure Azzeralegiacenzedellinteromagazzino1Click(Sender: TObject);
    procedure Scadenzario1Click(Sender: TObject);
    procedure NuovaScadenza1Click(Sender: TObject);
    procedure SIStampaScadenzeClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure BtnConvertiCartellaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SINuovaBancaClick(Sender: TObject);
    procedure SIModificaBancaClick(Sender: TObject);
    procedure SIEliminaBancaClick(Sender: TObject);
    procedure SIStampaBancaClick(Sender: TObject);
    procedure FiltraBanca;
    procedure EdData1PropertiesChange(Sender: TObject);
    procedure EdData2PropertiesChange(Sender: TObject);
    procedure EdData1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdData2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdData1KeyPress(Sender: TObject; var Key: Char);
    procedure EdData2KeyPress(Sender: TObject; var Key: Char);
    procedure EdDataInizioKeyPress(Sender: TObject; var Key: Char);
    procedure GestioneAnnidifatturazione1Click(Sender: TObject);
    procedure AnnidiFatturazione1Click(Sender: TObject);
    procedure DBAdvGrid5EllipsClick(Sender: TObject; ACol, ARow: Integer;
      var S: String);
    procedure DBAdvGrid6EllipsClick(Sender: TObject; ACol, ARow: Integer;
      var S: String);
    procedure AllegaFile1Click(Sender: TObject);
    procedure AllegaCertificato(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure PlannerItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure PlannerPlannerDblClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure VisualizzaSchedaCliente1Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure AnagraficaMedici1Click(Sender: TObject);
    procedure NuovoMedico1Click(Sender: TObject);
    procedure GridUtentiDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FiltraAppuntamenti(Sender: TObject);
    procedure suitempsuiCheckBox1Click(Sender: TObject);
    procedure suitempsuiButton6Click(Sender: TObject);
    procedure BtnRendicontoClick(Sender: TObject);
    procedure PrevToFattura;
    procedure NotebookChanging(Sender: TObject; FromPage, ToPage: Integer;
      var AllowChange: Boolean);
    procedure EdInizioPropertiesCloseUp(Sender: TObject);
    procedure EdInizioPropertiesChange(Sender: TObject);
    procedure EdFinePropertiesChange(Sender: TObject);
    procedure EdFinePropertiesCloseUp(Sender: TObject);
    procedure EdFinePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdInizioPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure BtnRicettaClick(Sender: TObject);
    procedure CreaRicettaClick(Sender: TObject);
    procedure CreaCertificatoClick(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AggiornaStatiExecute(Sender: TObject);
    procedure ModalitdiPagamento1Click(Sender: TObject);
    procedure StampaConsensoInformatoClick(Sender: TObject);
    procedure StampaInformativaGDPR1Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure DeleteScadenzeFatture;
    procedure GeneraScadenzeFatture;
    procedure cxDBCheckBox3MouseLeave(Sender: TObject);
    procedure AdvOfficePager6Change(Sender: TObject);
    procedure IntestazioneDocumenti1Click(Sender: TObject);
    procedure BtnConsensoClick(Sender: TObject);
    procedure NB_DETT_SCHEDAChange(Sender: TObject);
    procedure BtnCodFiscaleClick(Sender: TObject);
    procedure anagraficaComuni1Click(Sender: TObject);
    procedure BtnE_FatturaClick(Sender: TObject);
    procedure PersonalizzaStampaFattura1Click(Sender: TObject);
    procedure PersonalizzaStampaPreventivo1Click(Sender: TObject);
    procedure BtnPAZIENTIClick(Sender: TObject);
    procedure BtnCartelleClick(Sender: TObject);
    procedure BtnStoricoClick(Sender: TObject);
    procedure BtnDOCUMENTIClick(Sender: TObject);
    procedure BtnMAGAZZINOClick(Sender: TObject);
    procedure BtnAGENDAClick(Sender: TObject);
    procedure BtnSCADENZARIOClick(Sender: TObject);
    procedure BtnBANCAClick(Sender: TObject);
    procedure BtnFATTURATOClick(Sender: TObject);
    procedure BtnESCIClick(Sender: TObject);
    procedure GBCercaAppuntamentoClick(Sender: TObject);
    procedure BtnDA_INCASSAREClick(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure BtnManualeClick(Sender: TObject);
    procedure ManualeUtente1Click(Sender: TObject);
    procedure OperazioniBancarie1Click(Sender: TObject);
    procedure AnalisidelFatturato1Click(Sender: TObject);
    procedure RendicontoPazienti1Click(Sender: TObject);
    procedure StampaEtichetteAppuntamenti1Click(Sender: TObject);
    procedure PersonalizzaStampaEtichetteAppuntamenti1Click(
      Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure StampaAnamnesiClick(Sender: TObject);
    procedure GridFattureSelectionChanged(Sender: TObject; ALeft, ATop,
      ARight, ABottom: Integer);
    procedure UPD_IVAExecute(Sender: TObject);
    procedure cxDBCheckBox2Click(Sender: TObject);
    function ControllaCF(cf: String): Boolean;
    function ControllaPIVA(pi: String):Boolean;
    procedure suitempEdPartitaIvaExit(Sender: TObject);
    procedure suitempsuiDBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure ElaboraReportTS1Click(Sender: TObject);
    procedure dxDBTreeView1GetSelectedIndex(Sender: TObject;
      Node: TTreeNode);
    procedure BtnSchedaPazienteClick(Sender: TObject);
    procedure BtnStampaPazientiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvGrid2DblClick(Sender: TObject);
    procedure UPD_SCADENZARIOExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlanner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemExit(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemHint(Sender: TObject; Item: TPlannerItem;
      var Hint: String);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemSelect(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemUnSelect(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1PlannerDblClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1PlannerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState; Position, FromSel, FromSelPrecis, ToSel,
      ToSelPrecis: Integer);
    procedure DBPlanner1PlannerNext(Sender: TObject);
    procedure DBPlanner1PlannerPrev(Sender: TObject);
    procedure DBPlanner1PlannerSelectCell(Sender: TObject; Index,
      Pos: Integer; var CanSelect: Boolean);
    procedure MonthCalendar1Enter(Sender: TObject);
    procedure DBDaySource1GetResourceName(Sender: TObject;
      ResourceIndex: Integer; var ResourceName: String);
    procedure LocateAppuntamento2;
    procedure UpdateHeadersByDoctor;
    procedure EdCapPropertiesChange(Sender: TObject);
    procedure EdProvPropertiesChange(Sender: TObject);
    procedure cxDBTextEdit13PropertiesChange(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure EdIndirizzoPropertiesChange(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure ChkTutoreClick(Sender: TObject);
    procedure ChkPadreClick(Sender: TObject);
    procedure ChkMadreClick(Sender: TObject);
    procedure AdvGlowButton13Click(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton16Click(Sender: TObject);
    procedure GBCercaPazientePrevClick(Sender: TObject);
    procedure GBConvertiPreventiviClick(Sender: TObject);
    procedure GBCercaPazienteFattClick(Sender: TObject);
    procedure EdCodiceFiscaleExit(Sender: TObject);
    procedure EdPartitaIvaExit(Sender: TObject);
    procedure AdvGlowButton21Click(Sender: TObject);
    procedure CmbDottoriPropertiesChange(Sender: TObject);
    procedure CmbPazientiPropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure suiCheckBox1Click(Sender: TObject);
    procedure CbSoggettiPropertiesChange(Sender: TObject);
    procedure EdPartitaPropertiesChange(Sender: TObject);
    procedure ChkSaldateClick(Sender: TObject);
    procedure ChkFiltraClick(Sender: TObject);
    procedure CmbTipoOperazioneKeyPress(Sender: TObject; var Key: Char);
    procedure CmbTipoOperazionePropertiesChange(Sender: TObject);
    procedure CmbTipoPartitaKeyPress(Sender: TObject; var Key: Char);
    procedure CmbTipoPartitaPropertiesChange(Sender: TObject);
    procedure CmbTipoPartitaPropertiesCloseUp(Sender: TObject);
    procedure ChkFiltra2Click(Sender: TObject);
    procedure StampaDiarioClinico1Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure VisualizzaAnamnesiClick(Sender: TObject);
    procedure AdvOfficePager1Changing(Sender: TObject; FromPage,
      ToPage: Integer; var AllowChange: Boolean);
    procedure TimerRefreshTimer(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure cxGridDBTableView8DblClick(Sender: TObject);
    procedure cxGridDBTableView8CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SEARCH_TRATTAMENTOExecute(Sender: TObject);
    procedure cxGridDBTableView10TrattamentoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView12Cod_ArticoloPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView12QtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView12DescrizionePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView14QtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView14DescrizionePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);

    function CheckScadenzePagate(Id_Fattura:Integer):Boolean;
    procedure cxGridDBTableView15DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure RadioGroup1RadioButtonClick(Sender: TObject);
    procedure BtnPrescrizioneClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure EST1Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure AnagraficaLaboratori1Click(Sender: TObject);
    procedure Nuovolaboratorio1Click(Sender: TObject);
    procedure DispositiviProtesici1Click(Sender: TObject);
    procedure DispositivoOrtodontico1Click(Sender: TObject);
    procedure Prescrizioni1Click(Sender: TObject);
    procedure SIStampaPrescrizioneClick(Sender: TObject);
    procedure SIModPrescrizioneClick(Sender: TObject);
    procedure SINuovaPrescrizioneClick(Sender: TObject);
    procedure SIEliminaPrescrizioneClick(Sender: TObject);
    procedure cxGridDBTableView16DblClick(Sender: TObject);
    procedure cxGridDBTableView16CanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SICercaPrescrizioneClick(Sender: TObject);
    procedure cxGridDBTableView16CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure NBDispositiviPageChanged(Sender: TObject);
    procedure cxGridDBTableView10TrattamentoPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ImgLockClick(Sender: TObject);
    procedure ImgLockMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdDataInizioExit(Sender: TObject);
    procedure EdDataFinePropertiesEditValueChanged(Sender: TObject);
    procedure EdDataInizioPropertiesEditValueChanged(Sender: TObject);
    procedure ConvertiFATTURA(Id_TipoFattura:Integer);
    procedure EmettiFatturadiAcconto1Click(Sender: TObject);
    procedure EmettiFatturaSaldo;
    function CheckCartelleFatturate:Boolean;
    procedure CheckBox1Click(Sender: TObject);
    procedure InserisciAnamnesiClick(Sender: TObject);
    procedure Bloccafattura;
    procedure Sbloccafattura;
    procedure BloccaCartella;
    procedure SbloccaCartella;
    procedure ImgPagataClick(Sender: TObject);
    procedure ImgPagataMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox2Click(Sender: TObject);
    procedure cxGridDBTableView18DblClick(Sender: TObject);
    procedure cxGridDBTableView19DblClick(Sender: TObject);
    procedure DispositivoProtesico1Click(Sender: TObject);
    procedure DispositivoOrtodontico2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure UPD_IMP_DA_FATTURAREExecute(Sender: TObject);

  private
    procedure SloccaCartella;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain:TFrmMain;
  ListeIni,SetIni:TIniFile;
  PathEXE:String;
  MainFormCreated:Boolean=False;

  UserName:String;  //Tiene traccia dell'utente loggato della sua password e del suo ID
  Password:String;
  Id_Utente:Integer;

  InsCartella:Boolean=False;   //Variabili per tenere traccia della finestra chiamante
  ModCartella:Boolean=False;
  Prescrizione:Boolean=False;

  InsPreventivo:Boolean=False;
  ModPreventivo:Boolean=False;

  InsFattura:Boolean=False;
  ModFattura:Boolean=False;

  NuovoAppuntamento:Boolean=False;
  Itm:Integer;
  PKey:String;

  OrderCol:Integer=0;
  PathAllegati:String;
  PathCertificati:String;
  PathBackup:String;
  PathBackupMensile:String;
  AutoBackup:Boolean;
  AutoRefresh:Boolean;
  Hide_Scadenze:Boolean;
  GG:Integer;
  SS:Integer;

  Chk1,Chk2:String;
  CanScroll:Boolean=False;
  InChiusura:Boolean=False;
  
  FlgPaziente,FlgPadre,FlgMadre,FlgTutore:Boolean;
  Polizza_Assicurativa:String;
  Ricalcola_Scadenze:Boolean;
  Check_Stato_Fattura:Boolean;

  ConvertPreventivo:Boolean=False;
  Cartella_to_Fattura:Boolean=False;

  Del_Fattura:Boolean=False;
  SearchProduct:Boolean=False;

  //Variabili Fattura Acconto
  ImportoFtAcconto:Currency;
  Id_ModPag:Integer=-1;
  Id_TipoPag:String='';
  Causale:String='';



  //Parametri DLL Mailer
  EmailSDI:String;
  FileToOpen:String;


  Inserimento:Boolean=False; //Tiene Traccia che si è appena inseriro un nuovo paziente;
                            //serve per chiedere se si vuole inserire anche una scheda paziente al termine dell'inserimento del Paziente

  procedure Get_Mailer(Destinatario,Oggetto,Testo,PathAllegati:String);external 'Mailer.dll';


implementation

uses U_DM, U_CercaCliente, Unit1, U_SearchPaziente, U_SearchCartella,
  U_Ins_Preventivo, U_Richiamo, U_Attivita, U_Paziente, U_Cartella,
  U_Articolo, U_SearchArticoli, U_Reg, U_Splash, U_Login, U_Anagrafiche,
  U_Ins_Fattura, U_InsAppuntamento, U_Scadenze, U_Magazzino, U_CercaDoc,
  U_Banca, U_Dottori, Math, U_ModPag, U_Firma,
  U_Intestazione, U_Consenso,U_Fiscal, U_Comuni, U_Filtra_Appuntamenti,
  FrmResoconto2, U_Etichette, U_UPD, U_BCK, U_Certificato, U_GestDoc,
  U_Licenza, U_CF, U_Ed_TS, U_Omonimie, U_TS, U_UpdFatt, U_Send_Mail,
  U_SelTrattamento, U_Prescrizione, U_Laboratori, U_SearchPrescrizione,
  U_FrmSelImporto;

{$R *.dfm}


const
   XorKey: array[0..7] of Byte = ($B2, $09, $BB, $55, $93, $6D, $44, $47); //string encryption



function Enc(Str: string): string; //character encryption function This is an XOR encryption
var
   i, j: Integer;
begin
   Result := '';
   j := 0;
   for i := 1 to Length(Str) do
   begin
      Result := Result + IntToHex(Byte(Str[i]) xor XorKey[j], 2);
      j := (j + 1) mod 8;
   end;
end;


 Function Dec(Str: string): string; // character decryption function
var
   i, j: Integer;
begin
   Result := '';
   j := 0;
   for i := 1 to Length(Str) div 2 do
   begin
      Result := Result + Char(StrToInt('$' + Copy(Str, i * 2 - 1, 2)) xor XorKey[j]);
      j := (j + 1) mod 8;
   end;
end;


function VerificaCodiceAttivazione(CodiceAttivazione,CodiceUtente:String):Boolean;
begin
  if(CodiceAttivazione='')or(CodiceUtente='')then Result:=False
  else if Dec(CodiceAttivazione)= CodiceUtente then Result:=True
  else Result:=False;
end;


function TFrmMain.ControllaCF(cf:String):Boolean;
const
  SetDisp:array [0..25] of Integer= (1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 2, 4, 18, 20, 11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23);
var
  i,n,s:Integer;
  cf2:string;
begin
  Result:=True;
	if Length(cf)=0 then Exit;
  if Length(cf)=11 then Exit;
  if (Length(cf)<>16)then
   Begin
    Result:=False;
    Application.MessageBox('Attenzione!'+#13+
                           'La lunghezza del codice fiscale non è corretta: '+#13+
                           'Il Codice Fiscale dovrebbe essere lungo esattamente 16 caratteri.',
                           'Nuovo Cliente',MB_Ok+MB_IconWarning);
    Exit;
   End;

	cf2:=UpperCase(cf);

  for i:=1 to 16 do
    if not(((cf2[I]>='0')and(cf2[I]<='9'))or((cf2[I]>='A')and(cf2[I]<='Z')))then
      begin
        Result:=False;
        Application.MessageBox('Attenzione!'+#13+
                               'Il Codice Fiscale contiene dei caratteri non validi: '+#13+
		                           'I soli caratteri validi sono le lettere e le cifre.',
                               'Nuovo Cliente',MB_YesNo+MB_IconWarning);
        Exit;
      end;

	s := 0;
  for i:=2 to 14 do if not Odd(i) then
   begin
     n:=Ord(cf2[I]);
     if((cf2[I]>='0')and(cf2[I]<='9'))then s:= s + n - Ord('0')
     else s:= s + n - Ord('A');
   end;

  for i:=1 to 15 do if Odd(i) then
   begin
     n:= Ord(cf2[I]);
     if ((cf2[I]>='0')and(cf2[I]<='9')) then n := n - Ord('0') + Ord('A');
     s := s + SetDisp[n-Ord('A')];
   end;

  n:= (s mod 26) + Ord('A');

  if Chr(n)<>cf2[16] then
    begin
      Result:=False;
      Application.MessageBox('Attenzione!'+#13+
                             'Il Codice Fiscale non è corretto: '+#13+
                             'Il Codice di controllo non corrisponde.',
                             'Nuovo Cliente',MB_OK+MB_IconWarning);
    end;
end;



function TFrmMain.ControllaPIVA(pi: String):Boolean;
var
  i,c,s:Integer;
begin
  Result:=True;
	if Length(pi)=0 then Exit;
  if Length(pi)<>11 then
    begin
      Result:=False;
      Application.MessageBox('Attenzione!'+#13+
                             'La lunghezza della partita IVA non è corretta: '+#13+
                             'La Partita IVA dovrebbe essere lunga esattamente 11 caratteri.',
                             'Nuovo Cliente',MB_Ok+MB_IconWarning);
      Exit;
    end;
  for i:=1 to 11 do
    if (pi[i]<'0')or(pi[i]>'9') then
      begin
        Result:=False;
        Application.MessageBox('Attenzione!'+#13+
                               'La Partita IVA contiene dei caratteri non ammessi: '+#13+
                               'La Partita IVA dovrebbe contenere solo cifre.',
                               'Nuovo Cliente',MB_OK+MB_IconWarning);
        Exit;
      end;
	s:=0;
  for I:=1 to 10 do
    if Odd(I) then s:=s+StrToInt(pi[i]);

  for i:=1 to 10 do
    if not Odd(I) then
      begin
        c:=2*StrToInt(pi[I]);
        if c>9 then c:=c-9;
        s:=s+c;
      end;

  c:=s mod 10;
  c:=(10-c) mod 10;

  if StrToInt(pi[11])<>c then
    begin
      Result:=False;
      Application.MessageBox('Attenzione!'+#13+
                             'La partita IVA non è valida: '+#13+
                             'Il Codice di Controllo non corrisponde.',
                             'Nuovo Cliente',MB_OK+MB_IconWarning);
    end;
end;




procedure TFrmMain.UpdateHeaders;
var
  i:integer;
begin
  case PagerAgenda.ActivePageIndex of
    0:begin
        Planner.Positions:=GG;
        Planner.Header.Captions.Clear;
        Planner.Header.Captions.Add('');
        Planner.Display.ActiveEnd:=44;
        Planner.Display.ActiveStart:=0;
        Planner.Positions:=GG;
          for i := 1 to GG do Planner.Header.Captions.Add(UpperCase(FormatDateTime('DDD dd/mm/yy',DM.DBDaySource1.Day + i - 1)));
        Planner.PlannerImages:=IM2;
        Planner.Header.Font.Name:='Verdana';
      end;
    1:begin
        if DM.Dottori.RecordCount>0 then DBPlanner1.Positions:=DM.Dottori.RecordCount
        else DBPlanner1.Positions:=1;
      end;
   end;   
end;


procedure TFrmMain.AbilitaInvio(Sender:TObject;var Key: Char);
begin
  if Key=Char(VK_RETURN) then
    begin
     Key:=#0;
     PostMessage(Handle,WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFrmMain.BtnNuovoPazienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPaziente,FrmPaziente);
    if not (FrmPaziente.Pazienti.State in [dsEdit,dsInsert]) then FrmPaziente.Pazienti.Insert;
    FrmPaziente.Caption:=' Nuovo Paziente';
    Inserimento:=True;
    FrmPaziente.ShowModal;

  finally
    FrmPaziente.Free;
  end;
end;

procedure TFrmMain.BtnModificaPazienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPaziente,FrmPaziente);
    FrmPaziente.Pazienti.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsInteger,[]);
    if not (FrmPaziente.Pazienti.State in [dsEdit,dsInsert]) then FrmPaziente.Pazienti.Edit;
    FrmPaziente.Caption:=' Modifica Paziente';
    Inserimento:=False;
    FrmPaziente.ShowModal;
  finally
    FrmPaziente.Free;
  end;
end;

procedure TFrmMain.BtnConfermaPazienteClick(Sender: TObject);
begin
  if (DM.Pazienti.State in [dsEdit,dsInsert])then
    begin
      DM.Pazienti.Post;
      Application.MessageBox('Salvataggio avvenuto con successo','Conferma Modifiche',MB_OK+MB_ICONINFORMATION);
    end;
end;

procedure TFrmMain.BtnAnnullaPazienteClick(Sender: TObject);
begin
  if (DM.Pazienti.State in [dsEdit,dsInsert])then DM.Pazienti.Cancel;
end;

procedure TFrmMain.BtnEliminaPazienteClick(Sender: TObject);
begin
  if DM.Pazienti.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Attenzione!'+#13+
                                      'Si è scelto di eliminare il paziente:'+#13+#13+
                                      UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString)+'.'+#13+#13+
                                      'L''eliminazione del paziente comporterà la cancellazione di tutte le sue '+
                                      'Cartelle, del suo Diario Clinico, della sua scheda Anamnesi, di eventuali Richiami e '+
                                      'Appuntamenti associati al paziente stesso.'+#13+#13+
                                      'Si desidera proseguire con l''eliminazione?'),
                                      'Elimina Paziente',MB_YesNo+MB_ICONWARNING)=Id_Yes then  DM.Pazienti.Delete;
    end;
end;

procedure TFrmMain.AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel,
  NewActivePanel: Integer; var Allow: Boolean);
begin
  Notebook.ActivePageIndex:=NewActivePanel;
end;


function CheckAnnoDoc:Boolean;
var
  PathAlias,IPathAlias:String;
  YearPathAlias:String;
begin
  AnnoDocumentazione:=CurrentYear;
  PathAlias:=GetPathAlias('ORALDBDOC');
  YearPathAlias:=COPY(PathAlias,Length(PathAlias)-3,4);
  if (StrToInt(YearPathAlias)<>CurrentYear)then Result:=False
  else Result:=True;
end;



procedure TFrmMain.FormShow(Sender: TObject);
var
  Saldo,TotCartella:Currency;
  AllowTS:String;
  SETIni:TIniFile;
  CodiceUtente,CodiceAttivazione:String;
begin
  Caption:='ORAL-DB 5.3 - Connesso su: '+DM.MyConnection1.Server;
  glLabel1.Caption:='ORAL-DB  - Home Page';
  glLabel4.Caption:='';
  suiDBEdit1.Visible:=False;
  EdCognome.Visible:=False;
  EdNome.Visible:=False;
  Image2.Visible:=False;
  suiDBNavigator3.Visible:=False;
  Label1.Visible:=False;
  Label2.Visible:=False;
  Label3.Visible:=False;

  try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\ORAL-DB',True);
    CodiceUtente:=Reg.ReadString('HDID');
    CodiceAttivazione:=Reg.ReadString('Code');
  finally
    Reg.Free;
  end;


  if (not VerificaCodiceAttivazione(CodiceAttivazione,CodiceUtente))then
    Caption:='ORAL-DB 5.3 - Connesso su: '+DM.MyConnection1.Server+' - '+IntToStr(RegWarell.DaysLeft)+' Giorni restanti alla scadenza del periodo di valutazione'
  else Caption:='ORAL-DB 5.3 - Connesso su: '+DM.MyConnection1.Server;


  if (not RegWarell.CheckRegistered)and(RegWarell.CheckExpired)then
    begin
      Application.MessageBox(PChar('Attenzione! Il Periodo di Valutazione del software è terminato. '+
                                   'E'' Necessario effettuare la registrazione affinchè il software possa funzionare'),
                                   'Valutazione Scaduta',MB_OK+MB_ICONWARNING);
      try
        Application.CreateForm(TFrmReg,FrmReg);
        FrmReg.ShowModal;
      finally
        FrmReg.Free;
      end;
    end;

  if (RegWarell.DaysLeft<1)and(not VerificaCodiceAttivazione(CodiceAttivazione,CodiceUtente))then
    begin
      Application.MessageBox(PChar('Attenzione! Il Periodo di Valutazione del software è terminato. '+
                                   'E'' Necessario effettuare la registrazione affinchè il software possa funzionare'),
                                   'Valutazione Scaduta',MB_OK+MB_ICONWARNING);
      try
        Application.CreateForm(TFrmReg,FrmReg);
        FrmReg.ShowModal;
      finally
        FrmReg.Free;
      end;
    end

  else
    begin
      Resizing(wsMaximized);
      Notebook.ActivePageIndex:=0;

      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;

      TotCartella:=DM.SumDettCartella.SumCollection[0].SumValue;
      LblTotCartella.Caption:=FormatCurr('€ #,##0.#0',Totcartella);

      Saldo:=(DM.SumDettCartella.SumCollection[0].SumValue-DM.SumIncassi.SumCollection[0].SumValue);
      LblSaldo.Caption:=FormatCurr('€ #,##0.#0',Saldo);
      if Saldo > 0 then FrmMain.LblSaldo.Font.Color:=clGreen
      else if Saldo < 0 then FrmMain.LblSaldo.Font.Color:=clRed
      else FrmMain.LblSaldo.Font.Color:=clBlack;

      suiTreeView1.SetFocus;
      suiTreeView1.Items.Item[0].Selected:=True;

    end;

   //Si Posiziona nella directory degli allegati della del Paziente
   try
     if DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString) then
       FrmMain.ShellListView2.Root:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString
     else
       begin
         FrmMain.ShellListView2.Root:=PathCertificati;
         FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
       end;
   except
     FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
   end;

  BtnRicetta.Visible:=FileExists(PathEXE+'DLLEditCertificato.dll');

  ChkPadre.Checked:=DM.PazientiPADRE.AsBoolean;
  ChkMadre.Checked:=DM.PazientiMADRE.AsBoolean;
  ChkTutore.Checked:=DM.PazientiTUTORE.AsBoolean;

  suiTreeView1.Items.Item[0].Selected:=True;
  suiTreeView1.SetFocus;
  try
    SETIni:=TIniFile.Create('.\SET.ini');
    AllowTS:=SETIni.ReadString('TS','TS','0');
    ElaboraReportTS1.Visible:=AllowTS='1';
  finally
    SETIni.Free;
  end;

  if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
  NB_DETT_SCHEDA.Enabled:=DM.Cartelle.RecordCount>0;

  if DM.Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsString,[]) then
    begin
      FrmMain.VisualizzaAnamnesi.Visible:=True;
      FrmMain.StampaAnamnesi.Visible:=True;
      FrmMain.InserisciAnamnesi.Visible:=False;
    end
  else
    begin
      FrmMain.VisualizzaAnamnesi.Visible:=False;
      FrmMain.StampaAnamnesi.Visible:=False;
      FrmMain.InserisciAnamnesi.Visible:=True;
    end;
end;



procedure TFrmMain.BtnNuovaCartellaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCartella,FrmCartella);
    FrmCartella.Caption:='  Nuova Cartella';
    FrmCartella.Cartelle.Insert;
    FrmCartella.CartelleCod_Paziente.AsInteger:=DM.PazientiCod_Paziente.AsInteger;
    FrmCartella.CartelleDataCartella.AsDateTime:=Now;
    FrmCartella.ShowModal;
  finally
    FrmCartella.Free;
  end;
end;

procedure TFrmMain.BtnModificaCartellaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCartella,FrmCartella);
    FrmCartella.Caption:='  Modifica Cartella';
    FrmCartella.Cartelle.Locate('Cod_Cartella',DM.CartelleCod_Cartella.AsInteger,[]);
    FrmCartella.Cartelle.Edit;
    FrmCartella.ShowModal;
  finally
    FrmCartella.Free;
    if Notebook.ActivePageIndex=2 then
      begin
        UpDateSchema;
        UpDateSchema2;
        BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        NB_DETT_SCHEDA.Enabled:=DM.Cartelle.RecordCount>0;
        GridInterventi.Enabled:=DM.Cartelle.RecordCount>0;
        suiDBNavigator2.Enabled:=DM.Cartelle.RecordCount>0;
      end;
  end;
end;

procedure TFrmMain.BtnEliminaCartellaClick(Sender: TObject);
begin
  if DM.Cartelle.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare la Cartella del paziente '+
                                      UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString)+'?'),
                                      'Elimina Cartella',MB_YESNO+MB_ICONWARNING)=Id_Yes then
        begin
          DM.Cartelle.Delete;
          if Notebook.ActivePageIndex=2 then
            begin
              UpDateSchema;
              UpDateSchema2;
              BtnNuovaCartella.Enabled:=True;
              BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
              BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
              BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
              BtnCercaCartella.Enabled:=DM.Cartelle.RecordCount>0;
              BtnConvertiCartella.Enabled:=DM.Cartelle.RecordCount>0;
              BtnSchedaPaziente.Enabled:=DM.Cartelle.RecordCount>0;

              NB_DETT_SCHEDA.Enabled:=DM.Cartelle.RecordCount>0;
              PanelInterventi.Enabled:=DM.Cartelle.RecordCount>0;
            end;
        end;
    end;
end;

procedure TFrmMain.BtnConfermaCartellaClick(Sender: TObject);
begin
  if (DM.Cartelle.State in [dsEdit,dsInsert])then
    begin
      if Application.MessageBox(PChar('Si desidera salvare la cartella intestata al paziente: '+#13+#13+
                                      UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString)+'?'),
                                      'Conferma Modifiche',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
        begin
          DM.Cartelle.Post;
          Application.MessageBox('Salvataggio avvenuto con successo','Conferma Modifiche',MB_OK+MB_ICONINFORMATION);
        end;
    end;
end;

procedure TFrmMain.BtnAnnullaCartellaClick(Sender: TObject);
begin
  if (DM.Cartelle.State in [dsEdit,dsInsert])then DM.Cartelle.Cancel;
end;

procedure TFrmMain.BtnCercaCartellaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaCartella,FrmCercaCartella);
    FrmCercaCartella.ShowModal;
  finally
    FrmCercaCartella.Free;
    if Notebook.ActivePageIndex=2 then
    begin
      UpDateSchema;
      UpDateSchema2;
      BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
      BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
      BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
    end;
  end;
end;


procedure TFrmMain.BtnStampaCartellaClick(Sender: TObject);
begin
  PopCartella.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.Image3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModCartella:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.ImgLockClick(Sender: TObject);
var
  PSW:String;
  _Caption:String;
begin
  if DM.Cartelle.RecordCount>0 then
    begin
      //Richiede Nome Utente e Password Prima di chiudere l'Accettazione
      if DM.Cartellebloccata.AsBoolean then _Caption:='SBLOCCA CARTELLA'
      else _Caption:='BLOCCA CARTELLA';


      PSW:=Inputbox(_Caption,'Digita Password utente '+UserName,'');
      if PSW<>'' then
        if (UpperCase(PSW)=UpperCase(Password))or(PSW=DateToStr(Now))then
          begin
            if not (DM.Cartelle.State in [dsEdit]) then DM.Cartelle.Edit;
            DM.Cartellebloccata.AsBoolean:=not DM.Cartellebloccata.AsBoolean;

            if DM.Cartellebloccata.AsBoolean then FrmMain.ImgLock.Picture.LoadFromFile('lock.bmp')
            else FrmMain.ImgLock.Picture.LoadFromFile('Unlock.bmp');

            if (DM.Cartelle.State in [dsEdit]) then DM.Cartelle.Post;
          end
        else
          Application.MessageBox(PChar('Password errata per l''utente: '+UpperCase(UserName)+#13+
                                       'Per poter Bloccare/Sbloccare una cartella è necessario '+#13+
                                       'digitare una password valida per l''utente '+UpperCase(UserName)),
                                       'Password Errata',MB_OK+MB_ICONERROR);
    end;
end;

procedure TFrmMain.ImgLockMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if DM.Cartellebloccata.AsBoolean then ImgLock.Hint:='Sblocca Cartella'
  else ImgLock.Hint:='Blocca Cartella'
end;

procedure TFrmMain.ImgPagataClick(Sender: TObject);
var
  PSW:String;
  _Caption:String;
begin
  if DM.Fatture.RecordCount>0 then
    begin
      //Richiede Nome Utente e Password Prima di Sbloccare La fattura
      if DM.FatturePAGATA.AsBoolean then _Caption:='SBLOCCA FATTURA'
      else _Caption:='BLOCCA FATTURA';


      PSW:=Inputbox(_Caption,'Digita Password utente '+UserName,'');
      if PSW<>'' then
        if (UpperCase(PSW)=UpperCase(Password))or(PSW=DateToStr(Now))then
          begin
            if _Caption='SBLOCCA FATTURA' then
              begin
                Sbloccafattura;
                FrmMain.ImgPagata.Picture.LoadFromFile('Unlock.bmp')
              end
            else
              begin
                Bloccafattura;
                FrmMain.ImgPagata.Picture.LoadFromFile('lock.bmp');
              end;
          end
        else
          Application.MessageBox(PChar('Password errata per l''utente: '+UpperCase(UserName)+#13+
                                       'Per poter Bloccare/Sbloccare una fattura è necessario '+#13+
                                       'digitare una password valida per l''utente '+UpperCase(UserName)),
                                       'Password Errata',MB_OK+MB_ICONERROR);
    end;
end;



procedure TFrmMain.ImgPagataMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if DM.FatturePAGATA.AsBoolean then ImgPagata.Hint:='Sblocca Fattura'
  else ImgPagata.Hint:='Blocca Fattura';
end;

procedure TFrmMain.NotebookChange(Sender: TObject);
begin
  suiDBEdit1.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  EdCognome.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  EdNome.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  Image2.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  suiDBNavigator3.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  Label1.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  Label2.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);
  Label3.Visible:=(Notebook.ActivePageIndex>0)and(Notebook.ActivePageIndex<4);

  case Notebook.ActivePageIndex of
    0:begin
        glLabel1.HTMLText.Text:='ORAL-DB  - Home Page';
        glLabel4.HTMLText.Text:='';
        AdvOfficePager6.ActivePageIndex:=0;
        NbNavBar.Visible:=False;

        try
          if DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString) then
            begin
              ShellListView2.Root:=PathEXE+'FOLDER';
              ShellListView2.Root:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
              ShellListView2.Repaint;
            end
          else
            begin
              ShellListView2.Root:=PathEXE+'FOLDER';
              ShellListView2.Repaint;
            end;
        except
          Exit;
        end;
      end;

    1:begin
        glLabel1.HTMLText.Text:='';
        glLabel4.HTMLText.Text:='Anagrafica Pazienti';
        NB_DETT_SCHEDA.ActivePageIndex:=0;
        NbNavBar.Visible:=True;
      end;
    2:begin
        glLabel1.HTMLText.Text:='';
        glLabel4.HTMLText.Text:='Cartelle Pazienti';
        UpDateSchema;
        UpDateSchema2;
        BtnNuovaCartella.Enabled:=True;
        BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnCercaCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnConvertiCartella.Enabled:=DM.Cartelle.RecordCount>0;
        BtnSchedaPaziente.Enabled:=DM.Cartelle.RecordCount>0;

        NB_DETT_SCHEDA.Enabled:=DM.Cartelle.RecordCount>0;
        PanelInterventi.Enabled:=DM.Cartelle.RecordCount>0;
        NbNavBar.Visible:=True;
        if DM.Cartellebloccata.AsBoolean then
          begin
            ImgLock.Picture.LoadFromFile('lock.bmp');
            BloccaCartella;
          end
        else
          begin
            ImgLock.Picture.LoadFromFile('Unlock.bmp');
            SbloccaCartella
          end;
      end;
    3:begin
        glLabel1.HTMLText.Text:='';
        glLabel4.HTMLText.Text:='Storico Richiami';
        NbNavBar.Visible:=True;
      end;
    4:begin
        AdvOfficePager1.ActivePageIndex:=0;
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Documenti Emessi';
        BtnConfermaDoc.ShowDisabled:=False;
        BtnAnnullaDoc.ShowDisabled:=False;
        AdvOfficePager1.ActivePageIndex:=0;
        AdvOfficePager3.ActivePageIndex:=0;
        AdvOfficePager7.ActivePageIndex:=0;
        NbNavBar.Visible:=True;

        case AdvOfficePager1.ActivePageIndex of
          0:begin
              BtnModificaDoc.Enabled:=DM.Preventivi.RecordCount>0;
              BtnEliminaDoc.Enabled:=DM.Preventivi.RecordCount>0;
              BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
              BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;

              AdvOfficePager2.Enabled:=DM.Preventivi.RecordCount>0;
              GBCercaPazientePrev.Enabled:=False;
              GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
              GridPreventivi.SetFocus;
            end;
          1:begin
              BtnModificaDoc.Enabled:=DM.Fatture.RecordCount>0;
              BtnEliminaDoc.Enabled:=DM.Fatture.RecordCount>0;
              BtnCercaDoc.Enabled:=DM.Fatture.RecordCount>0;
              BtnStampaDoc.Enabled:=DM.Fatture.RecordCount>0;
              AdvOfficePager3.Enabled:=DM.Fatture.RecordCount>0;
              GridFatture.SetFocus;
            end;
        end;
      end;
    5:begin
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Magazzino Articoli';
        NbNavBar.Visible:=True;
      end;
    6:begin
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Agenda Appuntamenti';

        QryPazienti.Close;
        QryPazienti.Open;
        QryPazienti.First;
        CmbPazienti.Clear;
        while not QryPazienti.Eof do
          begin
            CmbPazienti.Properties.Items.Add(QryPazientiNominativo.AsString);
            QryPazienti.Next;
          end;
        NbNavBar.Visible:=True;
      end;
    7:begin
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Scadenzario';
        SIModificaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
        SIEliminaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
        SIStampaScadenze.Enabled:=DM.Scadenze.RecordCount>0;
        GridScadenze.Height:=Notebook.Height-130;
        NbNavBar.Visible:=True;
        GridScadenze.SetFocus;
      end;

    8:begin
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Operazioni Bancarie';
        SIModificaBanca.Enabled:=DM.Scadenze.RecordCount>0;
        SIEliminaBanca.Enabled:=DM.Scadenze.RecordCount>0;
        SIStampaBanca.Enabled:=DM.Scadenze.RecordCount>0;
        GridBanca.Height:=Notebook.Height-130;
        GridBanca.SetFocus;
        NbNavBar.Visible:=True;
      end;
    9:begin
        Screen.Cursor:=crHourGlass;
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Analisi del Fatturato';
        NbNavBar.Visible:=False;
        DM.FATTURATO.First;
        while not DM.FATTURATO.IsEmpty do
          begin
            DM.FATTURATO.Delete;
            DM.FATTURATO.Next;
          end;
        DM.FATTURATO.First;

        DM.Query1.Close;
        DM.Query1.Open;
        DM.Query1.First;
        while not DM.Query1.Eof do
          begin
            if not DM.Query1Anno.IsNull then
              begin
                DM.FATTURATO.Append;
                DM.FATTURATOANNO.AsInteger:=DM.Query1Anno.AsInteger;
                DM.FATTURATOCALCTOTALE.AsCurrency:=DM.Query1CalcTotale.AsCurrency;
                DM.FATTURATO.Post;
              end;
            DM.Query1.Next;
          end;
        Screen.Cursor:=crDefault;
      end;
    10:begin
        glLabel4.HTMLText.Text:='';
        glLabel1.HTMLText.Text:='Prescrizioni Dispositivi Medici';
        NbNavBar.Visible:=True;
        NbNavBar.ActivePageIndex:=10;
        SINuovaPrescrizione.Enabled:=True;
        SIModPrescrizione.Enabled:=DM.Prescrizioni.RecordCount>0;
        SIEliminaPrescrizione.Enabled:=DM.Prescrizioni.RecordCount>0;
        SIStampaPrescrizione.Enabled:=DM.Prescrizioni.RecordCount>0;
      end;
  end;

  suiTreeView1.Items.Item[Notebook.ActivePageIndex].Selected:=True;
  //suiTreeView1.SetFocus;
  DM.DSPazienti.AutoEdit:=False;
end;

procedure TFrmMain.suitempsuiTreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  //NbNavBar.PageIndex:=Node.AbsoluteIndex-1;
end;

procedure TFrmMain.TimerRefreshTimer(Sender: TObject);
var
  COD_PAZIENTE:Integer;
begin
  if FrmMain.Active then
    begin
      if (DM.Incassi.State in [dsEdit,DsInsert]) then Exit;
      if (DM.Cartelle.State in [dsEdit,DsInsert]) then Exit;
      if (DM.DettCartella.State in [dsEdit,DsInsert]) then Exit;

      if DM.Pazienti.State in [dsBrowse] then
        begin
          COD_PAZIENTE:=DM.PazientiCod_Paziente.AsInteger;
          DM.Pazienti.DisableControls;
          DM.Pazienti.Refresh;
          DM.Pazienti.Locate('Cod_Paziente',COD_PAZIENTE,[]);
          DM.Pazienti.EnableControls;
        end;
    end;
end;

procedure TFrmMain.TrackBar1Change(Sender: TObject);
begin
  Planner.Display.DisplayScale:=TrackBar1.Position;
  DBPlanner1.Display.DisplayScale:=TrackBar1.Position;
end;

procedure TFrmMain.suitempsuiTreeView1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=suiTreeView1.Selected.Index;
  NbNavBar.ActivePageIndex:=suiTreeView1.Selected.Index;
end;

procedure TFrmMain.suitempsuiTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  //if suiTreeView1.Selected.Index<>9 then
  Notebook.ActivePageIndex:=suiTreeView1.Selected.Index;
  NbNavBar.ActivePageIndex:=suiTreeView1.Selected.Index;
end;

procedure TFrmMain.AdvOfficePager1Change(Sender: TObject);
begin
  Case AdvOfficePager1.ActivePageIndex of
    0:begin
        BtnNuovoDoc.Caption:='Nuovo Preventivo';
        BtnModificaDoc.Caption:='Modifica Preventivo';
        BtnEliminaDoc.Caption:='Elimina Preventivo';
        BtnCercaDoc.Caption:='Cerca Preventivo';
        BtnStampaDoc.Caption:='Stampa Preventivo';

        BtnNuovoDoc.Hint:='Inserisci Nuovo Preventivo';
        BtnModificaDoc.Hint:='Modifica Preventivo';
        BtnEliminaDoc.Hint:='Elimina Preventivo';
        BtnCercaDoc.Hint:='Cerca Preventivo';
        BtnStampaDoc.Hint:='Stampa Preventivo';


        BtnE_Fattura.Enabled:=False;
        BtnE_Fattura.ShowDisabled:=False;
        BtnConfermaDoc.ShowDisabled:=False;
        BtnAnnullaDoc.ShowDisabled:=False;


        BtnModificaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        BtnEliminaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;

        GridPreventivi.SetFocus;
      end;


    1:begin
        BtnNuovoDoc.Caption:='Nuova Fattura';
        BtnModificaDoc.Caption:='Modifica Fattura';
        BtnEliminaDoc.Caption:='Elimina Fattura';
        BtnCercaDoc.Caption:='Cerca Fattura';
        BtnStampaDoc.Caption:='Stampa Fattura';

        BtnNuovoDoc.Hint:='Inserisci Nuova Fattura';
        BtnModificaDoc.Hint:='Modifica Fattura';
        BtnEliminaDoc.Hint:='Elimina Fattura';
        BtnCercaDoc.Hint:='Cerca Fattura';
        BtnStampaDoc.Hint:='Stampa Fattura';

        BtnE_Fattura.ShowDisabled:=False;
        BtnConfermaDoc.ShowDisabled:=False;
        BtnAnnullaDoc.ShowDisabled:=False;

        BtnModificaDoc.Enabled:=DM.Fatture.RecordCount>0;
        BtnEliminaDoc.Enabled:=DM.Fatture.RecordCount>0;
        BtnCercaDoc.Enabled:=DM.Fatture.RecordCount>0;
        BtnStampaDoc.Enabled:=DM.Fatture.RecordCount>0;
        BtnE_Fattura.Enabled:=DM.Fatture.RecordCount>0;
        GridDettFatt.Enabled:=DM.Fatture.RecordCount>0;
        NavDettFatt.Enabled:=DM.Fatture.RecordCount>0;
        ImgPagata.Visible:=DM.FatturePAGATA.AsBoolean;

        if DM.FatturePAGATA.AsBoolean then Bloccafattura
        else Sbloccafattura;

        GridFatture.SetFocus;
      end;
  end;
end;

procedure TFrmMain.AdvOfficePager1Changing(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
begin
  if (DM.Fatture.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della FATTURA'+#13+#13+
                                   DM.FattureCalcNumFattura.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla FATTURA'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.DettFatture.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della griglia di dettaglio della FATTURA'+#13+#13+
                                   DM.FattureCalcNumFattura.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla griglia di dettaglio della FATTURA'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.Preventivi.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica del PREVENTIVO'+#13+#13+
                                   DM.PreventiviCalcNumPrev.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate al PREVENTIVO'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.DettPreventivi.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della griglia di dettaglio del PREVENTIVO'+#13+#13+
                                   DM.PreventiviCalcNumPrev.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla griglia di dettaglio del PREVENTIVO'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else
    AllowChange:=True;
end;

procedure TFrmMain.UpDateSchema;
var
  Id_Riga:Integer;
  j:integer;
begin
  if DM.DettCartella.Active then
    begin
      Id_Riga:=DM.DettCartellaId_Intervento.AsInteger;
      with Page2 do
        try
          for j:=0 to ControlCount-1 do    // Iterate
            begin
              if (Controls[j] is TImage)and(Controls[j].Name<>'Image1')then
                (Controls[j] as TImage).Picture.LoadFromFile('Vuota.bmp');

            end;
        except

        end;
      DM.DettCartella.DisableControls;
      DM.DettCartella.First;
      while not DM.DettCartella.Eof do
        begin
          Case DM.DettCartellaNroDente.AsInteger of
            //Primo Quadrante
            11:if DM.DettCartellaEseguito.AsBoolean then
                 Chk11.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk11.Picture.LoadFromFile(PathEXE+'RED.bmp');
            12:if DM.DettCartellaEseguito.AsBoolean then
                 Chk12.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk12.Picture.LoadFromFile(PathEXE+'RED.bmp');
            13:if DM.DettCartellaEseguito.AsBoolean then
                 Chk13.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk13.Picture.LoadFromFile(PathEXE+'RED.bmp');
            14:if DM.DettCartellaEseguito.AsBoolean then
                 Chk14.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk14.Picture.LoadFromFile(PathEXE+'RED.bmp');
            15:if DM.DettCartellaEseguito.AsBoolean then
                 Chk15.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk15.Picture.LoadFromFile(PathEXE+'RED.bmp');
            16:if DM.DettCartellaEseguito.AsBoolean then
                 Chk16.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk16.Picture.LoadFromFile(PathEXE+'RED.bmp');
            17:if DM.DettCartellaEseguito.AsBoolean then
                 Chk17.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk17.Picture.LoadFromFile(PathEXE+'RED.bmp');
            18:if DM.DettCartellaEseguito.AsBoolean then
                 Chk18.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk18.Picture.LoadFromFile(PathEXE+'RED.bmp');

            //Secondo Quadrante
            21:if DM.DettCartellaEseguito.AsBoolean then
                 Chk21.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk21.Picture.LoadFromFile(PathEXE+'RED.bmp');
            22:if DM.DettCartellaEseguito.AsBoolean then
                 Chk22.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk22.Picture.LoadFromFile(PathEXE+'RED.bmp');
            23:if DM.DettCartellaEseguito.AsBoolean then
                 Chk23.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk23.Picture.LoadFromFile(PathEXE+'RED.bmp');
            24:if DM.DettCartellaEseguito.AsBoolean then
                 Chk24.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk24.Picture.LoadFromFile(PathEXE+'RED.bmp');
            25:if DM.DettCartellaEseguito.AsBoolean then
                 Chk25.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk25.Picture.LoadFromFile(PathEXE+'RED.bmp');
            26:if DM.DettCartellaEseguito.AsBoolean then
                 Chk26.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk26.Picture.LoadFromFile(PathEXE+'RED.bmp');
            27:if DM.DettCartellaEseguito.AsBoolean then
                 Chk27.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk27.Picture.LoadFromFile(PathEXE+'RED.bmp');
            28:if DM.DettCartellaEseguito.AsBoolean then
                 Chk28.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk28.Picture.LoadFromFile(PathEXE+'RED.bmp');

            //Terzo Quadramte
            31:if DM.DettCartellaEseguito.AsBoolean then
                 Chk31.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk31.Picture.LoadFromFile(PathEXE+'RED.bmp');
            32:if DM.DettCartellaEseguito.AsBoolean then
                 Chk32.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk32.Picture.LoadFromFile(PathEXE+'RED.bmp');
            33:if DM.DettCartellaEseguito.AsBoolean then
                Chk33.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
              else Chk33.Picture.LoadFromFile(PathEXE+'RED.bmp');
            34:if DM.DettCartellaEseguito.AsBoolean then
                 Chk34.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk34.Picture.LoadFromFile(PathEXE+'RED.bmp');
            35:if DM.DettCartellaEseguito.AsBoolean then
                 Chk35.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk35.Picture.LoadFromFile(PathEXE+'RED.bmp');
            36:if DM.DettCartellaEseguito.AsBoolean then
                 Chk36.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk36.Picture.LoadFromFile(PathEXE+'RED.bmp');
            37:if DM.DettCartellaEseguito.AsBoolean then
                 Chk37.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk37.Picture.LoadFromFile(PathEXE+'RED.bmp');
            38:if DM.DettCartellaEseguito.AsBoolean then
                 Chk38.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk38.Picture.LoadFromFile(PathEXE+'RED.bmp');

            //Quarto Quadramte
            41:if DM.DettCartellaEseguito.AsBoolean then
                 Chk41.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk41.Picture.LoadFromFile(PathEXE+'RED.bmp');
            42:if DM.DettCartellaEseguito.AsBoolean then
                 Chk42.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk42.Picture.LoadFromFile(PathEXE+'RED.bmp');
            43:if DM.DettCartellaEseguito.AsBoolean then
                Chk43.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
              else Chk43.Picture.LoadFromFile(PathEXE+'RED.bmp');
            44:if DM.DettCartellaEseguito.AsBoolean then
                 Chk44.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk44.Picture.LoadFromFile(PathEXE+'RED.bmp');
            45:if DM.DettCartellaEseguito.AsBoolean then
                 Chk45.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk45.Picture.LoadFromFile(PathEXE+'RED.bmp');
            46:if DM.DettCartellaEseguito.AsBoolean then
                 Chk46.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk46.Picture.LoadFromFile(PathEXE+'RED.bmp');
            47:if DM.DettCartellaEseguito.AsBoolean then
                 Chk47.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk47.Picture.LoadFromFile(PathEXE+'\RED.bmp');
            48:if DM.DettCartellaEseguito.AsBoolean then
                 Chk48.Picture.LoadFromFile(PathEXE+'GREEN.bmp')
               else Chk48.Picture.LoadFromFile(PathEXE+'RED.bmp');
          end;
          DM.DettCartella.Next;
        end;

      DM.DettCartella.Locate('Id_Intervento',Id_Riga,[]);
      DM.DettCartella.EnableControls;
      //Image1.Repaint;
    end;
end;


procedure TFrmMain.UpDateSchema2;
var
  Id_Riga:Integer;
  j:integer;
begin
  if DM.DettCartella.Active then
    begin
      Id_Riga:=DM.DettCartellaId_Intervento.AsInteger;
      with Page2 do
        begin
          for j:=0 to ControlCount-1 do    // Iterate
            begin
              if (Controls[j] is TcyLed)then
                begin
                  (Controls[j] as TcyLed).LedValue:=False;
                  (Controls[j] as TcyLed).Visible:=False;
                end;
            end;
        end;
      DM.DettCartella.DisableControls;
      DM.DettCartella.First;
      while not DM.DettCartella.Eof do
        begin
          Case DM.DettCartellaNroDente.AsInteger of
            //Primo Quadrante
            11:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led11.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led11.LedValue:=True;
                    Led11.Visible:=True;
                  end
                else
                  begin
                    Led11.LedColorOn:=clwhite;
                    Led11.LedValue:=False;
                    Led11.Visible:=False;
                  end;
               end;
            12:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led12.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led12.LedValue:=True;
                    Led12.Visible:=True;
                  end
                else
                  begin
                    Led12.LedColorOn:=clwhite;
                    Led12.LedValue:=False;
                    Led12.Visible:=False;
                  end;
               end;

            13:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led13.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led13.LedValue:=True;
                    Led13.Visible:=True;
                  end
                else
                  begin
                    Led13.LedColorOn:=clwhite;
                    Led13.LedValue:=False;
                    Led13.Visible:=False;
                  end;
               end;
            14:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led14.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led14.LedValue:=True;
                    Led14.Visible:=True;
                  end
                else
                  begin
                    Led14.LedColorOn:=clwhite;
                    Led14.LedValue:=False;
                    Led14.Visible:=False;
                  end;
               end;
            15:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led15.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led15.LedValue:=True;
                    Led15.Visible:=True;
                  end
                else
                  begin
                    Led15.LedColorOn:=clwhite;
                    Led15.LedValue:=False;
                    Led15.Visible:=True;
                  end;
               end;
            16:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led16.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led16.LedValue:=True;
                    Led16.Visible:=True;
                  end
                else
                  begin
                    Led16.LedColorOn:=clwhite;
                    Led16.LedValue:=False;
                    Led16.Visible:=True;
                  end;
               end;
            17:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led17.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led17.LedValue:=True;
                    Led17.Visible:=True;
                  end
                else
                  begin
                    Led17.LedColorOn:=clwhite;
                    Led17.LedValue:=False;
                    Led17.Visible:=True;
                  end;
               end;
            18:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led18.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led18.LedValue:=True;
                    Led18.Visible:=True;
                  end
                else
                  begin
                    Led18.LedColorOn:=clwhite;
                    Led18.LedValue:=False;
                    Led18.Visible:=True;
                  end;
               end;

            //Secondo Quadrante
            21:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led21.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led21.LedValue:=True;
                    Led21.Visible:=True;
                  end
                else
                  begin
                    Led21.LedColorOn:=clwhite;
                    Led21.LedValue:=False;
                    Led21.Visible:=False;
                  end;
               end;
            22:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led22.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led22.LedValue:=True;
                    Led22.Visible:=True;
                  end
                else
                  begin
                    Led22.LedColorOn:=clwhite;
                    Led22.LedValue:=False;
                    Led22.Visible:=False;
                  end;
               end;
            23:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led23.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led23.LedValue:=True;
                    Led23.Visible:=True;
                  end
                else
                  begin
                    Led23.LedColorOn:=clwhite;
                    Led23.LedValue:=False;
                    Led23.Visible:=False;
                  end;
               end;
            24:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led24.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led24.LedValue:=True;
                    Led24.Visible:=True;
                  end
                else
                  begin
                    Led24.LedColorOn:=clwhite;
                    Led24.LedValue:=False;
                    Led24.Visible:=False;
                  end;
               end;
            25:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led25.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led25.LedValue:=True;
                    Led25.Visible:=True;
                  end
                else
                  begin
                    Led25.LedColorOn:=clwhite;
                    Led25.LedValue:=False;
                    Led25.Visible:=False;
                  end;
               end;
            26:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led26.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led26.LedValue:=True;
                    Led26.Visible:=True;
                  end
                else
                  begin
                    Led26.LedColorOn:=clwhite;
                    Led26.LedValue:=False;
                    Led26.Visible:=False;
                  end;
               end;
            27:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led27.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led27.LedValue:=True;
                    Led27.Visible:=True;
                  end
                else
                  begin
                    Led27.LedColorOn:=clwhite;
                    Led27.LedValue:=False;
                    Led27.Visible:=False;
                  end;
               end;
            28:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led28.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led28.LedValue:=True;
                    Led28.Visible:=True;
                  end
                else
                  begin
                    Led28.LedColorOn:=clwhite;
                    Led28.LedValue:=False;
                    Led28.Visible:=False;
                  end;
               end;

            //Terzo Quadramte
            31:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led31.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led31.LedValue:=True;
                    Led31.Visible:=True;
                  end
                else
                  begin
                    Led31.LedColorOn:=clwhite;
                    Led31.LedValue:=False;
                    Led31.Visible:=False;
                  end;
               end;
            32:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led32.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led32.LedValue:=True;
                    Led32.Visible:=True;
                  end
                else
                  begin
                    Led32.LedColorOn:=clwhite;
                    Led32.LedValue:=False;
                    Led32.Visible:=False;
                  end;
               end;
            33:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led33.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led33.LedValue:=True;
                    Led33.Visible:=True;
                  end
                else
                  begin
                    Led33.LedColorOn:=clwhite;
                    Led33.LedValue:=False;
                    Led33.Visible:=False;
                  end;
               end;
            34:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led34.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led34.LedValue:=True;
                    Led34.Visible:=True;
                  end
                else
                  begin
                    Led34.LedColorOn:=clwhite;
                    Led34.LedValue:=False;
                    Led34.Visible:=False;
                  end;
               end;
            35:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led35.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led35.LedValue:=True;
                    Led35.Visible:=True;
                  end
                else
                  begin
                    Led35.LedColorOn:=clwhite;
                    Led35.LedValue:=False;
                    Led35.Visible:=False;
                  end;
               end;
            36:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led36.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led36.LedValue:=True;
                    Led36.Visible:=True;
                  end
                else
                  begin
                    Led36.LedColorOn:=clwhite;
                    Led36.LedValue:=False;
                    Led36.Visible:=False;
                  end;
               end;
            37:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led37.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led37.LedValue:=True;
                    Led37.Visible:=True;
                  end
                else
                  begin
                    Led37.LedColorOn:=clwhite;
                    Led37.LedValue:=False;
                    Led37.Visible:=False;
                  end;
               end;
            38:begin
                if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led38.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led38.LedValue:=True;
                    Led38.Visible:=True;
                  end
                else
                  begin
                    Led38.LedColorOn:=clwhite;
                    Led38.LedValue:=False;
                    Led38.Visible:=False;
                  end;
               end;

            //Quarto Quadramte
            41:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led41.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led41.LedValue:=True;
                    Led41.Visible:=True;
                  end
                else
                  begin
                    Led41.LedColorOn:=clwhite;
                    Led41.LedValue:=False;
                    Led41.Visible:=False;
                  end;
            42:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led42.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led42.LedValue:=True;
                    Led42.Visible:=True;
                  end
                else
                  begin
                    Led42.LedColorOn:=clwhite;
                    Led42.LedValue:=False;
                    Led42.Visible:=False;
                  end;
            43:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led43.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led43.LedValue:=True;
                    Led43.Visible:=True;
                  end
                else
                  begin
                    Led43.LedColorOn:=clwhite;
                    Led43.LedValue:=False;
                    Led43.Visible:=False;
                  end;
            44:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led44.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led44.LedValue:=True;
                    Led44.Visible:=True;
                  end
                else
                  begin
                    Led44.LedColorOn:=clwhite;
                    Led44.LedValue:=False;
                    Led44.Visible:=False;
                  end;
            45:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led45.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led45.LedValue:=True;
                    Led45.Visible:=True;
                  end
                else
                  begin
                    Led45.LedColorOn:=clwhite;
                    Led45.LedValue:=False;
                    Led45.Visible:=False;
                  end;
            46:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led46.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led46.LedValue:=True;
                    Led46.Visible:=True;
                  end
                else
                  begin
                    Led46.LedColorOn:=clwhite;
                    Led46.LedValue:=False;
                    Led46.Visible:=False;
                  end;
            47:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led47.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led47.LedValue:=True;
                    Led47.Visible:=True;
                  end
                else
                  begin
                    Led47.LedColorOn:=clwhite;
                    Led47.LedValue:=False;
                    Led47.Visible:=False;
                  end;
            48:if DM.DettCartellaLkpColore.AsInteger>0 then
                  begin
                    Led48.LedColorOn:=DM.DettCartellaLkpColore.AsInteger;
                    Led48.LedValue:=True;
                    Led48.Visible:=True;
                  end
                else
                  begin
                    Led48.LedColorOn:=clwhite;
                    Led48.LedValue:=False;
                    Led48.Visible:=False;
                  end;
          end;
          DM.DettCartella.Next;
        end;

      DM.DettCartella.Locate('Id_Intervento',Id_Riga,[]);
      DM.DettCartella.EnableControls;
    end;
end;


procedure TFrmMain.FormCreate(Sender: TObject);
var
  BCK:String;
  HIDE:String;
  CHK:String;
begin
  if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
       //Imposta l'Agenda raggruppata per dottori
       DM.DBDaySource1.Day:=Now;
       DBDaySource1.Day:=Now;
       Planner.ItemSource:=nil;
       DBPlanner1.ItemSource:=DBDaySource1;
       AdvOfficePager81.TabVisible:=False;
       AdvOfficePager82.TabVisible:=False;
       PagerAgenda.ActivePageIndex:=1;
       UpdateHeadersByDoctor;
    end
  else
    begin
      //Imposta l'Agenda giornaliera senza raggruppamento
      DM.DBDaySource1.Day:=Now;
      DBDaySource1.Day:=Now;
      Planner.ItemSource:=DM.DBDaySource1;
      DBPlanner1.ItemSource:=nil;
      AdvOfficePager81.TabVisible:=False;
      AdvOfficePager82.TabVisible:=False;
      PagerAgenda.ActivePageIndex:=0;
    end;

  MonthCalendar1.Date:=Now;

  EdDataInizio.Date:=LastDayOfPrevMonth+1;
  EdDataFine.Date:=FirstDayOfNextMonth-1;
  EdData1.Date:=LastDayOfPrevMonth+1;
  EdData2.Date:=FirstDayOfNextMonth-1;

  EdInizio.Date:=Now;
  EdFine.Date:=IncDate(Now,7,0,0);

  PathEXE:=ExtractFilePath(Application.ExeName);
  try
    if not DirectoryExists(PathEXE+'FOLDER')then ForceDirectories(PathEXE+'FOLDER');
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        //Se non esite la sezione 'Cartella Allegati' la crea
        if not SectionExists('IMPOSTAZIONI VARIE')then
          begin
            ListeIni.WriteString('IMPOSTAZIONI VARIE','ALLEGATI',PathEXE+'ALLEGATI');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','CERTIFICATI',PathEXE+'CERTIFICATI_RICETTE');

            ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP',PathEXE+'BACKUP');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP-MENSILI',PathEXE+'BACKUP-MENSILI');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOBACKUP','1');

            ListeIni.WriteString('IMPOSTAZIONI VARIE','GIORNI AGENDA','3');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT','15');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE','27');

            ListeIni.WriteString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','1');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','1');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','1');

            ListeIni.WriteString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','1');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','MOSTRA_BOLLO','1');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOREFRESH','0');

            ListeIni.WriteString('IMPOSTAZIONI VARIE','HIDE_SALDATE','0');
            ListeIni.WriteString('IMPOSTAZIONI VARIE','POLIZZA','0000000');
          end
        else
          begin
            if not ValueExists('IMPOSTAZIONI VARIE','ALLEGATI') then
              ListeIni.WriteString('IMPOSTAZIONI VARIE','ALLEGATI',PathEXE+'ALLEGATI');

            if not ValueExists('IMPOSTAZIONI VARIE','CERTIFICATI') then
              ListeIni.WriteString('IMPOSTAZIONI VARIE','CERTIFICATI',PathEXE+'CERTIFICATI_RICETTE');

            if not ValueExists('IMPOSTAZIONI VARIE','BACKUP') then
              ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP',PathEXE+'BACKUP');

            if not ValueExists('IMPOSTAZIONI VARIE','BACKUP-MENSILI') then
              ListeIni.WriteString('IMPOSTAZIONI VARIE','BACKUP-MENSILI',PathEXE+'BACKUP-MENSILI');

            if not ValueExists('IMPOSTAZIONI VARIE','AUTOBACKUP') then
              ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOBACKUP','1');

            if not ValueExists('IMPOSTAZIONI VARIE','GIORNI AGENDA') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','GIORNI AGENDA','3');

            if not ValueExists('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT','15');

            if not ValueExists('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE','27');

            if not ValueExists('IMPOSTAZIONI VARIE','GENERA_SCADENZE') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','1');

            if not ValueExists('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','1');

            if not ValueExists('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','1');

            if not ValueExists('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','SORT-FATT-BY-NUMERO-NOME','1');

            if not ValueExists('IMPOSTAZIONI VARIE','MOSTRA_BOLLO') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','MOSTRA_BOLLO','1');

            if not ValueExists('IMPOSTAZIONI VARIE','AUTOREFRESH') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','AUTOREFRESH','0');

             if not ValueExists('IMPOSTAZIONI VARIE','HIDE_SALDATE') then
               ListeIni.WriteString('IMPOSTAZIONI VARIE','HIDE_SALDATE','0');
          end;

        // Carica le sezioni negli Items delle griglie
        ReadSection('Categorie Terapia',EdCategoriaTerapia.Properties.Items);
        ReadSection('Aliquote IVA',EdAliquotaIva.Properties.Items);
        ReadSection('Aliquote IVA',TcxComboBoxProperties(cxGridDBTableView14AliquotaIva.Properties).Items);
        ReadSection('TIPO_SPESA',TcxComboBoxProperties(cxGridDBTableView14TIPO_SPESA.Properties).Items);

        ReadSection('Aliquote Ritenuta',CmbRitenuta.Properties.Items);

        ReadSection('Diagnosi',TcxComboBoxProperties(cxGridDBTableView10Diagnosi.Properties).Items);
        ReadSection('Trattamenti',TcxComboBoxProperties(cxGridDBTableView10Trattamento.Properties).Items);
        ReadSection('Motivi Richiamo',TcxComboBoxProperties(cxGridDBTableView4Motivo.Properties).Items);

        ReadSection('Operazioni Bancarie',CmbTipoOperazione.Properties.Items);

        if ListeIni.ReadString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE','')='1' then Ricalcola_Scadenze:=True
        else Ricalcola_Scadenze:=False;

        PathAllegati:=ReadString('IMPOSTAZIONI VARIE','ALLEGATI','');
        PathCertificati:=ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');

        PathBackup:=ReadString('IMPOSTAZIONI VARIE','BACKUP','');
        BCK:=ReadString('IMPOSTAZIONI VARIE','AUTOBACKUP','0');
        GG:=StrToInt(ReadString('IMPOSTAZIONI VARIE','GIORNI AGENDA',''));

        HIDE:=ListeIni.ReadString('IMPOSTAZIONI VARIE','HIDE_SALDATE','');
        cxGridDBTableView15Saldato.Visible:=HIDE='0';

        CHK:=ListeIni.ReadString('IMPOSTAZIONI VARIE','RICALCOLA_SCADENZE_STATO_FATTURA','');
        if CHK='1' then Check_Stato_Fattura:=True
        else Check_Stato_Fattura:=False;

        //legge le impostazioni dell'autoRefresh
        SS:=StrToInt(ReadString('IMPOSTAZIONI VARIE','AUTOREFRESH','0'));
        AutoRefresh:=SS>0;
        if AutoRefresh then
          begin
            TimerRefresh.Interval:=SS*1000;
            TimerRefresh.Enabled:=True;
          end;

        //Carica le impostazioni dell'Agenda
        Planner.Display.DisplayUnit:=ReadInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT',15);
        DBPlanner1.Display.DisplayUnit:=ReadInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT',15);

        Planner.Display.DisplayScale:=ReadInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE',30);
        DBPlanner1.Display.DisplayScale:=ReadInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE',30);

        case Planner.Display.DisplayUnit of
          15:RadioGroup1.ItemIndex:=0;
          30:RadioGroup1.ItemIndex:=1;
          60:RadioGroup1.ItemIndex:=2;
        end;

        TrackBar1.Position:=DBPlanner1.Display.DisplayScale;

        Polizza_Assicurativa:=ReadString('IMPOSTAZIONI VARIE','POLIZZA','');

        DM.MemPrivacy.Edit;
        DM.MemPrivacyDottore.AsString:=ReadString('PRIVACY','Responsabile','');
        DM.MemPrivacyDottore2.AsString:=ReadString('PRIVACY','Responsabile','');
        DM.MemPrivacyCitta.AsString:=ReadString('PRIVACY','Citta','');
        DM.MemPrivacy.Post;

        if BCK='1' then AutoBackup:=True
        else AutoBackup:=False;
      end;
  finally
    ListeIni.Free;
  end;

   try
    PathEXE:=ExtractFilePath(Application.ExeName);
    SetIni:=TIniFile.Create(PathEXE+'SET.ini');

    EmailSDI:=SetIni.ReadString('INTERSCAMBIO','Email','sdi01@pec.fatturapa.it');

    MEM_E_FATT.Edit;
    MEM_E_FATTTRASMITTENTE_PAESE.AsString:=SetIni.ReadString('TRASMITTENTE','Paese','');
    MEM_E_FATTTRASMITTENTE_CODICE.AsString:=SetIni.ReadString('TRASMITTENTE','Codice','');
    MEM_E_FATTCEDENTE_PAESE.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','Paese','');

    MEM_E_FATTCEDENTE_PIVA.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','PIVA','');
    MEM_E_FATTCEDENTE_CF.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','CF','');

    MEM_E_FATTDENOMINAZIONE.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','DENOMINAZIONE','');
    MEM_E_FATTREGIME_FISCALE.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','REGIME_FISCALE','');
    MEM_E_FATTINDIRIZZO.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','INDIRIZZO','');

    MEM_E_FATTCAP.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','CAP','');
    MEM_E_FATTCOMUNE.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','COMUNE','');

    MEM_E_FATTPROV.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','PROV','');
    MEM_E_FATTNAZIONE.AsString:=SetIni.ReadString('CEDENTE_PRESTATORE','NAZIONE','');
  finally
    SetIni.Free;
  end;

  //Aggiorna la testata dell'agenda Appuntamenti
  if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      UpdateHeaders;
      FrmMain.Planner.Positions:=GG;
    end;

  DM.QryNominativi.DisableControls;
  DM.QryNominativi.First;
  while not DM.QryNominativi.Eof do
    begin
      CbSoggetti.Properties.Items.Add(DM.QryNominativiSoggetto.AsString);
      //CmbPazienti.Items.Add(DM.QryNominativiSoggetto.AsString);
      DM.QryNominativi.Next;
    end;
  DM.QryNominativi.First;
  DM.QryNominativi.EnableControls;

  DM.Dottori.First;
  while not DM.Dottori.Eof do
    begin
      CmbDottori.Properties.Items.Add(DM.DottoriCognomeNome.AsString);
      TcxComboBoxProperties(cxGridDBTableView10Dottore.Properties).Items.Add(DM.DottoriCognomeNome.AsString);
      TcxComboBoxProperties(cxGridDBTableView2Operatore.Properties).Items.Add(DM.DottoriCognomeNome.AsString);
      DM.Dottori.Next;
    end;
  DM.Dottori.First;

  DM.Utenti.First;
  while not DM.Utenti.Eof do
    begin
      TcxComboBoxProperties(cxGridDBTableView2Operatore.Properties).Items.Add(DM.DottoriCognomeNome.AsString);
      DM.Utenti.Next;
    end;
  DM.Utenti.First;

  DM.ModPag.First;
  while not DM.ModPag.Eof do
    begin
      CmbModPag.Properties.Items.Add(DM.ModPagDescrizione.AsString);
      DM.ModPag.Next;
    end;
  DM.ModPag.First;

  DM.Articoli.DisableControls;
  DM.Articoli.First;
  while not DM.Articoli.Eof do
    begin
      TcxComboBoxProperties(cxGridDBTableView10Trattamento.Properties).Items.Add(DM.ArticoliDescrizione.AsString);
      DM.Articoli.Next;
    end;
  DM.Articoli.EnableControls;


  if DirectoryExists(PathEXE+'Fatture Elettroniche '+IntToStr(CurrentYear))then
    LVFatture.Root:=PathEXE+'Fatture Elettroniche '+IntToStr(CurrentYear)
  else LVFatture.Root:=PathEXE+'FOLDER';


end;

procedure TFrmMain.BtnCercaPazienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaCliente,FrmCercaCliente);
    FrmCercaCliente.ShowModal;
  finally
    FrmCercaCliente.Free;
  end;
end;

procedure TFrmMain.suitempEdCognomeChange(Sender: TObject);
begin
  EdRagioneSociale.Text:=EdCognome.Text+' '+EdNome.Text;
end;

procedure TFrmMain.suitempEdNomeChange(Sender: TObject);
begin
  EdRagioneSociale.Text:=EdCognome.Text+' '+EdNome.Text;
end;

procedure TFrmMain.suitempEdCittaChange(Sender: TObject);
begin
  EdCittaFatt.Text:=EdCittaFatt.Text;
end;

procedure TFrmMain.BtnNuovaAttivitaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAttivita,FrmAttivita);
    if not (FrmAttivita.Attivita.State in [dsEdit,dsInsert]) then FrmAttivita.Attivita.Insert;
    FrmAttivita.Caption:=' Nuova Attività';
    FrmAttivita.ShowModal;
  finally
    FrmAttivita.Free;
  end;
end;

procedure TFrmMain.BtnModificaAttivitaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAttivita,FrmAttivita);
    FrmAttivita.Attivita.Locate('Id_Attivita',DM.AttivitaId_Attivita.AsInteger,[]);
    if not (FrmAttivita.Attivita.State in [dsEdit,dsInsert]) then FrmAttivita.Attivita.Edit;
    FrmAttivita.Caption:=' Modifica Attività';
    FrmAttivita.ShowModal;
  finally
    FrmAttivita.Free;
  end;
end;

procedure TFrmMain.BtnEliminaAttivitaClick(Sender: TObject);
begin
  if DM.Attivita.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare l''Attività svolta con il paziente '+#13+
                                      UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString)+'?'),
                                      'Elimina Attività',MB_YesNo+MB_ICONWARNING)=Id_Yes then  DM.Attivita.Delete;
    end;
end;

procedure TFrmMain.BtnConfermaAttivitaClick(Sender: TObject);
begin
  if (DM.Attivita.State in [dsEdit,dsInsert]) then DM.Attivita.Post;
end;

procedure TFrmMain.BtnAnnullaAttivitaClick(Sender: TObject);
begin
  if (DM.Attivita.State in [dsEdit,dsInsert]) then DM.Attivita.Cancel;
end;

procedure TFrmMain.BtnStampaAttivitaClick(Sender: TObject);
begin
  DM.RptAttivita.LoadFromFile('Report\Attivita.fr3');
  DM.RptAttivita.ShowReport();
end;

procedure TFrmMain.BtnStampaRichiamiClick(Sender: TObject);
begin
  DM.RptRichiami.LoadFromFile('Report\Richiami.fr3');
  DM.RptRichiami.ShowReport();
end;

procedure TFrmMain.BtnNuovoRichiamoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmRichiamo,FrmRichiamo);
    if not (FrmRichiamo.Richiami.State in [dsEdit,dsInsert]) then FrmRichiamo.Richiami.Insert;
    FrmRichiamo.Caption:=' Nuovo Richiamo';
    
    //Inserisce il codice Paziente Corrente
    FrmRichiamo.RichiamiCod_Paziente.AsInteger:=DM.PazientiCod_Paziente.AsInteger;
    FrmRichiamo.ShowModal;
  finally
    FrmRichiamo.Free;
  end;
end;

procedure TFrmMain.BtnModificaRichiamoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmRichiamo,FrmRichiamo);
    FrmRichiamo.Richiami.Locate('Id_Richiamo',dm.RichiamiId_Richiamo.AsInteger,[]);
    if not (FrmRichiamo.Richiami.State in [dsEdit,dsInsert]) then FrmRichiamo.Richiami.Edit;
    FrmRichiamo.Caption:=' Modifica Richiamo';
    FrmRichiamo.ShowModal;
  finally
    FrmRichiamo.Free;
  end;
end;

procedure TFrmMain.BtnConfermaRichiamoClick(Sender: TObject);
begin
  if (DM.Richiami.State in [dsEdit,dsInsert]) then DM.Richiami.Post;
end;

procedure TFrmMain.BtnAnnullaRichiamoClick(Sender: TObject);
begin
  if (DM.Richiami.State in [dsEdit,dsInsert]) then DM.Richiami.Cancel;
end;

procedure TFrmMain.BtnEliminaRichiamoClick(Sender: TObject);
begin
  if DM.Richiami.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare il richiamo del paziente '+#13+
                                      UpperCase(DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString)+'?'),
                                      'Elimina Richiamo',MB_YesNo+MB_ICONWARNING)=Id_Yes then  DM.Richiami.Delete;
    end;
end;

procedure TFrmMain.BtnNuovoDocClick(Sender: TObject);
begin
    if BtnNuovoDoc.Caption='Nuovo Preventivo' then
    try
      Application.CreateForm(TFrmInsPreventivo,FrmInsPreventivo);
      DM.Preventivi.Insert;

      //Forza l'aggiornamento del numeratore corrente e lo assegna al nuovo preventivo
      DM.Impostazioni.Edit;
      DM.QryNextPrev.Close;
      DM.QryNextPrev.ParamByName('iAnno').AsInteger:=YearOf(Now);
      DM.QryNextPrev.Open;
      DM.ImpostazioniNextPreventivo.AsInteger:=DM.QryNextPrevMAXNumPreventivo.AsInteger+1;
      DM.Impostazioni.Post;


      DM.PreventiviNumPreventivo.AsInteger:=DM.ImpostazioniNextPreventivo.AsInteger;
      DM.PreventiviData.AsDateTime:=Now;
      DM.PreventiviAnno.AsInteger:=ExtractYear(Now);
      FrmInsPreventivo.ShowModal;

    finally
      FrmInsPreventivo.Free;
    end


  else if BtnNuovoDoc.Caption='Nuova Fattura' then
    try
      Application.CreateForm(TFrmInsFattura,FrmInsFattura);
      FrmInsFattura.Fatture.Insert;

      //Forza l'aggiornamento del numeratore corrente e lo assegna alla nuova fattura
      DM.Impostazioni.Edit;
      DM.QryNextFatt.Close;
      DM.QryNextFatt.ParamByName('iAnno').AsInteger:=YearOf(Now);
      DM.QryNextFatt.Open;
      DM.ImpostazioniNextFattura.AsInteger:=DM.QryNextFattMAXNumFattura.AsInteger+1;
      DM.Impostazioni.Post;


      FrmInsFattura.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
      FrmInsFattura.FattureData.AsDateTime:=Now;
      FrmInsFattura.FattureAnno.AsInteger:=ExtractYear(Now);
      FrmInsFattura.FattureCODICENAZIONE.AsString:='IT';
      FrmInsFattura.ShowModal;
    finally
      FrmInsFattura.Free;
    end;
end;

procedure TFrmMain.BtnEliminaDocClick(Sender: TObject);
var
  Splash: TForm;
begin
  if BtnEliminaDoc.Caption='Elimina Preventivo' then
    begin
      if DM.Preventivi.RecordCount>0 then
        begin
          if Application.MessageBox(PChar('Si desidera eliminare il preventivo intestato a '+#13+#13+
                                          UpperCase(DM.PreventiviRagioneSociale.AsString)+'?'),
                                          'Elimina Preventivo',MB_YesNo+MB_ICONWARNING)=Id_Yes then
                                            begin
                                              Splash:=ShowSplashWindow(Application.Icon, 'Eliminazione Preventivo in corso... Attendere.',False, Application.MainForm);
                                              try
                                                DM.Preventivi.Delete;
                                                GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
                                              finally
                                                Splash.Free;
                                              end;
                                            end;
        end;
    end
  else if BtnEliminaDoc.Caption='Elimina Fattura' then
    begin
      if DM.Fatture.RecordCount>0 then
        begin
          if Application.MessageBox(PChar('Si desidera eliminare la Fattura intestata a'+#13+#13+
                                          UpperCase(DM.FattureRagioneSociale.AsString)+'?'),
                                          'Elimina Fattura',MB_YesNo+MB_ICONWARNING)=Id_Yes then
                                          begin
                                            Splash:=ShowSplashWindow(Application.Icon, 'Eliminazione Fattura in corso... Attendere.',False, Application.MainForm);
                                              try
                                                DM.Fatture.Delete;
                                                BtnModificaDoc.Enabled:=DM.Fatture.RecordCount>0;
                                                BtnEliminaDoc.Enabled:=DM.Fatture.RecordCount>0;
                                                BtnCercaDoc.Enabled:=DM.Fatture.RecordCount>0;
                                                BtnStampaDoc.Enabled:=DM.Fatture.RecordCount>0;
                                                BtnE_Fattura.Enabled:=DM.Fatture.RecordCount>0;
                                                GridDettFatt.Enabled:=DM.Fatture.RecordCount>0;
                                                NavDettFatt.Enabled:=DM.Fatture.RecordCount>0;
                                              finally
                                                Splash.Free;
                                              end;
                                            end;
        end;
    end;
end;

procedure TFrmMain.btnNuovoArticoloClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmArticolo,FrmArticolo);
    DM.Articoli.Insert;
    FrmArticolo.Caption:='NUOVO ARTICOLO';
    FrmArticolo.ShowModal;
  finally
    FrmArticolo.Free;
  end;
end;

procedure TFrmMain.btnModificaArticoloClick(Sender: TObject);
begin
   try
    Application.CreateForm(TFrmArticolo,FrmArticolo);
    DM.Articoli.Edit;
    FrmArticolo.Caption:='MODIFICA ARTICOLO';
    FrmArticolo.ShowModal;
  finally
    FrmArticolo.Free;
  end;
end;

procedure TFrmMain.btnEliminaArticoloClick(Sender: TObject);
begin
  if DM.Articoli.RecordCount>0 then
      begin
         if Application.MessageBox(PChar('Si desidera eliminare l''articolo:'+#13+
                                          UpperCase(DM.ArticoliDescrizione.AsString)+'?'),
                                          'Elimina Articolo',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Articoli.Delete;
    end;
end;

procedure TFrmMain.btnAnnullaArticoloClick(Sender: TObject);
begin
  if (DM.Articoli.State in [dsEdit,dsInsert]) then DM.Articoli.Cancel;
end;

procedure TFrmMain.btnConfermaArticoloClick(Sender: TObject);
begin
  if (DM.Articoli.State in [dsEdit,dsInsert]) then DM.Articoli.Post;
end;

procedure TFrmMain.btnStampaArticoliClick(Sender: TObject);
begin
  //Si posiziona all'inizio dell'anagrafica articoli
  Screen.Cursor:=crHourGlass;
  DM.Articoli.DisableControls;
  DM.Articoli.First;
  DM.MemArticoli.EmptyTable;
  while not DM.Articoli.Eof do
    begin
      //Inserisce un record nella tabella MemSottoscorta
      DM.MemArticoli.Append;
      DM.MemArticoliCod_Articolo.AsString:=DM.ArticoliCod_Articolo.AsString;
      DM.MemArticoliDescrizione.AsString:=DM.ArticoliDescrizione.AsString;
      DM.MemArticoliCosto.AsCurrency:=DM.ArticoliCosto.AsCurrency;
      DM.MemArticoliPrezzo.AsCurrency:=DM.ArticoliPrezzo.AsCurrency;
      DM.MemArticoliPeso_UM.AsString:=DM.ArticoliPeso_UM.AsString;
      DM.MemArticoliCategoria_Terapia.AsString:=DM.ArticoliCategoria_Terapia.AsString;
      DM.MemArticoliAliquotaIVA.AsInteger:=DM.ArticoliAliquotaIVA.AsInteger;
      DM.MemArticoliBarcode.AsString:=DM.ArticoliBarcode.AsString;
      DM.MemArticoliGiacMin.AsInteger:=DM.ArticoliGiacMin.AsInteger;
      //Apre la Query che conteggia la giacenza attuale
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
      //***********************************************
      DM.MemArticoliGiacenzaAttuale.AsInteger:=DM.QryGiacenzeGiacenza.AsInteger;
      DM.MemArticoliId_Articolo.AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.MemArticoli.Post;
      DM.Articoli.Next;
    end;
  DM.Articoli.First;
  DM.Articoli.EnableControls;
  Screen.Cursor:=crDefault;
  if DM.MemArticoli.RecordCount>0 then
    //Elabora il report di anteprima degli articoli sottoscorta
    begin
      DM.frArticoli.LoadFromFile('Report\ElencoArticoli-2.fr3');
      DM.frArticoli.ShowReport();
    end;
end;


procedure TFrmMain.BtnUscitaClick(Sender: TObject);
begin
  Close;
end;


procedure TFrmMain.Button1Click(Sender: TObject);
begin
//
end;

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Si desidera chiudere l''applicazione?',
                            'Conferma Chiusura',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
      begin
        case DM.Pazienti.State of
          dsEdit:begin
                   if Application.MessageBox(PChar('Attenzione! L''Anagrafe Pazienti è ancora in fase di modifica'+#13+#13+
                                                   'Si desidera salvare le ultime modifiche apportate?'),
                                                   'Conferma Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Pazienti.Post
                   else DM.Pazienti.Cancel;
                 end;
        end;

        if (DM.DettCartella.State in [dsEdit])or(DM.Cartelle.State in [dsEdit])then
          begin
            if Application.MessageBox(PChar('Attenzione! Le cartelle Pazienti sono ancora in fase di modifica'+#13+#13+
                                            'Si desidera salvare le ultime modifiche apportate?'),
                                            'Conferma Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then
              begin
                if DM.Cartelle.State in [dsEdit] then DM.Cartelle.Post;
                if DM.DettCartella.State in [dsEdit] then DM.DettCartella.Post;
              end
            else
              begin
                if DM.Cartelle.State in [dsEdit] then DM.Cartelle.Cancel;
                if DM.DettCartella.State in [dsEdit] then DM.DettCartella.Cancel;
              end;
          end;

        if (DM.DettFatture.State in [dsEdit])or(DM.Fatture.State in [dsEdit])then
          begin
             if Application.MessageBox(PChar('Attenzione! Le Fatture sono ancora in fase di modifica'+#13+#13+
                                             'Si desidera salvare le ultime modifiche apportate?'),
                                             'Conferma Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then
              begin
                if DM.Fatture.State in [dsEdit] then DM.Fatture.Post;
                if DM.DettFatture.State in [dsEdit] then DM.DettFatture.Post;
              end
            else
              begin
                if DM.Fatture.State in [dsEdit] then DM.Fatture.Cancel;
                if DM.DettFatture.State in [dsEdit] then DM.DettFatture.Cancel;
              end;
          end;


        if (DM.DettPreventivi.State in [dsEdit])or(DM.Preventivi.State in [dsEdit])then
          begin
            if Application.MessageBox(PChar('Attenzione! I Preventivi sono ancora in fase di modifica'+#13+#13+
                                            'Si desidera salvare le ultime modifiche apportate?'),
                                            'Conferma Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then
              begin
                if DM.Preventivi.State in [dsEdit] then DM.Preventivi.Post;
                if DM.DettPreventivi.State in [dsEdit] then DM.DettPreventivi.Post;
              end
            else
              begin
                if DM.Preventivi.State in [dsEdit] then DM.Preventivi.Cancel;
                if DM.DettPreventivi.State in [dsEdit] then DM.DettPreventivi.Cancel;
              end;
          end;

         case DM.PlannerTable.State of
            dsEdit:begin
                     if Application.MessageBox(PChar('Attenzione! L''Agenda Appuntamenti è ancora in fase di modifica'+#13+#13+
                                                     'Si desidera salvare le ultime modifiche apportate?'),
                                                     'Conferma Modifiche',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.PlannerTable.Post
                     else DM.PlannerTable.Cancel;
                   end;
         end;
        InChiusura:=True;
        CanClose:=True;
      end
    else CanClose:=False;
end;


procedure TFrmMain.GridAttivitaDblClick(Sender: TObject);
begin
  if DM.Attivita.RecordCount>0 then BtnModificaAttivitaClick(Sender);
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
  MainFormCreated:=True;
end;

procedure TFrmMain.DBAdvGrid7DblClick(Sender: TObject);
begin
  if DM.Articoli.RecordCount>0 then btnModificaArticoloClick(Sender);
end;

procedure TFrmMain.ConvertiinPREVENTIVO1Click(Sender: TObject);
begin
  if DM.Cartelle.RecordCount>0 then
    begin
      if Application.MessageBox('Si desidera emettere un preventivo sulla base della scheda corrente?',
                                'Emetti Preventivo',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
        begin
          //Inserisce la testata del preventivo
          DM.Preventivi.Insert;
          DM.PreventiviData.AsDateTime:=Now;
          DM.PreventiviNumPreventivo.AsInteger:=DM.ImpostazioniNextPreventivo.AsInteger;
          DM.PreventiviCod_Paziente.AsInteger:=DM.CartelleCod_Paziente.AsInteger;
          if DM.Pazienti.Locate('Cod_Paziente',DM.PreventiviCod_Paziente.AsInteger,[])then
            begin
              if DM.PazientiNominativoFatt.AsString<>'' then DM.PreventiviRagioneSociale.AsString:=DM.PazientiNominativoFatt.AsString
              else DM.PreventiviRagioneSociale.AsString:=DM.PazientiCalcNominativo.AsString;

              if DM.PazientiIndirizzoFatt.AsString<>'' then DM.PreventiviIndirizzo.AsString:=DM.PazientiIndirizzoFatt.AsString
              else DM.PreventiviIndirizzo.AsString:=DM.PazientiIndirizzo.AsString;

              if DM.PazientiCapfatt.AsString<>'' then DM.PreventiviCap.AsString:=DM.PazientiCapfatt.AsString
              else DM.PreventiviCap.AsString:=DM.PazientiCap.AsString;

              if DM.PazientiComuneFatt.AsString<>'' then DM.PreventiviCitta.AsString:=DM.PazientiComuneFatt.AsString
              else DM.PreventiviCitta.AsString:=DM.PazientiCitta.AsString;

              if DM.PazientiProvFatt.AsString<>'' then DM.PreventiviProv.AsString:=DM.PazientiProvFatt.AsString
              else DM.PreventiviProv.AsString:=DM.PazientiProv.AsString;

              if DM.PazientiCodFiscFatt.AsString<>'' then DM.PreventiviCodFisc.AsString:=DM.PazientiCodFiscFatt.AsString
              else DM.PreventiviCodFisc.AsString:=DM.PazientiCodiceFiscale.AsString;

              DM.PreventiviPartitaIva.AsString:=DM.PazientiPIva.AsString;
            end;
          DM.Preventivi.Post;

          //Aggiorna il contatore dei preventivi
          DM.Impostazioni.Edit;
          DM.ImpostazioniNextPreventivo.AsInteger:=DM.ImpostazioniNextPreventivo.AsInteger+1;
          DM.Impostazioni.Post;

          //Inserisce i Dettagli del preventivo prelevandoli dalla scheda sanitaria del Paziente
          DM.DettCartella.DisableControls;
          DM.DettCartella.First;
          while not DM.DettCartella.Eof do
            begin
              DM.DettPreventivi.Insert;
              DM.DettPreventiviId_Preventivo.AsInteger:=DM.PreventiviId_Preventivo.AsInteger;
              DM.DettPreventiviQta.AsInteger:=1;
              DM.DettPreventiviDescrizione.AsString:=DM.DettCartellaTrattamento.AsString;
              DM.DettPreventiviPrezzoUnitario.AsCurrency:=DM.DettCartellaImporto.AsCurrency;
              DM.DettPreventivi.Post;
              DM.DettCartella.Next;
            end;

          //Aggiorna il totale del Preventivo appena emesso
          DM.Preventivi.Edit;
          DM.PreventiviTotale.AsCurrency:=DM.SumPrev.SumCollection[0].SumValue;
          DM.Preventivi.Post;
          DM.DettCartella.First;
          DM.DettCartella.EnableControls;

          //Alla fine si posiziona sul Preventivo appena Creato
          AdvOfficePager1.ActivePageIndex:=0;
          Notebook.ActivePageIndex:=4;
          glLabel4.Caption:='Documenti Emessi';
        end;
    end;
end;


procedure TFrmMain.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    begin
      DM.Fatture.DisableControls;
      DM.Fatture.Filtered:=False;
      DM.Fatture.Filter:='Anno='+IntToStr(CurrentYear);
      DM.Fatture.Filtered:=True;
      DM.Fatture.EnableControls;
    end
  else
    begin
      DM.Fatture.DisableControls;
      DM.Fatture.Filter:='';
      DM.Fatture.Filtered:=False;
      DM.Fatture.EnableControls;
    end;
end;

procedure TFrmMain.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    begin
      DM.Preventivi.DisableControls;
      DM.Preventivi.Filtered:=False;
      DM.Preventivi.Filter:='Anno='+IntToStr(CurrentYear);
      DM.Preventivi.Filtered:=True;
      DM.Preventivi.EnableControls;
    end
  else
    begin
      DM.Preventivi.DisableControls;
      DM.Preventivi.Filter:='';
      DM.Preventivi.Filtered:=False;
      DM.Preventivi.EnableControls;
    end;
end;

function TFrmMain.CheckCartelleFatturate:Boolean;
begin
  QryTotCartella.Close;
  QryTotCartella.ParamByName('iCOD_CARTELLA').AsInteger:=DM.CartelleCod_Cartella.AsInteger;
  QryTotCartella.Open;

  QryTotFattura.Close;
  QryTotFattura.ParamByName('iCOD_CARTELLA').AsInteger:=DM.CartelleCod_Cartella.AsInteger;
  QryTotFattura.Open;

  //IL RISULTATO FORNISCE TRUE SE è POSSIBILE INSERIRE ALTRE FATTURE DI ACCONTO
  Result:=QryTotCartellaTotCartella.AsCurrency>QryTotFatturaTotFattura.AsCurrency;
end;


procedure TFrmMain.EmettiFatturaSaldo;
var
  Splash: TForm;
begin
  //Mostra la splash screen di Attesa
  Splash:=ShowSplashWindow(Application.Icon, 'Creazione della Fattura a Saldo in corso... Attendere.',False, Application.MainForm);
    try
      //Mostra la finestra di selezione dell'importo da fatturare
      try
        Application.CreateForm(TFrmSelImporto,FrmSelImporto);
        FrmSelImporto.EdImporto.Enabled:=False;
        if FrmSelImporto.ShowModal=idOk then ImportoFtAcconto:=FrmSelImporto.EdImporto.Value
        else Exit;
      finally
        FrmSelImporto.Free;
      end;

      //Inserisce la testata della fattura
      DM.Fatture.Insert;
      DM.FattureData.AsDateTime:=Now;
      DM.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
      DM.FattureCod_Paziente.AsInteger:=DM.CartelleCod_Paziente.AsInteger;
      DM.Fatturecod_cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
      DM.FattureFattura_Acconto.AsBoolean:=False;

      if DM.Pazienti.Locate('Cod_Paziente',DM.FattureCod_Paziente.AsInteger,[])then
        begin
          if DM.PazientiNominativoFatt.AsString<>'' then DM.FattureRagioneSociale.AsString:=DM.PazientiNominativoFatt.AsString
          else DM.FattureRagioneSociale.AsString:=DM.PazientiCalcNominativo.AsString;

          if DM.PazientiIndirizzoFatt.AsString<>'' then DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzoFatt.AsString
          else DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzo.AsString;

          if DM.PazientiCapfatt.AsString<>'' then DM.FattureCap.AsString:=DM.PazientiCapfatt.AsString
          else DM.FattureCap.AsString:=DM.PazientiCap.AsString;

          if DM.PazientiComuneFatt.AsString<>'' then DM.FattureCitta.AsString:=DM.PazientiComuneFatt.AsString
          else DM.FattureCitta.AsString:=DM.PazientiCitta.AsString;

          if DM.PazientiProvFatt.AsString<>'' then DM.FattureProv.AsString:=DM.PazientiProvFatt.AsString
          else DM.FattureProv.AsString:=DM.PazientiProv.AsString;

          if DM.PazientiCodFiscFatt.AsString<>'' then DM.FattureCodFisc.AsString:=DM.PazientiCodFiscFatt.AsString
          else DM.FattureCodFisc.AsString:=DM.PazientiCodiceFiscale.AsString;

          DM.FattureFattura_Acconto.AsBoolean:=True;
          DM.FattureRiferimento.AsString:='A saldo della Cartella Paziente N°'+
                                           DM.CartelleCod_Cartella.AsString+' del '+DM.CartelleDataCartella.AsString;

          DM.Fatture.Post;
          //Aggiorna il contatore delle fatture
          DM.Impostazioni.Edit;
          DM.ImpostazioniNextFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger+1;
          DM.Impostazioni.Post;

          //Inserisce le righe di dettaglio
          {DM.DettFatture.Insert;
          DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
          DM.DettFattureDescrizione.AsString:='Importo a saldo per le seguenti prestazioni mediche:';
          DM.DettFattureQta.AsInteger:=1;
          DM.DettFatturePrezzoUnitario.AsCurrency:=DM.CartelleImpDaFatturare.AsCurrency;
          DM.DettFatture.Post;

          DM.DettFatture.Append;
          DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
          DM.DettFattureDescrizione.AsString:='====================================';
          DM.DettFatture.Post;}


          //Inserisce i Dettagli della Fattura prelevandoli dalla scheda sanitaria del Paziente
          DM.DettCartella.DisableControls;
          DM.DettCartella.First;
          while not DM.DettCartella.Eof do
            begin
              DM.DettFatture.Append;
              DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
              DM.DettFattureQta.AsInteger:=1;
              DM.DettFattureDescrizione.AsString:=DM.DettCartellaTrattamento.AsString;
              DM.DettFatturePrezzoUnitario.AsCurrency:=DM.DettCartellaImporto.AsCurrency;
              DM.DettFattureNroDente.AsInteger:=DM.DettCartellaNroDente.AsInteger;
              DM.DettFatture.Post;
              DM.DettCartella.Next;
            end;

          //Dopo aver inserito le righe di dettaglio porta in detrazione la/le fatture di acconto già emesse
          DM.Fatt_Cartella.First;
          while not DM.Fatt_Cartella.Eof do
            begin
              DM.DettFatture.Append;
              DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
              DM.DettFattureQta.AsInteger:=1;
              DM.DettFattureDescrizione.AsString:='In detrazione Fatt. Acconto n°'+DM.Fatt_Cartellanumfattura.AsString+' del '+DM.Fatt_CartellaData.AsString;
              DM.DettFatturePrezzoUnitario.AsCurrency:=-1*(DM.Fatt_CartellaCalcTotaleFattura.AsCurrency);
              DM.DettFatture.Post;
              DM.Fatt_Cartella.Next;
            end;
          DM.Fatt_Cartella.First;

          //Aggiorna il totale della Fattura appena emessa
          DM.Fatture.Edit;
          DM.SumFatt.RecalcAll;
          DM.FattureImponibile.AsCurrency:=DM.SumFatt.SumCollection[1].SumValue;
          DM.Fatture.Post;
          DM.DettCartella.First;
          DM.DettCartella.EnableControls;

          //Segna la cartella come Fatturata ed assegna l'id_della fattura o della fattura di accaonto
          DM.Cartelle.Edit;
          DM.CartelleId_fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
          DM.CartelleId_Fattura_Acconto.Clear;
          DM.SumFatt.RecalcAll;
          DM.CartelleImpFatturati.AsCurrency:=DM.SumFatt.SumCollection[0].SumValue;
          DM.CartelleImpDaFatturare.AsCurrency:=0;
          DM.Cartellefatturata.AsBoolean:=True;
          DM.CartelleFatturata_Acconto.AsBoolean:=False;
          DM.Cartellebloccata.AsBoolean:=True;
          DM.Cartelle.Post;

          //Registra la fattura appena emessa tra le somme incassate
          DM.Incassi.Insert;
          DM.IncassiCod_Cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
          DM.IncassiData.AsDateTime:=DM.FattureData.AsDateTime;
          DM.IncassiId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
          DM.IncassiDescrizione.AsString:='Fattura n° '+DM.FattureNumFattura.AsString+' del '+DM.FattureData.AsString;
          DM.IncassiImporto.AsCurrency:=DM.FattureCalcImponibileNetto.AsCurrency;
          DM.Incassi.Post;

          DM.Fatt_Cartella.Close;
          DM.Fatt_Cartella.Open;

          //Genera le scadenze fatture
          if Application.MessageBox(PChar('Si desidera generare le scadenze di incasso per la fattura appena emessa?'+#13+#13+
                                          'Sulla base della modalità di pagamento scelta verranno'+#13+
                                          'create delle scadenze di incasso.'+#13+#13+
                                          'Queste verranno memorizzate nello scadenzario r segnate come PAGATE'+#13+
                                          'ma sarà sempre possibile modificarle.'+#13+#13+
                                          'Si desidera procedere con la genarazione delle scadenze?'),
                                          'Genera Scadenze Incasso',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                begin
                  if DM.ModPag.Locate('Id_ModPag',DM.FattureId_ModPag.AsInteger,[])then GeneraScadenzeFatture;
                end;

          //alla fine chiede se si intende segnare la fattura come pagata
          if Application.MessageBox('Si desidera segnare la fattura appena creata come PAGATA?',
                                    'Conferma Pagamento',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                                     begin
                                       DM.Fatture.Edit;
                                       DM.FatturePAGATA.AsBoolean:=True;
                                       DM.FattureDATA_PAGAMENTO.AsDateTime:=DM.FattureData.AsDateTime;
                                       DM.Fatture.Post;
                                     end;

          //Alla fine si posiziona sulla Fattura appena Creata
          Notebook.ActivePageIndex:=4;
          AdvOfficePager1.ActivePageIndex:=1;
          glLabel4.Caption:='Documenti Emessi';
      end;
    finally
      Splash.Free;
    end;
end;



procedure TFrmMain.ConvertiFATTURA(Id_TipoFattura:Integer);
var
  Splash: TForm;
begin
  Cartella_to_Fattura:=True;
  if DM.Cartelle.RecordCount>0 then
    begin
      //La cartella risulta fatturata totalmente, quindi segnata come "Fatturata=True"
      if (DM.Cartellefatturata.AsBoolean)then
        begin
          if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                          'La cartella selezionata risulta già fatturata.'+#13+
                                          'Si desidera visualizzare la fattura relativa alla scheda corrente?'),
                                          'Visualizza Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                                          begin
                                            DM.Fatture.DisableControls;
                                            DM.Fatture.Locate('Id_Fattura',DM.CartelleId_fattura.AsInteger,[]);
                                            Notebook.ActivePageIndex:=4;
                                            AdvOfficePager1.ActivePageIndex:=1;
                                            glLabel4.Caption:='Documenti Emessi';
                                            DM.Fatture.EnableControls;
                                          end;
        end
      else
        case Id_TipoFattura of
          //Fattura di acconto
          0:if not CheckCartelleFatturate then
              //Controlla che sia possibile emettere ancora fatture di acconto.
              //Vale a dire che l'intera cartella non sia stata fatturata totalmente attraverso più fatture di acconto
              //La funzione confronta L'importo Fatturato relativo alla cartella corrente e l'importo totale della cartella stessa
              begin
                Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                             'Non è possibile emettere ulteriori fatture di acconto poichè'+#13+
                                             'La cartella del paziente è stata fatturata completamente?'),
                                             'Cartella già fatturata',MB_OK+MB_ICONWARNING);
                Exit;
              end
            else if Application.MessageBox('Si desidera emettere Fattura di Acconto relativa della scheda corrente?',
                                           'Emetti Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
              begin
                //Mostra la finestra di selezione dell'importo da fatturare
                try
                  Application.CreateForm(TFrmSelImporto,FrmSelImporto);
                  FrmSelImporto.EdImporto.Enabled:=True;
                  if FrmSelImporto.ShowModal=idOk then ImportoFtAcconto:=FrmSelImporto.EdImporto.Value
                  else Exit;
                finally
                  FrmSelImporto.Free;
                end;

                //Mostra la splash screen di Attesa
                Splash:=ShowSplashWindow(Application.Icon, 'Creazione della Fattura in corso... Attendere.',False, Application.MainForm);
                try
                  //Inserisce la testata della fattura
                  DM.Fatture.Insert;
                  DM.FattureData.AsDateTime:=Now;
                  DM.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
                  DM.FattureCod_Paziente.AsInteger:=DM.CartelleCod_Paziente.AsInteger;
                  DM.Fatturecod_cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                  DM.FattureFattura_Acconto.AsBoolean:=True;

                  if DM.Pazienti.Locate('Cod_Paziente',DM.FattureCod_Paziente.AsInteger,[])then
                    begin
                      if DM.PazientiNominativoFatt.AsString<>'' then DM.FattureRagioneSociale.AsString:=DM.PazientiNominativoFatt.AsString
                      else DM.FattureRagioneSociale.AsString:=DM.PazientiCalcNominativo.AsString;

                      if DM.PazientiIndirizzoFatt.AsString<>'' then DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzoFatt.AsString
                      else DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzo.AsString;

                      if DM.PazientiCapfatt.AsString<>'' then DM.FattureCap.AsString:=DM.PazientiCapfatt.AsString
                      else DM.FattureCap.AsString:=DM.PazientiCap.AsString;

                      if DM.PazientiComuneFatt.AsString<>'' then DM.FattureCitta.AsString:=DM.PazientiComuneFatt.AsString
                      else DM.FattureCitta.AsString:=DM.PazientiCitta.AsString;

                      if DM.PazientiProvFatt.AsString<>'' then DM.FattureProv.AsString:=DM.PazientiProvFatt.AsString
                      else DM.FattureProv.AsString:=DM.PazientiProv.AsString;

                      if DM.PazientiCodFiscFatt.AsString<>'' then DM.FattureCodFisc.AsString:=DM.PazientiCodFiscFatt.AsString
                      else DM.FattureCodFisc.AsString:=DM.PazientiCodiceFiscale.AsString;

                      DM.FattureFattura_Acconto.AsBoolean:=True;
                      DM.FattureRiferimento.AsString:='In Acconto alla Cartella Paziente N°'+
                                                       DM.CartelleCod_Cartella.AsString+' del '+DM.CartelleDataCartella.AsString;

                      DM.FattureId_ModPag.AsInteger:=Id_ModPag;
                      DM.FattureCOD_MOD_PAGAM.AsString:=Id_TipoPag;
                      DM.FattureCAUSALE.AsString:=Causale;

                      DM.Fatture.Post;

                      //Aggiorna il contatore delle fatture
                      DM.Impostazioni.Edit;
                      DM.ImpostazioniNextFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger+1;
                      DM.Impostazioni.Post;

                      //Inserisce le righe di dettaglio
                      DM.DettFatture.Insert;
                      DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                      DM.DettFattureDescrizione.AsString:='Acconto per le seguenti prestazioni mediche:';
                      DM.DettFattureQta.AsInteger:=1;
                      DM.DettFatturePrezzoUnitario.AsCurrency:=ImportoFtAcconto;
                      DM.DettFatture.Post;

                      DM.DettFatture.Append;
                      DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                      DM.DettFattureDescrizione.AsString:='====================================';
                      DM.DettFatture.Post;


                      //Inserisce i Dettagli della Fattura prelevandoli dalla scheda sanitaria del Paziente
                      DM.DettCartella.DisableControls;
                      DM.DettCartella.First;
                      while not DM.DettCartella.Eof do
                        begin
                          DM.DettFatture.Append;
                          DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                          DM.DettFattureDescrizione.AsString:=DM.DettCartellaTrattamento.AsString+': '+
                                                              FormatCurr('€ #,##0.#0',DM.DettCartellaImporto.AsCurrency);
                          //DM.DettFatturePrezzoUnitario.AsCurrency:=DM.DettCartellaImporto.AsCurrency;
                          DM.DettFattureNroDente.AsInteger:=DM.DettCartellaNroDente.AsInteger;
                          DM.DettFatture.Post;
                          DM.DettCartella.Next;
                        end;

                      //Aggiorna il totale della Fattura appena emessa
                      DM.Fatture.Edit;
                      DM.SumFatt.RecalcAll;
                      DM.FattureImponibile.AsCurrency:=DM.SumFatt.SumCollection[1].SumValue;
                      DM.Fatture.Post;
                      DM.DettCartella.First;
                      DM.DettCartella.EnableControls;

                      //Segna la cartella come Fatturata ed assegna l'id_della fattura o della fattura di accaonto
                      DM.Cartelle.Edit;
                      DM.CartelleId_fattura.AsInteger:=-1;

                      //Memorizza l'ultima fattura di acconto emessa relativa alla cartella paziente
                      if CheckCartelleFatturate then
                        DM.CartelleId_Fattura_Acconto.AsInteger:=DM.FattureId_Fattura.AsInteger
                      //se la cartella risulta completamente fatturata allora svuota il campo
                      else DM.CartelleId_Fattura_Acconto.Clear;

                      DM.CartelleImpFatturati.AsCurrency:=DM.CartelleImpFatturati.AsCurrency+DM.FattureImponibile.AsCurrency;
                      QryTotCartella.Close;
                      QryTotCartella.ParamByName('iCOD_CARTELLA').AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                      QryTotCartella.Open;
                      DM.CartelleImpDaFatturare.AsCurrency:=QryTotCartellaTotCartella.AsCurrency-DM.CartelleImpFatturati.AsCurrency;

                      //Se tutti gli importi risultano fatturati
                      if DM.CartelleImpFatturati.AsCurrency=QryTotCartellaTotCartella.AsCurrency then
                        begin
                          DM.Cartellefatturata.AsBoolean:=True;
                          DM.CartelleFatturata_Acconto.AsBoolean:=False;
                          DM.Cartellebloccata.AsBoolean:=True;
                        end
                      else
                        begin
                          DM.Cartellefatturata.AsBoolean:=False;
                          DM.CartelleFatturata_Acconto.AsBoolean:=True;
                          DM.Cartellebloccata.AsBoolean:=False;
                        end;

                      DM.Cartelle.Post;
                      //Registra la fattura appena emessa tra le somme incassate
                      DM.Incassi.Insert;
                      DM.IncassiCod_Cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                      DM.IncassiId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                      DM.IncassiData.AsDateTime:=DM.FattureData.AsDateTime;
                      DM.IncassiDescrizione.AsString:='Ft. Acconto n° '+DM.FattureNumFattura.AsString+' del '+DM.FattureData.AsString;
                      DM.IncassiImporto.AsCurrency:=DM.FattureCalcImponibileNetto.AsCurrency;
                      DM.Incassi.Post;

                      DM.Fatt_Cartella.Close;
                      DM.Fatt_Cartella.Open;

                      //Genera le scadenze fatture
                      if Application.MessageBox(PChar('Si desidera generare le scadenze di incasso per la fattura appena emessa?'+#13+#13+
                                                      'Sulla base della modalità di pagamento scelta verranno'+#13+
                                                      'create delle scadenze di incasso.'+#13+#13+
                                                      'Queste verranno memorizzate nello scadenzario e segnate come PAGATE'+#13+
                                                      'ma sarà sempre possibile modificarle.'+#13+#13+
                                                      'Si desidera procedere con la genarazione delle scadenze?'),
                                                      'Genera Scadenze Incasso',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                        begin
                          if DM.ModPag.Locate('Id_ModPag',DM.FattureId_ModPag.AsInteger,[])then GeneraScadenzeFatture;
                        end;

                      //alla fine chiede se si intende segnare la fattura come pagata
                      if Application.MessageBox('Si desidera segnare la fattura appena creata come PAGATA?',
                                                'Conferma Pagamento',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                                                begin
                                                  DM.Fatture.Edit;
                                                  DM.FatturePAGATA.AsBoolean:=True;
                                                  DM.FattureDATA_PAGAMENTO.AsDateTime:=DM.FattureData.AsDateTime;
                                                  DM.Fatture.Post;
                                                end;

                      //Alla fine si posiziona sulla Fattura appena Creata
                      Notebook.ActivePageIndex:=4;
                      AdvOfficePager1.ActivePageIndex:=1;
                      glLabel4.Caption:='Documenti Emessi';
                  end;
              finally
                Splash.Free;
              end;
            end;


          //fattura Totale
          1://controlla che non ci sia già una fattura di acconto relativa alla cartella selezionata poichè
            //in questo caso bisogna emettere una fattura a saldo
            if DM.CartelleId_Fattura_Acconto.AsInteger>0 then
              begin
                if Application.MessageBox(PChar('Attenzione!'+#13+
                                                'Per la Scheda corrente sono state già emesse delle fatture'+#13+
                                                'per un importo totale di € '+CurrToStr(DM.CartelleImpFatturati.AsCurrency)+#13+#13+
                                                'Si desidera emettere fattura a saldo per l''importo residuo di € '+
                                                CurrToStr(DM.CartelleImpDaFatturare.AsCurrency)+' non acora fatturato?'),
                                                'Emetti Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then EmettiFatturaSaldo;

              end
            else if Application.MessageBox('Si desidera emettere Fattura relativa della scheda corrente?',
                                      'Emetti Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
              begin
                Splash:=ShowSplashWindow(Application.Icon, 'Creazione della Fattura in corso... Attendere.',False, Application.MainForm);
                try
                  //Mostra la finestra di selezione dell'importo da fatturare, e delle informazioni sulle modalità di pagamento
                  try
                    Application.CreateForm(TFrmSelImporto,FrmSelImporto);
                    FrmSelImporto.EdImporto.Enabled:=False;
                    if FrmSelImporto.ShowModal=idOk then ImportoFtAcconto:=FrmSelImporto.EdImporto.Value
                    else Exit;
                  finally
                    FrmSelImporto.Free;
                  end;

                  //Inserisce la testata della fattura
                  DM.Fatture.Insert;
                  DM.FattureData.AsDateTime:=Now;
                  DM.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
                  DM.FattureCod_Paziente.AsInteger:=DM.CartelleCod_Paziente.AsInteger;
                  DM.Fatturecod_cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                  DM.FattureFattura_Acconto.AsBoolean:=False;
                  DM.FattureRiferimento.AsString:='Come da Cartella Paziente N°'+DM.CartelleCod_Cartella.AsString+' del '+DM.CartelleDataCartella.AsString;

                  if DM.Pazienti.Locate('Cod_Paziente',DM.FattureCod_Paziente.AsInteger,[])then
                    begin
                      if DM.PazientiNominativoFatt.AsString<>'' then DM.FattureRagioneSociale.AsString:=DM.PazientiNominativoFatt.AsString
                      else DM.FattureRagioneSociale.AsString:=DM.PazientiCalcNominativo.AsString;

                      if DM.PazientiIndirizzoFatt.AsString<>'' then DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzoFatt.AsString
                      else DM.FattureIndirizzo.AsString:=DM.PazientiIndirizzo.AsString;

                      if DM.PazientiCapfatt.AsString<>'' then DM.FattureCap.AsString:=DM.PazientiCapfatt.AsString
                      else DM.FattureCap.AsString:=DM.PazientiCap.AsString;

                      if DM.PazientiComuneFatt.AsString<>'' then DM.FattureCitta.AsString:=DM.PazientiComuneFatt.AsString
                      else DM.FattureCitta.AsString:=DM.PazientiCitta.AsString;

                      if DM.PazientiProvFatt.AsString<>'' then DM.FattureProv.AsString:=DM.PazientiProvFatt.AsString
                      else DM.FattureProv.AsString:=DM.PazientiProv.AsString;

                      if DM.PazientiCodFiscFatt.AsString<>'' then DM.FattureCodFisc.AsString:=DM.PazientiCodFiscFatt.AsString
                      else DM.FattureCodFisc.AsString:=DM.PazientiCodiceFiscale.AsString;

                      DM.FatturePartitaIVA.AsString:=DM.PazientiPIva.AsString;
                    end;

                  DM.FattureId_ModPag.AsInteger:=Id_ModPag;
                  DM.FattureCOD_MOD_PAGAM.AsString:=Id_TipoPag;
                  DM.FattureCAUSALE.AsString:=Causale;

                  DM.Fatture.Post;

                  //Aggiorna il contatore delle fatture
                  DM.Impostazioni.Edit;
                  DM.ImpostazioniNextFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger+1;
                  DM.Impostazioni.Post;

                  //Inserisce le righe di dettaglio
                  DM.DettCartella.DisableControls;
                  DM.DettCartella.First;
                  while not DM.DettCartella.Eof do
                    begin
                      DM.DettFatture.Insert;
                      DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                      DM.DettFattureQta.AsInteger:=1;
                      DM.DettFattureDescrizione.AsString:=DM.DettCartellaTrattamento.AsString;
                      DM.DettFatturePrezzoUnitario.AsCurrency:=DM.DettCartellaImporto.AsCurrency;
                      DM.DettFattureNroDente.AsInteger:=DM.DettCartellaNroDente.AsInteger;
                      DM.DettFatture.Post;
                      DM.DettCartella.Next;
                    end;
                  //Aggiorna il totale della Fattura appena emessa
                  DM.Fatture.Edit;
                  DM.SumFatt.RecalcAll;
                  DM.FattureImponibile.AsCurrency:=DM.SumFatt.SumCollection[1].SumValue;
                  DM.Fatture.Post;
                  DM.DettCartella.First;
                  DM.DettCartella.EnableControls;

                  //Segna la cartella come Fatturata ed assegna l'id_della fattura o della fattura di accaonto
                  DM.Cartelle.Edit;
                  DM.CartelleId_Fattura_Acconto.AsInteger:=-1;
                  DM.CartelleId_fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;

                  //Si tratta di fattura totale e quindi viene segnata la cartella come Fatturata
                  DM.Cartellefatturata.AsBoolean:=True;
                  DM.CartelleFatturata_Acconto.AsBoolean:=False;
                  DM.Cartellebloccata.AsBoolean:=True;

                  DM.CartelleImpFatturati.AsCurrency:=DM.CartelleImpFatturati.AsCurrency+DM.FattureImponibile.AsCurrency;
                  QryTotCartella.Close;
                  QryTotCartella.ParamByName('iCOD_CARTELLA').AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                  QryTotCartella.Open;
                  DM.CartelleImpDaFatturare.AsCurrency:=QryTotCartellaTotCartella.AsCurrency-DM.CartelleImpFatturati.AsCurrency;

                  DM.Cartelle.Post;

                  //Registra la fattura appena emessa tra le somme incassate
                  DM.Incassi.Insert;
                  DM.IncassiCod_Cartella.AsInteger:=DM.CartelleCod_Cartella.AsInteger;
                  DM.IncassiId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
                  DM.IncassiData.AsDateTime:=DM.FattureData.AsDateTime;
                  DM.IncassiDescrizione.AsString:='Fattura n° '+DM.FattureNumFattura.AsString+' del '+DM.FattureData.AsString;
                  DM.IncassiImporto.AsCurrency:=DM.FattureCalcImponibileNetto.AsCurrency;
                  DM.Incassi.Post;

                  DM.Fatt_Cartella.Close;
                  DM.Fatt_Cartella.Open;

                  //Genera le scadenze fatture
                  if Application.MessageBox(PChar('Si desidera generare le scadenze di incasso per la fattura appena emessa?'+#13+#13+
                                                  'Sulla base della modalità di pagamento scelta verranno'+#13+
                                                  'create delle scadenze di incasso.'+#13+#13+
                                                  'Queste verranno memorizzate nello scadenzario e segnate come PAGATE'+#13+
                                                  'ma sarà sempre possibile modificarle.'+#13+#13+
                                                  'Si desidera procedere con la genarazione delle scadenze?'),
                                                  'Genera Scadenze Incasso',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                        begin
                          if DM.ModPag.Locate('Id_ModPag',DM.FattureId_ModPag.AsInteger,[])then GeneraScadenzeFatture;
                        end;

                  //alla fine chiede se si intende segnare la fattura come pagata
                  if Application.MessageBox('Si desidera segnare la fattura appena creata come PAGATA?',
                                            'Conferma Pagamento',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
                                             begin
                                               DM.Fatture.Edit;
                                               DM.FatturePAGATA.AsBoolean:=True;
                                               DM.FattureDATA_PAGAMENTO.AsDateTime:=DM.FattureData.AsDateTime;
                                               DM.Fatture.Post;
                                             end;

                  //Alla fine si posiziona sulla Fattura appena Creata
                  Notebook.ActivePageIndex:=4;
                  AdvOfficePager1.ActivePageIndex:=1;
                  glLabel4.Caption:='Documenti Emessi';
                finally
                  Splash.Free;
                end;
            end;
        end;
    end;
  Cartella_to_Fattura:=False;
end;


procedure TFrmMain.ConvertiinFATTURA1Click(Sender: TObject);
begin
  ConvertiFATTURA(1);
end;

procedure TFrmMain.BtnModificaDocClick(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to MainMenu.Items.Count-1 do MainMenu.Items.Items[i].Enabled:=False;
  BorderIcons:=[biMinimize,biMaximize];
  case AdvOfficePager1.ActivePageIndex of
    0:if not(DM.Preventivi.State in [dsEdit,dsInsert]) then
        begin
          DM.Preventivi.Edit;
          GBCercaPazientePrev.Enabled:=True;
          GBConvertiPreventivi.Enabled:=False;
          suiDBNavigator7.Enabled:=False;
          suiTreeView1.Enabled:=False;
          Image2.Enabled:=False;
          suiDBNavigator3.Enabled:=False;
          BtnCercaDoc.Enabled:=False;
          BtnStampaDoc.Enabled:=False;

          GridPreventivi.Enabled:=False;
          cxDBTextEdit21.SelectAll;
          cxDBTextEdit21.SetFocus;
        end;
    1:if not(DM.Fatture.State in [dsEdit,dsInsert]) then
        begin
          DM.Fatture.Edit;
          GBCercaPazienteFatt.Enabled:=True;
          suiDBNavigator5.Enabled:=False;
          suiTreeView1.Enabled:=False;
          GridFatture.Enabled:=False;
          BtnNuovoDoc.Enabled:=False;
          BtnEliminaDoc.Enabled:=False;
          BtnCercaDoc.Enabled:=False;
          BtnStampaDoc.Enabled:=False;
          BtnE_Fattura.Enabled:=False;

          Image2.Enabled:=False;
          suiDBNavigator3.Enabled:=False;

          if cxDBTextEdit30.Enabled then
            begin
              cxDBTextEdit30.SelectAll;
              cxDBTextEdit30.SetFocus;
            end;
        end;
  end;
end;



procedure TFrmMain.DeleteScadenzeFatture;
begin
  DM.DELScadenze.ParamByName('iID_FATTURA').AsInteger:=DM.FattureId_Fattura.AsInteger;
  DM.DELScadenze.ExecSQL;
  DM.Scad_Fatture.Refresh;
end;


procedure TFrmMain.DispositiviProtesici1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=0;
    FrmPrescrizione.NBProtesi.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=0;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizionemedica.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.DispositivoOrtodontico1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=1;
    FrmPrescrizione.NBOrtodonzia.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=1;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizioneorto.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.DispositivoOrtodontico2Click(Sender: TObject);
begin
   try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=1;
    FrmPrescrizione.NBOrtodonzia.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=1;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizioneorto.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.DispositivoProtesico1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=0;
    FrmPrescrizione.NBProtesi.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=0;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizionemedica.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.GeneraScadenzeFatture;
var
  ImpRate:Currency;
  i:Integer;
  Scadenza,FineMese:TDateTime;
  GG,MM,YY:String;
begin
  try
    DeleteScadenzeFatture; //Rivedere la procedura delete scadenze fatture
    DM.ModPag.Locate('Id_ModPag',DM.FattureId_ModPag.AsInteger,[]);
    DM.DettModPag.First;
    while not DM.DettModPag.Eof do
      begin
        i:=DM.DettModPag.RecNo;
        DM.Scadenze.Insert;
        DM.ScadenzeId_Soggetto.AsInteger:=DM.FattureCod_Paziente.AsInteger;
        DM.ScadenzeSoggetto.AsString:=DM.FattureRagioneSociale.AsString;
        DM.ScadenzeCod_Documento.AsString:=DM.FattureId_Fattura.AsString;
        DM.ScadenzeDescrizione.AsString:='Fattura n° '+IntToStr(DM.FattureNumFattura.AsInteger)+' del '+
          DM.FattureData.AsString;
        DM.ScadenzeAvere.AsCurrency:=(DM.FattureCalcTotaleFattura.AsCurrency*DM.DettModPagFrazione.AsFloat)/100;

        if DM.ModPagDF_FM.AsString='DF' then
          begin
            DM.ScadenzeDataScadenza.AsDateTime:=IncDate(DM.FattureData.AsDateTime,DM.DettModPagGiorni.AsInteger,0,0);
          end;
        if DM.ModPagDF_FM.AsString='FM' then
          begin
            Scadenza:=IncDay(DM.FattureData.AsDateTime,DM.DettModPagGiorni.AsInteger);
            GG:=IntToStr(DaysPerMonth(ExtractYear(Scadenza),ExtractMonth(Scadenza)));
            MM:=IntToStr(ExtractMonth(Scadenza));
            YY:=IntToStr(ExtractYear(Scadenza));
            DM.ScadenzeDataScadenza.AsDateTime:=StrToDate(GG+'/'+MM+'/'+YY);
          end;

        if DM.ModPagDF_FM.AsString='' then
          begin
            DM.ScadenzeDataScadenza.AsDateTime:=IncDay(DM.FattureData.AsDateTime,DM.DettModPagGiorni.AsInteger);
          end;

        {se la generazione delle scadenze viene richiamata durante la conversione di una cartella in fattura
        le scadenze generate vengono segnate come pagate}

        if Cartella_to_Fattura then DM.ScadenzeSaldato.AsBoolean:=True
        else
          begin
            if DM.FatturePAGATA.AsBoolean then DM.ScadenzeSaldato.AsBoolean:=true
            else DM.ScadenzeSaldato.AsBoolean:=False;
          end;

        DM.Scadenze.Post;
        DM.DettModPag.Next;
      end;
    except
      begin
        Application.MessageBox(PChar('Si è verificato un errore nel calcolo delle scadenze!'+#13+
                                     'E'' Consigliabile ripetere l''inserimento del documento'),
                                     'Scadenze Documento',MB_OK+MB_ICONERROR);
        Exit;
      end;
    end;
end;




procedure TFrmMain.BtnConfermaDocClick(Sender: TObject);
var
  i:integer;
  Scadenze:String;
begin
  for i:=0 to MainMenu.Items.Count-1 do MainMenu.Items.Items[i].Enabled:=True;
  BorderIcons:=[biSystemMenu,biMinimize,biMaximize,biHelp];

  case AdvOfficePager1.ActivePageIndex of
    0:begin
        if(DM.Preventivi.State in [dsEdit,dsInsert])then DM.Preventivi.Post;
        GBCercaPazientePrev.Enabled:=(DM.Preventivi.State in [dsEdit,dsInsert]);
        GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
        suiTreeView1.Enabled:=True;
        Image2.Enabled:=True;
        suiDBNavigator3.Enabled:=True;
        BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        suiDBNavigator7.Enabled:=DM.Preventivi.RecordCount>0;
        AdvOfficePager2.Enabled:=DM.Preventivi.RecordCount>0;
        GBCercaPazientePrev.Enabled:=False;
        GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
        GridPreventivi.Enabled:=True;
      end;
    1:begin
        if(DM.Fatture.State in [dsEdit,dsInsert])then DM.Fatture.Post;
        GBCercaPazienteFatt.Enabled:=False;
        suiDBNavigator5.Enabled:=True;
        suiTreeView1.Enabled:=True;
        AdvOfficePager7.Enabled:=True;
        Image2.Enabled:=True;
        suiDBNavigator3.Enabled:=True;
        BtnCercaDoc.Enabled:=True;
        BtnStampaDoc.Enabled:=True;
        BtnE_Fattura.Enabled:=True;
        GridFatture.Enabled:=True;

        BtnNuovoDoc.Enabled:=True;
        BtnModificaDoc.Enabled:=True;
        BtnEliminaDoc.Enabled:=True;


        //Sarebbe Opportuno Inserire questo codice in una Funzione Dedicata che restituisce un boolean
        //Se la funzione restituisce true le scadenze vengono eliminate e ricalcolate sia che sia stato modificato l'importo,
        //sia nel caso si sia modificata la modalità di pagamento

        //Se false (importo e modalità di pagamento non variate) allora nessun messaggio ivita l'utente a ricalcolare le scadenze

        {try
        ListeIni:=TIniFile.Create('.\Liste.ini');
        Scadenze:=ListeIni.ReadString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','');
        if (Scadenze='1')and(not DM.FattureId_ModPag.IsNull)and(not CheckScadenzeFt(DM.FattureId_Fattura.AsInteger))then
          begin
            //Non ci sono scadenze associate che risultano pagate quindi viene chiesto se si vogliono ricalcolare le scadenze
            if Application.MessageBox('Si desidera generare le scadenze di pagamento per la fattura appena salvata?',
                                      'Genera Scadenze',MB_YesNo+MB_ICONQUESTION)=Id_Yes then GeneraScadenzeFatture;
          end
        else if (Scadenze='1')and(not DM.FattureId_ModPag.IsNull)and(CheckScadenzeFt(DM.FattureId_Fattura.AsInteger))then
          begin
            if Application.MessageBox(Pchar('Attenzione!'+#13+#13+
                                            'La fattura corrente ha delle scadenze associate'+#13+
                                            'ed alcune di esse sono segnate come già pagate.'+#13+
                                            'Si desidera comunque ricalcolare tutte le scadenze?'+#13+#13+
                                            'Premendo SI le scadenze associate alla fattura corrente verranno'+#13+
                                            'eliminate e poi ricalcolate. Premendo NO le scadenze dovranno essere'+#13+
                                            'modificate manualmente'),
                                            'Genera Scadenze',MB_YesNo+MB_ICONWARNING)=Id_Yes then
                                      GeneraScadenzeFatture;
          end;
        finally
          ListeIni.Free;
        end;

        DM.Scad_Fatture.Refresh;}
        //*********************************************************
      end;
  end;
end;

procedure TFrmMain.BtnAnnullaDocClick(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to MainMenu.Items.Count-1 do MainMenu.Items.Items[i].Enabled:=True;
  BorderIcons:=[biSystemMenu,biMinimize,biMaximize,biHelp];
  
  case AdvOfficePager1.ActivePageIndex of
    0:begin
       if(DM.Preventivi.State in [dsEdit,dsInsert])then DM.Preventivi.Post;
        GBCercaPazientePrev.Enabled:=(DM.Preventivi.State in [dsEdit,dsInsert]);
        GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
        suiTreeView1.Enabled:=True;
        Image2.Enabled:=True;
        suiDBNavigator3.Enabled:=True;
        BtnCercaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        BtnStampaDoc.Enabled:=DM.Preventivi.RecordCount>0;
        suiDBNavigator7.Enabled:=DM.Preventivi.RecordCount>0;
        AdvOfficePager2.Enabled:=DM.Preventivi.RecordCount>0;
        GBCercaPazientePrev.Enabled:=False;
        GBConvertiPreventivi.Enabled:=DM.Preventivi.RecordCount>0;
        GridPreventivi.Enabled:=True;
      end;
    1:begin
        if(DM.Fatture.State in [dsEdit,dsInsert])then DM.Fatture.Cancel;
        GBCercaPazienteFatt.Enabled:=False;
        suiDBNavigator5.Enabled:=True;
        AdvOfficePager7.Enabled:=True;
        BtnCercaDoc.Enabled:=True;
        BtnStampaDoc.Enabled:=True;
        BtnE_Fattura.Enabled:=True;
        GridFatture.Enabled:=True;

        BtnNuovoDoc.Enabled:=True;
        BtnModificaDoc.Enabled:=True;
        BtnEliminaDoc.Enabled:=True;

        Image2.Enabled:=True;
        suiDBNavigator3.Enabled:=True;

        suiTreeView1.Enabled:=True;
      end;
  end;
end;

procedure TFrmMain.BtnCercaDocClick(Sender: TObject);
begin
  case AdvOfficePager1.ActivePageIndex of
    0:try
        Application.CreateForm(TFrmCercaDoc,FrmCercaDoc);
        FrmCercaDoc.Caption:='  Cerca Preventivo';
        FrmCercaDoc.NB.PageIndex:=0;
        FrmCercaDoc.ShowModal;
      finally
        FrmCercaDoc.Free;
      end;
    1:try
        Application.CreateForm(TFrmCercaDoc,FrmCercaDoc);
        FrmCercaDoc.Caption:='  Cerca Fattura/Ricevuta';
        FrmCercaDoc.NB.PageIndex:=1;
        FrmCercaDoc.ShowModal;
      finally
        FrmCercaDoc.Free;
      end;
  end;
end;

procedure TFrmMain.BtnStampaDocClick(Sender: TObject);
begin
  case AdvOfficePager1.ActivePageIndex of
    0:begin
        DM.Preventivi.DisableControls;
        DM.frPreventivo.LoadFromFile(PathEXE+'Report\Preventivo.fr3');
        DM.frPreventivo.ShowReport();
        DM.Preventivi.EnableControls;
      end;
    1:begin
        DM.Fatture.DisableControls;
        DM.frFattura.LoadFromFile(PathEXE+'Report\Fattura.fr3');
        DM.frFattura.ShowReport();
        DM.Fatture.EnableControls;
      end;
  end;
end;

procedure TFrmMain.Uscita1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.Backup1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBackup, FrmBackup);
    FrmBackup.ShowModal;
  finally
    FrmBackup.Free;
  end;
end;

procedure TFrmMain.AnagraficaPazienti1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=1;
end;

procedure TFrmMain.CartelleCliniche1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=2;
end;

procedure TFrmMain.AttivitSvolte1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=2;
end;

procedure TFrmMain.StoricoRichiami1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=3;
end;

procedure TFrmMain.DocumentiEmessi1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=4;
end;

procedure TFrmMain.Magazzino1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=5;
end;

procedure TFrmMain.Appuntamenti1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=6;
end;

procedure TFrmMain.NuovoPaziente1Click(Sender: TObject);
begin
  BtnNuovoPazienteClick(Sender);
end;

procedure TFrmMain.NuovaCartellaClinica1Click(Sender: TObject);
begin
  BtnNuovaCartellaClick(Sender);
end;

procedure TFrmMain.NuovaAttivit1Click(Sender: TObject);
begin
  BtnNuovaAttivitaClick(Sender);
end;

procedure TFrmMain.NuovoPreventivo1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmInsPreventivo,FrmInsPreventivo);
    FrmInsPreventivo.ShowModal;
  finally
    FrmInsPreventivo.Free;
  end
end;

procedure TFrmMain.NuovaFattura1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmInsFattura,FrmInsFattura);
    FrmInsFattura.Fatture.Insert;
    FrmInsFattura.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
    FrmInsFattura.FattureData.AsDateTime:=Now;
    FrmInsFattura.ShowModal;
  finally
    FrmInsFattura.Free;
  end;
end;

procedure TFrmMain.NuovoAppuntamento1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmNewAppuntamento,FrmNewAppuntamento);
    FrmNewAppuntamento.PlannerTable.Insert;
    NuovoAppuntamento:=True;
    FrmNewAppuntamento.ShowModal;
  finally
    FrmNewAppuntamento.Free;
  end;
end;


procedure TFrmMain.Nuovolaboratorio1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmLaboratori,FrmLaboratori);
    DM.Laboratori.Insert;
    FrmLaboratori.ShowModal;
  finally
    FrmLaboratori.Free;
  end;
end;

procedure TFrmMain.ImpostazioniAvanzate1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAnagrafiche,FrmAnagrafiche);
    FrmAnagrafiche.ShowModal;
  finally
    FrmAnagrafiche.Free;
  end;
end;


procedure TFrmMain.ORALDB1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TSplashScreen,SplashScreen);
    SplashScreen.ShowModal;
  finally
    SplashScreen.Free;
  end;
end;


procedure TFrmMain.Registrazione1Click(Sender: TObject);
var
  CodiceUtente,CodiceAttivazione:String;
begin
   //VECCHIO CODICE
   {if not FrmMain.RegWarell.CheckRegistered then
    try
      Application.CreateForm(TFrmReg,FrmReg);
      FrmReg.ShowModal;
    finally
      FrmReg.Free;
    end
  else
    begin
      Application.MessageBox(PChar('Attenzione! '+#13+
                                   'La copia del software è stata già registrata/attivata.'),
                                   'Copia Registrata',MB_OK+MB_ICONINFORMATION);
    end;}



  //Mostra la finestra di Registrazione del software se questo non è stato ancora registrato
  try
    Reg:=TRegistry.Create;
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\ORAL-DB',True);
    CodiceUtente:=Reg.ReadString('HDID');
    CodiceAttivazione:=Reg.ReadString('Code');
  finally
    Reg.Free;
  end;


  if (CodiceUtente<>'')and(CodiceAttivazione<>'')and(VerificaCodiceAttivazione(CodiceAttivazione,CodiceUtente))then
    begin
      if Application.MessageBox(PChar('Questa copia del software è stata già registrata.'+#13+
                                      'Si desidera visualizzare i dati di registrazione?'),
                                      'Registrazione Software',MB_YesNo+MB_IconQuestion)=Id_Yes then
        try
          Application.CreateForm(TFrmLicenza,FrmLicenza);
          FrmLicenza.LabelMessage.Visible:=True;
          FrmLicenza.LabelMessage.Font.Color:=clGreen;
          FrmLicenza.ShowModal;
        Finally
          FrmLicenza.Free;
        end;
    end
  else
    try
      Application.CreateForm(TFrmReg,FrmReg);
      FrmReg.ShowModal;
    Finally
      FrmReg.Free;
    end
end;

procedure TFrmMain.RadioGroup1RadioButtonClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:begin
        Planner.Display.DisplayUnit:=15;
        DBPlanner1.Display.DisplayUnit:=15;

      end;
    1:begin
        Planner.Display.DisplayUnit:=30;
        DBPlanner1.Display.DisplayUnit:=30;
      end;
    2:begin
        Planner.Display.DisplayUnit:=60;
        DBPlanner1.Display.DisplayUnit:=60;
      end;
  end;
end;

procedure TFrmMain.RegExpire(Sender: TObject);
begin
  if not RegWarell.CheckRegistered then
    begin
      Application.MessageBox(PChar('Attenzione! Il Periodo di Valutazione del software è terminato. '+
                                   'E'' Necessario effettuare la registrazione affinchè il software possa funzionare'),
                                   'Valutazione Scaduta',MB_OK+MB_ICONWARNING);
      try
        Application.CreateForm(TFrmReg,FrmReg);
        FrmReg.ShowModal;
      finally
        FrmReg.Free;
      end;
    end;
end;

procedure TFrmMain.GBNuovoAppuntamentoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmNewAppuntamento,FrmNewAppuntamento);
    FrmNewAppuntamento.PlannerTable.Insert;
    NuovoAppuntamento:=True;
    FrmNewAppuntamento.ShowModal;
  finally
    FrmNewAppuntamento.Free;
  end;
end;

procedure TFrmMain.GBModificaAppuntamentoClick(Sender: TObject);
begin
  if DM.PlannerTable.RecordCount>0 then
    try
      Application.CreateForm(TFrmNewAppuntamento,FrmNewAppuntamento);
      FrmNewAppuntamento.PlannerTable.Locate('PLANNERKEY',DM.PlannerTablePLANNERKEY.AsString,[]);
      NuovoAppuntamento:=False;
      FrmNewAppuntamento.ShowModal;
    finally
      FrmNewAppuntamento.Free;
    end;
end;


procedure TFrmMain.PlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
begin
  if DM.PlannerTable.RecordCount>0 then
    try
      Application.CreateForm(TFrmNewAppuntamento,FrmNewAppuntamento);
      FrmNewAppuntamento.PlannerTable.Locate('PLANNERKEY',DM.PlannerTablePLANNERKEY.AsString,[]);
      NuovoAppuntamento:=False;
      FrmNewAppuntamento.ShowModal;
    finally
      FrmNewAppuntamento.Free;
    end
end;

procedure TFrmMain.PlannerItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  Planner.FreeItem(Item);
end;

procedure TFrmMain.PlannerItemHint(Sender: TObject; Item: TPlannerItem;
  var Hint: String);
begin
  Hint:=Item.ItemStartTimeStr+' - '+Item.ItemStartTimeStr+#13+Item.CaptionText+#13+#13+
  'Note: '+Item.ItemText;
end;

procedure TFrmMain.PlannerItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  Itm:=Item.Index;
end;

procedure TFrmMain.PlannerItemSelect(Sender: TObject; Item: TPlannerItem);
begin
  GBModificaAppuntamento.Enabled:=item.Index>-1;
  GBEliminaAppuntamento.Enabled:=item.Index>-1;
  Itm:=Item.Index;
  if (item.Index>-1)and(DM.PlannerTable.RecordCount>0)then
    MonthCalendar1.Date:=DM.PlannerTableDATA.AsDateTime
  else MonthCalendar1.Date:=Now;
end;

procedure TFrmMain.PlannerItemUnSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.PlannerPlannerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState; Position, FromSel, FromSelPrecis, ToSel,
  ToSelPrecis: Integer);
begin
  if Key=VK_INSERT then GBNuovoAppuntamentoClick(Sender);
end;

procedure TFrmMain.PlannerPlannerNext(Sender: TObject);
begin
  UpdateHeaders;
end;

procedure TFrmMain.PlannerPlannerPrev(Sender: TObject);
begin
  UpdateHeaders;
end;

procedure TFrmMain.PlannerPlannerSelectCell(Sender: TObject; Index,
  Pos: Integer; var CanSelect: Boolean);
begin
  Itm:=-1;
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.GBEliminaAppuntamentoClick(Sender: TObject);
begin
  if DM.PlannerTable.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare l''Appuntamento?'+#13+#13+
                                      DM.PlannerTableSTARTTIME.AsString+' - '+DM.PlannerTableENDTIME.AsString+#13+
                                      'Oggetto: '+DM.PlannerTableSUBJECT.AsString+#13+
                                      'Annotazioni: '+DM.PlannerTableNOTES.AsString),
                                      'Elimina Appuntamento',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        begin
          DM.PlannerTable.Delete;
          Planner.ItemSource:=nil;
          Planner.ItemSource:=DM.DBDaySource1;
          UpdateHeaders;
        end;
    end;
end;

procedure TFrmMain.PlannerItemEnter(Sender: TObject; Item: TPlannerItem);
begin
  Itm:=Item.Index;
  GBModificaAppuntamento.Enabled:=True;
  GBEliminaAppuntamento.Enabled:=True;
end;

procedure TFrmMain.PlannerItemExit(Sender: TObject; Item: TPlannerItem);
begin
  Itm:=Item.Index;
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.MonthCalendar1Click(Sender: TObject);
begin
  DM.DBDaySource1.Day:=MonthCalendar1.Date;
  DBDaySource1.Day:=MonthCalendar1.Date;
  DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
end;

procedure TFrmMain.GBStampaAgendaClick(Sender: TObject);
begin
  PopStampaAgenda.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.MenuItem1Click(Sender: TObject);
var
  i:integer;
begin
  //Stampa Planner
  {Viene assegnato un unico colore poichè l'effetto gradient non è visualizzabile nel formato html}
  for i:=0 to Planner.Items.Count-1 do Planner.Items[i].Color:=Planner.Items[i].ColorTo;
  Planner.SaveToHTML(PathEXE+'Planner.html');
  ShellExecute(Handle,'Open',PChar(PathEXE+'Planner.html'),'',Nil,SW_SHOWNORMAL);
end;

procedure TFrmMain.MenuItem2Click(Sender: TObject);
begin
  Planner.Print;
end;

procedure TFrmMain.FiltraScadenze;
var
  Flt:String;
begin
  //try
    Flt:='';
    if (EdDataInizio.Date>0)and(EdDataFine.Date>0)then
      Flt:='DataScadenza >= '+''''+DateToStr(EdDataInizio.Date)+''''+' AND DataScadenza <= '+''''+
          DateToStr(EdDataFine.Date)+'''';
      if CbSoggetti.Text<>'' then
        begin
          if Flt<>'' then Flt:=Flt+' AND Soggetto = '''+CbSoggetti.Text+''''
          else Flt:='Soggetto = '''+CbSoggetti.Text+'''';
        end;
      if EdPartita.Text<>'' then
        begin
          if UpperCase(EdPartita.Text)='PARTITE ATTIVE' then
            begin
              if Flt<>'' then Flt:=Flt+' AND HideSaldo>0'
              else Flt:='HideSaldo>0';
            end;
          if UpperCase(EdPartita.Text)='PARTITE PASSIVE' then
            begin
              if Flt<>'' then Flt:=Flt+' AND HideSaldo<0'
              else Flt:='HideSaldo<0';
            end;
        end;
      if ChkSaldate.Checked then
        begin
          if Flt<>'' then Flt:=Flt+' AND Saldato = False'
              else Flt:='Saldato = False';
        end;

      if Flt<>'' then
        begin
          DM.Scadenze.Filter:=Flt;
          DM.Scadenze.Filtered:=True;
        end
      else
        begin
          DM.Scadenze.Filter:='';
          DM.Scadenze.Filtered:=False;
        end;
  SIModificaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
  SIEliminaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
  SIStampaScadenze.Enabled:=DM.Scadenze.RecordCount>0;

  if not (DM.ParScadenze.State in [dsEdit])then DM.ParScadenze.Edit;
  if EdDataInizio.Date >0 then DM.ParScadenzeDalGiono.AsDateTime:=EdDataInizio.Date;
  if EdDataFine.Date > 0 then DM.ParScadenzeAlGiorno.AsDateTime:=EdDataFine.Date;
  DM.ParScadenzeTipoPartita.AsString:=EdPartita.Text;
  DM.ParScadenzeSoggetto.AsString:=CbSoggetti.Text;
  if ChkSaldate.Checked then DM.ParScadenzeNonSaldate.AsString:='Non Saldate'
  else DM.ParScadenzeNonSaldate.AsString:='';
  if (DM.ParScadenze.State in [dsEdit])then DM.ParScadenze.Post;
end;

procedure TFrmMain.FiltraBanca;
var
  Flt:String;
begin
  //try
    Flt:='';
    if (EdData1.Date>0)and(EdData2.Date<=0)then
      Flt:='DataOperazione >= '+''''+DateToStr(EdData1.Date)+'''';

    if (EdData1.Date<=0)and(EdData2.Date>0)then
      Flt:='DataOperazione <= '+''''+DateToStr(EdData2.Date)+'''';

    if (EdData1.Date>0)and(EdData2.Date>0)then
      Flt:='DataOperazione >= '+''''+DateToStr(EdData1.Date)+''''+' AND DataOperazione <= '+''''+DateToStr(EdData2.Date)+'''';

    if CmbTipoOperazione.Text<>'' then
      begin
        if Flt<>'' then Flt:=Flt+' AND Descrizione = '''+CmbTipoOperazione.Text+''''
        else Flt:='Descrizione = '''+CmbTipoOperazione.Text+'''';
      end;

    if CmbTipoPartita.Text<>'' then
      begin
        if UpperCase(CmbTipoPartita.Text)='PARTITE ATTIVE' then
          begin
            if Flt<>'' then Flt:=Flt+' AND HIDESALDO > 0'
            else Flt:='HIDESALDO > 0';
          end;
        if UpperCase(CmbTipoPartita.Text)='PARTITE PASSIVE' then
          begin
            if Flt<>'' then Flt:=Flt+' AND HIDESALDO < 0'
            else Flt:='HIDESALDO < 0';
          end;
      end;

    if Flt<>'' then
      begin
        DM.Banca.Filter:=Flt;
        DM.Banca.Filtered:=True;
      end
    else
      begin
        DM.Banca.Filter:='';
        DM.Banca.Filtered:=False;
      end;
  SIModificaBanca.Enabled:=DM.Banca.RecordCount>0;
  SIEliminaBanca.Enabled:=DM.Banca.RecordCount>0;
  SIStampaBanca.Enabled:=DM.Banca.RecordCount>0;

  if not (DM.ParScadenze.State in [dsEdit])then DM.ParScadenze.Edit;
  if EdData1.Date >0 then DM.ParScadenzeDalGiono.AsDateTime:=EdData1.Date;
  if EdData2.Date > 0 then DM.ParScadenzeAlGiorno.AsDateTime:=EdData2.Date;
  DM.ParScadenzeTipoPartita.AsString:=CmbTipoPartita.Text;
  DM.ParScadenzeSoggetto.AsString:=CmbTipoOperazione.Text;
  if (DM.ParScadenze.State in [dsEdit])then DM.ParScadenze.Post;
end;


procedure TFrmMain.suitempChkFiltraClick(Sender: TObject);
begin
  if ChkFiltra.Checked then FiltraScadenze
  else
    begin
      EdDataInizio.Clear;
      EdDataFine.Clear;
      CbSoggetti.Text:='';
      EdPartita.ItemIndex:=-1;
      ChkSaldate.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end;
   SIModificaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
   SIEliminaScadenza.Enabled:=DM.Scadenze.RecordCount>0;
   SIStampaScadenze.Enabled:=DM.Scadenze.RecordCount>0;
end;

procedure TFrmMain.suitempEdPartitaChange(Sender: TObject);
begin
  if EdPartita.Text<>''then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if (EdDataInizio.Date=0)and(EdDataFine.Date=0)and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end
  else if (EdDataInizio.Date>0)and(EdDataFine.Date>0)then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
end;

procedure TFrmMain.EdDataInizioPropertiesEditValueChanged(Sender: TObject);
begin
  if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;

  if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end

  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text<>'')and(EdPartita.Text='')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze
    end;
end;

procedure TFrmMain.SINuovaScadenzaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmScadenze,FrmScadenze);
    DM.Scadenze.Insert;
    FrmScadenze.ShowModal;
  finally
    FrmScadenze.Free;
  end;
end;

procedure TFrmMain.SIModificaScadenzaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmScadenze,FrmScadenze);
    DM.Scadenze.Edit;
    FrmScadenze.ShowModal;
  finally
    FrmScadenze.Free;
  end;
end;

procedure TFrmMain.SIEliminaScadenzaClick(Sender: TObject);
begin
  if DM.Scadenze.RecordCount>0 then
    begin
      if Application.MessageBox('Si desidera eliminare la scadenza selezionata?',
                                'Elimina Scadenza',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Scadenze.Delete;
    end;
end;

procedure TFrmMain.AdvGlowButton3Click(Sender: TObject);
begin
  //Apre la finestra di carico/scarico magazzino
  try
    Application.CreateForm(TFrmMagazzino,FrmMagazzino);
    DM.Movimenti.Insert;
    DM.MovimentiData.AsDateTime:=Now;
    FrmMagazzino.EdQuantita.Value:=1;
    DM.MovimentiId_Articolo.AsInteger:=DM.ArticoliId_Articolo.AsInteger;
    FrmMagazzino.ShowModal;
  finally
    FrmMagazzino.Free;
  end;
end;

procedure TFrmMain.AdvGlowButton4Click(Sender: TObject);
begin
  PopMagazzino.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.AdvGlowButton5Click(Sender: TObject);
var
  Destinazione:String;
  DATA_PRESCRIZIONE:String;
begin
  if Application.MessageBox('Si desidera salvare la prescrizione corrente in formato PDF'+#13+
                            'e allegarla alla scheda del paziente?',
                            'Salva Prescrizione PDF',MB_YESNO+MB_ICONQUESTION)=Id_Yes then
    try
      FlowPanel1.Visible:=False;
      Path:=ExtractFilePath(Application.ExeName);
      case DM.PrescrizioniTipoPrescrizione.AsInteger of
        0:DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
        1:DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-02.fr3');
      end;
      DATA_PRESCRIZIONE:=FormatDateTime('DD-MM-YYYY',DM.PrescrizioniData.AsDateTime);
      DM.frPrescrizione.PrepareReport(true);
      DM.frPDF.FileName:='Prescrizione di '+DM.PrescrizioniCognome_Nome.AsString+' del '+DATA_PRESCRIZIONE+'.pdf';
      DM.frPDF.OpenAfterExport:=False;
      DM.frPrescrizione.Export(DM.frPDF);

      //Allega il file PDF della Prescrizione
      try
        Screen.Cursor:=crHourGlass;
        ListeIni:=TIniFile.Create('.\Liste.ini');
        PathCertificati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');
        if PathCertificati<>''then
          begin
            DM.Pazienti.Locate('Cod_Paziente',DM.PrescrizioniCod_Paziente.AsString,[]);
            if not DirectoryExists(PathCertificati)then ForceDirectories(PathCertificati);
            if not DirectoryExists(PathCertificati+'\'+DM.PrescrizioniCod_Paziente.AsString)then
              CreateDir(PathCertificati+'\'+DM.PrescrizioniCod_Paziente.AsString);
            Destinazione:=PathCertificati+'\'+DM.PrescrizioniCod_Paziente.AsString;
            CopyFile(PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),PChar(Destinazione+'\'+DM.frPDF.FileName),True);
            ShellListView2.Root:=PathEXE+'FOLDER';
            ShellListView2.Root:=Destinazione;
            ShellListView2.Repaint;
            ShellExecute(Handle,'Open',PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),'',Nil,SW_SHOWNORMAL);
          end;
        Screen.Cursor:=crDefault;
        FlowPanel1.Visible:=True;
      except
        FlowPanel1.Visible:=True;
        Screen.Cursor:=crDefault;
        Application.MessageBox('Errore salvataggio file?','Errore',MB_OK+MB_IConError);
      end;
    except
      FlowPanel1.Visible:=True;
      Screen.Cursor:=crDefault;
      Application.MessageBox(PChar('Attenzione!'+#13+#13+
                             'Si è verificato un errore in fase di creazione del file PDF'+#13+#13+
                             'E'' probabile che il paziente:'+#13+#13+
                             DM.PrescrizioniCognome_Nome.AsString+#13+#13+
                             'non abbia una cartella allegati nella quale'+#13+
                             'salvare il file PDF della prescrizione corrente.'+#13+#13+
                             'Durante la creazione di una prescrizione è sempre consigliato'+#13+
                             'selezionare il paziente prelevandolo dall''Archivio pazienti'),
                             'Salva Prescrizione PDF',MB_OK+MB_ICONERROR);

    end;
end;


procedure TFrmMain.SIModPrescrizioneClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    case DM.PrescrizioniTipoPrescrizione.AsInteger of
      0:begin
          FrmPrescrizione.NB.ActivePageIndex:=0;
          FrmPrescrizione.NBProtesi.PageIndex:=0;
        end;
      1:begin
          FrmPrescrizione.NB.ActivePageIndex:=1;
          FrmPrescrizione.NBOrtodonzia.PageIndex:=0;
        end;
    end;
    DM.Prescrizioni.Edit;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.Azzeralagiacenzadellarticolocorrente1Click(
  Sender: TObject);
begin
  //Annulla tutte le movimentazioni dell'articolo corrente
  if DM.DettMovimenti.RecordCount>0 then
    begin
      if Application.MessageBox(Pchar('Attenzione!'+#13+#13+
                                      'Si stanno per azzerare tutte le movimentazioni dell''articolo.'+#13+#13+
                                      Uppercase(DM.ArticoliDescrizione.AsString)+#13+#13+
                                      'Si desidera proseguire con l''operazione?'),
                                      'Svuota Magazzino',MB_YesNo+MB_ICONWARNING)=Id_Yes then
        begin
          DM.DettMovimenti.DisableControls;
          DM.DettMovimenti.First;
          while not DM.DettMovimenti.IsEmpty do
            begin
              DM.DettMovimenti.Delete;
              DM.DettMovimenti.Next;
            end;
          DM.DettMovimenti.EnableControls;
        end;
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
    end;
end;

procedure TFrmMain.Azzeralegiacenzedellinteromagazzino1Click(
  Sender: TObject);
begin
  //Svuota tutta la tabella dei movimenti di magazzino
  if DM.Movimenti.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                      'Si sta per azzerare l''intero magazzino articoli.'+#13+
                                      'L''anagrafica degli articoli rimarrà inalterata ma tutte le quantità in giacenza verranno portate a ZERO'+#13+
                                      'Si desidera proseguire con l''operazione?'),
                                      'Svuota Magazzino',MB_YESNO+MB_ICONWARNING)=Id_Yes then
        begin
          DM.Movimenti.DisableControls;
          DM.Movimenti.First;
          while not DM.Movimenti.IsEmpty do
            begin
              DM.Movimenti.Delete;
              DM.Movimenti.Next;
            end;
          DM.Movimenti.EnableControls;
        end;
      DM.DettMovimenti.Close;
      DM.DettMovimenti.Open;
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
    end;
end;



procedure TFrmMain.BloccaCartella;
begin
  suiDBEdit24.Enabled:=False;
  suiDBEdit25.Enabled:=False;
  cxDBTextEdit18.Enabled:=False;
  cxDBButtonEdit1.Enabled:=False;
  cxDBCheckBox5.Enabled:=False;
  cxDBCheckBox6.Enabled:=False;
  cxGrid7.Enabled:=False;
  suiDBNavigator10.Enabled:=False;
  suiDBMemo2.Enabled:=False;
  suiDBMemo1.Enabled:=False;
  ShellListView1.Enabled:=False;
  AdvGlowButton1.Enabled:=False;
  cxGrid11.Enabled:=False;
  PanelInterventi.Enabled:=False;
  BtnModificaCartella.Enabled:=False;
  BtnEliminaCartella.Enabled:=False;
  BtnConvertiCartella.Enabled:=False;
end;


procedure TFrmMain.Bloccafattura;
begin
  cxDBTextEdit29.Enabled:=False;
  cxDBDateEdit5.Enabled:=False;
  cxDBTextEdit30.Enabled:=False;
  GBCercaPazienteFatt.Enabled:=False;
  cxDBTextEdit31.Enabled:=False;
  cxDBTextEdit32.Enabled:=False;
  cxDBTextEdit33.Enabled:=False;
  cxDBTextEdit34.Enabled:=False;
  cxDBComboBox2.Enabled:=False;
  EdCodiceFiscale.Enabled:=False;
  EdPartitaIva.Enabled:=False;
  cxDBComboBox3.Enabled:=False;
  cxDBTextEdit37.Enabled:=False;
  cxDBTextEdit38.Enabled:=False;
  cxDBLookupComboBox1.Enabled:=False;
  cxDBLookupComboBox2.Enabled:=False;
  cxDBTextEdit87.Enabled:=False;
  cxDBCheckBox2.Enabled:=False;
  cxDBCheckBox3.Enabled:=False;
  cxDBCheckBox4.Enabled:=False;
  GridDettFatt.Enabled:=False;
  NavDettFatt.Enabled:=False;
  suiDBMemo5.Enabled:=False;
  suiDBMemo9.Enabled:=False;
  cxGrid10.Enabled:=False;
  AdvOfficePage18.Enabled:=False;
  cxDBTextEdit39.Enabled:=False;
  cxDBTextEdit40.Enabled:=False;
  cxDBTextEdit41.Enabled:=False;
  cxDBTextEdit42.Enabled:=False;
  cxDBTextEdit43.Enabled:=False;
  cxDBTextEdit44.Enabled:=False;
  cxDBTextEdit45.Enabled:=False;
  EdDataPagamento.Enabled:=False;
  CmbRitenuta.Enabled:=False;
  ImgPagata.Picture.LoadFromFile('lock.bmp');

  if (NbNavBar.ActivePageIndex=4)and(AdvOfficePager1.ActivePageIndex=1)then
    begin
      BtnModificaDoc.Enabled:=False;
      BtnEliminaDoc.Enabled:=False;
    end;
end;



procedure TFrmMain.SbloccaCartella;
begin
  suiDBEdit24.Enabled:=True;
  suiDBEdit25.Enabled:=True;
  cxDBTextEdit18.Enabled:=True;
  cxDBButtonEdit1.Enabled:=True;
  cxDBCheckBox5.Enabled:=True;
  cxDBCheckBox6.Enabled:=True;
  cxGrid7.Enabled:=True;
  suiDBNavigator10.Enabled:=True;
  suiDBMemo2.Enabled:=True;
  suiDBMemo1.Enabled:=True;
  ShellListView1.Enabled:=True;
  AdvGlowButton1.Enabled:=True;
  cxGrid11.Enabled:=True;
  PanelInterventi.Enabled:=True;
  BtnModificaCartella.Enabled:=True;
  BtnEliminaCartella.Enabled:=True;
  BtnConvertiCartella.Enabled:=True;
end;

procedure TFrmMain.Sbloccafattura;
begin
  cxDBTextEdit29.Enabled:=True;
  cxDBDateEdit5.Enabled:=True;
  cxDBTextEdit30.Enabled:=True;
  GBCercaPazienteFatt.Enabled:=True;
  cxDBTextEdit31.Enabled:=True;
  cxDBTextEdit32.Enabled:=True;
  cxDBTextEdit33.Enabled:=True;
  cxDBTextEdit34.Enabled:=True;
  cxDBComboBox2.Enabled:=True;
  EdCodiceFiscale.Enabled:=True;
  EdPartitaIva.Enabled:=True;
  cxDBComboBox3.Enabled:=True;
  cxDBTextEdit37.Enabled:=True;
  cxDBTextEdit38.Enabled:=True;
  cxDBLookupComboBox1.Enabled:=True;
  cxDBLookupComboBox2.Enabled:=True;
  cxDBTextEdit87.Enabled:=True;
  cxDBCheckBox2.Enabled:=True;
  cxDBCheckBox3.Enabled:=True;
  cxDBCheckBox4.Enabled:=True;
  GridDettFatt.Enabled:=True;
  NavDettFatt.Enabled:=True;
  suiDBMemo5.Enabled:=True;
  suiDBMemo9.Enabled:=True;
  cxGrid10.Enabled:=True;
  AdvOfficePage18.Enabled:=True;
  cxDBTextEdit39.Enabled:=True;
  cxDBTextEdit40.Enabled:=True;
  cxDBTextEdit41.Enabled:=True;
  cxDBTextEdit42.Enabled:=True;
  cxDBTextEdit43.Enabled:=True;
  cxDBTextEdit44.Enabled:=True;
  cxDBTextEdit45.Enabled:=True;
  EdDataPagamento.Enabled:=True;
  CmbRitenuta.Enabled:=True;
  ImgPagata.Picture.LoadFromFile('unlock.bmp');

  if (NbNavBar.ActivePageIndex=4)and(AdvOfficePager1.ActivePageIndex=1)then
    begin
      BtnModificaDoc.Enabled:=True;
      BtnEliminaDoc.Enabled:=True;
    end;
end;

procedure TFrmMain.Scadenzario1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=7;
end;

procedure TFrmMain.ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position+10;
end;

procedure TFrmMain.ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position-10;
end;

procedure TFrmMain.SEARCH_TRATTAMENTOExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModCartella:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.NuovaScadenza1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmScadenze,FrmScadenze);
    DM.Scadenze.Insert;
    FrmScadenze.ShowModal;
  finally
    FrmScadenze.Free;
  end;
end;

procedure TFrmMain.SIStampaScadenzeClick(Sender: TObject);
begin
  LinkScadenze.ReportTitle.Text:='RIEPILOGO SCADENZE';
  dxPrinter.CurrentLink:=LinkScadenze;
  dxPrinter.Preview(True,nil);
end;

procedure TFrmMain.SloccaCartella;
begin
  suiDBEdit24.Enabled:=False;
  suiDBEdit25.Enabled:=False;
  cxDBTextEdit18.Enabled:=False;
  cxDBButtonEdit1.Enabled:=False;
  cxDBCheckBox5.Enabled:=False;
  cxDBCheckBox6.Enabled:=False;
  cxGrid7.Enabled:=False;
  suiDBNavigator10.Enabled:=False;
  suiDBMemo2.Enabled:=False;
  suiDBMemo1.Enabled:=False;
  ShellListView1.Enabled:=False;
  AdvGlowButton1.Enabled:=False;
  cxGrid11.Enabled:=False;
  PanelInterventi.Enabled:=False;
  BtnModificaCartella.Enabled:=False;
  BtnEliminaCartella.Enabled:=False;
  BtnConvertiCartella.Enabled:=False;
end;

procedure CreateBitmap(Width,Height:Word;Color:TColor;const FileName:TFileName);
var
 bmp:TBitmap;
begin
 bmp:=TBitmap.Create;
 try
   bmp.PixelFormat:=pf24bit;
   bmp.Width:=Width;
   bmp.Height:=Height;
   bmp.Canvas.Brush.Color:=Color;
   bmp.Canvas.Ellipse(0,0,Height, Width);
   bmp.SaveToFile(FileName);
 finally
   bmp.Free;
 end;
end;


procedure TFrmMain.MenuItem3Click(Sender: TObject);
var
  i:Integer;
  NomeFile:String;
begin
  DM.TempScheda.Active:=True;
  DM.TempScheda.First;
  while not DM.TempScheda.IsEmpty do
    begin
      DM.TempScheda.Delete;
      DM.TempScheda.Next;
    end;
  DM.TempScheda.First;


  ForceDirectories(PathEXE+'Temp');

  DM.DettCartella.DisableControls;
  DM.DettCartella.First;
  while not DM.DettCartella.Eof do
    begin
      DM.TempScheda.Edit;
      case DM.DettCartellaNroDente.AsInteger of

      //Primo Quadrante
        11:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk11.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        12:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk12.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        13:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk13.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        14:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk14.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        15:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk15.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        16:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk16.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        17:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk17.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;
        18:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk18.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        //Secondo Quadrante
        21:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk21.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        22:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk22.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        23:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk23.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        24:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk24.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        25:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk25.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        26:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk26.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        27:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk27.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;
        28:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk28.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        //Terzo Quadrante
        31:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk31.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        32:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk32.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        33:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk33.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        34:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk34.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        35:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk35.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        36:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk36.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        37:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk37.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;
        38:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk38.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        //Quarto Quadrante
        41:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk41.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        42:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk42.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        43:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk43.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        44:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk44.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        45:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk45.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        46:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk46.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;

        47:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk47.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;
        48:if not DM.DettCartellaLkpColore.IsNull then
             begin
               NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
               CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
               DM.TempSchedaChk48.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
             end;
      end;
    DM.TempScheda.Post;
    DM.DettCartella.Next;
  end;
  DM.DettCartella.First;
  DM.DettCartella.EnableControls;

  DM.RptCartella.LoadFromFile('Report\Cartella.fr3');
  DM.RptCartella.ShowReport();
end;

procedure TFrmMain.MenuItem4Click(Sender: TObject);
var
  Path:String;
  NomeFile:String;
begin
  if DM.Cartelle.RecordCount>0 then
    begin
      DM.TempScheda.First;
      while not DM.TempScheda.IsEmpty do
        begin
          DM.TempScheda.Delete;
          DM.TempScheda.Next;
        end;
      DM.TempScheda.First;

      DM.DettCartella.DisableControls;
      DM.DettCartella.First;
      while not DM.DettCartella.Eof do
        begin
          DM.TempScheda.Edit;
          Case DM.DettCartellaNroDente.AsInteger of

            //Primo Quadrante
            11:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk11.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            12:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk12.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            13:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk13.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            14:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk14.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            15:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk15.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            16:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk16.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            17:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk17.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;
            18:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk18.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            //Secondo Quadrante
            21:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk21.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            22:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk22.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            23:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk23.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            24:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk24.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            25:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk25.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            26:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk26.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            27:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk27.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;
            28:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk28.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            //Terzo Quadrante
            31:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk31.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            32:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk32.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            33:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk33.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            34:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk34.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            35:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk35.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            36:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk36.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            37:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk37.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;
            38:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk38.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            //Quarto Quadrante
            41:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk41.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            42:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk42.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            43:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk43.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            44:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk44.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            45:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk45.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            46:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk46.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;

            47:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk47.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;
            48:if not DM.DettCartellaLkpColore.IsNull then
                 begin
                   NomeFile:=PathEXE+'Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp';
                   CreateBitmap(25,25,(DM.DettCartellaLkpColore.AsInteger),NomeFile);
                   DM.TempSchedaChk48.LoadFromFile('Temp\'+IntToStr(DM.DettCartellaLkpColore.AsInteger)+'.bmp');
                 end;
          end;
        DM.TempScheda.Post;
        DM.DettCartella.Next;
      end;

        //Converte il report in formato PDF
        try
          Path:=ExtractFilePath(Application.ExeName);
          DM.RptCartella2.LoadFromFile('Report\Cartella.fr3');
          DM.RptCartella2.PrepareReport(true);
          DM.frPDF.FileName:='Cartella di '+DM.CartelleCalcPaziente.AsString+' ['+IntToStr(CurrentYear)+'].pdf';
          DM.RptCartella2.Export(DM.frPDF);
          ShellExecute(Handle,'Open',PChar(ExtractFilePath(Application.ExeName)+DM.frPDF.FileName),'',Nil,SW_SHOWNORMAL);
        except
          //In caso di errore manda in stampa il report normale
          DM.RptCartella.LoadFromFile('Report\Cartella.fr3');
          DM.RptCartella.ShowReport();
        end;
      DM.DettCartella.First;
      DM.DettCartella.EnableControls;
    end;
end;

procedure TFrmMain.BtnConvertiCartellaClick(Sender: TObject);
begin
  PopConverti.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.FormResize(Sender: TObject);
begin
  GridScadenze.Height:=Notebook.Height-130;
  if DM.Dottori.RecordCount >0 then
    DBPlanner1.PositionWidth:=DBPlanner1.Width div DM.Dottori.RecordCount;

  //Ridimensiona l'immagine della HomePage
  image4.Width:=Round(Notebook.Width /2.5);
  image4.Left:=(Notebook.Width div 2)-(image4.Width div 2);
  image4.Top:=BtnPAZIENTI.Top;

  cxGridDBTableView11DATA.Visible:=Width>1360;
  cxGridDBTableView11NUM_PREV.Visible:=Width>1360;

  cxGridDBTableView13Data.Visible:=Width>1360;
  cxGridDBTableView13NumFattura.Visible:=Width>1360;

 if Width>1360 then
   begin
     //se lo schermo è maggiore di 766 mostra tutte le colonne della griglia Prescrizioni
     cxGridDBTableView16Num_Prescrizione.Visible:=True;
     cxGridDBTableView16Data.Visible:=True;
     cxGridDBTableView16TipoPrescrizione.Visible:=True;
     cxGridDBTableView16Cognome_Nome.Visible:=True;
     cxGridDBTableView16Laboratorio.Visible:=True;
     cxGridDBTableView16Data_Consegna.Visible:=True;
   end
 else
   begin
     //altrimenti mostra solo N°, data, e Paziente/laboratorio
      cxGridDBTableView16Num_Prescrizione.Visible:=True;
      cxGridDBTableView16Data.Visible:=True;
      cxGridDBTableView16Cognome_Nome.Visible:=False;
      cxGridDBTableView16TipoPrescrizione.Visible:=True;
      cxGridDBTableView16Laboratorio.Visible:=True;
      cxGridDBTableView16Data_Consegna.Visible:=False;
   end;

   if Width>1440 then
     begin
       cxGridDBTableView21Img.Visible:=True;
       cxGridDBTableView21Img.Caption:='';
       cxGridDBTableView21Cartella.Visible:=True;
       cxGridDBTableView21Dottore.Visible:=True;
       if CxCheckBox1.Checked then
         begin
           cxGridDBTableView21Cartella.Caption:='CARTELLA';
           cxGridDBTableView21Dottore.Caption:='DOTTORE';
           cxGridDBTableView21Img.Visible:=True;
         end
       else
         begin
           cxGridDBTableView21Cartella.Caption:='';
           cxGridDBTableView21Dottore.Caption:='';
           cxGridDBTableView21Img.Visible:=False;
         end;
       cxGridDBDaFatturare.Width:=300;
       cxGridDBFatturate.Width:=300;
     end
   else
     begin
       cxGridDBTableView21Img.Visible:=False;
       cxGridDBTableView21Cartella.Visible:=False;
       cxGridDBTableView21Dottore.Visible:=False;
       cxGridDBTableView21Cartella.Caption:='';
       cxGridDBTableView21Dottore.Caption:='';
       cxGridDBTableView21Img.Visible:=True;
       cxGridDBDaFatturare.Width:=250;
       cxGridDBFatturate.Width:=250;
     end;
  ScrollBox1.Height:=cxGrid9.Height;
  cxGridDBDaFatturare.Width:=250;
  cxGridDBFatturate.Width:=250;
end;



procedure TFrmMain.SINuovaBancaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBanca,FrmBanca);
    DM.Banca.Insert;
    FrmBanca.ShowModal;
  finally
    FrmBanca.Free;
  end;
end;

procedure TFrmMain.SINuovaPrescrizioneClick(Sender: TObject);
begin
  PopPrescrizioni.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.SIModificaBancaClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmBanca,FrmBanca);
    DM.Banca.Edit;
    FrmBanca.ShowModal;
  finally
    FrmBanca.Free;
  end;
end;

procedure TFrmMain.SICercaPrescrizioneClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaPrescrizione,FrmCercaPrescrizione);
    FrmCercaPrescrizione.ShowModal;
  finally
    FrmCercaPrescrizione.Free;
  end;
end;

procedure TFrmMain.SIEliminaBancaClick(Sender: TObject);
begin
  if DM.Banca.RecordCount>0 then
    begin
      if Application.MessageBox('Si desidera eliminare l''operazione selezionata?',
                                'Elimina Operazione',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Banca.Delete;
    end;
end;

procedure TFrmMain.SIEliminaPrescrizioneClick(Sender: TObject);
begin
  if DM.Prescrizioni.RecordCount>0 then
    begin
      if Application.MessageBox(PChar('Si desidera eliminare la prescrizione:'+#13+#13+
                                      'Prescrizione N° '+IntToStr(DM.PrescrizioniNum_Prescrizione.AsInteger)+' del '+DateToStr(DM.PrescrizioniData.AsDateTime)+#13+
                                      'Relativa al Paziente: '+DM.PrescrizioniCognome_Nome.AsString+'?'),
                                      'Elimina Prescrizione',MB_YesNo+MB_ICONWARNING)=Id_Yes then DM.Prescrizioni.Delete;
    end;
end;

procedure TFrmMain.SIStampaBancaClick(Sender: TObject);
begin
  LinkBanca.ReportTitle.Text:='MOVIMENTI BANCARI';
  dxPrinter.CurrentLink:=LinkBanca;
  dxPrinter.Preview(True,nil);
end;

procedure TFrmMain.EdData1PropertiesChange(Sender: TObject);
begin
  if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
  if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end;
end;

procedure TFrmMain.EdData2PropertiesChange(Sender: TObject);
begin
  if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
  if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end;
end;

procedure TFrmMain.EdData1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
  if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end;
end;

procedure TFrmMain.EdData2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
  if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end;
end;

procedure TFrmMain.EdData1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      if (EdData1.Text<>'')or(EdData2.Text<>'')then
        begin
         if ChkFiltra2.Checked then FiltraBanca;
        end;
      if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
        begin
          ChkFiltra2.Checked:=False;
          DM.Banca.Filter:='';
          DM.Banca.Filtered:=False;
        end;
    end;
end;

procedure TFrmMain.EdData2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      if (EdData1.Text<>'')or(EdData2.Text<>'')then
        begin
         if ChkFiltra2.Checked then FiltraBanca;
        end;
      if(EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
        begin
          ChkFiltra2.Checked:=False;
          DM.Banca.Filter:='';
          DM.Banca.Filtered:=False;
        end;
    end;
end;

procedure TFrmMain.EdDataInizioExit(Sender: TObject);
begin
  if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text<>'')and(EdPartita.Text='')then
    if ChkFiltra.Checked then FiltraScadenze
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text<>'')then
    if ChkFiltra.Checked then FiltraScadenze
end;

procedure TFrmMain.EdDataInizioKeyPress(Sender: TObject; var Key: Char);
begin
 if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text<>'')and(EdPartita.Text='')then
    if ChkFiltra.Checked then FiltraScadenze
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text<>'')then
    if ChkFiltra.Checked then FiltraScadenze
end;

procedure TFrmMain.GestioneAnnidifatturazione1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmGestDoc,FrmGestDoc);
    FrmGestDoc.ShowModal;
  finally
    FrmGestDoc.Free;
  end;
end;

procedure TFrmMain.AnnidiFatturazione1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmGestDoc,FrmGestDoc);
    FrmGestDoc.ShowModal;
  finally
    FrmGestDoc.Free;
  end;
end;

procedure TFrmMain.DBAdvGrid5EllipsClick(Sender: TObject; ACol,
  ARow: Integer; var S: String);
begin
  //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.DBAdvGrid6EllipsClick(Sender: TObject; ACol,
  ARow: Integer; var S: String);
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

procedure TFrmMain.AllegaFile1Click(Sender: TObject);
var
  Path:String;
  NomeFile:String;
  Destinazione:String;
  i:Integer;
begin
  try
    ListeIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Liste.ini');
    PathAllegati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','ALLEGATI','');
    if PathAllegati<>''then
      begin
        if not DirectoryExists(PathAllegati)then ForceDirectories(PathAllegati);
        //ShellListView1.Root:=PathAllegati;
        if ODialog.Execute then
          begin
            if not DirectoryExists(PathAllegati+'\'+DM.CartelleCod_Cartella.AsString)then CreateDir(PathAllegati+'\'+DM.CartelleCod_Cartella.AsString);
            Destinazione:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString;
            for i:=0 to ODialog.Files.Count-1 do
              begin
                NomeFile:=ExtractFileName(ODialog.Files.Strings[i]);
                CopyFile(PChar(ODialog.Files.Strings[i]),PChar(Destinazione+'\'+NomeFile),True);
              end;
            ShellListView1.Root:=PathEXE+'FOLDER';
            ShellListView1.Root:=Destinazione;
          end
        else
          ShellListView1.Root:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString;
      end;
  finally
    ListeIni.Free;
  end;
end;


procedure TFrmMain.AllegaCertificato(Sender: TObject);
var
  Path:String;
  NomeFile:String;
  Destinazione:String;
  i:Integer;
begin
  try
    ListeIni:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Liste.ini');
    PathCertificati:=ListeIni.ReadString('IMPOSTAZIONI VARIE','CERTIFICATI','');
    if PathCertificati<>''then
      begin
        if not DirectoryExists(PathCertificati)then ForceDirectories(PathCertificati);
        //ShellListView2.Root:=PathCertificati;
        if ODialog.Execute then
          begin
            if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
            Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
            for i:=0 to ODialog.Files.Count-1 do
              begin
                NomeFile:=ExtractFileName(ODialog.Files.Strings[i]);
                CopyFile(PChar(ODialog.Files.Strings[i]),PChar(Destinazione+'\'+NomeFile),True);
              end;
            ShellListView2.Root:=PathEXE+'FOLDER';
            ShellListView2.Root:=Destinazione;
          end
        else
          ShellListView2.Root:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
      end;
  finally
    ListeIni.Free;
  end;
end;



procedure TFrmMain.cxLabel1Click(Sender: TObject);
begin
  AllegaFile1Click(Sender);
end;

procedure TFrmMain.AdvGlowButton1Click(Sender: TObject);
begin
  AllegaFile1Click(Self);
end;

procedure TFrmMain.PlannerItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with Planner.CreateItem do
    begin
     {take the settings from the Default item - just set properties below}
     ItemBegin:=FromSel;
     ItemEnd:=ToSel;
     ItemPos:=Position;
     Text.Text:='Appuntamento creato il '+Formatdatetime('dd/mm/yyyy',Now)+' alle '+Formatdatetime('hh:mm',Now);
     Update;
  end;
end;


procedure TFrmMain.PlannerPlannerDblClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  //keybd_event(VK_INSERT,0,0,0);
  with Planner.CreateItem do
    begin
     {take the settings from the Default item - just set properties below}
     ItemBegin:=FromSel-32;
     ItemEnd:=ItemBegin+2;
     ItemPos:=Position;
     Text.Text:='Appuntamento creato il '+Formatdatetime('dd/mm/yyyy',Now)+' alle '+Formatdatetime('hh:mm',Now);
     Update;
     PlannerItemDblClick(Sender,Planner.Items.Selected);
  end;
end;

procedure TFrmMain.VisualizzaAnamnesiClick(Sender: TObject);
begin
  if DM.Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsString,[])then
    try
      Application.CreateForm(TFrmConsenso,FrmConsenso);
      FrmConsenso.ShowModal;
    finally
      FrmConsenso.Free;
    end
end;

procedure TFrmMain.VisualizzaSchedaCliente1Click(Sender: TObject);
begin
  //Si posiziona Sulla Scheda Cliente
  if DM.PlannerTableID_PAZIENTE.AsInteger>0 then
    begin
      //se esiste un ID_PAZIENTE cerca il Paziente per Codice Paziente
      if DM.Pazienti.Locate('Cod_Paziente',DM.PlannerTableID_PAZIENTE.AsInteger,[])then
        begin
          if Application.MessageBox(PChar('Si desidera visualizzare la scheda del paziente:'+#13+#13+
                                          DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString+'?'),
                                         'Scheda Paziente',MB_YesNo+MB_ICONQUESTION)=Id_Yes then Notebook.ActivePageIndex:=1;
        end;
    end
    //Altrimenti effettua una query sulla comcatenazione Cognome e Nome
  else if DM.PlannerTablePAZIENTE.AsString<>'' then
    begin
      DM.QryPazienti.Close;
      DM.QryPazienti.ParamByName('iNominativo').AsString:=UpperCase(DM.PlannerTablePAZIENTE.AsString);
      DM.QryPazienti.Open;
      if not DM.QryPazienti.IsEmpty then
        if DM.Pazienti.Locate('Cod_Paziente',DM.QryPazientiCod_Paziente.AsInteger,[])then
          begin
            if Application.MessageBox(PChar('Si desidera visualizzare la scheda del paziente:'+#13+#13+
                                            DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString+'?'),
                                           'Scheda Paziente',MB_YesNo+MB_ICONQUESTION)=Id_Yes then Notebook.ActivePageIndex:=1;
          end;
    end;
end;

procedure TFrmMain.UpdateHeadersByDoctor;
begin
  if DM.Dottori.RecordCount>0 then
    begin
      DBDaySource1.ResourceMap.Clear;
      DM.Dottori.First;
      while not DM.Dottori.Eof do
        begin
          DBDaySource1.ResourceMap.Add;
          DBDaySource1.ResourceMap[DM.Dottori.RecNo-1].DisplayName:=DM.DottoriCognomeNome.AsString;
          DBDaySource1.ResourceMap[DM.Dottori.RecNo-1].ResourceIndex:=DM.DottoriId_Dottore.AsInteger;
          DM.Dottori.Next;
        end;
      DM.Dottori.First;

      if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
        begin
          Planner.Positions:=GG;
          Planner.ItemSource:=DM.DBDaySource1;
          UpdateHeaders;
        end
      else if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
        begin
          if DM.Dottori.RecordCount>0 then DBPlanner1.Positions:=DM.Dottori.RecordCount
          else DBPlanner1.Positions:=1;
          DBDaySource1.Active:=False;
          DBPlanner1.ItemSource:=DBDaySource1;
          DBPlanner1.PositionWidth:=DBPlanner1.Width div DM.Dottori.RecordCount;
          DBDaySource1.Active:=True;
        end;
    end;
end;


procedure TFrmMain.MenuItem5Click(Sender: TObject);
begin
  //Apre la finestra di ricerca articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModCartella:=True;
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.MenuItem6Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=0;
    FrmPrescrizione.NBProtesi.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=0;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizionemedica.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.MenuItem7Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=1;
    FrmPrescrizione.NBOrtodonzia.PageIndex:=0;
    DM.Prescrizioni.Insert;
    //0= PROTESI DENTALE, 1= ORTODONZIA, 2 = ORTODONZIA MODILE, 3=ORTODONZIA FISSA, 4=ORTODONZIA POSIZIONATORE
    DM.PrescrizioniTipoPrescrizione.AsInteger:=1;
    DM.PrescrizioniData.AsDateTime:=Now;
    DM.PrescrizioniNum_Prescrizione.AsInteger:=DM.Impostazioninextprescrizioneorto.AsInteger;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.Image2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaCliente,FrmCercaCliente);
    FrmCercaCliente.ShowModal;
  finally
    FrmCercaCliente.Free;
  end;
end;

procedure TFrmMain.AnagraficaLaboratori1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmLaboratori,FrmLaboratori);
    FrmLaboratori.ShowModal;
  finally
    FrmLaboratori.Free;
  end;
end;

procedure TFrmMain.AnagraficaMedici1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmDottori,FrmDottori);
    FrmDottori.ShowModal;
  finally
    FrmDottori.Free;
  end;
end;

procedure TFrmMain.NuovoMedico1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmDottori,FrmDottori);
    DM.Dottori.Append;
    FrmDottori.ShowModal;
  finally
    FrmDottori.Free;
  end;
end;


procedure TFrmMain.GridUtentiDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  GridUtenti.Canvas.Font.Color:=clBlack;
  GridUtenti.Canvas.Brush.Color:=DM.DottoriColore.AsInteger;
  GridUtenti.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  GridUtenti.Canvas.Font.Color:=clBlack;
end;




procedure TFrmMain.FiltraAppuntamenti(Sender: TObject);
var
  Flt:String;
  Paziente:String;
  ID_Paziente:Integer;
begin
  Screen.Cursor:=crHourGlass;

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

  if (CmbDottori.Text<>'')and(DM.Dottori.Locate('CognomeNome',CmbDottori.Text,[loCaseInsensitive]))then
    if Flt<>'' then Flt:=Flt+' AND ID_DOTTORE = '''+DM.DottoriId_Dottore.AsString+''''
      else Flt:='ID_DOTTORE = '''+DM.DottoriId_Dottore.AsString+'''';

  if Flt<>'' then
    begin
      DM.PlannerTable.Filter:=Flt;
      DM.PlannerTable.Filtered:=True;
    end
  else
    begin
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
    end;

  if DM.PlannerTable.RecordCount>0 then DBAdvGrid2DblClick(Self);
  DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);

  Screen.Cursor:=crDefault;
end;



procedure TFrmMain.suitempsuiCheckBox1Click(Sender: TObject);
begin
  CanScroll:=False;
  Planner.ItemSource:=nil;
  DBPlanner1.ItemSource:=nil;

  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end
  else
    begin
      Screen.Cursor:=crHourGlass;
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
      Screen.Cursor:=crDefault;
    end;

  if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      Planner.Positions:=GG;
      Planner.ItemSource:=DM.DBDaySource1;
      UpdateHeaders;
    end
  else if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      if DM.Dottori.RecordCount>0 then DBPlanner1.Positions:=DM.Dottori.RecordCount
      else DBPlanner1.Positions:=1;
      DBPlanner1.ItemSource:=DBDaySource1;
      DBPlanner1.PositionWidth:=DBPlanner1.Width div DM.Dottori.RecordCount;
    end;
  CanScroll:=True;
end;

procedure TFrmMain.Prescrizioni1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=10;
end;

procedure TFrmMain.PrevToFattura;
begin
  //Disabilita il ricalcolo delle scadenze poichè questa procedura verrebbe ripetuta per ogni riga di dettaglio inserita in fattura
  ConvertPreventivo:=True;

  //Converte il preventivo corrente in fattura
  DM.Fatture.Insert;

  //Testata Fattura
  DM.FattureNumFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger;
  DM.FattureData.AsDateTime:=Now;
  DM.FattureAnno.AsInteger:=ExtractYear(Now);

  DM.FattureCod_Paziente.AsInteger:=DM.PreventiviCod_Paziente.AsInteger;
  DM.FattureNote.AsString:='Come da Preventivo '+DM.PreventiviNumPreventivo.AsString+' del '+DM.PreventiviData.AsString+#13+#13+
                            DM.PreventiviNote.AsString;
  DM.FattureImponibile.AsCurrency:=DM.PreventiviTotale.AsCurrency;

  DM.FattureRagioneSociale.AsString:=DM.PreventiviRagioneSociale.AsString;
  DM.FattureIndirizzo.AsString:=DM.PreventiviIndirizzo.AsString;
  DM.FattureCap.AsString:=DM.PreventiviCap.AsString;
  DM.FattureCitta.AsString:=DM.PreventiviCitta.AsString;
  DM.FattureProv.AsString:=DM.PreventiviProv.AsString;
  DM.FattureCodFisc.AsString:=DM.PreventiviCodFisc.AsString;
  DM.FatturePartitaIVA.AsString:=DM.PreventiviPartitaIva.AsString;
  DM.FattureModalitaPagamento.AsString:='';
  DM.FattureNumPreventivo.AsString:=DM.PreventiviNumPreventivo.AsString+'/'+DM.PreventiviAnno.AsString;
  DM.Fatture.Post;

  //Dettagli Fattura
  Dm.DettPreventivi.DisableControls;
  Dm.DettPreventivi.First;
  while not Dm.DettPreventivi.Eof do
    begin
      DM.DettFatture.Insert;
      //DM.DettFattureId_Fattura.AsInteger:=DM.FattureId_Fattura.AsInteger;
      DM.DettFattureCod_Articolo.AsString:=DM.DettPreventiviCod_Articolo.AsString;
      DM.DettFattureQta.AsFloat:=DM.DettPreventiviQta.AsFloat;
      DM.DettFattureDescrizione.AsString:=DM.DettPreventiviDescrizione.AsString;
      DM.DettFatturePrezzoUnitario.AsCurrency:=DM.DettPreventiviPrezzoUnitario.AsCurrency;
      DM.DettFattureSconto.AsFloat:=DM.DettPreventiviSconto.AsFloat;
      DM.DettFattureAliquotaIva.AsFloat:=DM.DettPreventiviAliquotaIva.AsFloat;
      DM.DettFatture.Post;
      Dm.DettPreventivi.Next;
    end;
  Dm.DettPreventivi.First;
  Dm.DettPreventivi.EnableControls;

  //Alla fine Aggiorna il contatore Fatture
  DM.Impostazioni.Edit;
  DM.ImpostazioniNextFattura.AsInteger:=DM.ImpostazioniNextFattura.AsInteger+1;
  DM.Impostazioni.Post;

  //Forza il ricalcolo dei totali fattura entrando in edit e postando subito dopo
  DM.Fatture.DisableControls;
  DM.Fatture.Edit;
  DM.Fatture.Post;
  DM.Fatture.EnableControls;

  //Chiede se si vuol visualizzare anteprima di stampa

  if Application.MessageBox(PChar('Conversione Avvenuta con successo.'+#13+
                                  'Si desidera visualizzare l''anteprima di stampa della fattura appena emessa?'),
                                  'Anteprima Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
    begin
      AdvOfficePager1.ActivePageIndex:=1;
      DM.frFattura.LoadFromFile(PathEXE+'Report\Fattura.fr3');
      DM.frFattura.ShowReport();
    end;

  //alla fine reimposta il valore della variabile ConvertPreventivo a False a significare che la procedura è terminata
  ConvertPreventivo:=False;
end;

procedure TFrmMain.suitempsuiButton6Click(Sender: TObject);
begin
  if DM.Preventivi.RecordCount>0 then
    begin
      if DM.Fatture.Locate('NumPreventivo',(DM.PreventiviNumPreventivo.AsString+'/'+DM.PreventiviAnno.AsString),[])then
        begin
          if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                          'Il preventivo corrente è stato già convertito in fattura.'+#13+
                                          'Si desidera visualizzare la relativa fattura?'),
                                          'Visualizza Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then AdvOfficePager1.ActivePageIndex:=1;
        end
      else
        begin
          if Application.MessageBox('Si desidera convertire il preventivo corrente in fattura ?',
                                    'Genera Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then PrevToFattura;
       end;
    end;
end;

procedure TFrmMain.BtnRendicontoClick(Sender: TObject);
begin
  //Apre la finestra di riepilogo delle somme da incassare
  try
    Application.CreateForm(TFrmResoconto,FrmResoconto);
    FrmResoconto.ShowModal;
  finally
    FrmResoconto.Free;
  end;
end;



procedure TFrmMain.NotebookChanging(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
begin
  if (DM.Fatture.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della FATTURA'+#13+#13+
                                   DM.FattureCalcNumFattura.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla FATTURA'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.DettFatture.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della griglia di dettaglio della FATTURA'+#13+#13+
                                   DM.FattureCalcNumFattura.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla griglia di dettaglio della FATTURA'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.Preventivi.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica del PREVENTIVO'+#13+#13+
                                   DM.PreventiviCalcNumPrev.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate al PREVENTIVO'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else if (DM.DettPreventivi.State in [dsEdit])then
    begin
      AllowChange:=False;
      Application.MessageBox(PChar('Sei ancora in fase di modifica della griglia di dettaglio del PREVENTIVO'+#13+#13+
                                   DM.PreventiviCalcNumPrev.AsString+#13+#13+
                                   'Prima di cambiare sezione è necessario confermare o annullare '+
                                   'le modifiche apportate alla griglia di dettaglio del PREVENTIVO'),
                                   'Salva Modifiche',MB_OK+MB_ICONWARNING);
    end
  else
    AllowChange:=True;  
end;

procedure TFrmMain.EdInizioPropertiesCloseUp(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.EdInizioPropertiesChange(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.EdFinePropertiesChange(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.EdFinePropertiesCloseUp(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.EdFinePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.EdInizioPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;


procedure TFrmMain.BtnRicettaClick(Sender: TObject);
begin
  PopRicette.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;


procedure TFrmMain.CreaRicettaClick(Sender: TObject);
var
  Destinazione:String;
begin
  if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
  Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
  ShellListView2.Root:=PathEXE+'FOLDER';
  ShellListView2.Root:=Destinazione;
  try
    Application.CreateForm(TFrmCertificato,FrmCertificato);
    FrmCertificato.Caption:='Ricetta del '+DateToStr(Now)+' - '+DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString;
    FileToOpen:='Ricetta.rtf';
    FrmCertificato.ShowModal;
  finally
    FrmCertificato.Free;
  end;
end;

procedure TFrmMain.CreaCertificatoClick(Sender: TObject);
var
  Destinazione:String;
begin
  if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
  Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
  ShellListView2.Root:=PathEXE+'FOLDER';
  ShellListView2.Root:=Destinazione;
  try
    Application.CreateForm(TFrmCertificato,FrmCertificato);
    FrmCertificato.Caption:='Certificato del '+DateToStr(Now)+' - '+DM.PazientiCognome.AsString+' '+DM.PazientiNome.AsString;
    FileToOpen:='Certificato.rtf';
    FrmCertificato.ShowModal;
  finally
    FrmCertificato.Free;
  end;
end;


procedure TFrmMain.AdvGlowButton8Click(Sender: TObject);
var
  Destinazione:String;
begin
  AllegaCertificato(Self);

  if not DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then CreateDir(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString);
  Destinazione:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
  ShellListView2.Root:=PathEXE+'FOLDER';
  ShellListView2.Root:=Destinazione;
end;

procedure TFrmMain.AggiornaStatiExecute(Sender: TObject);
begin
  {Notebook.ActivePageIndex:=1;
  DM.DettCartella.MasterSource:=nil;
  DM.DettCartella.First;
  ProgressBar1.Visible:=True;
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=DM.DettCartella.RecordCount;
  while not DM.DettCartella.Eof do
    begin
      DM.DettCartella.Edit;
      if DM.DettCartellaEseguito.AsBoolean=True then DM.DettCartellaId_StatoLavorazione.AsInteger:=3
      else if DM.DettCartellaEseguito.AsBoolean=False then DM.DettCartellaId_StatoLavorazione.AsInteger:=1
      else if DM.DettCartellaEseguito.IsNull then DM.DettCartellaId_StatoLavorazione.AsInteger:=-1;
      DM.DettCartella.Post;
      DM.DettCartella.Next;
      ProgressBar1.Position:=ProgressBar1.Position+1;
    end;
  DM.DettCartella.First;
  ProgressBar1.Position:=100;
  ShowMessage('Stati lavorazione aggiornaticon successo');
  ProgressBar1.Visible:=False;
  DM.DettCartella.MasterSource:=DM.DsCartelle;
  DM.DettCartella.Close;
  DM.DettCartella.Open;}
end;

procedure TFrmMain.ModalitdiPagamento1Click(Sender: TObject);
begin
   try
     Application.CreateForm(TFrmModPag,FrmModPag);
     FrmModPag.ShowModal;
   finally
     FrmModPag.Free;
   end;
end;


procedure TFrmMain.StampaConsensoInformatoClick(Sender: TObject);
begin
  //Prima di mandare in stampa il conseso registra la data di stampa nel campo DataPrivacy e segna il campo privacy a TRUE
  if (DM.PazientiConsensoPrivacy.AsBoolean<> True)and(DM.PazientiDataPrivacy.AsDateTime<=0)then
    try
      DM.Pazienti.Edit;
      DM.PazientiConsensoPrivacy.AsBoolean:=True;
      DM.PazientiDataPrivacy.AsDateTime:=Now;
      DM.Pazienti.Post;
    except
      DM.Pazienti.Cancel;
    end;

  if(DM.PazientiPADRE.AsBoolean)and(not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa il Consenso Informato con Firma del solo Padre
      DM.frPrivacy.LoadFromFile(PathEXE+'Report\Consenso-Informato-Padre.fr3');
      DM.frPrivacy.ShowReport();
    end
  else if (DM.PazientiPADRE.AsBoolean)and(DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean)then
    begin
      //Stampa il Consenso Informato con la Firma congiunta del Padre e della Madre
      DM.frPrivacy.LoadFromFile(PathEXE+'Report\Consenso-Informato-Genitori.fr3');
      DM.frPrivacy.ShowReport();
    end
  else if (DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa il Consenso Informato con la Firma della Madre
      DM.frPrivacy.LoadFromFile(PathEXE+'Report\Consenso-Informato-Madre.fr3');
      DM.frPrivacy.ShowReport();
    end
  else if (not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa il Consenso Informato con la Firma del Tutore
      DM.frPrivacy.LoadFromFile(PathEXE+'Report\Consenso-Informato-Tutore.fr3');
      DM.frPrivacy.ShowReport();
    end
  else
    begin
      DM.frPrivacy.LoadFromFile(PathEXE+'Report\Consenso-Informato.fr3');
      DM.frPrivacy.ShowReport();
    end;
end;


procedure TFrmMain.StampaDiarioClinico1Click(Sender: TObject);
var
  Path:String;
begin
  Path:=ExtractFilePath(Application.ExeName);
  if DM.Diario.RecordCount>0 then
    begin
      DM.RptDiario.LoadFromFile(Path+'REPORT\Diario.fr3');
      DM.RptDiario.ShowReport();
    end
  else
    begin
      DM.RptDiario.LoadFromFile(Path+'REPORT\Diario-Blank.fr3');
      DM.RptDiario.ShowReport();
    end;
end;


procedure TFrmMain.StampaInformativaGDPR1Click(Sender: TObject);
begin
  if(DM.PazientiPADRE.AsBoolean)and(not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa GDPR con Firma del solo Padre
      DM.frGDPR.LoadFromFile(PathEXE+'Report\GDPR-PADRE.fr3');
      DM.frGDPR.ShowReport();
    end
  else if (DM.PazientiPADRE.AsBoolean)and(DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean)then
    begin
      //Stampa GDPR con la Firma congiunta del Padre e della Madre
      DM.frGDPR.LoadFromFile(PathEXE+'Report\GDPR-GENITORI.fr3');
      DM.frGDPR.ShowReport();
    end
  else if (DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa GDPR con la Firma dellaMadre
      DM.frGDPR.LoadFromFile(PathEXE+'Report\GDPR-MADRE.fr3');
      DM.frGDPR.ShowReport();
    end
  else if (not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(DM.PazientiTUTORE.AsBoolean) then
    begin
      //Stampa GDPR con la Firma del Tutore
      DM.frGDPR.LoadFromFile(PathEXE+'Report\GDPR-TUTORE.fr3');
      DM.frGDPR.ShowReport();
    end
  else
    begin
      //Stampa GDPR con la Firma del Paziente
      DM.frGDPR.LoadFromFile(PathEXE+'Report\GDPR.fr3');
      DM.frGDPR.ShowReport();
    end;
end;



procedure TFrmMain.suiButton7Click(Sender: TObject);
begin
  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
end;

procedure TFrmMain.suiButton8Click(Sender: TObject);
begin
  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;

  if Application.MessageBox(Pchar('Si desidera eliminare la firma del Paziente '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YESNO+MB_ICONWARNING)=id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end;
end;

procedure TFrmMain.cxDBCheckBox3MouseLeave(Sender: TObject);
begin
  if DM.Pazienti.State in [dsEdit] then DM.Pazienti.Post;
end;

procedure TFrmMain.AdvOfficePager6Change(Sender: TObject);
var
  S:String;
begin
  ChkPadre.Checked:=DM.PazientiPADRE.AsBoolean;
  ChkMadre.Checked:=DM.PazientiMADRE.AsBoolean;
  ChkTutore.Checked:=DM.PazientiTUTORE.AsBoolean;

  AdvGlowButton9.Enabled:=not DM.PazientiFIRMA.IsNull;
  AdvGlowButton12.Enabled:=not DM.PazientiFIRMA_TUTORE.IsNull;
  AdvGlowButton14.Enabled:=not DM.PazientiFIRMA_PADRE.IsNull;
  AdvGlowButton16.Enabled:=not DM.PazientiFIRMA_MADRE.IsNull;

  if AdvOfficePager6.ActivePageIndex=2 then
    try
      if DirectoryExists(PathCertificati+'\'+DM.PazientiCod_Paziente.AsString)then
        begin
          FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
          FrmMain.ShellListView2.Root:=PathCertificati+'\'+DM.PazientiCod_Paziente.AsString;
          FrmMain.ShellListView2.Repaint;
        end
      else
        begin
          FrmMain.ShellListView2.Root:=PathEXE+'FOLDER';
          FrmMain.ShellListView2.Repaint;
        end;
    except
      Exit;
    end;
end;


procedure TFrmMain.InserisciAnamnesiClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmConsenso,FrmConsenso);
    FrmConsenso.ShowModal;
  finally
    FrmConsenso.Free;
  end;
end;


procedure TFrmMain.IntestazioneDocumenti1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmIntestazione,FrmIntestazione);
    FrmIntestazione.ShowModal;
  finally
    FrmIntestazione.Free;
  end;
end;

procedure TFrmMain.BtnConsensoClick(Sender: TObject);
begin
  PopPrivacy.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.NBDispositiviPageChanged(Sender: TObject);
begin
  if FlowPanel1.Visible then
    case NBDispositivi.PageIndex of
      0:cxDBTextEdit55.SetFocus;
      1:cxDBTextEdit69.SetFocus;
    end;
end;

procedure TFrmMain.NB_DETT_SCHEDAChange(Sender: TObject);
var
  S:string;
begin
  if NB_DETT_SCHEDA.ActivePageIndex=3 then
    begin
      if DM.Cartelle.RecordCount=0 then
        begin
          FrmMain.ShellListView1.Root:=PathEXE+'FOLDER';
          FrmMain.ShellListView1.Repaint;
          FrmMain.AdvGlowButton1.Enabled:=(DM.Cartelle.RecordCount>0)and(not DM.Cartellebloccata.AsBoolean);
        end
      else
        begin
          S:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString;
          if DirectoryExists(S) then FrmMain.ShellListView1.Root:=PathAllegati+'\'+DM.CartelleCod_Cartella.AsString
          else FrmMain.ShellListView1.Root:=PathEXE+'FOLDER';
          FrmMain.ShellListView1.Repaint;
          FrmMain.AdvGlowButton1.Enabled:=(DM.Cartelle.RecordCount>0)and(not DM.Cartellebloccata.AsBoolean);
        end;
   end;
end;

procedure TFrmMain.BtnCodFiscaleClick(Sender: TObject);
var
  CodFData: TCodFData;
begin
  try
    if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
    CodFData[1]:=EdCognome.Text;
    CodFData[2]:=EdNome.Text;
    CodFData[3]:=EdDataNasc.Text;
    CodFData[4]:=EdSesso.Text;
    CodFData[5]:=EdLuogoNasc.Text;
    EdCodFisc.Text:=Fiscal.CreateCodFisc(CodFData);
    if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
  except
    DM.Pazienti.Cancel;
  end;
end;

procedure TFrmMain.anagraficaComuni1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmComuni,FrmComuni);
    FrmComuni.ShowModal;
  finally
    FrmComuni.Free;
  end;
end;

procedure TFrmMain.BtnE_FatturaClick(Sender: TObject);
const
  olMailItem = 0;
var
  Avere:String;
  S1,S2:string;
  PosPoint:Integer;
  Importo, Aliquota, Sconto:String;

  FileFattura:String;

  //Variabili per invio fattura via email
  ID_Fattura:integer;
  Path:String;
  SearchRec:TSearchrec;
  Allegati:TStrings;
  Destinatario:String;
  //------------------
  Outlook: OleVariant;
  vMailItem: variant;

  PAESE:string;

begin
  //per l'anno 2021 l'obbligo di fatturazione elettronica è esclusivo per i soggetti con Partita IVA
  //sono esclusi le persone fisiche per le quali vi è l'obbligo dell'invio dei dati al sistema tessera sanitaria
  if DM.FatturePartitaIVA.AsString='' then
    begin
      Application.MessageBox('Attenzione!'+#13+
                             'Non è possibile generare il file fattura elettronica'+#13+
                             'Poichè manca la partita iva nella fattura corrente.'+#13+
                             'Inserire la partita IVA dell''intestatario e '+#13+
                             'riprovare la generazione della Fattura Elettronica',
                             'Partita Iva Mancante',MB_OK+MB_ICONERROR);
      exit;
    end;


  Memo1.Lines.Clear;
  Memo1.Lines.Add('<?xml version="1.0" encoding="UTF-8"?> '+
                  '<p:FatturaElettronica versione="FPR12" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" '+
                  'xmlns:p="http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2" '+
                  'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                  'xsi:schemaLocation="http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2 '+
                  'http://www.fatturapa.gov.it/export/fatturazione/sdi/fatturapa/v1.2/Schema_del_file_xml_FatturaPA_versione_1.2.xsd">');

  Memo1.Lines.Add('<FatturaElettronicaHeader>');
  Memo1.Lines.Add('<DatiTrasmissione>');

     //DATI TRASMITTENTE
     Memo1.Lines.Add('<IdTrasmittente>');
     if MEM_E_FATTTRASMITTENTE_PAESE.AsString<>'' then
        Memo1.Lines.Add('<IdPaese>'+'IT'+'</IdPaese>')
     else
       begin
         Application.MessageBox('Attenzione!'+#13+
         'Il codice Paese del TRASMITTENTE è Obbligatorio per generare il file fattura elettronica',
         'Dati Trasmittente',MB_OK+MB_ICONERROR);
         Exit;
       end;

     if MEM_E_FATTTRASMITTENTE_CODICE.AsString<>'' then
       Memo1.Lines.Add('<IdCodice>'+MEM_E_FATTTRASMITTENTE_CODICE.AsString+'</IdCodice>')
     else
       begin
         Application.MessageBox('Attenzione!'+#13+
         'Il Codice Fiscale del TRASMITTENTE è Obbligatorio per generare il file fattura elettronica',
         'Dati Trasmittente',MB_OK+MB_ICONERROR);
         Exit;
       end;
     Memo1.Lines.Add('</IdTrasmittente>');


     //Numerazione attribuita dal soggetto che trasmette, secondo sue proprie regole
     Memo1.Lines.Add('<ProgressivoInvio>'+DM.FattureAnno.AsString+DM.FATTURENumFattura.AsString+'</ProgressivoInvio>');

     //Inserisce il formato trasmissione - soggetti privati FPR12
     Memo1.Lines.Add('<FormatoTrasmissione>'+'FPR12'+'</FormatoTrasmissione>');


    //INSERISCE IL CODICE DESTINATARIO E/O PEC DELL'INTESTATAIO DELLA FATTURA
    DM.Pazienti.Locate('Cod_Paziente',DM.FattureCod_Paziente.AsInteger,[]);
    if DM.PAZIENTICodiceDestinatario.AsString<>'' then
      Memo1.Lines.Add('<CodiceDestinatario>'+DM.PAZIENTICodiceDestinatario.AsString+'</CodiceDestinatario>')
    else
      if DM.PAZIENTIPecDestinatario.AsString<>'' then
        begin
          Memo1.Lines.Add('<CodiceDestinatario>0000000</CodiceDestinatario>');
          Memo1.Lines.Add('<PECDestinatario>'+DM.PAZIENTIPecDestinatario.AsString+'</PECDestinatario>');
        end
      else
        if (DM.PAZIENTICodiceDestinatario.AsString='')and(DM.PAZIENTIPecDestinatario.AsString='')then
          begin
            Application.MessageBox('Attenzione!'+#13+
                                   'Per il Paziente selezionato non è stato indicato né il codice '+#13+
                                   'né l''indirizzo di posta elettronica certificata'+#13+
                                   'Inserire almeno uno dei due dati nella scheda Paziente'+#13+
                                   'e riprovare la generazione della Fattura Elettronica',
                                   'Codice Destinatario/PEC',MB_OK+MB_ICONERROR);
            exit;
          end;

     Memo1.Lines.Add('</DatiTrasmissione>');

     //CEDENTE PRESTATORE
     Memo1.Lines.Add('<CedentePrestatore>');
     //DATI ANAGRAFICI
     Memo1.Lines.Add('<DatiAnagrafici>');
     Memo1.Lines.Add('<IdFiscaleIVA>');
       if MEM_E_FATTCEDENTE_PAESE.AsString<>'' then
         Memo1.Lines.Add('<IdPaese>'+MEM_E_FATTCEDENTE_PAESE.AsString+'</IdPaese>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                'Manca il codice paese del CEDENTE/PRESTATORE.'+#13+#13+
                                'Si tratta di due caratteri che rappresentano il paese (IT, DE, ES …..)'+#13+
                                'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                'e riprovare la generazione della Fattura Elettronica',
                                'Dati Cedente/Prestatore',MB_OK+MB_ICONERROR);
           exit;
         end;

       if MEM_E_FATTCEDENTE_PIVA.AsString<>'' then
         Memo1.Lines.Add('<IdCodice>'+MEM_E_FATTCEDENTE_PIVA.AsString+'</IdCodice>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la partita IVA del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'P. IVA Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;
     Memo1.Lines.Add('</IdFiscaleIVA>');

     if MEM_E_FATTCEDENTE_CF.AsString<>''then
       Memo1.Lines.Add('<CodiceFiscale>'+MEM_E_FATTCEDENTE_CF.AsString+'</CodiceFiscale>');

     //DATI ANAGRAFICI DEL CEDENTE/PRESTATORE
     Memo1.Lines.Add('<Anagrafica>');
     If MEM_E_FATTDENOMINAZIONE.AsString<>''then
       Memo1.Lines.Add('<Denominazione>'+MEM_E_FATTDENOMINAZIONE.AsString+'</Denominazione>')
     else
       if (MEM_E_FATTNOME.AsString<>'')and(MEM_E_FATTCOGNOME.AsString<>'')then
         begin
           Memo1.Lines.Add('<Nome>'+MEM_E_FATTNOME.AsString+'</Nome>');
           Memo1.Lines.Add('<Cognome>'+MEM_E_FATTCOGNOME.AsString+'</Cognome>');
         end
     else if (MEM_E_FATTDENOMINAZIONE.AsString='')and(MEM_E_FATTNOME.AsString='')and(MEM_E_FATTCOGNOME.AsString='')then
      begin
         Application.MessageBox('Attenzione!'+#13+
                                'Manca la DENOMINAZIONE e il NOME e COGNOME del CEDENTE/PRESTATORE.'+#13+#13+
                                'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                'e riprovare la generazione della Fattura Elettronica',
                                'ERRORE Cedente/Prestatore',MB_OK+MB_ICONERROR);
         Exit;
       end
     else if (MEM_E_FATTNOME.AsString='')and(MEM_E_FATTCOGNOME.AsString<>'')then
       begin
         Application.MessageBox('Attenzione!'+#13+
                                'Manca il NOME del CEDENTE/PRESTATORE.'+#13+#13+
                                'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                'e riprovare la generazione della Fattura Elettronica',
                                'NOME Cedente/Prestatore',MB_OK+MB_ICONERROR);
         Exit;
       end
     else if (MEM_E_FATTNOME.AsString<>'')and(MEM_E_FATTCOGNOME.AsString='')then
       begin
         Application.MessageBox('Attenzione!'+#13+
                                'Manca il COGNOME del CEDENTE/PRESTATORE.'+#13+#13+
                                'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                'e riprovare la generazione della Fattura Elettronica',
                                'COGNOME Cedente/Prestatore',MB_OK+MB_ICONERROR);
         Exit;
       end;

     Memo1.Lines.Add('</Anagrafica>');
     if MEM_E_FATTREGIME_FISCALE.AsString<>'' then
       Memo1.Lines.Add('<RegimeFiscale>'+MEM_E_FATTREGIME_FISCALE.AsString+'</RegimeFiscale>')
     else
       begin
         Application.MessageBox('Attenzione!'+#13+
                                'Manca l''indicatore del regime fiscale del CEDENTE/PRESTATORE.'+#13+#13+
                                'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                'e riprovare la generazione della Fattura Elettronica',
                                'Regime Fiscale Cedente/Prestatore',MB_OK+MB_ICONERROR);
         Exit;
       end;
         Memo1.Lines.Add('</DatiAnagrafici>');

       //FINE DATI ANAGRAFICI
       Memo1.Lines.Add('<Sede>');
       if MEM_E_FATTINDIRIZZO.AsString<>'' then
         Memo1.Lines.Add('<Indirizzo>'+MEM_E_FATTINDIRIZZO.AsString+'</Indirizzo>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca l''indirizzo del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'Indirizzo Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if MEM_E_FATTCAP.AsString<>'' then
         Memo1.Lines.Add('<CAP>'+MEM_E_FATTCAP.AsString+'</CAP>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca il CAP del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'CAP Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if MEM_E_FATTCOMUNE.AsString<>'' then
         Memo1.Lines.Add('<Comune>'+MEM_E_FATTCOMUNE.AsString+'</Comune>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca il COMUNE del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'COMUNE Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if MEM_E_FATTPROV.AsString<>'' then
         Memo1.Lines.Add('<Provincia>'+MEM_E_FATTPROV.AsString+'</Provincia>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la PROVINCIA del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'PROVINCIA Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if MEM_E_FATTNAZIONE.AsString<>'' then
         Memo1.Lines.Add('<Nazione>'+MEM_E_FATTCEDENTE_PAESE.AsString+'</Nazione>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la NAZIONE del CEDENTE/PRESTATORE.'+#13+#13+
                                  'Settare correttamente questo dato nelle impostazioni generali'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'NAZIONE Cedente/Prestatore',MB_OK+MB_ICONERROR);
           Exit;
         end;
     Memo1.Lines.Add('</Sede>');
     Memo1.Lines.Add('</CedentePrestatore>');

     //****************************************************************************************************

     //CESSIONARIO COMMITTENTE - CLIENTE A CUI E' INTESTATA LA FATTURA
     Memo1.Lines.Add('<CessionarioCommittente>');
       Memo1.Lines.Add('<DatiAnagrafici>');

       //Prova ad inserire la partita iva del cliente o in alternativa il codice fiscale
       if DM.FATTUREPartitaIVA.AsString <> ''then
         Memo1.Lines.Add('<CodiceFiscale>'+DM.FATTUREPartitaIVA.AsString+'</CodiceFiscale>')

       else if DM.FATTURECodFisc.AsString <> ''then
         Memo1.Lines.Add('<CodiceFiscale>'+DM.FATTURECodFisc.AsString+'</CodiceFiscale>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la Partita iva / Codice Fiscale del Cliente.'+#13+#13+
                                  'Inserire correttamente questo dato nella fattura corrente'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'Partita iva Cliente',MB_OK+MB_ICONERROR);
           Exit;

         end;
         Memo1.Lines.Add('<Anagrafica>');
           if DM.FATTURERagioneSociale.AsString<>'' then
             Memo1.Lines.Add('<Denominazione>'+DM.FATTURERagioneSociale.AsString+'</Denominazione>')
           else
             begin
               Application.MessageBox('Attenzione!'+#13+
                                      'Manca la Ragione Sociale del Cliente.'+#13+#13+
                                      'Inserire correttamente questo dato nella fattura corrente'+#13+
                                      'e riprovare la generazione della Fattura Elettronica',
                                      'Ragione Sociale Cliente',MB_OK+MB_ICONERROR);
               Exit;
             end;
         Memo1.Lines.Add('</Anagrafica>');
       Memo1.Lines.Add('</DatiAnagrafici>');

       Memo1.Lines.Add('<Sede>');
       if DM.FATTUREIndirizzo.AsString<>'' then
         Memo1.Lines.Add('<Indirizzo>'+DM.FATTUREIndirizzo.AsString+'</Indirizzo>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca l''indirizzo del Cliente.'+#13+#13+
                                  'Inserire correttamente questo dato nella fattura corrente'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'Indirizzo Cliente',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if DM.FATTURECap.AsString<>'' then
         Memo1.Lines.Add('<CAP>'+DM.FATTURECap.AsString+'</CAP>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca il CAP del Cliente.'+#13+#13+
                                  'Inserire correttamente questo dato nella fattura corrente'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'CAP Cliente',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if DM.FATTURECitta.AsString<>'' then
         Memo1.Lines.Add('<Comune>'+DM.FATTURECitta.AsString+'</Comune>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la città del Cliente.'+#13+#13+
                                  'Inserire correttamente questo dato nella fattura corrente'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'Città Cliente',MB_OK+MB_ICONERROR);
           Exit;
         end;

       if DM.FATTUREProv.AsString<>'' then
         Memo1.Lines.Add('<Provincia>'+DM.FATTUREProv.AsString+'</Provincia>')
       else
         begin
           Application.MessageBox('Attenzione!'+#13+
                                  'Manca la provincia del Cliente.'+#13+#13+
                                  'Inserire correttamente questo dato nella fattura corrente'+#13+
                                  'e riprovare la generazione della Fattura Elettronica',
                                  'Provincia Cliente',MB_OK+MB_ICONERROR);
           Exit;
         end;

    Memo1.Lines.Add('<Nazione>'+DM.FATTURECODICENAZIONE.AsString+'</Nazione>');
    Memo1.Lines.Add('</Sede>');
    Memo1.Lines.Add('</CessionarioCommittente>');
    Memo1.Lines.Add('</FatturaElettronicaHeader>');
    // FINE TESTATA DELLA FATTURA ELETTRONICA


    Memo1.Lines.Add('<FatturaElettronicaBody>');
    Memo1.Lines.Add('<DatiGenerali>');

    //DATI GENERALI DOCUMENTO
    Memo1.Lines.Add('<DatiGeneraliDocumento>');

    //Tipo Documento TD01 = FATTURA
    Memo1.Lines.Add('<TipoDocumento>'+'TD01'+'</TipoDocumento>');
    Memo1.Lines.Add('<Divisa>'+'EUR'+'</Divisa>');
    Memo1.Lines.Add('<Data>'+''+FormatDateTime('YYYY-MM-DD',DM.FATTUREData.AsDateTime)+''+'</Data>');
    Memo1.Lines.Add('<Numero>'+DM.FATTURENumFattura.AsString+'</Numero>');

    //Inserisce il totale documento cioè "CalcTotaleFattura"
    Importo:=FormatCurr('###0.#0',DM.FattureCalcTotaleFattura.AsCurrency);
    PosPoint:=Pos(',',Importo);
    S1:=Copy(Importo,0,PosPoint-1);
    S2:=Copy(Importo,PosPoint+1,3);
    Importo:=S1+'.'+S2;
    Memo1.Lines.Add('<ImportoTotaleDocumento>'+Importo+'</ImportoTotaleDocumento>');


   //ATTENZIONE DELLA TABELLA FATTURE BISOGNA INSERIRE ANCHE IL CAMPO
   //CAUSALE E BISOGNA USARE IL CONTENUTO DI TALE CAMPO PER RIEMPRIRE IL TAG CHE SEGUE
   if DM.FattureCausale.AsString<>'' then
     Memo1.Lines.Add('<Causale>'+DM.FattureCausale.AsString+'</Causale>')
   else
     begin
       Application.MessageBox('Attenzione!'+#13+
                              'Manca la CAUSALE della fattura.'+#13+#13+
                              'Questa informazione è obbligatoria per generare il file'+#13+
                              'della Fattura Elettronica',
                              'Causale Fattura',MB_OK+MB_ICONERROR);
       Exit;
     end;




 Memo1.Lines.Add('</DatiGeneraliDocumento>');
 Memo1.Lines.Add('</DatiGenerali>');

 //FINE DATI GENERALI DOCUMENTO

 //***************RIGHE DI DETTAGLIO ******************************

   Memo1.Lines.Add('<DatiBeniServizi>');

   DM.DettFatture.First;
   while not DM.DettFatture.Eof do
     begin
       Memo1.Lines.Add('<DettaglioLinee>');

       Memo1.Lines.Add('<NumeroLinea>'+IntToStr(DM.DettFatture.RecNo)+'</NumeroLinea>');
       Memo1.Lines.Add('<Descrizione>'+DM.DettFattureDescrizione.AsString+'</Descrizione>');
       Memo1.Lines.Add('<Quantita>'+DM.DettFattureQta.AsString+'.00'+'</Quantita>');

       Importo:=FormatCurr('###0.#0',DM.DettFatturePrezzoUnitario.AsCurrency);
       PosPoint:=Pos(',',Importo);
       S1:=Copy(Importo,0,PosPoint-1);
       S2:=Copy(Importo,PosPoint+1,3);
       Importo:=S1+'.'+S2;
       Memo1.Lines.Add('<PrezzoUnitario>'+Importo+'</PrezzoUnitario>');

       if DM.DettFattureSconto.AsInteger>0 then
         begin
           Memo1.Lines.Add('<ScontoMaggiorazione>');
           Memo1.Lines.Add('<Tipo>SC</Tipo>');

           //Viene indicato la percentuale di sconto applicata a ciascuna riga oppure l'importo dello sconto
           //Nel codice che segue è stato considerato solo l'importo e remmato il codice relativo alla paercentuale di sconto

           {Sconto:=FormatCurr('###0.#0',DM.DettFattureSconto.AsCurrency);
           PosPoint:=Pos(',',Sconto);
           S1:=Copy(Sconto,0,PosPoint-1);
           S2:=Copy(Sconto,PosPoint+1,3);
           Sconto:=S1+'.'+S2;
           Memo1.Lines.Add('<Percentuale>'+Sconto+'</Percentuale>');}

           Importo:=FormatCurr('###0.#0',DM.DettFattureCalcImportoSconto.AsCurrency);
           PosPoint:=Pos(',',Importo);
           S1:=Copy(Importo,0,PosPoint-1);
           S2:=Copy(Importo,PosPoint+1,3);
           Importo:=S1+'.'+S2;
           Memo1.Lines.Add('<Importo>'+Importo+'</Importo>');
           Memo1.Lines.Add('</ScontoMaggiorazione>');
         end;

       Importo:=FormatCurr('###0.#0',DM.DettFattureCalcImportoScontato.AsCurrency);
       PosPoint:=Pos(',',Importo);
       S1:=Copy(Importo,0,PosPoint-1);
       S2:=Copy(Importo,PosPoint+1,3);
       Importo:=S1+'.'+S2;
       Memo1.Lines.Add('<PrezzoTotale>'+Importo+'</PrezzoTotale>');


       if (DM.DettFattureAliquotaIva.IsNull)or(DM.DettFattureAliquotaIva.AsInteger=0)then
         begin
           Memo1.Lines.Add('<AliquotaIVA>0.00</AliquotaIVA>');
           Memo1.Lines.Add('<Natura>N4</Natura>');

         end
       else
         begin
           Aliquota:=FormatCurr('###0.#0',DM.DettFattureAliquotaIva.AsCurrency);
           PosPoint:=Pos(',',Aliquota);
           S1:=Copy(Aliquota,0,PosPoint-1);
           S2:=Copy(Aliquota,PosPoint+1,3);
           Aliquota:=S1+'.'+S2;
           Memo1.Lines.Add('<AliquotaIVA>'+Aliquota+'</AliquotaIVA>');
          end;

     Memo1.Lines.Add('</DettaglioLinee>');
     DM.DettFatture.Next;
   end;

  //DATI DI RIEPILOGO FATTURA
  {
  In questa sezione in realtà andrebbe fatta una query per totalizzare
  in base all'aliquota IVA}

   Memo1.Lines.Add('<DatiRiepilogo>');

  //POCO PRIMA DI TOTALIZZARE I DETTAGLI
  //imposta l'aliquota pari a 0% per eventuali righe di dettaglio ove l'aliquota iva è stata omessa poichè esente
  DM.DettFatture.DisableControls;
  DM.DettFatture.First;
  while not DM.DettFatture.Eof do
    begin
      if DM.DettFattureAliquotaIva.IsNull then
        begin
          DM.DettFatture.Edit;
          DM.DettFattureAliquotaIva.AsInteger:=0;
          DM.DettFatture.Post;
        end;
      DM.DettFatture.Next;
    end;
  DM.DettFatture.First;
  DM.DettFatture.EnableControls;


  // VERIFICARE LE SEZIONE DI RIEPILOGO CHE SEGUE

  //Apre la quesry di totalizzazione
  DM.QryDettFattura.Close;
  DM.QryDettFattura.ParamByName('iID_FATTURA').AsInteger:=dm.FattureId_Fattura.AsInteger;
  DM.QryDettFattura.Open;
  DM.QryDettFattura.First;
  while not DM.QryDettFattura.Eof do
    begin
      //Aggiunge il TAG Aliquota IVA

      Aliquota:=FormatCurr('###0.#0',DM.QryDettFatturaaliquotaiva.AsFloat);
      PosPoint:=Pos(',',Aliquota);
      S1:=Copy(Aliquota,0,PosPoint-1);
      S2:=Copy(Aliquota,PosPoint+1,3);
      Aliquota:=S1+'.'+S2;
      Memo1.Lines.Add('<AliquotaIVA>'+Aliquota+'</AliquotaIVA>');

      //Se l'aliquota Iva è 0 viene inserita la natura
      if DM.QryDettFatturaaliquotaiva.AsFloat=0 then
        begin
          Memo1.Lines.Add('<Natura>N4</Natura>');
        end;

      //VERIFICARE IL CALCOLO DELL'IMPONIBILE DI RIEPILOGO SCONTATO E DELL'IMPOSTA IN CASO DI SCONTO NELLE RIGHE DI DETTAGLIO

      //Inserisce l'imponibile di riepilogo
      if DM.QryDettFatturaTotaleRiga.AsCurrency>0 then
        begin
          Importo:=FormatCurr('###0.#0',DM.QryDettFatturaCalcTotRigaScontato.AsFloat);
          PosPoint:=Pos(',',Importo);
          S1:=Copy(Importo,0,PosPoint-1);
          S2:=Copy(Importo,PosPoint+1,3);
          Importo:=S1+'.'+S2;
          Memo1.Lines.Add('<ImponibileImporto>'+TRIM(Importo)+'</ImponibileImporto>');
        end;

      //Inserisce l'imposta di riepilogo
      if DM.QryDettFatturaCalcImposta.AsCurrency>0 then
        begin
          Importo:=FormatCurr('###0.#0',DM.QryDettFatturaCalcImposta.AsFloat);
          PosPoint:=Pos(',',Importo);
          S1:=Copy(Importo,0,PosPoint-1);
          S2:=Copy(Importo,PosPoint+1,3);
          Importo:=S1+'.'+S2;
          Memo1.Lines.Add('<Imposta>'+Importo+'</Imposta>')
        end
      else
        begin
          Memo1.Lines.Add('<Imposta>0.00</Imposta>');
          Memo1.Lines.Add('<RiferimentoNormativo>Esente art.10 DPR 633/1972</RiferimentoNormativo>');
        end;

      if DM.QryDettFatturaCalcImposta.AsCurrency>0 then
        begin
          if UpperCase(DM.FATTUREESIGIBILITA_IVA.AsString)='I' then Memo1.Lines.Add('<EsigibilitaIVA>I</EsigibilitaIVA>')
          else if UpperCase(DM.FATTUREESIGIBILITA_IVA.AsString)='D' then Memo1.Lines.Add('<EsigibilitaIVA>D</EsigibilitaIVA>')
          else if UpperCase(DM.FATTUREESIGIBILITA_IVA.AsString)='S' then Memo1.Lines.Add('<EsigibilitaIVA>S</EsigibilitaIVA>')
          else
            begin
              Application.MessageBox('Attenzione!'+#13+
                                     'Manca il dato relativo alla esigibilità IVA.'+#13+#13+
                                     'Inserire correttamente questo dato nella fattura corrente'+#13+
                                     'e riprovare la generazione della Fattura Elettronica',
                                     'ESIGIBILITA'' IVA',MB_OK+MB_ICONERROR);
              Exit;
            end;
        end;

      DM.QryDettFattura.Next;
    end;
   Memo1.Lines.Add('</DatiRiepilogo>');
   Memo1.Lines.Add('</DatiBeniServizi>');

   //***************************************************************************

   Memo1.Lines.Add('<DatiPagamento>');
   //Va indicato “TP01” nel caso di pagamento a rate,
   //“TP02” nel caso di pagamento totale in unica soluzione,
   //“TP03” in caso di pagamento di un anticipo.

   if  DM.SCADENZE.RecordCount=0 then
     begin
       //Pagamento in un'unica soluzione
       Memo1.Lines.Add('<CondizioniPagamento>TP02</CondizioniPagamento>');
       Memo1.Lines.Add('<DettaglioPagamento>');
       Memo1.Lines.Add('<ModalitaPagamento>'+DM.FattureCOD_MOD_PAGAM.AsString+'</ModalitaPagamento>');
       Memo1.Lines.Add('<DataScadenzaPagamento>'+''+FormatDateTime('YYYY-MM-DD',DM.FATTUREData.AsDateTime)+''+'</DataScadenzaPagamento>');

       Avere:=FormatCurr('###0.#0',DM.FATTURECalcTotaleFattura.AsCurrency);
       PosPoint:=Pos(',',Avere);
       S1:=Copy(Avere,0,PosPoint-1);
       S2:=Copy(Avere,PosPoint+1,3);
       Avere:=S1+'.'+S2;
       Memo1.Lines.Add('<ImportoPagamento>'+Avere+'</ImportoPagamento>');
       Memo1.Lines.Add('</DettaglioPagamento>');
     end
      //Pagamento rateale
   else
     begin
       Memo1.Lines.Add('<CondizioniPagamento>TP01</CondizioniPagamento>');
     end;

   DM.Scad_Fatture.First;
   while not DM.Scad_Fatture.eof do
     begin
       Memo1.Lines.Add('<DettaglioPagamento>');
       Memo1.Lines.Add('<ModalitaPagamento>'+DM.FattureCOD_MOD_PAGAM.AsString+'</ModalitaPagamento>');
       Memo1.Lines.Add('<DataScadenzaPagamento>'+''+FormatDateTime('YYYY-MM-DD',DM.SCADENZEDataScadenza.AsDateTime)+''+'</DataScadenzaPagamento>');

       //Trasforma l'importo della scadenza in stringa
       //separa la parte intera S1 da quella decimale S2
       //per poi concatenarle separate da un punto invece della virgola
       Avere:=FormatCurr('###0.#0',DM.SCADENZEAvere.AsCurrency);
       PosPoint:=Pos(',',Avere);
       S1:=Copy(Avere,0,PosPoint-1);
       S2:=Copy(Avere,PosPoint+1,3);
       Avere:=S1+'.'+S2;

       Memo1.Lines.Add('<ImportoPagamento>'+Avere+'</ImportoPagamento>');

       if DM.FATTURECOD_PAGAMENTO.AsString='MP01' then
       //si tratta di pagamento in contanti
         begin
           Memo1.Lines.Add('<CognomeQuietanzante>'+DM.FATTURECOGNOME_QUIETANZANTE.AsString+'</CognomeQuietanzante>');
           Memo1.Lines.Add('<NomeQuietanzante>'+DM.FATTURENOME_QUIETANZANTE.AsString+'</NomeQuietanzante>');
         end
       else if (DM.FATTURECOD_PAGAMENTO.AsString='MP02')or(DM.FATTURECOD_PAGAMENTO.AsString='MP03')then
         //si tratta di pagamento con Assegno bancario o circolare
         //Trattandosi di pagamento con assegno non può essere rateale e quindi non viene aggiunto codice
         begin

         end
       else if (DM.FATTURECOD_PAGAMENTO.AsString='MP05')then
         //si tratta di pagamento con Bonifico Bancario e quindi va indicato IBAN e Banca di appoggio
         begin
            Memo1.Lines.Add('<IstitutoFinanziario>'+DM.FATTUREBANCA_APPOGGIO.AsString+'</IstitutoFinanziario>');
            Memo1.Lines.Add('<IBAN>'+DM.FATTUREIBAN_APPOGGIO.AsString+'</IBAN>');
         end
       else if (DM.FATTURECOD_PAGAMENTO.AsString='MP08')then
         //si tratta di pagamento con Carta di Pagamento
         //Trattandosi di pagamento con Carta non può essere rateale e quindi non viene aggiunto codice
         begin
         //
         end;

       Memo1.Lines.Add('</DettaglioPagamento>');
       DM.Scad_Fatture.next;
     end;
   Memo1.Lines.Add('</DatiPagamento>');
   Memo1.Lines.Add('</FatturaElettronicaBody>');
   Memo1.Lines.Add('</p:FatturaElettronica>');

   //Crea una cartella denominata File Fatture Elettroniche + Anno
   //Crea una cartella il cui nome è compostao da Numero-AnnoFattura
   //Salva il file in formato XML
   if not DirectoryExists(PathEXE+'\Fatture Elettroniche '+DM.FATTUREAnno.AsString)then
     ForceDirectories(PathEXE+'\Fatture Elettroniche '+DM.FATTUREAnno.AsString);

   //Salva il file XML nel formato 'PAESE'+'PARTITAIVA'+'PROGRESSIVO_FATTURA'
   if MEM_E_FATTTRASMITTENTE_PAESE.AsString<>'' then PAESE:=MEM_E_FATTTRASMITTENTE_PAESE.AsString
   else PAESE:='IT';
   FileFattura:=PathEXE+'Fatture Elettroniche '+DM.FATTUREAnno.AsString+'\'+PAESE+MEM_E_FATTCEDENTE_PIVA.AsString+'_'+DM.FATTURENumFattura.AsString+'.xml';
   Memo1.Lines.SaveToFile(FileFattura);

  //Genera anche il file PDF da allegare alla fattura elettronica
  DM.FATTURE.DisableControls;
  DM.frFattura.LoadFromFile(PathEXE+'Report\Fattura.fr3');
  DM.frFattura.PrepareReport(True);
  DM.frPDF.FileName:=PathEXE+'Fatture Elettroniche '+DM.FATTUREAnno.AsString+'\Fattura N° '+DM.FATTURENumFattura.AsString+'-'+DM.FATTURECalcAnno.AsString+' - '+
    DM.FATTURERagioneSociale.AsString+'.pdf';
  DM.frPDF.OpenAfterExport:=False;
  DM.frFattura.Export(DM.frPDF);
  DM.FATTURE.EnableControls;

  //Alla fine dopo aver creato la fattura xml
  //provvede al'invio a mezzo PEC

  LVFatture.Root:='C:\';
  if DirectoryExists(PathEXE+'Fatture Elettroniche '+IntToStr(DM.FattureAnno.AsInteger))then
    LVFatture.Root:=PathEXE+'Fatture Elettroniche '+IntToStr(DM.FattureAnno.AsInteger)
  else LVFatture.Root:=PathEXE+'FOLDER';
  AdvOfficePager7.ActivePageIndex:=1;

  if Application.MessageBox('Creazione fattura elettronica completata.'+#13+
                            'Si desidera inviarla al Sistema di Interscambio a mezzo PEC?'+#13+#13+
                            'Attenzione!'+#13+#13+
                            'Per poter usuffruire di questa funzionalità è necessatio che l''utente abbia '+
                            'configurato le impostazioni di invio nella sezione configurazione invio PEC al Sistema di Interscambio'+#13+#13+
                            'Si desidera procedere con l''invio a mezzo email?',
                            'Invio Fattura Elettronica',MB_YESNO+MB_ICONQUESTION)=IdYes then
                            begin
                              try
                                Application.CreateForm(TFrmMail,FrmMail);
                                FrmMail.EdAllegato.Text:=FileFattura;
                                if EmailSDI<>'' then FrmMail.EdRecipient.Text:=EmailSDI;
                                FrmMail.ShowModal;
                              finally
                                FrmMail.Free;
                              end;
                            end;
  end;





procedure TFrmMain.PersonalizzaStampaFattura1Click(Sender: TObject);
begin
   if Application.MessageBox(PChar('ATTENZIONE!'+#13+#13+
              'La personalizzazione dei report di stampa dovrà essere effettuata '+
              'con la massima cautela.'+#13+
              'Se non si è sicuri delle operazioni da seguire '+
              'per personalizzare la stampa dell''Accettazione consigliamo di '+
              'rivolgersi all''assistenza tecnica'),
              'Editor Modello Fattura',MB_OKCANCEL+MB_IconWarning)=ID_OK then
    try
      DM.DocDesigner.OpenDir:=PathEXE+'REPORT\';
      DM.DocDesigner.SaveDir:=PathEXE+'REPORT\';
      DM.frFattura.LoadFromFile(PathEXE+'REPORT\Fattura.fr3');
      DM.frFattura.DesignReport;
    except
      exit;
    end
  else exit;
end;

procedure TFrmMain.PersonalizzaStampaPreventivo1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('ATTENZIONE!'+#13+#13+
              'La personalizzazione dei report di stampa dovrà essere effettuata '+
              'con la massima cautela.'+#13+
              'Se non si è sicuri delle operazioni da seguire '+
              'per personalizzare la stampa dell''Accettazione consigliamo di '+
              'rivolgersi all''assistenza tecnica'),
              'Editor Modello Preventivo',MB_OKCANCEL+MB_IconWarning)=ID_OK then
    try
      DM.DocDesigner.OpenDir:=PathEXE+'REPORT\';
      DM.DocDesigner.SaveDir:=PathEXE+'REPORT\';
      DM.frPreventivo.LoadFromFile(PathEXE+'REPORT\Preventivo.fr3');
      DM.frPreventivo.DesignReport;
    except
      exit;
    end
  else exit;
end;

procedure TFrmMain.BtnPAZIENTIClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=1;
end;

procedure TFrmMain.BtnPrescrizioneClick(Sender: TObject);
begin
  PopPrescrizioni.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.BtnCartelleClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=2;
end;

procedure TFrmMain.BtnStoricoClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=3;
end;

procedure TFrmMain.BtnDOCUMENTIClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=4;
end;

procedure TFrmMain.BtnMAGAZZINOClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=5;
end;

procedure TFrmMain.BtnAGENDAClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=6;
end;

procedure TFrmMain.BtnSCADENZARIOClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=7;
end;

procedure TFrmMain.BtnBANCAClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=8;
end;

procedure TFrmMain.BtnFATTURATOClick(Sender: TObject);
begin
  Notebook.ActivePageIndex:=9;
end;

procedure TFrmMain.BtnESCIClick(Sender: TObject);
begin
  BtnUscitaClick(Sender);
end;

procedure TFrmMain.GBCercaAppuntamentoClick(Sender: TObject);
begin
  //apre la finestra di selezione ed eliminazione di una serie di appuntamenti filtrati da eliminare
  try
    Application.CreateForm(TFrmFiltraAppuntamenti,FrmFiltraAppuntamenti);
    FrmFiltraAppuntamenti.ShowModal;
  finally
    FrmFiltraAppuntamenti.Free;
  end;

end;

procedure TFrmMain.BtnDA_INCASSAREClick(Sender: TObject);
begin
  //Apre la finestra di riepilogo delle somme da incassare
  try
    Application.CreateForm(TFrmResoconto,FrmResoconto);
    FrmResoconto.ShowModal;
  finally
    FrmResoconto.Free;
  end;
end;

procedure TFrmMain.MenuItem9Click(Sender: TObject);
begin
  DM.frScheda.LoadFromFile('Report\SchedaPaziente.fr3');
  DM.frScheda.ShowReport();
end;

procedure TFrmMain.MenuItem8Click(Sender: TObject);
begin
  if Application.MessageBox('Attenzione'+#13+
                            'La creazione del report dell''elenco pazienti potrà impiegare '+
                            'qualche minuto. dipende dal numero di pazienti in archivio'+#13+#13+
                            'Si desidera proseguire con la creazione del report?',
                            'Elenco Pazienti',MB_YesNo+MB_ICONWARNING)=Id_Yes then
                            begin
                              DM.RptPazienti.LoadFromFile('Report\Pazienti.FR3');
                              DM.RptPazienti.ShowReport();
                            end;

end;

procedure TFrmMain.BtnManualeClick(Sender: TObject);
begin
  ShellExecute(Handle,'Open',PChar(PathEXE+'MANUALE.pdf'),'',Nil,SW_SHOWNORMAL);
end;

procedure TFrmMain.ManualeUtente1Click(Sender: TObject);
begin
  ShellExecute(Handle,'Open',PChar(PathEXE+'MANUALE.pdf'),'',Nil,SW_SHOWNORMAL);
end;

procedure TFrmMain.OperazioniBancarie1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=8;
end;

procedure TFrmMain.AnalisidelFatturato1Click(Sender: TObject);
begin
  Notebook.ActivePageIndex:=9;
end;

procedure TFrmMain.RendicontoPazienti1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmResoconto,FrmResoconto);
    FrmResoconto.ShowModal;
  finally
    FrmResoconto.Free;
  end;
end;

procedure TFrmMain.StampaEtichetteAppuntamenti1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmEtichette,FrmEtichette);
    FrmEtichette.ShowModal;
  finally
    FrmEtichette.Free;
  end;
end;

procedure TFrmMain.PersonalizzaStampaEtichetteAppuntamenti1Click(
  Sender: TObject);
begin
  if Application.MessageBox(PChar('ATTENZIONE!'+#13+#13+
              'La personalizzazione dei report di stampa dovrà essere effettuata '+
              'con la massima cautela.'+#13+
              'Se non si è sicuri delle operazioni da seguire '+
              'per personalizzare la stampa dell''Accettazione consigliamo di '+
              'rivolgersi all''assistenza tecnica'),
              'Personalizza Etichetta',MB_OKCANCEL+MB_IconWarning)=ID_OK then
    try
      DM.DocDesigner.OpenDir:=PathEXE+'REPORT\';
      DM.DocDesigner.SaveDir:=PathEXE+'REPORT\';
      DM.frEtichette.LoadFromFile(PathEXE+'REPORT\Etichetta-2.fr3');
      DM.frEtichette.DesignReport;
    except
      exit;
    end
  else exit;
end;

procedure TFrmMain.AdvGlowButton7Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmEtichette,FrmEtichette);
    FrmEtichette.ShowModal;
  finally
    FrmEtichette.Free;
  end;
end;

procedure TFrmMain.StampaAnamnesiClick(Sender: TObject);
begin
  if DM.Consenso.Locate('Cod_Paziente',DM.PazientiCod_Paziente.AsString,[])then
     begin
       if(DM.PazientiPADRE.AsBoolean)and(not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
        begin
          //Stampa GDPR con Firma del solo Padre
          DM.frPrivacy.LoadFromFile(PathEXE+'Report\Privacy-Padre.fr3');
          DM.frPrivacy.ShowReport();
        end
      else if (DM.PazientiPADRE.AsBoolean)and(DM.PazientiMADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean)then
        begin
          //Stampa GDPR con la Firma congiunta del Padre e della Madre
          DM.frPrivacy.LoadFromFile(PathEXE+'Report\Privacy-Genitori.fr3');
          DM.frPrivacy.ShowReport();
        end
      else if (DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(not DM.PazientiTUTORE.AsBoolean) then
        begin
          //Stampa GDPR con la Firma dellaMadre
          DM.frPrivacy.LoadFromFile(PathEXE+'Report\Privacy-Madre.fr3');
          DM.frPrivacy.ShowReport();
        end
      else if (not DM.PazientiMADRE.AsBoolean)and(not DM.PazientiPADRE.AsBoolean)and(DM.PazientiTUTORE.AsBoolean) then
        begin
          //Stampa GDPR con la Firma del Tutore
          DM.frPrivacy.LoadFromFile(PathEXE+'Report\Privacy-Tutore.fr3');
          DM.frPrivacy.ShowReport();
        end
      else
        begin
          DM.frPrivacy.LoadFromFile(PathEXE+'Report\Privacy.fr3');
          DM.frPrivacy.ShowReport();
        end;
   end;
end;

procedure TFrmMain.GridFattureSelectionChanged(Sender: TObject; ALeft, ATop,
  ARight, ABottom: Integer);
begin
  //DM.FattureCalcFields(DM.Fatture);
end;

procedure TFrmMain.UPD_IMP_DA_FATTURAREExecute(Sender: TObject);
begin
  ProgressBar1.Visible:=True;
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=DM.Pazienti.RecordCount;
  DM.Pazienti.First;
  while not DM.Pazienti.Eof do
    begin
      DM.Cartelle.First;
      while not DM.Cartelle.Eof do
        begin
          DM.Cartelle.Edit;
          DM.SumDettCartella.RecalcAll;
          DM.CartelleImpDaFatturare.AsCurrency:=DM.SumDettCartella.SumCollection[0].SumValue-DM.CartelleImpFatturati.AsCurrency;
          DM.CartelleImpFatturati.AsCurrency:=0;
          DM.Cartelle.Post;
          DM.Cartelle.Next;
        end;
      DM.Pazienti.Next;
      ProgressBar1.Position:=ProgressBar1.Position+1;
      Application.ProcessMessages;
    end;
  DM.Pazienti.First;
  ProgressBar1.Visible:=False;
  ShowMessage('Aggiornamento Terminato');
end;

procedure TFrmMain.UPD_IVAExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmUPD,FrmUPD);
    FrmUPD.ShowModal;
  finally
    FrmUPD.Free;
  end;
end;

procedure TFrmMain.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    FrmSearchPaziente.ShowModal;
    ModCartella:=True;
  finally
    FrmSearchPaziente.Free;
  end;
end;

procedure TFrmMain.cxDBCheckBox2Click(Sender: TObject);
begin
  if cxDBCheckBox2.Checked then EdDataPagamento.Visible:=True
  else EdDataPagamento.Visible:=false;
end;

procedure TFrmMain.suitempEdPartitaIvaExit(Sender: TObject);
begin
  if DM.Fatture.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaPIVA(EdPartitaIva.Text)then EdPartitaIva.setFocus;
    end;
end;

procedure TFrmMain.suitempsuiDBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Notebook.ActivePageIndex=2 then
    begin
      UpDateSchema;
      UpDateSchema2;
      NbNavBar.Visible:=True;
      BtnModificaCartella.Enabled:=DM.Cartelle.RecordCount>0;
      BtnEliminaCartella.Enabled:=DM.Cartelle.RecordCount>0;
      BtnStampaCartella.Enabled:=DM.Cartelle.RecordCount>0;
    end;
end;

procedure TFrmMain.ElaboraReportTS1Click(Sender: TObject);
begin
  {Application.MessageBox(PChar('Attenzione. Questa funzionalità è ancora in versione Beta'+#13+
                               'Questo significa che è a puro scopo di test'+#13+
                               'Sarà resa disponibile a breve'),
                               'Invio dati al sistema TS',MB_OK+MB_ICONINFORMATION);}
  try
    Application.CreateForm(TFrmTS,FrmTS);
    FrmTS.ShowModal;
  finally
    FrmTS.Free;
  end;
end;

procedure TFrmMain.EmettiFatturadiAcconto1Click(Sender: TObject);
begin
  ConvertiFATTURA(0);
end;

procedure TFrmMain.EST1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
    FrmPrescrizione.NB.ActivePageIndex:=0;
    FrmPrescrizione.NBProtesi.PageIndex:=0;
    FrmPrescrizione.ShowModal;
  finally
    FrmPrescrizione.Free;
  end;
end;

procedure TFrmMain.dxDBTreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  FrmMain.UpDateSchema;
  FrmMain.UpDateSchema2;
end;

procedure TFrmMain.BtnSchedaPazienteClick(Sender: TObject);
begin
  DM.frScheda.LoadFromFile('Report\SchedaPaziente.fr3');
  DM.frScheda.ShowReport();
end;

procedure TFrmMain.BtnStampaPazientiClick(Sender: TObject);
begin
  PopStampa.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Salva le impostazioni di visualizzazione dell'agenda
  try
    ListeIni:=TIniFile.Create(PathEXE+'Liste.ini');
    with ListeIni do
      begin
        ListeIni.WriteInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_UNIT',Planner.Display.DisplayUnit);
        ListeIni.WriteInteger('IMPOSTAZIONI VARIE','AGENDA_DISPLAY_SCALE',Planner.Display.DisplayScale);
      end
  finally
    ListeIni.Free;
  end;

  if AutoBackup then
    begin
      if Application.MessageBox(PChar('Si desidera effettuare il backup degli'+#13+
                                      'archivi prima di chiudere il programma?'),
                                      'Backup Archivi',MB_YesNo+MB_ICONQUESTION)=Id_Yes then
        try
          Hide;
          Application.CreateForm(TFrmBackup,FrmBackup);
          FrmBackup.ShowModal;
        finally
          FrmBackup.Free;
        end;
    end;

  DM.CheckBackupMensile(MonthOf(Now));

end;

procedure TFrmMain.DBAdvGrid2DblClick(Sender: TObject);
begin
  if DM.PlannerTable.RecordCount>0 then //UpdateHeaders;
    case PagerAgenda.ActivePageIndex of
      0:if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
        begin
          DM.LocateAppuntamento;
          Planner.Positions:=GG;
        end;
      1:if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then LocateAppuntamento2;
    end;
end;

procedure TFrmMain.UPD_SCADENZARIOExecute(Sender: TObject);
begin
  DM.Scadenze.First;
  while not DM.Scadenze.Eof do
    begin
      DM.Scadenze.Edit;
      DM.ScadenzeHideSaldo.AsCurrency:=DM.ScadenzeAvere.AsCurrency-DM.ScadenzeDare.AsCurrency;
      DM.Scadenze.Post;
      DM.Scadenze.Next;
    end;
  DM.Scadenze.First;
  ShowMessage('Aggiornamento Terminato con successo');
end;

procedure TFrmMain.LocateAppuntamento2;
var
  dt1,dt2:tdatetime;
  key:string;
  plIt: TPlannerItem;
begin
  if (DM.PlannerTable.RecordCount>0) then
    begin
      DBPlanner1.Positions:=DM.Dottori.RecordCount;
      Screen.Cursor:=crHourGlass;
      if DBDaySource1.LocateFirstItem('*'+DM.PlannerTableNOTES.AsString+'*',[fnMatchRegular,fnText,fnCaptionText],dt1,dt2,key) then
      begin
        DM.PlannerTable.DisableControls;
        DBPlanner1.ItemSource:=nil;
        DBDaySource1.Day:=dt1;
        plIt:=DBPlanner1.Items.FindKey(key);
        if Assigned(plIt) then
          begin
            plIt.Selected := true;
            plIt.Focus := true;
          end;
        DBPlanner1.ItemSource:=DBDaySource1;
        DM.PlannerTable.EnableControls;
      end;
      Screen.Cursor:=crDefault;
      DBPlanner1.Positions:=DM.Dottori.RecordCount;
      DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
    end;
end;


procedure TFrmMain.DBGrid1DblClick(Sender: TObject);
begin
  {if DM.PlannerTable.RecordCount>0 then //UpdateHeaders;
  LocateAppuntamento2;}
end;

procedure TFrmMain.DBDaySource1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Fields.FieldByName('FROMCOLOR').AsInteger:=clWhite;
  Fields.FieldByName('TOCOLOR').AsInteger:=$00B1E4F3;
  Fields.FieldByName('SELECTCOLOR').AsInteger:=$00BBFFFF;
  Fields.FieldByName('CAPTION').AsBoolean:=Item.CaptionType=ctTime;
end;

procedure TFrmMain.DBDaySource1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
   Item.Color:=clWhite;
  if not DM.PlannerTableLkpColore.IsNull then
    begin
      Item.ColorTo:=DM.PlannerTableLkpColore.AsInteger;
      Item.SelectColor:=$00BBFFFF;;
      Item.TrackColor:=clWhite;
      Item.CaptionBkg:=Item.Color;
    end
  else
    begin

    end;
  Item.Text.Text:=Fields.FieldByName('PAZIENTE').AsString+':'+#13+Fields.FieldByName('NOTES').AsString;
end;

procedure TFrmMain.DBPlanner1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  if DM.PlannerTable.RecordCount>0 then
    try
      Application.CreateForm(TFrmNewAppuntamento,FrmNewAppuntamento);
      FrmNewAppuntamento.PlannerTable.Locate('PLANNERKEY',DM.PlannerTablePLANNERKEY.AsString,[]);
      NuovoAppuntamento:=False;
      FrmNewAppuntamento.ShowModal;
    finally
      FrmNewAppuntamento.Free;
    end
end;

procedure TFrmMain.DBPlanner1ItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  DBPlanner1.FreeItem(Item);
end;

procedure TFrmMain.DBPlanner1ItemEnter(Sender: TObject;
  Item: TPlannerItem);
begin
  Itm:=Item.Index;
  GBModificaAppuntamento.Enabled:=True;
  GBEliminaAppuntamento.Enabled:=True;
end;

procedure TFrmMain.DBPlanner1ItemExit(Sender: TObject; Item: TPlannerItem);
begin
  Itm:=Item.Index;
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.DBPlanner1ItemHint(Sender: TObject; Item: TPlannerItem;
  var Hint: String);
begin
  Hint:=Item.ItemStartTimeStr+' - '+Item.ItemStartTimeStr+#13+Item.CaptionText+#13+#13+
  'Note: '+Item.ItemText;
end;

procedure TFrmMain.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with DBPlanner1.CreateItem do
    begin
     {take the settings from the Default item - just set properties below}
     ItemBegin:=FromSel;
     ItemEnd:=ToSel;
     ItemPos:=Position;
     Text.Text:='Appuntamento creato il '+Formatdatetime('dd/mm/yyyy',Now)+' alle '+Formatdatetime('hh:mm',Now);
     Update;
  end;
end;

procedure TFrmMain.DBPlanner1ItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  Itm:=Item.Index;
end;

procedure TFrmMain.DBPlanner1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  GBModificaAppuntamento.Enabled:=item.Index>-1;
  GBEliminaAppuntamento.Enabled:=item.Index>-1;
  Itm:=Item.Index;
  if (item.Index>-1)and(DM.PlannerTable.RecordCount>0)then
    MonthCalendar1.Date:=DM.PlannerTableDATA.AsDateTime
  else MonthCalendar1.Date:=Now;
end;

procedure TFrmMain.DBPlanner1ItemUnSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.DBPlanner1PlannerDblClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  //keybd_event(VK_INSERT,0,0,0);
  with DBPlanner1.CreateItem do
    begin
     {take the settings from the Default item - just set properties below}
     ItemBegin:=FromSel-32;
     ItemEnd:=ItemBegin+2;
     ItemPos:=Position;
     Text.Text:='Appuntamento creato il '+Formatdatetime('dd/mm/yyyy',Now)+' alle '+Formatdatetime('hh:mm',Now);
     Update;
     DBPlanner1ItemDblClick(Sender,DBPlanner1.Items.Selected);
  end;
end;

procedure TFrmMain.DBPlanner1PlannerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState; Position, FromSel, FromSelPrecis, ToSel,
  ToSelPrecis: Integer);
begin
  if Key=VK_INSERT then GBNuovoAppuntamentoClick(Sender);
end;

procedure TFrmMain.DBPlanner1PlannerNext(Sender: TObject);
begin
  UpdateHeaders;
  DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
end;

procedure TFrmMain.DBPlanner1PlannerPrev(Sender: TObject);
begin
  UpdateHeaders;
  DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
end;

procedure TFrmMain.DBPlanner1PlannerSelectCell(Sender: TObject; Index,
  Pos: Integer; var CanSelect: Boolean);
begin
  Itm:=-1;
  GBModificaAppuntamento.Enabled:=False;
  GBEliminaAppuntamento.Enabled:=False;
end;

procedure TFrmMain.MonthCalendar1Enter(Sender: TObject);
begin
  DM.DBDaySource1.Day:=MonthCalendar1.Date;
  DBDaySource1.Day:=MonthCalendar1.Date;
  DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
end;

procedure TFrmMain.DBDaySource1GetResourceName(Sender: TObject;
  ResourceIndex: Integer; var ResourceName: String);
begin
  //ResourceName:=IntToStr(ResourceIndex);
end;

procedure TFrmMain.EdCapPropertiesChange(Sender: TObject);
begin
  EdCapFatt.Text:=EdCap.Text;
end;

procedure TFrmMain.EdProvPropertiesChange(Sender: TObject);
begin
  EdProvFatt.Text:=EdProv.Text;
end;

procedure TFrmMain.cxDBTextEdit13PropertiesChange(Sender: TObject);
begin
  EdCodFiscFiscFatt.Text:=EdCodFisc.Text;
end;



procedure TFrmMain.cxGridDBTableView10TrattamentoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  {try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModCartella:=True;
    InsCartella:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;}
end;

procedure TFrmMain.cxGridDBTableView10TrattamentoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if DM.Articoli.Locate('Descrizione',DM.DettCartellatrattamento.AsString,[loCaseInsensitive])then
    DM.DettCartellaImporto.AsCurrency:=DM.ArticoliPrezzo.AsCurrency;
end;

procedure TFrmMain.cxGridDBTableView12Cod_ArticoloPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    FrmCercaArticoli.Caption:='Cerca Articolo da inserire in preventivo';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.cxGridDBTableView12DescrizionePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    FrmCercaArticoli.Caption:='Cerca Articolo da inserire in preventivo';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.cxGridDBTableView12QtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   //Apre la finestra di selezione degli articoli
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    FrmCercaArticoli.Caption:='Cerca Articolo da inserire in preventivo';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.cxGridDBTableView14Cod_ArticoloPropertiesButtonClick(
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

procedure TFrmMain.cxGridDBTableView14DescrizionePropertiesButtonClick(
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

procedure TFrmMain.cxGridDBTableView14QtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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


procedure TFrmMain.cxGridDBTableView15DblClick(Sender: TObject);
begin
  //Apre la finestra di consultazione/modifica scadenza
  if DM.Scadenze.Locate('Id_Scadenza',DM.Scad_Fattureid_scadenza.AsInteger,[])then
    try
      Application.CreateForm(TFrmScadenze,FrmScadenze);
      FrmScadenze.CbSoggetti.Enabled:=False;
      FrmScadenze.EdDescrizione.Enabled:=False;
      DM.Scadenze.Edit;
      FrmScadenze.ShowModal;
    finally
      FrmScadenze.Free;
      DM.Scad_Fatture.Refresh;
    end;
end;



procedure TFrmMain.cxGridDBTableView16CanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  {if DM.Prescrizioni.RecordCount>0 then
    NBDispositivi.PageIndex:=DM.PrescrizioniTipoPrescrizione.AsInteger;}

  {case DM.PrescrizioniTipoPrescrizione.AsInteger of
    0:DM.frxPreviewPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
    1:DM.frxPreviewPrescrizione.LoadFromFile('.\Report\Prescrizione-02.fr3');
  end;
  DM.frxPreviewPrescrizione.ShowReport();}
end;

procedure TFrmMain.cxGridDBTableView16CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if DM.Prescrizioni.RecordCount>0 then
    NBDispositivi.PageIndex:=DM.PrescrizioniTipoPrescrizione.AsInteger;
end;

procedure TFrmMain.cxGridDBTableView16DblClick(Sender: TObject);
begin
  if DM.Prescrizioni.RecordCount>0 then
    try
      Application.CreateForm(TFrmPrescrizione,FrmPrescrizione);
      case DM.PrescrizioniTipoPrescrizione.AsInteger of
        0:begin
            FrmPrescrizione.NB.ActivePageIndex:=0;
            FrmPrescrizione.NBProtesi.PageIndex:=0;
            FrmPrescrizione.BtnStampa.Visible:=True;
          end;
        1:begin
            FrmPrescrizione.NB.ActivePageIndex:=1;
            FrmPrescrizione.NBOrtodonzia.PageIndex:=0;
            FrmPrescrizione.BtnStampa2.Visible:=True;
          end;
      end;
      DM.DsPrescrizioni.AutoEdit:=True;
      FrmPrescrizione.ShowModal;
    finally
      FrmPrescrizione.Free;
    end;
end;

procedure TFrmMain.cxGridDBTableView18DblClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Si desidera visualizzare la scheda completa'+#13+
                                  'della fattura '+DM.Fatt_Pazientinumfattura.AsString+#13+
                                  'Intestata a: '+DM.Fatt_Pazientiragionesociale.AsString+'?'),
                                  'Visualizza Fattura',MB_YesNo+MB_ICONINFORMATION)=IdYes then
                                  if DM.Fatture.Locate('Id_Fattura',DM.Fatt_Pazientiid_fattura.AsInteger,[]) then
                                    begin
                                      Notebook.ActivePageIndex:=4;
                                      AdvOfficePager1.ActivePageIndex:=1;
                                      GridFatture.SetFocus;
                                    end
                                  else
                                    begin
                                      Application.MessageBox('Attenzione'+#13+
                                                             'Non è stato possibile individuare la fattura selezionata'+#13+#13+
                                                             'E'' probabile che sia stato abilitato il filtro per visualizzare'+#13+
                                                             'le sole fatture dell''anno corrente'+#13+#13+
                                                             'Andare nella sezione Documenti->Fatture'+#13+
                                                             'quindi togliere la spunta sul filtro'+#13+
                                                             '"Mostra solo Fatture dell''anno corrente"',
                                                             'Visualizza Fattura',MB_OK+MB_ICONWARNING);
                                     end;
end;

procedure TFrmMain.cxGridDBTableView19DblClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Si desidera visualizzare la scheda completa'+#13+
                                  'del preventivo '+DM.Prev_Pazientinumpreventivo.AsString+#13+
                                  'Intestato a: '+DM.Prev_Pazientiragionesociale.AsString+'?'),
                                  'Visualizza Preventivo',MB_YesNo+MB_ICONINFORMATION)=IdYes then
                                  if DM.Preventivi.Locate('Id_Preventivo',DM.Prev_Pazientiid_preventivo.AsInteger,[]) then
                                    begin
                                      Notebook.ActivePageIndex:=4;
                                      AdvOfficePager1.ActivePageIndex:=0;
                                      GridPreventivi.SetFocus;
                                    end
                                  else
                                    begin
                                      Application.MessageBox('Attenzione'+#13+
                                                             'Non è stato possibile individuare il preventivo selezionato'+#13+#13+
                                                             'E'' probabile che sia stato abilitato il filtro per visualizzare'+#13+
                                                             'i soli preventivi dell''anno corrente'+#13+#13+
                                                             'Andare nella sezione Documenti->Preventivi'+#13+
                                                             'quindi togliere la spunta sul filtro'+#13+
                                                             '"Mostra solo Preventivi dell''anno corrente"',
                                                             'Visualizza Preventivo',MB_OK+MB_ICONWARNING);
                                     end;

end;

procedure TFrmMain.cxGridDBTableView4DblClick(Sender: TObject);
begin
  if DM.Richiami.RecordCount>0 then BtnModificaRichiamoClick(Sender);
end;

procedure TFrmMain.cxGridDBTableView5DblClick(Sender: TObject);
begin
   if DM.Articoli.RecordCount>0 then btnModificaArticoloClick(Sender);
end;

procedure TFrmMain.cxGridDBTableView7DblClick(Sender: TObject);
begin
  if DM.PlannerTable.RecordCount>0 then //UpdateHeaders;
    case PagerAgenda.ActivePageIndex of
      0:if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
        begin
          DM.LocateAppuntamento;
          Planner.Positions:=GG;
        end;
      1:if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then LocateAppuntamento2;
    end;
end;

procedure TFrmMain.cxGridDBTableView8CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    DBPlanner1.Header.Captions.Text:=UpperCase(DBPlanner1.Header.Captions.Text);
end;

procedure TFrmMain.cxGridDBTableView8DblClick(Sender: TObject);
begin
  if DM.PlannerTable.RecordCount>0 then //UpdateHeaders;
    case PagerAgenda.ActivePageIndex of
      0:if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
        begin
          DM.LocateAppuntamento;
          Planner.Positions:=GG;
        end;
      1:if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then LocateAppuntamento2;
    end;
end;

procedure TFrmMain.AdvGlowButton2Click(Sender: TObject);
begin
  PopPrivacy.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFrmMain.EdIndirizzoPropertiesChange(Sender: TObject);
begin
  EdIndirizzoFatt.Text:=EdIndirizzo.Text;
end;


procedure TFrmMain.Action11Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=False;
    InsCartella:=False;
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModFattura:=False;
    InsFattura:=True;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action12Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=False;
    InsPreventivo:=True;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action13Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=False;
    InsCartella:=False;
    ModPreventivo:=False;
    InsPreventivo:=True;
    ModFattura:=False;
    InsFattura:=False;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action14Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=True;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action15Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=False;
    InsCartella:=True;
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action1Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModCartella:=True;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action2Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=True;
    InsCartella:=False;
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action3Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=True;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action4Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=False;
    InsCartella:=False;
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModFattura:=True;
    InsFattura:=False;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action5Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModCartella:=True;
    InsCartella:=False;
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action6Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action7Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=True;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.Action8Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelTrattamento,FrmSelTrattamento);
    ModPreventivo:=True;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=False;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmSelTrattamento.ShowModal;
  finally
    FrmSelTrattamento.Free;
  end;
end;

procedure TFrmMain.Action9Execute(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCercaArticoli,FrmCercaArticoli);
    ModPreventivo:=False;
    InsPreventivo:=False;
    ModCartella:=False;
    InsCartella:=False;
    ModFattura:=False;
    InsFattura:=True;
    FrmCercaArticoli.Caption:='Cerca Trattamenti in Anagrafica Articoli';
    FrmCercaArticoli.ShowModal;
  finally
    FrmCercaArticoli.Free;
  end;
end;

procedure TFrmMain.AdvGlowButton10Click(Sender: TObject);
begin
  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
  AdvGlowButton9.Enabled:=not DM.PazientiFIRMA.IsNull;
end;

procedure TFrmMain.AdvGlowButton9Click(Sender: TObject);
begin
  if DM.PazientiFIRMA.IsNull then Exit;

  FlgPaziente:=True;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=False;
  if Application.MessageBox(Pchar('Si desidera eliminare la firma del Paziente '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YESNO+MB_ICONWARNING)=id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA.Clear;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
      //Image1.Picture.LoadFromFile(PathEXE+'Blank.bmp');
    except
      exit;
    end;
  AdvGlowButton9.Enabled:=not DM.PazientiFIRMA.IsNull;
end;

procedure TFrmMain.AdvGlowButton11Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
  AdvGlowButton12.Enabled:=not DM.PazientiFIRMA_TUTORE.IsNull;
end;

procedure TFrmMain.AdvGlowButton12Click(Sender: TObject);
begin
  if DM.PazientiFIRMA_TUTORE.IsNull then Exit;

  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=False;
  FlgTutore:=True;
  if Application.MessageBox(Pchar('Si desidera eliminare la firma del Tutore di '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YESNO+MB_ICONWARNING)=id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_TUTORE.Clear;
      DM.PazientiTUTORE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
  AdvGlowButton12.Enabled:=not DM.PazientiFIRMA_TUTORE.IsNull;
end;

procedure TFrmMain.ChkTutoreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiTUTORE.AsBoolean:=ChkTutore.Checked;
  if DM.PazientiTUTORE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiPADRE.AsBoolean:=False;
      ChkPadre.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;

      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiMADRE.AsBoolean:=False;
      ChkMadre.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmMain.ChkPadreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiPADRE.AsBoolean:=ChkPadre.Checked;
  if DM.PazientiPADRE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiTUTORE.AsBoolean:=False;
      ChkTutore.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmMain.ChkMadreClick(Sender: TObject);
begin
  if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
  DM.PazientiMADRE.AsBoolean:=ChkMadre.Checked;
  if DM.PazientiMADRE.AsBoolean then
    begin
      if not (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Edit;
      DM.PazientiTUTORE.AsBoolean:=False;
      ChkTutore.Checked:=False;
      if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
    end;
  if (DM.Pazienti.State in [dsEdit])then DM.Pazienti.Post;
end;

procedure TFrmMain.AdvGlowButton13Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
  AdvGlowButton14.Enabled:=not DM.PazientiFIRMA_PADRE.IsNull;
end;

procedure TFrmMain.AdvGlowButton14Click(Sender: TObject);
begin
  if DM.PazientiFIRMA_PADRE.IsNull then Exit;
  FlgPaziente:=False;
  FlgPadre:=True;
  FlgMadre:=False;
  FlgTutore:=False;

  if Application.MessageBox(Pchar('Si desidera eliminare la firma del Padre del Paziente '+#13+#13+
                                   UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YESNO+MB_ICONWARNING)=id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_PADRE.Clear;
      DM.PazientiPADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
  AdvGlowButton14.Enabled:=not DM.PazientiFIRMA_PADRE.IsNull;
end;

procedure TFrmMain.AdvGlowButton15Click(Sender: TObject);
begin
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=True;
  FlgTutore:=False;
  try
    Application.CreateForm(TfrmFirma,FrmFirma);
    FrmFirma.ShowModal;
  finally
    FrmFirma.Free;
  end;
  AdvGlowButton16.Enabled:=not DM.PazientiFIRMA_MADRE.IsNull;
end;

procedure TFrmMain.AdvGlowButton16Click(Sender: TObject);
begin
  if DM.PazientiFIRMA_MADRE.IsNull then Exit;
  FlgPaziente:=False;
  FlgPadre:=False;
  FlgMadre:=True;
  FlgTutore:=False;
  if Application.MessageBox(Pchar('Si desidera eliminare la firma della Madre del Paziente '+#13+#13+
                                  UpperCase(DM.PazientiCalcNominativo.AsString)+'?'),
                                  'Elimina Firma',MB_YESNO+MB_ICONWARNING)=id_Yes then
    try
      if not (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Edit;
      DM.PazientiFIRMA_MADRE.Clear;
      DM.PazientiMADRE.AsBoolean:=False;
      if (DM.Pazienti.State in [dsEdit]) then DM.Pazienti.Post;
    except
      exit;
    end;
  AdvGlowButton16.Enabled:=not DM.PazientiFIRMA_MADRE.IsNull;
end;

procedure TFrmMain.SIStampaPrescrizioneClick(Sender: TObject);
begin
  case DM.PrescrizioniTipoPrescrizione.AsInteger of
    0:DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-01.fr3');
    1:DM.frPrescrizione.LoadFromFile('.\Report\Prescrizione-02.fr3');
  end;
  DM.frPrescrizione.ShowReport();
end;

procedure TFrmMain.GBCercaPazientePrevClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    ModPreventivo:=True;
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

procedure TFrmMain.GBConvertiPreventiviClick(Sender: TObject);
begin
  if DM.Preventivi.RecordCount>0 then
    begin
      if DM.Fatture.Locate('NumPreventivo',(DM.PreventiviNumPreventivo.AsString+'/'+DM.PreventiviAnno.AsString),[])then
        begin
          if Application.MessageBox(PChar('Attenzione!'+#13+#13+
                                          'Il preventivo corrente è stato già convertito in fattura.'+#13+
                                          'Si desidera visualizzare la relativa fattura?'),
                                          'Visualizza Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then AdvOfficePager1.ActivePageIndex:=1;
        end
      else
        begin
          if Application.MessageBox('Si desidera convertire il preventivo corrente in fattura ?',
                                    'Genera Fattura',MB_YesNo+MB_ICONQUESTION)=Id_Yes then PrevToFattura;
       end;
    end;
end;

procedure TFrmMain.GBCercaPazienteFattClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSearchPaziente,FrmSearchPaziente);
    ModFattura:=True;
    FrmSearchPaziente.ShowModal;
  finally
    FrmSearchPaziente.Free;
  end;
end;

procedure TFrmMain.EdCodiceFiscaleExit(Sender: TObject);
begin
  if DM.Fatture.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaCF(EdCodiceFiscale.Text)then EdCodiceFiscale.setFocus;
    end;
end;

procedure TFrmMain.EdPartitaIvaExit(Sender: TObject);
begin
  if DM.Fatture.State in ([dsInsert, dsEdit]) then
    begin
      if not FrmMain.ControllaPIVA(EdPartitaIva.Text)then EdPartitaIva.setFocus;
    end;
end;

procedure TFrmMain.AdvGlowButton21Click(Sender: TObject);
begin
  //Si posiziona all'inizio dell'anagrafica articoli
  Screen.Cursor:=crHourGlass;
  DM.Articoli.DisableControls;
  DM.Articoli.First;
  DM.MemSottoscorta.EmptyTable;
  while not DM.Articoli.Eof do
    begin
      //Apre la Query che conteggia la giacenza attuale
      DM.QryGiacenze.Close;
      DM.QryGiacenze.ParamByName('iId_Articolo').AsInteger:=DM.ArticoliId_Articolo.AsInteger;
      DM.QryGiacenze.Open;
      if (DM.ArticoliGiacMin.AsInteger>0)and(DM.ArticoliGiacMin.AsInteger>=DM.QryGiacenzeGiacenza.AsInteger) then
        //Inserisce un record nella tabella MemSottoscorta
        begin
          DM.MemSottoscorta.Append;
          DM.MemSottoscortaCod_Articolo.AsString:=DM.ArticoliCod_Articolo.AsString;
          DM.MemSottoscortaDescrizione.AsString:=DM.ArticoliDescrizione.AsString;
          DM.MemSottoscortaCosto.AsCurrency:=DM.ArticoliCosto.AsCurrency;
          DM.MemSottoscortaPrezzo.AsCurrency:=DM.ArticoliPrezzo.AsCurrency;
          DM.MemSottoscortaPeso_UM.AsString:=DM.ArticoliPeso_UM.AsString;
          DM.MemSottoscortaCategoria_Terapia.AsString:=DM.ArticoliCategoria_Terapia.AsString;
          DM.MemSottoscortaAliquotaIVA.AsInteger:=DM.ArticoliAliquotaIVA.AsInteger;
          DM.MemSottoscortaBarcode.AsString:=DM.ArticoliBarcode.AsString;
          DM.MemSottoscortaGiacMin.AsInteger:=DM.ArticoliGiacMin.AsInteger;
          DM.MemSottoscortaGiacenzaAttuale.AsInteger:=DM.QryGiacenzeGiacenza.AsInteger;
          DM.MemSottoscortaId_Articolo.AsInteger:=DM.ArticoliId_Articolo.AsInteger;
          DM.MemSottoscorta.Post;
        end;
      DM.Articoli.Next;
    end;
  DM.Articoli.First;
  DM.Articoli.EnableControls;
  Screen.Cursor:=crDefault;
  if DM.MemSottoscorta.RecordCount>0 then
    //Elabora il report di anteprima degli articoli sottoscorta
    begin
      DM.frSottoscorta.LoadFromFile('Report\Sottoscorta.fr3');
      DM.frSottoscorta.ShowReport();
    end;
end;

procedure TFrmMain.CmbDottoriPropertiesChange(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.CmbPazientiPropertiesChange(Sender: TObject);
begin
  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end;
end;

procedure TFrmMain.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
    begin
      CxGrid15.Top:=40;
      CxGrid15.Height:=302;
      if Screen.width >1440 then
        //Per schermi grandi mostra tutte le colonne
        begin
          cxGridDBTableView21Img.Visible:=True;
          cxGridDBTableView21Img.Caption:='';
          cxGridDBTableView21Cartella.Visible:=True;
          cxGridDBTableView21Cartella.Caption:='CARTELLA';
          cxGridDBTableView21Dottore.Visible:=True;
          cxGridDBTableView21Dottore.Caption:='DOTTORE';
          cxGridDBDaFatturare.HeaderAlignmentHorz:=taCenter;
          cxGridDBFatturate.HeaderAlignmentHorz:=taCenter;
          cxGridDBDaFatturare.Width:=300;
          cxGridDBFatturate.Width:=300;
        end
      else
        begin
          cxGridDBTableView21Img.Visible:=False;
          cxGridDBTableView21Cartella.Visible:=False;
          cxGridDBTableView21Dottore.Visible:=False;
          cxGridDBTableView21Cartella.Caption:='';
          cxGridDBTableView21Dottore.Caption:='';
          cxGridDBDaFatturare.HeaderAlignmentHorz:=taRightJustify;
          cxGridDBFatturate.HeaderAlignmentHorz:=taRightJustify;
          cxGridDBDaFatturare.Width:=250;
          cxGridDBFatturate.Width:=250;
        end;
    end
  else
    begin
      CxGrid15.Height:=45;
      CxGrid15.Top:=296;
      cxGridDBTableView21Img.Visible:=False;
      cxGridDBTableView21Cartella.Visible:=False;
      cxGridDBTableView21Dottore.Visible:=False;
      cxGridDBTableView21Cartella.Caption:='';
      cxGridDBTableView21Dottore.Caption:='';
      cxGridDBDaFatturare.HeaderAlignmentHorz:=taRightJustify;
      cxGridDBFatturate.HeaderAlignmentHorz:=taRightJustify;
    end;
  cxGridDBTableView21Img.Visible:=False;
  FrmMain.OnResize(Self);

end;

procedure TFrmMain.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  CanScroll:=False;
  Planner.ItemSource:=nil;
  DBPlanner1.ItemSource:=nil;

  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end
  else
    begin
      Screen.Cursor:=crHourGlass;
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
      Screen.Cursor:=crDefault;
    end;

  if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      Planner.Positions:=GG;
      Planner.ItemSource:=DM.DBDaySource1;
      UpdateHeaders;
    end
  else if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      if DM.Dottori.RecordCount>0 then DBPlanner1.Positions:=DM.Dottori.RecordCount
      else DBPlanner1.Positions:=1;
      DBPlanner1.ItemSource:=DBDaySource1;
      DBPlanner1.PositionWidth:=DBPlanner1.Width div DM.Dottori.RecordCount;
    end;
  CanScroll:=True;
end;

procedure TFrmMain.suiCheckBox1Click(Sender: TObject);
begin
  CanScroll:=False;
  Planner.ItemSource:=nil;
  DBPlanner1.ItemSource:=nil;

  if suiCheckBox1.Checked then
    begin
      Screen.Cursor:=crHourGlass;
      if(EdInizio.Text='')and(EdFine.Text='')and(CmbPazienti.Text='')and (CmbDottori.Text='')then
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

      GBModificaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      GBEliminaAppuntamento.Enabled:=DM.PlannerTable.RecordCount>0;
      Screen.Cursor:=crDefault;
    end
  else
    begin
      Screen.Cursor:=crHourGlass;
      DM.PlannerTable.Filter:='';
      DM.PlannerTable.Filtered:=False;
      Screen.Cursor:=crDefault;
    end;

  if not DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      Planner.Positions:=GG;
      Planner.ItemSource:=DM.DBDaySource1;
      UpdateHeaders;
    end
  else if DM.ImpostazioniGroupAgendaByDoctor.AsBoolean then
    begin
      if DM.Dottori.RecordCount>0 then DBPlanner1.Positions:=DM.Dottori.RecordCount
      else DBPlanner1.Positions:=1;
      DBPlanner1.ItemSource:=DBDaySource1;
      DBPlanner1.PositionWidth:=DBPlanner1.Width div DM.Dottori.RecordCount;
    end;
  CanScroll:=True;
end;

procedure TFrmMain.EdDataFinePropertiesEditValueChanged(Sender: TObject);
begin
  if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;

  if(EdDataInizio.Date=0)and(EdDataFine.Date=0)and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end

  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text<>'')and(EdPartita.Text='')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end
  else if(EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze
    end;
end;

procedure TFrmMain.CbSoggettiPropertiesChange(Sender: TObject);
begin
  if CbSoggetti.Text<>''then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if (EdDataInizio.TextHint='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end
  else if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end
end;

procedure TFrmMain.EdPartitaPropertiesChange(Sender: TObject);
begin
  if EdPartita.Text<>''then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if (EdDataInizio.Text='')and(EdDataFine.Text='')and(CbSoggetti.Text='')and(EdPartita.Text='')then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end
  else if (EdDataInizio.Text<>'')and(EdDataFine.Text<>'')then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
end;

procedure TFrmMain.ChkSaldateClick(Sender: TObject);
begin
  if ChkSaldate.Checked then
    begin
      if ChkFiltra.Checked then FiltraScadenze;
    end;
  if (EdDataInizio.Text='')and(EdDataFine.Text='')and
    (CbSoggetti.Text='')and(EdPartita.Text='')and(not ChkSaldate.Checked)then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end;
end;

procedure TFrmMain.ChkFiltraClick(Sender: TObject);
begin
  if ChkFiltra.Checked then FiltraScadenze
  else if not ChkFiltra.Checked then
    begin
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
      EdDataInizio.Clear;
      EdDataFine.Clear;
    end;

  if (EdDataInizio.Text='')and(EdDataFine.Text='')and
    (CbSoggetti.Text='')and(EdPartita.Text='')and(not ChkSaldate.Checked)then
    begin
      ChkFiltra.Checked:=False;
      DM.Scadenze.Filter:='';
      DM.Scadenze.Filtered:=False;
    end;
end;

procedure TFrmMain.CmbTipoOperazioneKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      if CmbTipoOperazione.Text<>''then
        begin
          if ChkFiltra2.Checked then FiltraBanca;
        end;

      if (EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
        begin
          ChkFiltra2.Checked:=False;
          DM.Banca.Filter:='';
          DM.Banca.Filtered:=False;
        end

      else if (EdData1.Text<>'')or(EdData2.Text<>'')then
        begin
          if ChkFiltra2.Checked then FiltraBanca;
        end;
  end;
end;

procedure TFrmMain.CmbTipoOperazionePropertiesChange(Sender: TObject);
begin
  if CmbTipoOperazione.Text<>''then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
  if (EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end

  else if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
end;

procedure TFrmMain.CmbTipoPartitaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      if CmbTipoOperazione.Text<>''then
        begin
          if ChkFiltra2.Checked then FiltraBanca;
        end;

      if (EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
        begin
          ChkFiltra2.Checked:=False;
          DM.Banca.Filter:='';
          DM.Banca.Filtered:=False;
        end

      else if (EdData1.Text<>'')or(EdData2.Text<>'')then
        begin
          if ChkFiltra2.Checked then FiltraBanca;
        end;
  end;
end;

procedure TFrmMain.CmbTipoPartitaPropertiesChange(Sender: TObject);
begin
  if CmbTipoOperazione.Text<>''then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;

  if (EdData1.Text='')and(EdData2.Text='')and(CmbTipoOperazione.Text='')and(CmbTipoPartita.Text='')then
    begin
      ChkFiltra2.Checked:=False;
      DM.Banca.Filter:='';
      DM.Banca.Filtered:=False;
    end

  else if (EdData1.Text<>'')or(EdData2.Text<>'')then
    begin
      if ChkFiltra2.Checked then FiltraBanca;
    end;
end;

procedure TFrmMain.CmbTipoPartitaPropertiesCloseUp(Sender: TObject);
begin
   if CmbTipoPartita.Text<>''then
    if ChkFiltra2.Checked then FiltraBanca;
end;

function TFrmMain.CheckScadenzePagate(Id_Fattura:Integer): Boolean;
var
  Scadenze:String;
begin
  //Se è in corso la conversione di una cartella in fattura esce dalla procedura di controllo
  if Cartella_to_Fattura then Exit;


  //Se è in corso la conversione di un preventivo in fattura esce dalla procedura
  if ConvertPreventivo then Exit;

  //Se è in corso l'eliminazione di una fattura esce dalla procedura
  if Del_Fattura then Exit;


  if (CurrImpFattura=NewImpFattura)and(CurrModPag=NewModPag)then
    begin
      Result:=False;
      Exit;
    end
  else
   try
     ListeIni:=TIniFile.Create('.\Liste.ini');
     Scadenze:=ListeIni.ReadString('IMPOSTAZIONI VARIE','GENERA_SCADENZE','');
     if ((Scadenze='1')and(not DM.FattureId_ModPag.IsNull)and((CurrImpFattura<>NewImpFattura))or(CurrModPag<>NewModPag))then
       begin
         //E' stato modificato l'importo o la modalità di pagamento della fattura
         //se ci sono scadenze adssociate alla fattura viene chiesto all'utente se si desidera ricalcolarle

         //Filtra la tabella Scad_Fatture per verificare che ci siano scadenze saldate
         DM.Scad_Fatture.Filter:='saldato=True';
         DM.Scad_Fatture.Filtered:=True;
         if DM.Scad_Fatture.RecordCount>0 then Result:=True
         else Result:=False;
         {Restituisce True a significare che ci sono scadenze segnate come pagate e quindi
          non è possibiole il ricalcolo automatico ma è necessario informare l''utente che si rende necessaria la modifica manuale}
       end;

     if Result=True then
       begin
         if Application.MessageBox(Pchar('Attenzione!'+#13+#13+
                                         'Hai apportato modifiche all''importo della fattura o alla modalità di pagamento.'+#13+#13+
                                         'La fattura corrente ha delle scadenze associate.'+#13+
                                         'Alcune di esse sono segnate come già pagate.'+#13+#13+
                                         'Si desidera comunque ricalcolare tutte le scadenze?'+#13+#13+
                                         'Premendo SI le scadenze associate alla fattura corrente verranno eliminate e poi ricalcolate. '+#13+#13+
                                         'Premendo NO le scadenze dovranno essere modificate manualmente'),
                                         'Genera Scadenze',MB_YesNo+MB_ICONWARNING)=Id_Yes then GeneraScadenzeFatture;
       end
     else
       begin
         if Application.MessageBox(Pchar('Attenzione!'+#13+#13+
                                         'Hai apportato modifiche all''importo della fattura o alla modalità di pagamento.'+#13+#13+
                                         'Si desidera calcolare le scadenze per la fattura corrente?'+#13+#13+
                                         'Premendo SI eventuali scadenze associate alla fattura corrente verranno eliminate e poi ricalcolate. '+#13+#13+
                                         'Premendo NO eventuali scadenze associate alla fattura corrente dovranno essere modificate manualmente'),
                                         'Genera Scadenze',MB_YesNo+MB_ICONWARNING)=Id_Yes then GeneraScadenzeFatture;
       end;
    finally
      ListeIni.Free;
    end;
    DM.Scad_Fatture.Filter:='';
    DM.Scad_Fatture.Filtered:=False;
    DM.Scad_Fatture.Refresh;
end;


procedure TFrmMain.ChkFiltra2Click(Sender: TObject);
begin
   if ChkFiltra2.Checked then FiltraBanca
    else
      begin
        EdData1.Clear;
        EdData2.Clear;
        CmbTipoOperazione.Text:='';
        CmbTipoPartita.Text:='';
        DM.Banca.Filter:='';
        DM.Banca.Filtered:=False;
      end;
   SIModificaBanca.Enabled:=DM.Banca.RecordCount>0;
   SIEliminaBanca.Enabled:=DM.Banca.RecordCount>0;
   SIStampaBanca.Enabled:=DM.Banca.RecordCount>0;
end;




end.


//['{20587EC2-4CB1-4E5D-AEE7-77C4C23D532A}']
