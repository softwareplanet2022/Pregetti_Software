object FrmResoconto: TFrmResoconto
  Left = 511
  Top = 220
  BorderStyle = bsDialog
  Caption = 'RESOCONTO PAZIENTI'
  ClientHeight = 601
  ClientWidth = 807
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
    Width = 807
    Height = 601
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
    object AdvGroupBox1: TAdvGroupBox
      Left = 16
      Top = 192
      Width = 745
      Height = 85
      Caption = 'FILTRA LE SOMME DA INCASSARE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label29: TLabel
        Left = 18
        Top = 31
        Width = 137
        Height = 13
        Caption = 'Nominativo del Paziente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 434
        Top = 31
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
      object Label33: TLabel
        Left = 541
        Top = 31
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
      object DataInizio: TcxDateEdit
        Left = 432
        Top = 48
        AutoSize = False
        ParentFont = False
        Properties.OnChange = DataInizioPropertiesChange
        Style.BorderColor = 13283227
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 5131854
        Style.Font.Height = -11
        Style.Font.Name = 'Verdana'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        Height = 22
        Width = 103
      end
      object DataFine: TcxDateEdit
        Left = 542
        Top = 48
        AutoSize = False
        ParentFont = False
        Properties.OnChange = DataFinePropertiesChange
        Style.BorderColor = 13283227
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 5131854
        Style.Font.Height = -11
        Style.Font.Name = 'Verdana'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        Height = 22
        Width = 97
      end
      object EdPaziente: TEdit
        Left = 16
        Top = 48
        Width = 409
        Height = 19
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'EDIT1'
        OnChange = suitempEdPazienteChange
      end
      object ChkFiltra: TCheckBox
        Left = 656
        Top = 48
        Width = 67
        Height = 19
        Caption = 'FILTRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = suitempChkFiltraClick
      end
    end
    object GridIncassi: TcxGrid
      Left = 9
      Top = 16
      Width = 785
      Height = 521
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DM.DsMemResoconto
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.Active = True
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
            FieldName = 'TotaleCartella'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'Imposte'
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'TotaleCartella'
            Column = cxGridDBTableView2TotaleCartella
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'TotIncassato'
            Column = cxGridDBTableView2TotIncassato
          end
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'CalcSaldo'
            Column = cxGridDBTableView2TotDaIncassare
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'CLICCA QUI PER ATTIVARE IL FILTRO ...'
        FilterRow.Visible = True
        OptionsSelection.CellSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.Header = FrmMain.cxStyle12
        object cxGridDBTableView2Cod_Paziente: TcxGridDBColumn
          DataBinding.FieldName = 'Cod_Paziente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object cxGridDBTableView2CognomeNome: TcxGridDBColumn
          Caption = 'COGNOME E NOME'
          DataBinding.FieldName = 'CognomeNome'
          HeaderAlignmentHorz = taCenter
          Width = 154
        end
        object cxGridDBTableView2DataCartella: TcxGridDBColumn
          Caption = 'DATA CARTELLA'
          DataBinding.FieldName = 'DataCartella'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object cxGridDBTableView2NroCartella: TcxGridDBColumn
          Caption = 'COD. CARTELLA'
          DataBinding.FieldName = 'NroCartella'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object cxGridDBTableView2TotaleCartella: TcxGridDBColumn
          Caption = 'TOT. CARTELLA'
          DataBinding.FieldName = 'TotaleCartella'
          HeaderAlignmentHorz = taCenter
          Width = 108
        end
        object cxGridDBTableView2TotIncassato: TcxGridDBColumn
          Caption = 'TOT. INCASSATO'
          DataBinding.FieldName = 'TotIncassato'
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object cxGridDBTableView2TotDaIncassare: TcxGridDBColumn
          Caption = 'DA INCASSARE'
          DataBinding.FieldName = 'CalcSaldo'
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object AdvGlowButton9: TAdvGlowButton
      Left = 675
      Top = 549
      Width = 118
      Height = 38
      Hint = 'Stampa Report'
      Caption = 'STAMPA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImageIndex = 3
      Images = DM.MainImgList
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = AdvGlowButton9Click
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 547
      Top = 549
      Width = 118
      Height = 38
      Hint = 'Exporta in Excel'
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImageIndex = 42
      Images = DM.MainImgList
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
      Left = 11
      Top = 549
      Width = 142
      Height = 38
      Hint = 'Rielabora Prospetto'
      Caption = 'RIELABORA PROSPETTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImageIndex = 13
      Images = DM.MainImgList
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
  end
  object dxPrinter: TdxComponentPrinter
    CurrentLink = LinkIncassi
    Version = 0
    Left = 480
    Top = 423
    PixelsPerInch = 96
    object LinkIncassi: TdxGridReportLink
      Active = True
      Component = GridIncassi
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
      ReportDocument.CreationDate = 44572.414029618060000000
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 512
    Top = 424
  end
end
