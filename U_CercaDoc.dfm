object FrmCercaDoc: TFrmCercaDoc
  Left = 584
  Top = 218
  BorderStyle = bsDialog
  Caption = '  Cerca Documento'
  ClientHeight = 451
  ClientWidth = 794
  Color = clBtnFace
  Constraints.MinHeight = 55
  Constraints.MinWidth = 46
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
    Width = 794
    Height = 451
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
    ExplicitWidth = 729
    FullHeight = 200
    object AdvGroupBox1: TAdvGroupBox
      Left = 12
      Top = 16
      Width = 769
      Height = 84
      Caption = 'Seleziona Criteri di Ricerca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 427
        Top = 26
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
        Left = 555
        Top = 26
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
      object Label1: TLabel
        Left = 11
        Top = 25
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
      object EdPaziente: TcxTextEdit
        Left = 13
        Top = 44
        AutoSize = False
        ParentFont = False
        Properties.OnChange = EdPazientePropertiesChange
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
        Width = 403
      end
      object DataInizio: TcxDateEdit
        Left = 424
        Top = 43
        AutoSize = False
        ParentFont = False
        Properties.OnChange = DataInizioPropertiesChange
        Properties.OnCloseUp = DataInizioPropertiesCloseUp
        Properties.OnValidate = DataInizioPropertiesValidate
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
        Width = 114
      end
      object DataFine: TcxDateEdit
        Left = 552
        Top = 43
        AutoSize = False
        ParentFont = False
        Properties.OnChange = DataFinePropertiesChange
        Properties.OnCloseUp = DataFinePropertiesCloseUp
        Properties.OnValidate = DataFinePropertiesValidate
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
        Width = 114
      end
    end
    object NB: TNotebook
      Left = 12
      Top = 105
      Width = 770
      Height = 282
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      PageIndex = 1
      ParentFont = False
      TabOrder = 1
      object TPage
        Left = 0
        Top = 0
        Caption = 'PgPreventivi'
        ExplicitWidth = 696
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 282
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitTop = 32
          ExplicitWidth = 696
          ExplicitHeight = 250
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DsQryPreventivi
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
            object cxGridDBTableView1NumPreventivo: TcxGridDBColumn
              Caption = 'N'#176' PREV.'
              DataBinding.FieldName = 'NumPreventivo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object cxGridDBTableView1Data: TcxGridDBColumn
              Caption = 'DATA'
              DataBinding.FieldName = 'Data'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxGridDBTableView1RagioneSociale: TcxGridDBColumn
              Caption = 'NOMINATIVO PAZIENTE'
              DataBinding.FieldName = 'RagioneSociale'
              HeaderAlignmentHorz = taCenter
              Width = 238
            end
            object cxGridDBTableView1Citta: TcxGridDBColumn
              Caption = 'CITTA'#39
              DataBinding.FieldName = 'Citta'
              HeaderAlignmentHorz = taCenter
              Width = 203
            end
            object cxGridDBTableView1Totale: TcxGridDBColumn
              Caption = 'TOTALE'
              DataBinding.FieldName = 'Totale'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'PgFatture'
        ExplicitWidth = 696
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 770
          Height = 282
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitTop = 32
          ExplicitWidth = 696
          ExplicitHeight = 250
          object cxGridDBTableView3: TcxGridDBTableView
            OnDblClick = cxGridDBTableView3DblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DSQryFatture
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
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Header = FrmMain.cxStyle12
            object cxGridDBTableView3NumFattura: TcxGridDBColumn
              Caption = 'N'#176' FATT'
              DataBinding.FieldName = 'NumFattura'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDBTableView3Data: TcxGridDBColumn
              Caption = 'DATA'
              DataBinding.FieldName = 'Data'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 91
            end
            object cxGridDBTableView3RagioneSociale: TcxGridDBColumn
              Caption = 'NOMINATIVO PAZIENTE'
              DataBinding.FieldName = 'RagioneSociale'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 282
            end
            object cxGridDBTableView3Citta: TcxGridDBColumn
              Caption = 'CITTA'#39
              DataBinding.FieldName = 'Citta'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 191
            end
            object cxGridDBTableView3CalcTotaleFattura: TcxGridDBColumn
              Caption = 'TOTALE'
              DataBinding.FieldName = 'CalcTotaleFattura'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 122
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 300
      Top = 400
      Width = 96
      Height = 28
      Caption = 'OK'
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
      TabOrder = 2
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
      Left = 402
      Top = 400
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
      TabOrder = 3
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
  object QryPreventivi: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      
        'SELECT NumPreventivo, Data, RagioneSociale, Citta, Totale, Id_Pr' +
        'eventivo'
      'FROM Preventivi')
    Options.FieldOrigins = foNone
    Left = 96
    Top = 160
    object QryPreventiviNumPreventivo: TFloatField
      FieldName = 'NumPreventivo'
      Origin = 'Preventivi.numpreventivo'
    end
    object QryPreventiviData: TDateField
      FieldName = 'Data'
      Origin = 'Preventivi.data'
    end
    object QryPreventiviRagioneSociale: TStringField
      FieldName = 'RagioneSociale'
      Origin = 'Preventivi.ragionesociale'
      Size = 255
    end
    object QryPreventiviCitta: TStringField
      FieldName = 'Citta'
      Origin = 'Preventivi.citta'
      Size = 255
    end
    object QryPreventiviTotale: TCurrencyField
      FieldName = 'Totale'
      Origin = 'Preventivi.totale'
    end
    object QryPreventiviId_Preventivo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Preventivo'
      Origin = 'Preventivi.id_preventivo'
    end
  end
  object DsQryPreventivi: TDataSource
    DataSet = QryPreventivi
    Left = 64
    Top = 160
  end
  object QryFatture: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      
        'SELECT NumFattura, Data, RagioneSociale, Citta, AliquotaIVA, Ali' +
        'quotaRitenuta, Imponibile, ImportoBolli, Id_Fattura'
      'FROM Fatture')
    OnCalcFields = QryFattureCalcFields
    Options.FieldOrigins = foNone
    Left = 160
    Top = 160
    object QryFattureId_Fattura: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Fattura'
      Origin = 'Fatture.id_fattura'
    end
    object QryFattureNumFattura: TFloatField
      FieldName = 'NumFattura'
      Origin = 'Fatture.numfattura'
    end
    object QryFattureData: TDateField
      FieldName = 'Data'
      Origin = 'Fatture.data'
    end
    object QryFattureRagioneSociale: TStringField
      FieldName = 'RagioneSociale'
      Origin = 'Fatture.ragionesociale'
      Size = 255
    end
    object QryFattureCitta: TStringField
      FieldName = 'Citta'
      Origin = 'Fatture.citta'
      Size = 150
    end
    object QryFattureAliquotaIVA: TFloatField
      FieldName = 'AliquotaIVA'
      Origin = 'Fatture.aliquotaiva'
    end
    object QryFattureAliquotaRitenuta: TFloatField
      FieldName = 'AliquotaRitenuta'
      Origin = 'Fatture.aliquotaritenuta'
    end
    object QryFattureImponibile: TCurrencyField
      FieldName = 'Imponibile'
      Origin = 'Fatture.imponibile'
    end
    object QryFattureImportoBolli: TCurrencyField
      FieldName = 'ImportoBolli'
      Origin = 'Fatture.importobolli'
    end
    object QryFattureCalcImportoIva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoIva'
      Calculated = True
    end
    object QryFattureCalcImportoRitenuta: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoRitenuta'
      Calculated = True
    end
    object QryFattureCalcImportoFattura: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoFattura'
      Calculated = True
    end
    object QryFattureCalcTotaleFattura: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcTotaleFattura'
      Calculated = True
    end
  end
  object DSQryFatture: TDataSource
    DataSet = QryFatture
    Left = 128
    Top = 160
  end
end
