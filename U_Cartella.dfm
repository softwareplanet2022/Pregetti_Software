object FrmCartella: TFrmCartella
  Left = 503
  Top = 247
  BorderStyle = bsDialog
  Caption = '  Nuova Cartella'
  ClientHeight = 583
  ClientWidth = 996
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 583
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
    object Label26: TLabel
      Left = 11
      Top = 14
      Width = 76
      Height = 13
      Caption = 'Data Cartella'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 11
      Top = 67
      Width = 43
      Height = 13
      Caption = 'Allergie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 529
      Top = 68
      Width = 66
      Height = 13
      Caption = 'Annotazioni'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label69: TLabel
      Left = 127
      Top = 14
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
    object Label1: TLabel
      Left = 526
      Top = 14
      Width = 43
      Height = 13
      Caption = 'Dottore'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object suiDBEdit25: TcxDBDateEdit
      Left = 11
      Top = 31
      AutoSize = False
      DataBinding.DataField = 'DataCartella'
      DataBinding.DataSource = DsCartelle
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = 13283227
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.ButtonStyle = btsDefault
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 22
      Width = 108
    end
    object AdvGroupBox1: TAdvGroupBox
      Left = 11
      Top = 145
      Width = 971
      Height = 379
      Caption = 'DETTAGLIO INTERVENTI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object suiDBNavigator2: TDBNavigator
        Left = 2
        Top = 350
        Width = 967
        Height = 27
        DataSource = DsDettCartella
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alBottom
        Hints.Strings = (
          'Prima Riga'
          'Riga Precedente'
          'Riga Successiva'
          'Ultima Riga'
          'Inserisci Nuova Riga'
          'Elimina Riga'
          'Modifica Riga'
          'Conferma Modifiche'
          'Annulla Modifiche'
          'Aggiorna Dati')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object GridInterventi: TcxGrid
        Left = 2
        Top = 16
        Width = 967
        Height = 334
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object cxGridDBTableView10: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          FindPanel.InfoText = 'Digita il testo da cercare'
          DataController.DataSource = DsDettCartella
          DataController.Options = [dcoAssignGroupingValues, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #8364' #,##0.#0'
              Kind = skSum
              FieldName = 'Importo'
              Column = cxGridDBTableView10Importo
            end
            item
              Format = 'Totale: '
              Kind = skCount
              FieldName = 'LkpStato'
              Column = cxGridDBTableView10LkpStato
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'CLICCA QUI PER ATTIVARE IL FILTRO PAZIENTI ...'
          OptionsBehavior.AlwaysShowEditor = True
          OptionsData.Appending = True
          OptionsView.NoDataToDisplayInfoText = 'Nessun dato da mostrare'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridDBTableView10DataInizio: TcxGridDBColumn
            Caption = 'DATA INIZIO'
            DataBinding.FieldName = 'DataInizio'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object cxGridDBTableView10DataTermine: TcxGridDBColumn
            Caption = 'DATA TERMINE'
            DataBinding.FieldName = 'DataTermine'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
          object cxGridDBTableView10NroDente: TcxGridDBColumn
            Caption = 'N.RO DENTE'
            DataBinding.FieldName = 'NroDente'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 55
          end
          object cxGridDBTableView10Diagnosi: TcxGridDBColumn
            Caption = 'DIAGNOSI'
            DataBinding.FieldName = 'Diagnosi'
            PropertiesClassName = 'TcxComboBoxProperties'
            HeaderAlignmentHorz = taCenter
            Width = 126
          end
          object cxGridDBTableView10Trattamento: TcxGridDBColumn
            Caption = 'TRATTAMENTO'
            DataBinding.FieldName = 'trattamento'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownRows = 15
            Properties.ImmediatePost = True
            Properties.Sorted = True
            Properties.OnEditValueChanged = cxGridDBTableView10Column1PropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            Width = 255
          end
          object cxGridDBTableView10LkpStato: TcxGridDBColumn
            Caption = 'STATO LAVORI'
            DataBinding.FieldName = 'LkpStatoLavorazione'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object cxGridDBTableView10Importo: TcxGridDBColumn
            Caption = 'IMPORTO'
            DataBinding.FieldName = 'Importo'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxGridDBTableView10Dottore: TcxGridDBColumn
            Caption = 'DOTTORE'
            DataBinding.FieldName = 'Dottore'
            PropertiesClassName = 'TcxComboBoxProperties'
            HeaderAlignmentHorz = taCenter
            Width = 140
          end
        end
        object cxGridLevel10: TcxGridLevel
          GridView = cxGridDBTableView10
        end
      end
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 127
      Top = 31
      AutoSize = False
      DataBinding.DataField = 'LkpPaziente'
      DataBinding.DataSource = DsCartelle
      ParentFont = False
      Properties.CharCase = ecUpperCase
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
      Width = 354
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 524
      Top = 32
      DataBinding.DataField = 'LkpDottore'
      DataBinding.DataSource = DsCartelle
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'Id_Dottore'
      Properties.ListColumns = <
        item
          FieldName = 'CognomeNome'
        end>
      Properties.ListOptions.ShowHeader = False
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
      OnKeyDown = cxDBLookupComboBox1KeyDown
      Width = 456
    end
    object cxDBMemo1: TcxDBMemo
      Left = 9
      Top = 84
      DataBinding.DataField = 'Allergie'
      DataBinding.DataSource = DsCartelle
      ParentFont = False
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
      Height = 55
      Width = 500
    end
    object cxDBMemo2: TcxDBMemo
      Left = 526
      Top = 84
      DataBinding.DataField = 'Annotazioni'
      DataBinding.DataSource = DsCartelle
      ParentFont = False
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
      TabOrder = 4
      Height = 55
      Width = 456
    end
    object suiButton1: TAdvGlowButton
      Left = 395
      Top = 541
      Width = 100
      Height = 29
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
      TabOrder = 6
      OnClick = suiButton1Click
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
    object suiButton2: TAdvGlowButton
      Left = 508
      Top = 541
      Width = 100
      Height = 29
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
      TabOrder = 7
      OnClick = suiButton2Click
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
    object AdvGlowButton17: TAdvGlowButton
      Left = 484
      Top = 32
      Width = 23
      Height = 20
      Cursor = crHandPoint
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DE60400000000000036000000280000001400000014000000010018000000
        0000B004000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5726F7EBA939CFCF8F8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF749BBC315FB76A638EBA939CFCF8F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8FCCFF36A0FE3360B76A638EBA939CFCF8F8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF82C4FF39A4FE3360B76A638EBA939CFCF8F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF82C4FF3AA4FE3264BC6A638ECEB7BEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF80C3FF3AA4FE3D73C297999EC9A59BBD876FBB8168BC836AC4907A
        CAA298FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9BD0FFBCC3C9A67768CB9676E7CA9AF8F0BDF8F2C7E7D1ABCEA38AC2
        9585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD2AEA5CC9374FFF2B4FFF3B2FFFFCEFFFFE2FFFFF6FFFFFFCEA389C199
        90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
        9079E7C695FFDD9FFFF7B6FFFFD1FFFFE6FFFFFAFFFFF3E7D1ABBB8972FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8269F8EA
        B4FFD092FFEEADFFFFCAFFFFDCFFFFE5FFFFDDF8F2C4BA8168FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8269F8EAB4FFE0AA
        FFEFB0FFFFBFFFFFC7FFFFCAFFFFC9F8EFBABA8167FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6937DE7CCA3FFEED0FFD8A6FF
        EAABFFEDADFFF2B2FFF0B0E7C997BB876FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7B6ADCB9C80FFFFFFFFF7E9FFEDB8FFCF
        91FFDEA0FFF2B6CA9271CAA89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC79B8BCA9A83E7CCADF8EDBDF8E7B1E7C999
        CA9071BF9081FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD6B7AEBE8B76BB8268BD8369C48F7BD4B3AAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
      TabOrder = 8
      OnClick = AdvGlowButton17Click
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
  object DsMemDettagli: TDataSource
    DataSet = MemDettagli
    Left = 696
    Top = 168
  end
  object MemDettagli: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Id_Intervento'
        DataType = ftAutoInc
      end
      item
        Name = 'Cod_Cartella'
        DataType = ftInteger
      end
      item
        Name = 'DataInizio'
        DataType = ftDate
      end
      item
        Name = 'DataTermine'
        DataType = ftDate
      end
      item
        Name = 'NroDente'
        DataType = ftInteger
      end
      item
        Name = 'Diagnosi'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Trattamento'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Eseguito'
        DataType = ftBoolean
      end
      item
        Name = 'APBanda'
        DataType = ftBoolean
      end
      item
        Name = 'APBracket'
        DataType = ftBoolean
      end
      item
        Name = 'APContenzione'
        DataType = ftBoolean
      end
      item
        Name = 'APEstrazione'
        DataType = ftBoolean
      end
      item
        Name = 'APRitenzione'
        DataType = ftBoolean
      end
      item
        Name = 'Mancante'
        DataType = ftBoolean
      end
      item
        Name = 'Agenesia'
        DataType = ftBoolean
      end
      item
        Name = 'Incluso'
        DataType = ftBoolean
      end
      item
        Name = 'SemiIncluso'
        DataType = ftBoolean
      end
      item
        Name = 'Radice'
        DataType = ftBoolean
      end
      item
        Name = 'Carie'
        DataType = ftBoolean
      end
      item
        Name = 'Frattura'
        DataType = ftBoolean
      end
      item
        Name = 'Granuloma'
        DataType = ftBoolean
      end
      item
        Name = 'Estrazione'
        DataType = ftBoolean
      end
      item
        Name = 'Otturazione'
        DataType = ftBoolean
      end
      item
        Name = 'Edodonzia'
        DataType = ftBoolean
      end
      item
        Name = 'Corona'
        DataType = ftBoolean
      end
      item
        Name = 'Impianro'
        DataType = ftBoolean
      end
      item
        Name = 'Immagine'
        DataType = ftBoolean
      end>
    Left = 728
    Top = 168
    object MemDettagliId_Intervento: TAutoIncField
      FieldName = 'Id_Intervento'
    end
    object MemDettagliCod_Cartella: TIntegerField
      FieldName = 'Cod_Cartella'
    end
    object MemDettagliDataInizio: TDateField
      FieldName = 'DataInizio'
    end
    object MemDettagliDataTermine: TDateField
      FieldName = 'DataTermine'
    end
    object MemDettagliNroDente: TIntegerField
      FieldName = 'NroDente'
    end
    object MemDettagliDiagnosi: TStringField
      FieldName = 'Diagnosi'
      Size = 255
    end
    object MemDettagliTrattamento: TStringField
      FieldName = 'Trattamento'
      Size = 255
    end
    object MemDettagliEseguito: TBooleanField
      FieldName = 'Eseguito'
    end
    object MemDettagliAPBanda: TBooleanField
      FieldName = 'APBanda'
    end
    object MemDettagliAPBracket: TBooleanField
      FieldName = 'APBracket'
    end
    object MemDettagliAPContenzione: TBooleanField
      FieldName = 'APContenzione'
    end
    object MemDettagliAPEstrazione: TBooleanField
      FieldName = 'APEstrazione'
    end
    object MemDettagliAPRitenzione: TBooleanField
      FieldName = 'APRitenzione'
    end
    object MemDettagliMancante: TBooleanField
      FieldName = 'Mancante'
    end
    object MemDettagliAgenesia: TBooleanField
      FieldName = 'Agenesia'
    end
    object MemDettagliIncluso: TBooleanField
      FieldName = 'Incluso'
    end
    object MemDettagliSemiIncluso: TBooleanField
      FieldName = 'SemiIncluso'
    end
    object MemDettagliRadice: TBooleanField
      FieldName = 'Radice'
    end
    object MemDettagliCarie: TBooleanField
      FieldName = 'Carie'
    end
    object MemDettagliFrattura: TBooleanField
      FieldName = 'Frattura'
    end
    object MemDettagliGranuloma: TBooleanField
      FieldName = 'Granuloma'
    end
    object MemDettagliEstrazione: TBooleanField
      FieldName = 'Estrazione'
    end
    object MemDettagliOtturazione: TBooleanField
      FieldName = 'Otturazione'
    end
    object MemDettagliEdodonzia: TBooleanField
      FieldName = 'Edodonzia'
    end
    object MemDettagliCorona: TBooleanField
      FieldName = 'Corona'
    end
    object MemDettagliImpianro: TBooleanField
      FieldName = 'Impianro'
    end
    object MemDettagliImmagine: TBooleanField
      FieldName = 'Immagine'
    end
  end
  object Cartelle: TMyTable
    TableName = 'cartelle'
    Connection = DM.MyConnection1
    Active = True
    BeforeDelete = CartelleBeforeDelete
    OnCalcFields = CartelleCalcFields
    OnNewRecord = CartelleNewRecord
    Options.FieldOrigins = foNone
    Left = 728
    Top = 104
    object CartelleDataCartella: TDateField
      FieldName = 'DataCartella'
      Origin = 'Cartelle.DataCartella'
    end
    object CartelleAllergie: TMemoField
      FieldName = 'Allergie'
      Origin = 'Cartelle.Allergie'
      BlobType = ftMemo
    end
    object CartelleAnnotazioni: TMemoField
      FieldName = 'Annotazioni'
      Origin = 'Cartelle.Annotazioni'
      BlobType = ftMemo
    end
    object CartelleCalcPaziente: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcPaziente'
      Size = 255
      Calculated = True
    end
    object CartelleCalcCartella: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcCartella'
      Size = 100
      Calculated = True
    end
    object CartelleLkpPaziente: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpPaziente'
      LookupDataSet = Pazienti
      LookupKeyFields = 'Cod_Paziente'
      LookupResultField = 'CalcNominativo'
      KeyFields = 'Cod_Paziente'
      Size = 150
      Lookup = True
    end
    object CartelleId_Dottore: TFloatField
      FieldName = 'Id_Dottore'
      Origin = 'Cartelle.Id_Dottore'
    end
    object CartelleLkpDottore: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpDottore'
      LookupDataSet = DM.Dottori
      LookupKeyFields = 'Id_Dottore'
      LookupResultField = 'CognomeNome'
      KeyFields = 'Id_Dottore'
      Size = 100
      Lookup = True
    end
    object Cartellebloccata: TBooleanField
      FieldName = 'bloccata'
    end
    object Cartellefatturata: TBooleanField
      FieldName = 'fatturata'
    end
    object CartelleId_fattura: TIntegerField
      FieldName = 'Id_fattura'
    end
    object CartelleId_Preventivo: TIntegerField
      FieldName = 'Id_Preventivo'
    end
    object CartelleFatturata_Acconto: TBooleanField
      FieldName = 'Fatturata_Acconto'
    end
    object CartelleId_Fattura_Acconto: TIntegerField
      FieldName = 'Id_Fattura_Acconto'
    end
    object CartelleImpFatturati: TFloatField
      FieldName = 'ImpFatturati'
    end
    object CartelleImpDaFatturare: TFloatField
      FieldName = 'ImpDaFatturare'
    end
    object Cartellecod_cartella: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'cod_cartella'
    end
    object Cartellecod_paziente: TIntegerField
      FieldName = 'cod_paziente'
    end
  end
  object DsCartelle: TDataSource
    DataSet = Cartelle
    Left = 696
    Top = 104
  end
  object Pazienti: TMyTable
    TableName = 'pazienti'
    Connection = DM.MyConnection1
    Active = True
    OnCalcFields = PazientiCalcFields
    Options.FieldOrigins = foNone
    Left = 792
    Top = 104
    object PazientiCod_Paziente: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Paziente'
      Origin = 'Pazienti.Cod_Paziente'
      ReadOnly = True
      DisplayFormat = '00#'
    end
    object PazientiCognome: TStringField
      FieldName = 'Cognome'
      Origin = 'Pazienti.Cognome'
      Size = 150
    end
    object PazientiNome: TStringField
      FieldName = 'Nome'
      Origin = 'Pazienti.Nome'
      Size = 150
    end
    object PazientiIndirizzo: TStringField
      FieldName = 'Indirizzo'
      Origin = 'Pazienti.Indirizzo'
      Size = 200
    end
    object PazientiCap: TStringField
      FieldName = 'Cap'
      Origin = 'Pazienti.Cap'
      Size = 5
    end
    object PazientiCitta: TStringField
      FieldName = 'Citta'
      Origin = 'Pazienti.Citta'
      Size = 100
    end
    object PazientiProv: TStringField
      FieldName = 'Prov'
      Origin = 'Pazienti.Prov'
      Size = 3
    end
    object PazientiStato: TStringField
      FieldName = 'Stato'
      Origin = 'Pazienti.Stato'
      Size = 50
    end
    object PazientiSesso: TStringField
      FieldName = 'Sesso'
      Origin = 'Pazienti.Sesso'
      Size = 1
    end
    object PazientiDataNascita: TDateField
      FieldName = 'DataNascita'
      Origin = 'Pazienti.DataNascita'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PazientiCittaNascita: TStringField
      FieldName = 'CittaNascita'
      Origin = 'Pazienti.CittaNascita'
      Size = 100
    end
    object PazientiCodiceFiscale: TStringField
      FieldName = 'CodiceFiscale'
      Origin = 'Pazienti.CodiceFiscale'
      Size = 16
    end
    object PazientiTelefono: TStringField
      FieldName = 'Telefono'
      Origin = 'Pazienti.Telefono'
      Size = 15
    end
    object PazientiCellulare: TStringField
      FieldName = 'Cellulare'
      Origin = 'Pazienti.Cellulare'
      Size = 15
    end
    object PazientiEMail: TStringField
      FieldName = 'EMail'
      Origin = 'Pazienti.EMail'
      Size = 150
    end
    object PazientiConsensoPrivacy: TBooleanField
      FieldName = 'ConsensoPrivacy'
      Origin = 'Pazienti.ConsensoPrivacy'
    end
    object PazientiNominativoFatt: TStringField
      FieldName = 'NominativoFatt'
      Origin = 'Pazienti.NominativoFatt'
      Size = 255
    end
    object PazientiIndirizzoFatt: TStringField
      FieldName = 'IndirizzoFatt'
      Origin = 'Pazienti.IndirizzoFatt'
      Size = 150
    end
    object PazientiComuneFatt: TStringField
      FieldName = 'ComuneFatt'
      Origin = 'Pazienti.ComuneFatt'
      Size = 100
    end
    object PazientiCapfatt: TStringField
      FieldName = 'Capfatt'
      Origin = 'Pazienti.Capfatt'
      Size = 5
    end
    object PazientiProvFatt: TStringField
      FieldName = 'ProvFatt'
      Origin = 'Pazienti.ProvFatt'
      Size = 3
    end
    object PazientiPIva: TStringField
      FieldName = 'PIva'
      Origin = 'Pazienti.PIva'
      Size = 11
    end
    object PazientiCodFiscFatt: TStringField
      FieldName = 'CodFiscFatt'
      Origin = 'Pazienti.CodFiscFatt'
      Size = 16
    end
    object PazientiCalcNominativo: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcNominativo'
      Size = 255
      Calculated = True
    end
    object PazientiAnnotazioni: TMemoField
      FieldName = 'Annotazioni'
      Origin = 'Pazienti.Annotazioni'
      BlobType = ftMemo
    end
  end
  object DSPazienti: TDataSource
    DataSet = Pazienti
    Left = 760
    Top = 104
  end
  object DettCartella: TMyTable
    TableName = 'dettcartelle'
    OrderFields = 'datainizio'
    MasterFields = 'Cod_Cartella'
    DetailFields = 'Cod_Cartella'
    MasterSource = DsCartelle
    Connection = DM.MyConnection1
    Active = True
    BeforeInsert = DettCartellaBeforeInsert
    BeforeEdit = DettCartellaBeforeEdit
    AfterPost = DettCartellaAfterPost
    OnNewRecord = DettCartellaNewRecord
    Options.FieldOrigins = foNone
    Left = 728
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod_Cartella'
        ParamType = ptInput
        Value = 1
      end>
    object DettCartellaId_Intervento: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Intervento'
      Origin = 'DettCartelle.Id_Intervento'
      ReadOnly = True
    end
    object DettCartellaDataInizio: TDateField
      FieldName = 'DataInizio'
      Origin = 'DettCartelle.DataInizio'
    end
    object DettCartellaDataTermine: TDateField
      FieldName = 'DataTermine'
      Origin = 'DettCartelle.DataTermine'
    end
    object DettCartellaNroDente: TFloatField
      FieldName = 'NroDente'
      Origin = 'DettCartelle.NroDente'
    end
    object DettCartellaEseguito: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'Eseguito'
      Origin = 'DettCartelle.Eseguito'
    end
    object DettCartellaAPBanda: TBooleanField
      FieldName = 'APBanda'
      Origin = 'DettCartelle.APBanda'
    end
    object DettCartellaAPBracket: TBooleanField
      FieldName = 'APBracket'
      Origin = 'DettCartelle.APBracket'
    end
    object DettCartellaAPContenzione: TBooleanField
      FieldName = 'APContenzione'
      Origin = 'DettCartelle.APContenzione'
    end
    object DettCartellaAPEstrazione: TBooleanField
      FieldName = 'APEstrazione'
      Origin = 'DettCartelle.APEstrazione'
    end
    object DettCartellaAPRitenzione: TBooleanField
      FieldName = 'APRitenzione'
      Origin = 'DettCartelle.APRitenzione'
    end
    object DettCartellaMancante: TBooleanField
      FieldName = 'Mancante'
      Origin = 'DettCartelle.Mancante'
    end
    object DettCartellaAgenesia: TBooleanField
      FieldName = 'Agenesia'
      Origin = 'DettCartelle.Agenesia'
    end
    object DettCartellaIncluso: TBooleanField
      FieldName = 'Incluso'
      Origin = 'DettCartelle.Incluso'
    end
    object DettCartellaSemiIncluso: TBooleanField
      FieldName = 'SemiIncluso'
      Origin = 'DettCartelle.SemiIncluso'
    end
    object DettCartellaRadice: TBooleanField
      FieldName = 'Radice'
      Origin = 'DettCartelle.Radice'
    end
    object DettCartellaCarie: TBooleanField
      FieldName = 'Carie'
      Origin = 'DettCartelle.Carie'
    end
    object DettCartellaFrattura: TBooleanField
      FieldName = 'Frattura'
      Origin = 'DettCartelle.Frattura'
    end
    object DettCartellaGranuloma: TBooleanField
      FieldName = 'Granuloma'
      Origin = 'DettCartelle.Granuloma'
    end
    object DettCartellaEstrazione: TBooleanField
      FieldName = 'Estrazione'
      Origin = 'DettCartelle.Estrazione'
    end
    object DettCartellaOtturazione: TBooleanField
      FieldName = 'Otturazione'
      Origin = 'DettCartelle.Otturazione'
    end
    object DettCartellaEdodonzia: TBooleanField
      FieldName = 'Edodonzia'
      Origin = 'DettCartelle.Edodonzia'
    end
    object DettCartellaCorona: TBooleanField
      FieldName = 'Corona'
      Origin = 'DettCartelle.Corona'
    end
    object DettCartellaImpianro: TBooleanField
      FieldName = 'Impianro'
      Origin = 'DettCartelle.Impianro'
    end
    object DettCartellaImmagine: TBooleanField
      FieldName = 'Immagine'
      Origin = 'DettCartelle.Immagine'
    end
    object DettCartellaImporto: TCurrencyField
      FieldName = 'Importo'
      Origin = 'DettCartelle.Importo'
    end
    object DettCartellaStatoLavorazione: TStringField
      FieldName = 'StatoLavorazione'
      Origin = 'DettCartelle.StatoLavorazione'
      Size = 100
    end
    object DettCartellaId_StatoLavorazione: TFloatField
      FieldName = 'Id_StatoLavorazione'
      Origin = 'DettCartelle.Id_StatoLavorazione'
    end
    object DettCartellaLkpStatoLavorazione: TStringField
      FieldKind = fkLookup
      FieldName = 'LkpStatoLavorazione'
      LookupDataSet = DM.Stati
      LookupKeyFields = 'Id_Stato'
      LookupResultField = 'Descrizione'
      KeyFields = 'Id_StatoLavorazione'
      Size = 100
      Lookup = True
    end
    object DettCartellaDottore: TStringField
      FieldName = 'Dottore'
      Size = 100
    end
    object DettCartellaId_dottore: TFloatField
      FieldName = 'Id_dottore'
    end
    object DettCartelladiagnosi: TStringField
      FieldName = 'diagnosi'
      Size = 250
    end
    object DettCartellatrattamento: TStringField
      FieldName = 'trattamento'
      Size = 250
    end
    object DettCartellacod_cartella: TIntegerField
      FieldName = 'cod_cartella'
    end
  end
  object DsDettCartella: TDataSource
    DataSet = DettCartella
    Left = 696
    Top = 136
  end
  object DsArticoli: TDataSource
    AutoEdit = False
    DataSet = Articoli
    Left = 760
    Top = 136
  end
  object Articoli: TMyTable
    TableName = 'articoli'
    OrderFields = 'descrizione'
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 792
    Top = 136
    object Articolicod_articolo: TStringField
      FieldName = 'cod_articolo'
      Origin = 'Articoli.cod_articolo'
      Size = 30
    end
    object Articoliid_articolo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_articolo'
      Origin = 'Articoli.id_articolo'
    end
    object ArticoliDescrizione: TStringField
      FieldName = 'Descrizione'
      Origin = 'Articoli.Descrizione'
      Size = 255
    end
    object ArticoliCosto: TCurrencyField
      FieldName = 'Costo'
      Origin = 'Articoli.Costo'
    end
    object ArticoliPrezzo: TCurrencyField
      FieldName = 'Prezzo'
      Origin = 'Articoli.Prezzo'
    end
    object ArticoliPeso_UM: TStringField
      FieldName = 'Peso_UM'
      Origin = 'Articoli.Peso_UM'
      Size = 10
    end
    object ArticoliAliquotaIVA: TFloatField
      FieldName = 'AliquotaIVA'
      Origin = 'Articoli.AliquotaIVA'
    end
    object ArticoliBarcode: TStringField
      FieldName = 'Barcode'
      Origin = 'Articoli.Barcode'
      Size = 13
    end
    object ArticoliGiacMin: TFloatField
      Alignment = taCenter
      FieldName = 'GiacMin'
      Origin = 'Articoli.GiacMin'
    end
    object ArticoliLivelloRiordino: TFloatField
      FieldName = 'LivelloRiordino'
      Origin = 'Articoli.LivelloRiordino'
    end
    object ArticoliAnnotazioni: TMemoField
      FieldName = 'Annotazioni'
      Origin = 'Articoli.Annotazioni'
      BlobType = ftMemo
    end
    object ArticoliCategoria_Terapia: TStringField
      FieldName = 'Categoria_Terapia'
      Origin = 'Articoli.Categoria_Terapia'
      Size = 50
    end
  end
  object SumDettCartella: TDBSumList
    DataSet = DettCartella
    ExternalRecalc = False
    SumCollection = <
      item
        FieldName = 'Importo'
        GroupOperation = goSum
      end>
    VirtualRecords = False
    Left = 761
    Top = 167
  end
end
