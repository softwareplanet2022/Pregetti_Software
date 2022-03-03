object FrmCercaCartelle_Fatturare: TFrmCercaCartelle_Fatturare
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Cerca Cartelle da Fatturare'
  ClientHeight = 561
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.4.2.0'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = FrmMain.AdvPanelStyler1
    Text = ''
    FullHeight = 200
    object Label1: TLabel
      Left = 9
      Top = 17
      Width = 48
      Height = 13
      Caption = 'Paziente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 472
      Top = 18
      Width = 60
      Height = 13
      Caption = 'Dalla Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 593
      Top = 18
      Width = 52
      Height = 13
      Caption = 'Alla Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxGrid11: TcxGrid
      Left = 10
      Top = 341
      Width = 965
      Height = 164
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView17: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsFatture
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = 'Nessuna Fattura da mostrare'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBNUMFATTURA: TcxGridDBColumn
          Caption = 'N'#176' FATT'
          DataBinding.FieldName = 'NumFattura'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 59
        end
        object cxGridDBDATA: TcxGridDBColumn
          Caption = 'DATA'
          DataBinding.FieldName = 'Data'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 75
        end
        object cxGridDBFATTURA: TcxGridDBColumn
          Caption = 'FATTURA'
          DataBinding.FieldName = 'CalcNumFattura'
          HeaderAlignmentHorz = taCenter
          Width = 295
        end
        object cxGridDBTableView17TotFattura: TcxGridDBColumn
          Caption = 'TOT. FATTURA'
          DataBinding.FieldName = 'CalcTotaleFattura'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
      end
      object cxGridLevel17: TcxGridLevel
        GridView = cxGridDBTableView17
      end
    end
    object DataFine: TcxDateEdit
      Left = 589
      Top = 34
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetCartella
      Style.BorderColor = 13283227
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 22
      Width = 113
    end
    object DataInizio: TcxDateEdit
      Left = 469
      Top = 34
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetCartella
      Style.BorderColor = 13283227
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 22
      Width = 113
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 398
      Top = 524
      Width = 96
      Height = 28
      Caption = 'CONFERMA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 500
      Top = 524
      Width = 96
      Height = 28
      Caption = 'ANNULLA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object EdPaziente: TcxTextEdit
      Left = 8
      Top = 33
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetCartella
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 22
      Width = 447
    end
    object cxGrid2: TcxGrid
      Left = 10
      Top = 72
      Width = 965
      Height = 433
      TabOrder = 5
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsQryCartelle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'TOTALI: '
            Kind = skSum
            DisplayText = 'Totali:'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'Imponibile'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'Imposte'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'Bolli'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'Ritenuta'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'CalcTotale'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Header = FrmMain.cxStyle12
        object cxGridDBTableView3Column3: TcxGridDBColumn
          Caption = 'COD. CARTELLA'
          DataBinding.FieldName = 'cod_cartella'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object cxGridDBTableView3DataCartella: TcxGridDBColumn
          Caption = 'DATA CART.'
          DataBinding.FieldName = 'DataCartella'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object cxGridDBTableView3Paziente: TcxGridDBColumn
          Caption = 'PAZIENTE'
          DataBinding.FieldName = 'Paziente'
          HeaderAlignmentHorz = taCenter
          Width = 275
        end
        object cxGridDBTableView3Citta: TcxGridDBColumn
          Caption = 'CITTA'#39
          DataBinding.FieldName = 'Citta'
          HeaderAlignmentHorz = taCenter
          Width = 194
        end
        object cxGridDBTableView3Prov: TcxGridDBColumn
          Caption = 'PROV'
          DataBinding.FieldName = 'Prov'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object cxGridDBTableView3Column1: TcxGridDBColumn
          Caption = 'TOT. CARTELLA'
          DataBinding.FieldName = 'TotCartella'
          HeaderAlignmentHorz = taCenter
          Width = 140
        end
        object cxGridDBTableView3Column2: TcxGridDBColumn
          Caption = 'FATTURATA'
          DataBinding.FieldName = 'fatturata'
          Visible = False
          Width = 85
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
  end
  object DsQryCartelle: TDataSource
    DataSet = QryCartelle
    Left = 64
    Top = 224
  end
  object QryCartelle: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      
        'SELECT SUM(dettcartelle.`importo`)As TotCartella, CONCAT(pazient' +
        'i.`Cognome`,'#39' '#39',pazienti.`Nome`)As Paziente,'
      
        '       cartelle.`datacartella`, cartelle.`cod_cartella`,cartelle' +
        '.`fatturata`'
      'FROM dettcartelle'
      
        '  INNER JOIN cartelle ON (dettcartelle.`cod_cartella` = cartelle' +
        '.`cod_cartella`)'
      
        '  INNER JOIN pazienti ON (cartelle.`cod_paziente` = pazienti.`co' +
        'd_paziente`)'
      
        '  WHERE (Upper(pazienti.Cognome+'#39' '#39'+pazienti.Nome) like Upper(:i' +
        'Nominativo))'
      
        '  AND (cartelle.`DataCartella` >= (:iDalGiorno))AND(cartelle.`Da' +
        'taCartella` <=(:iAlGiorno)'
      '  AND(cartelle.`fatturata`<>1))'
      '  GROUP BY cartelle.`cod_cartella`'
      '')
    Filter = 'fatturata <> TRUE'
    AfterScroll = QryCartelleAfterScroll
    Options.FieldOrigins = foNone
    Active = True
    Left = 96
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'iNominativo'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'iDalGiorno'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'iAlGiorno'
        Value = nil
      end>
    object QryCartellePaziente: TStringField
      FieldName = 'Paziente'
      Size = 301
    end
    object QryCartelledatacartella: TDateField
      FieldName = 'datacartella'
    end
    object QryCartellecod_cartella: TIntegerField
      FieldName = 'cod_cartella'
    end
    object QryCartellefatturata: TBooleanField
      FieldName = 'fatturata'
    end
    object QryCartelleTotCartella: TFloatField
      FieldName = 'TotCartella'
      currency = True
    end
  end
  object DettCartella: TMyTable
    TableName = 'dettcartelle'
    MasterFields = 'Cod_Cartella'
    DetailFields = 'cod_cartella'
    MasterSource = DsQryCartelle
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 96
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod_Cartella'
        ParamType = ptInput
        Value = nil
      end>
    object DettCartellaid_intervento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_intervento'
    end
    object DettCartelladatainizio: TDateField
      FieldName = 'datainizio'
    end
    object DettCartelladatatermine: TDateField
      FieldName = 'datatermine'
    end
    object DettCartellanrodente: TFloatField
      FieldName = 'nrodente'
    end
    object DettCartellaapbanda: TBooleanField
      FieldName = 'apbanda'
    end
    object DettCartellaapbracket: TBooleanField
      FieldName = 'apbracket'
    end
    object DettCartellaapcontenzione: TBooleanField
      FieldName = 'apcontenzione'
    end
    object DettCartellaapestrazione: TBooleanField
      FieldName = 'apestrazione'
    end
    object DettCartellaapritenzione: TBooleanField
      FieldName = 'apritenzione'
    end
    object DettCartellamancante: TBooleanField
      FieldName = 'mancante'
    end
    object DettCartellaagenesia: TBooleanField
      FieldName = 'agenesia'
    end
    object DettCartellaincluso: TBooleanField
      FieldName = 'incluso'
    end
    object DettCartellasemiincluso: TBooleanField
      FieldName = 'semiincluso'
    end
    object DettCartellaradice: TBooleanField
      FieldName = 'radice'
    end
    object DettCartellacarie: TBooleanField
      FieldName = 'carie'
    end
    object DettCartellafrattura: TBooleanField
      FieldName = 'frattura'
    end
    object DettCartellagranuloma: TBooleanField
      FieldName = 'granuloma'
    end
    object DettCartellaestrazione: TBooleanField
      FieldName = 'estrazione'
    end
    object DettCartellaotturazione: TBooleanField
      FieldName = 'otturazione'
    end
    object DettCartellaedodonzia: TBooleanField
      FieldName = 'edodonzia'
    end
    object DettCartellacorona: TBooleanField
      FieldName = 'corona'
    end
    object DettCartellaimpianro: TBooleanField
      FieldName = 'impianro'
    end
    object DettCartelladiagnosi: TStringField
      FieldName = 'diagnosi'
      Size = 250
    end
    object DettCartellatrattamento: TStringField
      FieldName = 'trattamento'
      Size = 250
    end
    object DettCartellaeseguito: TBooleanField
      FieldName = 'eseguito'
    end
    object DettCartellaimmagine: TBooleanField
      FieldName = 'immagine'
    end
    object DettCartellaimporto: TFloatField
      FieldName = 'importo'
    end
    object DettCartellastatolavorazione: TStringField
      FieldName = 'statolavorazione'
      Size = 100
    end
    object DettCartellaid_statolavorazione: TFloatField
      FieldName = 'id_statolavorazione'
    end
    object DettCartellaid_dottore: TFloatField
      FieldName = 'id_dottore'
    end
    object DettCartelladottore: TStringField
      FieldName = 'dottore'
      Size = 100
    end
    object DettCartellacod_cartella: TIntegerField
      FieldName = 'cod_cartella'
    end
  end
  object DsDettCartella: TDataSource
    DataSet = DettCartella
    Left = 64
    Top = 256
  end
  object Fatture: TMyTable
    TableName = 'fatture'
    OrderFields = 'anno desc, numfattura desc'
    MasterFields = 'cod_cartella'
    DetailFields = 'cod_cartella'
    MasterSource = DsQryCartelle
    Connection = DM.MyConnection1
    Active = True
    OnCalcFields = FattureCalcFields
    Options.FieldOrigins = foNone
    Left = 160
    Top = 226
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_cartella'
        ParamType = ptInput
        Value = nil
      end>
    object FattureNumFattura: TFloatField
      FieldName = 'NumFattura'
      Origin = 'Fatture.NumFattura'
    end
    object Fatturecod_cartella: TIntegerField
      FieldName = 'cod_cartella'
    end
    object FattureAnno: TFloatField
      FieldName = 'Anno'
      Origin = 'Fatture.Anno'
    end
    object FattureId_Fattura: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Fattura'
      Origin = 'Fatture.Id_Fattura'
      ReadOnly = True
    end
    object FattureCod_Paziente: TFloatField
      FieldName = 'Cod_Paziente'
      Origin = 'Fatture.Cod_Paziente'
    end
    object FattureModalitaPagamento: TStringField
      FieldName = 'ModalitaPagamento'
      Origin = 'Fatture.ModalitaPagamento'
      Size = 255
    end
    object FattureData: TDateField
      FieldName = 'Data'
      Origin = 'Fatture.Data'
    end
    object FattureNote: TMemoField
      FieldName = 'Note'
      Origin = 'Fatture.Note'
      BlobType = ftMemo
    end
    object FattureRagioneSociale: TStringField
      FieldName = 'RagioneSociale'
      Origin = 'Fatture.RagioneSociale'
      Size = 255
    end
    object FattureIndirizzo: TStringField
      FieldName = 'Indirizzo'
      Origin = 'Fatture.Indirizzo'
      Size = 255
    end
    object FattureCap: TStringField
      FieldName = 'Cap'
      Origin = 'Fatture.Cap'
      Size = 5
    end
    object FattureCitta: TStringField
      FieldName = 'Citta'
      Origin = 'Fatture.Citta'
      Size = 150
    end
    object FattureProv: TStringField
      FieldName = 'Prov'
      Origin = 'Fatture.Prov'
      Size = 3
    end
    object FattureCodFisc: TStringField
      FieldName = 'CodFisc'
      Origin = 'Fatture.CodFisc'
      Size = 16
    end
    object FatturePartitaIVA: TStringField
      FieldName = 'PartitaIVA'
      Origin = 'Fatture.PartitaIVA'
      Size = 11
    end
    object FattureAliquotaIVA: TFloatField
      FieldName = 'AliquotaIVA'
      Origin = 'Fatture.AliquotaIVA'
    end
    object FattureAliquotaRitenuta: TFloatField
      FieldName = 'AliquotaRitenuta'
      Origin = 'Fatture.AliquotaRitenuta'
    end
    object FattureImponibile: TCurrencyField
      FieldName = 'Imponibile'
      Origin = 'Fatture.Imponibile'
      DisplayFormat = #8364' #,##0.#0'
    end
    object FattureImportoSconto: TCurrencyField
      FieldName = 'ImportoSconto'
      Origin = 'Fatture.ImportoSconto'
      DisplayFormat = #8364' #,##0.#0'
    end
    object FattureImportoBolli: TCurrencyField
      FieldName = 'ImportoBolli'
      Origin = 'Fatture.ImportoBolli'
      DisplayFormat = #8364' #,##0.#0'
    end
    object FattureCalcImponibileNetto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImponibileNetto'
      DisplayFormat = #8364' #,##0.#0'
      Calculated = True
    end
    object FattureCalcImportoRitenuta: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoRitenuta'
      DisplayFormat = #8364' #,##0.#0'
      Calculated = True
    end
    object FattureCalcImportoIva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoIva'
      DisplayFormat = #8364' #,##0.#0'
      Calculated = True
    end
    object FattureCalcImportoFattura: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoFattura'
      DisplayFormat = #8364' #,##0.#0'
      Calculated = True
    end
    object FattureCalcTotaleFattura: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcTotaleFattura'
      DisplayFormat = #8364' #,##0.#0'
      Calculated = True
    end
    object FattureCalcNumFattura: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcNumFattura'
      Size = 50
      Calculated = True
    end
    object FattureCalcAnno: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CalcAnno'
      Calculated = True
    end
    object FattureCalcPiePagina: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcPiePagina'
      Size = 255
      Calculated = True
    end
    object FattureBanca: TMemoField
      FieldName = 'Banca'
      Origin = 'Fatture.Banca'
      BlobType = ftMemo
    end
    object FattureCAUSALE: TStringField
      FieldName = 'CAUSALE'
      Origin = 'Fatture.CAUSALE'
      Size = 100
    end
    object FatturePAGAMENTO_TRACCIATO: TBooleanField
      DefaultExpression = 'FALSE'
      FieldName = 'PAGAMENTO_TRACCIATO'
      Origin = 'Fatture.PAGAMENTO_TRACCIATO'
    end
    object FatturePAGATA: TBooleanField
      DefaultExpression = 'FALSE'
      FieldName = 'PAGATA'
      Origin = 'Fatture.PAGATA'
    end
    object FattureDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'Fatture.DATA_PAGAMENTO'
    end
    object FattureNATURA_IVA: TStringField
      FieldName = 'NATURA_IVA'
      Origin = 'Fatture.NATURA_IVA'
      Size = 2
    end
    object FattureIMPORTO_IVA: TCurrencyField
      FieldName = 'IMPORTO_IVA'
      Origin = 'Fatture.IMPORTO_IVA'
    end
    object FattureRiferimento: TStringField
      FieldName = 'Riferimento'
      Size = 250
    end
    object FattureFattura_Acconto: TBooleanField
      FieldName = 'Fattura_Acconto'
    end
  end
  object DsFatture: TDataSource
    AutoEdit = False
    DataSet = Fatture
    Left = 128
    Top = 225
  end
  object SumFatt: TDBSumList
    DataSet = DettFatture
    ExternalRecalc = False
    SumCollection = <
      item
        FieldName = 'CalcImporto'
        GroupOperation = goSum
      end
      item
        FieldName = 'CalcImportoSconto'
        GroupOperation = goSum
      end
      item
        FieldName = 'CalcImportoScontato'
        GroupOperation = goSum
      end
      item
        FieldName = 'CalcImportoIva'
        GroupOperation = goSum
      end
      item
        FieldName = 'CalcImpScontatoIvato'
        GroupOperation = goSum
      end>
    VirtualRecords = False
    Left = 192
    Top = 262
  end
  object DettFatture: TMyTable
    TableName = 'dettfatture'
    MasterFields = 'Id_Fattura'
    DetailFields = 'Id_Fattura'
    MasterSource = DsFatture
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 160
    Top = 256
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Id_Fattura'
        ParamType = ptInput
        Value = nil
      end>
    object DettFattureId_Dettaglio: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Dettaglio'
      Origin = 'DettFatture.Id_Dettaglio'
      ReadOnly = True
    end
    object DettFattureId_Fattura: TFloatField
      FieldName = 'Id_Fattura'
      Origin = 'DettFatture.Id_Fattura'
    end
    object DettFattureCod_Articolo: TStringField
      FieldName = 'Cod_Articolo'
      Origin = 'DettFatture.Cod_Articolo'
    end
    object DettFattureQta: TFloatField
      FieldName = 'Qta'
      Origin = 'DettFatture.Qta'
    end
    object DettFattureDescrizione: TStringField
      FieldName = 'Descrizione'
      Origin = 'DettFatture.Descrizione'
      Size = 255
    end
    object DettFatturePrezzoUnitario: TCurrencyField
      FieldName = 'PrezzoUnitario'
      Origin = 'DettFatture.PrezzoUnitario'
    end
    object DettFattureSconto: TFloatField
      Alignment = taCenter
      FieldName = 'Sconto'
      Origin = 'DettFatture.Sconto'
    end
    object DettFattureAliquotaIva: TFloatField
      FieldName = 'AliquotaIva'
      Origin = 'DettFatture.AliquotaIva'
    end
    object DettFattureNroDente: TFloatField
      Alignment = taCenter
      FieldName = 'NroDente'
      Origin = 'DettFatture.NroDente'
    end
    object DettFattureTIPO_SPESA: TStringField
      FieldName = 'TIPO_SPESA'
      Origin = 'DettFatture.TIPO_SPESA'
      Size = 2
    end
    object DettFattureCalcImportoSconto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoSconto'
      Calculated = True
    end
    object DettFattureCalcImportoScontato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoScontato'
      Calculated = True
    end
    object DettFattureCalcImporto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImporto'
      Calculated = True
    end
    object DettFattureCalcImportoIva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoIva'
      Calculated = True
    end
    object DettFattureCalcImpScontatoIvato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImpScontatoIvato'
      Calculated = True
    end
  end
  object DsDettFatture: TDataSource
    DataSet = DettFatture
    Left = 129
    Top = 257
  end
end
