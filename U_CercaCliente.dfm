object FrmCercaCliente: TFrmCercaCliente
  Left = 535
  Top = 213
  BorderStyle = bsDialog
  Caption = '   Cerca Paziente'
  ClientHeight = 523
  ClientWidth = 854
  Color = clBtnFace
  Constraints.MinHeight = 32
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 523
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
      Left = 13
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Cognome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 203
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 397
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Citt'#224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 575
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Prov'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BtnScheda: TAdvGlowButton
      Left = 248
      Top = 456
      Width = 170
      Height = 35
      Hint = 'Visualizza la scheda del cliente selezionato'
      Caption = 'Visualizza Scheda Paziente'
      ImageIndex = 0
      Images = ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BtnSchedaClick
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
      Enabled = False
    end
    object BtnReport: TAdvGlowButton
      Left = 424
      Top = 456
      Width = 169
      Height = 35
      Hint = 'Stampa Elenco Pazienti'
      Caption = 'Stampa Report'
      ImageIndex = 1
      Images = ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnReportClick
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
      Enabled = False
    end
    object EdCognome: TcxTextEdit
      Left = 11
      Top = 33
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetPazienti
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
      Width = 182
    end
    object EdNome: TcxTextEdit
      Left = 203
      Top = 33
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetPazienti
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
      Width = 183
    end
    object EdProv: TcxTextEdit
      Left = 571
      Top = 33
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetPazienti
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
      TabOrder = 3
      Height = 22
      Width = 38
    end
    object EdCitta: TcxTextEdit
      Left = 395
      Top = 33
      AutoSize = False
      ParentFont = False
      Properties.OnChange = GetPazienti
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
      Width = 163
    end
    object cxGrid2: TcxGrid
      Left = 13
      Top = 72
      Width = 826
      Height = 369
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView3: TcxGridDBTableView
        OnDblClick = cxGridDBTableView3DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DsQryPazienti
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
        OptionsView.Indicator = True
        Styles.Header = FrmMain.cxStyle12
        object cxGridDBTableView3Cognome: TcxGridDBColumn
          Caption = 'COGNOME'
          DataBinding.FieldName = 'Cognome'
          HeaderAlignmentHorz = taCenter
          Width = 143
        end
        object cxGridDBTableView3Nome: TcxGridDBColumn
          Caption = 'NOME'
          DataBinding.FieldName = 'Nome'
          HeaderAlignmentHorz = taCenter
          Width = 129
        end
        object cxGridDBTableView3Indirizzo: TcxGridDBColumn
          Caption = 'INDIRIZZO'
          DataBinding.FieldName = 'Indirizzo'
          HeaderAlignmentHorz = taCenter
          Width = 184
        end
        object cxGridDBTableView3Citta: TcxGridDBColumn
          Caption = 'CITTA'#39
          DataBinding.FieldName = 'Citta'
          HeaderAlignmentHorz = taCenter
          Width = 145
        end
        object cxGridDBTableView3Telefono: TcxGridDBColumn
          Caption = 'TELEFONO'
          DataBinding.FieldName = 'Telefono'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object cxGridDBTableView3Cellulare: TcxGridDBColumn
          Caption = 'CELLULARE'
          DataBinding.FieldName = 'Cellulare'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
  end
  object frPazienti: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 0.900000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40104.507883518500000000
    ReportOptions.LastChange = 40104.514596111100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 248
    Datasets = <
      item
        DataSet = DBQryPazienti
        DataSetName = 'DBQryPazienti'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 26.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Elenco Pazienti')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 5.000000000000000000
          Top = 3.000000000000000000
          Width = 1046.809448818900000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 3.000000000000000000
          Width = 99.000000000000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Cod. Paziente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 98.000000000000000000
          Top = 3.000000000000000000
          Width = 224.593161050000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '  Cognome e Nome')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 320.039681060000000000
          Top = 3.000000000000000000
          Width = 246.202526050000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Indirizzo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 562.021737110000000000
          Top = 3.000000000000000000
          Width = 54.584224480000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Cap')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 615.346221590000000000
          Top = 3.000000000000000000
          Width = 161.205206910000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Citt'#224)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 775.551428500000000000
          Top = 3.000000000000000000
          Width = 44.000000000000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Prov')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 819.283648500000000000
          Top = 3.000000000000000000
          Width = 113.385826770000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Telefono')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 931.767018660000000000
          Top = 3.000000000000000000
          Width = 113.385826770000000000
          Height = 20.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Cellulare')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = DBQryPazienti
        DataSetName = 'DBQryPazienti'
        RowCount = 0
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Width = 99.000000000000000000
          Height = 18.897650000000000000
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '00[DBQryPazienti."Cod_Paziente"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 107.559060000000000000
          Top = 1.000000000000000000
          Width = 212.034101050000000000
          Height = 18.897650000000000000
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[DBQryPazienti."Cognome"] [DBQryPazienti."Nome"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 321.039681060000000000
          Top = 1.000000000000000000
          Width = 242.202526050000000000
          Height = 18.897650000000000000
          DataField = 'Indirizzo'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[DBQryPazienti."Indirizzo"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 565.021737110000000000
          Top = 1.000000000000000000
          Width = 47.584224480000000000
          Height = 18.897650000000000000
          DataField = 'Cap'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBQryPazienti."Cap"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 615.346221590000000000
          Top = 1.000000000000000000
          Width = 159.205206910000000000
          Height = 18.897650000000000000
          DataField = 'Citta'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[DBQryPazienti."Citta"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 775.551428500000000000
          Top = 1.000000000000000000
          Width = 44.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Prov'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBQryPazienti."Prov"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 819.283648500000000000
          Top = 1.000000000000000000
          Width = 113.385826771654000000
          Height = 18.897650000000000000
          DataField = 'Telefono'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBQryPazienti."Telefono"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 931.767018660000000000
          Top = 1.000000000000000000
          Width = 113.385826771654000000
          Height = 18.897650000000000000
          DataField = 'Cellulare'
          DataSet = DBQryPazienti
          DataSetName = 'DBQryPazienti'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBQryPazienti."Cellulare"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 1.000000000000000000
          Width = 97.120000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] [Time]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 925.984850000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagina [Page#]')
          ParentFont = False
        end
      end
    end
  end
  object DBQryPazienti: TfrxDBDataset
    UserName = 'DBQryPazienti'
    CloseDataSource = False
    DataSet = QryPazienti
    BCDToCurrency = False
    Left = 128
    Top = 248
  end
  object QryPazienti: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      'Select *'
      'From Pazienti')
    AfterOpen = QryPazientiAfterOpen
    AfterClose = QryPazientiAfterClose
    Options.FieldOrigins = foNone
    Left = 64
    Top = 248
    object QryPazientiCod_Paziente: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Paziente'
      Origin = 'Pazienti.cod_paziente'
    end
    object QryPazientiCognome: TStringField
      FieldName = 'Cognome'
      Origin = 'Pazienti.cognome'
      Size = 150
    end
    object QryPazientiNome: TStringField
      FieldName = 'Nome'
      Origin = 'Pazienti.nome'
      Size = 150
    end
    object QryPazientiIndirizzo: TStringField
      FieldName = 'Indirizzo'
      Origin = 'Pazienti.indirizzo'
      Size = 200
    end
    object QryPazientiCap: TStringField
      FieldName = 'Cap'
      Origin = 'Pazienti.cap'
      Size = 5
    end
    object QryPazientiCitta: TStringField
      FieldName = 'Citta'
      Origin = 'Pazienti.citta'
      Size = 100
    end
    object QryPazientiProv: TStringField
      FieldName = 'Prov'
      Origin = 'Pazienti.prov'
      Size = 3
    end
    object QryPazientiStato: TStringField
      FieldName = 'Stato'
      Origin = 'Pazienti.stato'
      Size = 50
    end
    object QryPazientiSesso: TStringField
      FieldName = 'Sesso'
      Origin = 'Pazienti.sesso'
      Size = 1
    end
    object QryPazientiDataNascita: TDateField
      FieldName = 'DataNascita'
      Origin = 'Pazienti.datanascita'
    end
    object QryPazientiCittaNascita: TStringField
      FieldName = 'CittaNascita'
      Origin = 'Pazienti.cittanascita'
      Size = 100
    end
    object QryPazientiCodiceFiscale: TStringField
      FieldName = 'CodiceFiscale'
      Origin = 'Pazienti.codicefiscale'
      Size = 16
    end
    object QryPazientiTelefono: TStringField
      FieldName = 'Telefono'
      Origin = 'Pazienti.telefono'
      Size = 15
    end
    object QryPazientiCellulare: TStringField
      FieldName = 'Cellulare'
      Origin = 'Pazienti.cellulare'
      Size = 15
    end
    object QryPazientiEMail: TStringField
      FieldName = 'EMail'
      Origin = 'Pazienti.email'
      Size = 150
    end
    object QryPazientiConsensoPrivacy: TBooleanField
      FieldName = 'ConsensoPrivacy'
      Origin = 'Pazienti.consensoprivacy'
    end
    object QryPazientiNominativoFatt: TStringField
      FieldName = 'NominativoFatt'
      Origin = 'Pazienti.nominativofatt'
      Size = 255
    end
    object QryPazientiIndirizzoFatt: TStringField
      FieldName = 'IndirizzoFatt'
      Origin = 'Pazienti.indirizzofatt'
      Size = 150
    end
    object QryPazientiComuneFatt: TStringField
      FieldName = 'ComuneFatt'
      Origin = 'Pazienti.comunefatt'
      Size = 100
    end
    object QryPazientiCapfatt: TStringField
      FieldName = 'Capfatt'
      Origin = 'Pazienti.capfatt'
      Size = 5
    end
    object QryPazientiProvFatt: TStringField
      FieldName = 'ProvFatt'
      Origin = 'Pazienti.provfatt'
      Size = 3
    end
    object QryPazientiPIva: TStringField
      FieldName = 'PIva'
      Origin = 'Pazienti.piva'
      Size = 11
    end
    object QryPazientiCodFiscFatt: TStringField
      FieldName = 'CodFiscFatt'
      Origin = 'Pazienti.codfiscfatt'
      Size = 16
    end
    object QryPazientiCalcNominativo: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcNominativo'
      Size = 200
      Calculated = True
    end
  end
  object DsQryPazienti: TDataSource
    DataSet = QryPazienti
    Left = 32
    Top = 248
  end
  object ImageList1: TImageList
    Height = 25
    Width = 25
    Left = 160
    Top = 248
    Bitmap = {
      494C010102000500040019001900FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000640000001900000001002000000000001027
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFDFDFDFFF8F8F8FFFEFEFEFFFCFC
      FCFFFEFEFEFF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5B65C6FF3942B6FF242CADFF1617A3FF2020A4FF3131A9FF4B4B
      B4FFA2A2D9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE8E8
      E8FFBEBEBFFF908F8FFFB7B8B8FFB1B1B2FFBDBDBDFF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF1B3CC1FF1236BEFF2061DAFF2062DBFF1E5CD6FF1C57D5FF1B54
      D0FF184CCBFF1647C9FF1643C5FF143DC1FF1238BFFF02059DFF0C25B2FF0510
      A4FF3B3BBDFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFEFEFEFFF3F3F3FFCCCCCCFF8F8E8DFF9C9C
      9CFFCFCFCFFFA5A3A2FFAB9084FFEDD4C4FFFFF1D8FFFFFDE4FFFDE8DAFFD2B1
      9DFF7E635DFF716D6DFF959596FFF1F1F1FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF1E5AD5FF133AC0FF2169
      DFFF2065DBFF1F60D9FF1E5DD7FF1D59D4FF1A50CEFF184BCBFF1645C7FF1440
      C3FF1139BEFF000097FF0E2DB6FF0B24B1FF040DA2FF3D3DC0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFECECECFFBCBB
      BBFF9C9B9BFFABA9A7FF9F9C9AFF878584FF6B6362FFF0BFA9FFFFE4D0FFFEE4
      BFFFF5E3B8FF14A924FF59C05EFFC0E4B8FFFBE5CFFF8F6E6AFF907072FFC5C5
      C5FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF236DE1FF2265DDFF246DE1FF236BE0FF2167DDFF2063DBFF1F5F
      D8FF1B55D2FF1A50CEFF184ACAFF1644C6FF1138C0FF0E2FB8FF0D2BB6FF0B24
      B1FF0511A5FF5353C7FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFDFDFFEEEEEEFF949392FFAFAEADFFDBDAD9FFE5E4E3FFA5A2A1FF8E87
      84FFA77B6DFFFDD3B4FFFED0AAFFF8D2AEFFA5B781FF4FC962FF65D07CFF66CC
      76FFB1DBA4FFDCC4B3FFAE8E7CFF858585FFFEFEFEFF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF287AEAFF2779E9FF287A
      EAFF2879EAFF2675E6FF246FE3FF226BDFFF1E5ED7FF1C58D3FF1A51CFFF184A
      CBFF133DC2FF1136BDFF0F2FB8FF0D28B4FF02089FFFAFAFE5FF000000FF0000
      00FF000000FF000000FFF4F4F4FF908F8FFFBAB9B8FFE2E1E0FFF5F4F4FFF2F1
      F1FFF0EFEFFFE5E4E4FFB9B7B6FFA89D99FFA36B54FF35576DFF1F4E6BFF2F8C
      D3FF369EF0FF3D8ABFFF56AE49FF27AE35FF52B64AFFFFF9DDFFFFF0DEFFE7CB
      B9FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF2778E9FF2B82EFFF2A81EFFF2A80EEFF2879EAFF2674E6FF246E
      E2FF2061DAFF1D5BD5FF1B54D1FF194DCCFF143FC3FF1238BEFF0F31BAFF0D2B
      B5FF08089EFF000000FF000000FF000000FF000000FFFCFCFCFFACABA9FFF6F5
      F5FFF9F9F9FFF5F4F4FFF0EEEFFFECEBEBFFEBEAEAFFE5E3E3FFC4C2C0FFB4B3
      B2FFA88072FF4C5662FF114C70FF276391FF3985C1FFAAAEB1FFFFCEA8FFFFD2
      AEFFFFE4C8FFE0BFB1FFDACFC9FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF2673E6FF2D89F4FF2D88
      F5FF2C87F4FF297FEEFF277AEAFF2675E7FF2065DBFF1E5DD7FF1C56D2FF194F
      CDFF1541C4FF123ABFFF1032BBFF0F2EB8FF5A5AC7FF000000FF000000FF0000
      00FF000000FFF9F9F9FFB9B8B7FFF6F6F5FFF2F3F3FFF1F0F0FFECEBEBFFEAE9
      E8FFE7E6E5FFE4E3E2FFCCCAC9FFBFBDBCFFB8B4B2FF946F64FF645C5FFF4A57
      66FF69666CFFCE9C7EFFFBC6A1FFFDDEC9FFF2BFA9FFEDEBEBFF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF2570E6FF3090F9FF2F91F9FF308FF8FF2A83F1FF206EE6FF1960
      DEFF2067DFFF2061DBFF1C57D4FF1A50CEFF1542C5FF133AC0FF1035BCFF0F2F
      B9FF000000FF000000FF000000FF000000FF000000FFF8F8F8FFC4C3C1FFF0F1
      EFFFEFEDEEFFEBEAEAFFE6E5E6FFE5E2E2FFE1E0DFFFE1E0DFFFD5D4D3FFCDCB
      CAFFC6C4C3FFB8B5B3FFB1968EFFA8725FFFA56B55FFA28071FFA78980FFB88B
      7DFF868180FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF3680EDFF2F8F
      F8FF3093FBFF3D70CDFFBDAF97FFB6AD9FFF9E9997FF132FB5FF1549CDFF1B53
      D0FF1644C7FF1440C3FF0819AAFF4C4CB8FF000000FF000000FF000000FF0000
      00FF000000FFF8F8F8FFC0BFBEFFE9E8E6FFE5E4E3FFE4E3E2FFDFDCDDFFDBDA
      D9FFDCDADAFFE9E8E8FFD7D5D4FFD7D5D4FFD6D4D3FFCFCDCCFFC9C7C6FFC2C0
      BFFFBCBBBBFF947579FF796467FF999695FF7E7D7CFF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3680EDFF2B80EFFF4674CCFFB3B5B3FF82A9
      D0FF88A5BFFF949299FF041AAEFF1951D0FF143CC1FF0817ACFF6164CDFF0000
      00FF000000FF000000FF000000FF000000FF000000FFF8F8F8FFBFBDBCFFE5E4
      E3FFE2E1E0FFE0DDDEFFDBD8D9FFD8D7D6FFE5E4E3FFEAE9E9FFD0CECEFF7B79
      79FF848281FFD5D3D2FFD1CFCEFFCCCAC9FFC6C4C3FFB8B4B3FFABA1A1FFADA9
      A8FF7E7D7CFF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF6A9DEDFF298DFAFF2B9AFFFF37A0FFFF34A0FFFF2FA0FFFF286DDEFF0C26
      B4FF3543C6FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFF9F8F8FFBBB9B9FFE0DFDDFFDCDBDAFFDBDAD9FFD6D3D2FFE3E3
      E2FFF0F0EFFFEAE9E9FF8B8685FF332D2CFF1C1918FF939192FFCBC9C8FFD4D2
      D1FFD1CFCEFFC6C4C3FFBFBDBBFFBBB9B7FF807F7EFF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF4EABFFFF63B7FFFF61B6
      FFFF5EB4FFFF5BB2FFFF42A9FFFF358FF7FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFBFBFBFFB4B2B0FFDBDA
      D9FFD9D7D6FFD6D5D4FFE2E1E0FFF7F6F6FFF6F5F4FFEBEBEBFF6D605FFF584F
      4EFF413A39FF1E1C1CFF424140FFB8B6B5FFD9D7D6FFCFCDCCFFC9C7C6FFC6C4
      C3FF817F7EFF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF3AA0FFFF6EBDFFFF6FBEFFFF70C0FFFF6DBCFFFF67B9FFFF64B7FFFF5FB3
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFD8D7D7FFD7D5D4FFEAE9E8FFEFF0EFFFE9E8E3FFF6F5
      FAFFC9B5D8FFC98C90FFA27476FF947173FF836B6CFF5F5654FF4D4544FF3630
      2FFF201C1BFF797877FFD7D5D4FFD7D5D4FF898686FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF89CFFFFF57AFFFFF77C2FFFF78C4FFFF79C4
      FFFF75C1FFFF6EBEFFFF68BBFFFF65B8FFFFB7E2FFFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFDFDFDEFF9C99
      97FFB8B7B6FFD0CDCEFF95BD94FFDDB3B7FFD5878EFFD7828AFFC17D83FFB379
      7DFFA27477FF836C6BFF746463FF5F5352FF4C4443FF181414FFC2C0BFFFCDCB
      CAFF9D9C9CFF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF57B3
      FFFF6EBEFFFF7FC7FFFF81C9FFFF82CBFFFF7BC7FFFF75C2FFFF6FBDFFFF69BA
      FFFF8DCFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE0DFDFFFDBDDDCFFD6C8C2FFB4ABA7FFA1787CFFB578
      7CFFC37D82FFD08188FFD4838AFFCB8086FFB97A7FFF9A7273FF8C6F6FFF7A68
      67FF6B5E5DFF524B4AFFD9D7D6FFB1AFADFFC4C4C4FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF3496FFFF83CBFFFF8BD0FFFF94D4FFFF96D7
      FFFF86CCFFFF7FC7FFFF78C4FFFF77C3FFFF006C9DFF0275A7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFCDB6
      ACFFF7CDBBFFFCEBE1FFF7D9C1FFC5B1A2FF8F817EFF947072FFBE7C81FFCA80
      86FFD5828AFFCF8188FFC37E84FFB0787CFFA17174FFEAE8E8FFA9A7A5FFC0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF7BB3CFFF127A
      C6FF86CEFFFF8DD1FFFF96D6FFFF9BD9FFFF87CDFFFF80CAFFFF7EC7FFFF1882
      B9FF0077A9FF007BAEFFADD8E9FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE1CFC7FFFAD6C3FFFDEEE5FFFFE6D1FFFFE2
      CCFFFBDEC4FFB3A599FF967274FFAA7679FFBF7C82FFD4838AFFD7828BFFCF85
      8BFFD8B3B6FFC2C0BFFFB4B4B4FFFAFAFAFF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF73B2D1FF0067A2FF87CFFFFF8ACFFFFF90D3FFFF93D4
      FFFF86CDFFFF83C9FFFF53ABE5FF0071A3FF0081B4FF0080B3FF8ECAE5FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE1D2
      C9FFFCDBC8FFFDF0E9FFFFEADBFFFFE6D3FFFFE4CFFFFDE0C7FFA29289FF8A73
      74FFA27376FFC57D82FFD1828AFFECCDD0FFFFFCFCFFACABAAFFF9F9F9FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF7CB7D4FF005D
      8EFF6ABAF8FF84CBFFFF88CEFFFF89CFFFFF81C8FFFF82CAFFFF2D92CAFF007F
      B2FF008DC0FF0083B6FF8ACCE5FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE2D5CCFFFEE1CEFFFEF3EDFFFFF3EAFFFFED
      E2FFFFEBDBFFFFE7D4FFFFE4CDFFDDC5B8FF938D8CFFC3AFB0FFD7D4D3FFCECD
      CCFFAAA8A7FFFCFCFCFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00689BFF006193FF84CDFFFF80CAFFFF80C9
      FFFF82CBFFFF3197D0FF007EB0FF0091C4FF0092C5FF0187B8FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFEDEA
      E8FFFFE4CCFFFFDDC3FFFDF1E6FFFDFBFAFFFFF9F6FFFFF3EDFFFFEEE1FFFFE0
      D0FFC9C9C9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF1E7A
      A6FF0074A6FF086DA2FF2A8BC3FF2A8CC5FF077AAFFF007AACFF0090C2FF0091
      C4FF0094C7FF219AC3FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEEEDECFFE8DACFFFFFDDC2FFFEE7
      D6FFFDF7F1FFFFFCF9FFFFF4EBFFFFE5D5FFC9C9C9FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF9CCAE2FF006B9FFF007AACFF0077A9FF007B
      ADFF0089BCFF0090C3FF0091C4FF0096C9FF0091C6FF9FDEF4FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFEEDBCBFFFFE1C7FFFEDDC3FFFDE7D5FFFFFCFBFFFFEC
      DEFFC9C9C9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF569CBEFF2683AFFF1D82AFFF5DA9CAFF52A8CAFF3A9DC6FF57AF
      D1FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE4DAD2FFFFDBB9FFD7B8A0FFEEEEEEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFCEC9C6FFECEC
      EBFFFEFEFEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000640000001900000001000100
      00000000900100000000000000000000000000000000000000000000FFFFFF00
      FFFFFFFFFF07C0000000000000000000FF807FFFFE07C0000000000000000000
      F80007FE0000C0000000000000000000F80003FC0000C0000000000000000000
      F80003F0000040000000000000000000F80003C00000C0000000000000000000
      F80007800001C0000000000000000000F80007800003C0000000000000000000
      F8000F800007C0000000000000000000FC000F800007C0000000000000000000
      FE001F800007C0000000000000000000FF007F800007C0000000000000000000
      FF80FF800007C0000000000000000000FF00FFC00007C0000000000000000000
      FE007FC00007C0000000000000000000FE007FC00007C0000000000000000000
      FE003FE0000FC0000000000000000000FC001FE0000FC0000000000000000000
      FC001FE0001FC0000000000000000000FC001FE0003FC0000000000000000000
      FE003FE007FFC0000000000000000000FE003FF007FFC0000000000000000000
      FE003FFC07FFC0000000000000000000FF80FFFF87FFC0000000000000000000
      FFFFFFFFC7FFC000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dxPrinter: TdxComponentPrinter
    CurrentLink = LinkPazienti
    Version = 0
    Left = 30
    Top = 279
    PixelsPerInch = 96
    object LinkPazienti: TdxGridReportLink
      Active = True
      Component = cxGrid2
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44547.474499768520000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Verdana'
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = 'Elenco Pazienti'
      TimeFormat = 0
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
