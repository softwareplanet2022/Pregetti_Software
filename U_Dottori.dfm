object FrmDottori: TFrmDottori
  Left = 751
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Anagrafica Dottori'
  ClientHeight = 571
  ClientWidth = 794
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
    Width = 794
    Height = 571
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
    object Label66: TLabel
      Left = 21
      Top = 14
      Width = 103
      Height = 13
      Caption = 'Cognome e Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 21
      Top = 62
      Width = 49
      Height = 13
      Caption = 'Indirizzo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 21
      Top = 102
      Width = 23
      Height = 13
      Caption = 'Cap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 93
      Top = 102
      Width = 27
      Height = 13
      Caption = 'Citt'#224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 323
      Top = 102
      Width = 26
      Height = 13
      Caption = 'Prov'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 21
      Top = 144
      Width = 48
      Height = 13
      Caption = 'Telefono'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 177
      Top = 143
      Width = 51
      Height = 13
      Caption = 'Cellulare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 321
      Top = 142
      Width = 38
      Height = 13
      Caption = 'Colore'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label76: TLabel
      Left = 22
      Top = 182
      Width = 66
      Height = 13
      Caption = 'Annotazioni'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdIndirizzo: TcxDBTextEdit
      Left = 19
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'CognomeNome'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Height = 22
      Width = 423
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 19
      Top = 77
      AutoSize = False
      DataBinding.DataField = 'Indirizzo'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 22
      Width = 423
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 89
      Top = 117
      AutoSize = False
      DataBinding.DataField = 'Citta'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      Height = 22
      Width = 225
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 19
      Top = 117
      AutoSize = False
      DataBinding.DataField = 'Cap'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 22
      Width = 63
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 322
      Top = 117
      AutoSize = False
      DataBinding.DataField = 'Prov'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Height = 22
      Width = 41
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 19
      Top = 159
      AutoSize = False
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Height = 22
      Width = 150
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 175
      Top = 159
      AutoSize = False
      DataBinding.DataField = 'Cellulare1'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 6
      Height = 22
      Width = 138
    end
    object cxDBColorComboBox1: TcxDBColorComboBox
      Left = 319
      Top = 161
      DataBinding.DataField = 'Colore'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.CustomColors = <>
      Properties.DefaultDescription = 'Seleziona'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 123
    end
    object suiDBNavigator1: TDBNavigator
      Left = 22
      Top = 535
      Width = 745
      Height = 25
      DataSource = DM.DsDottori
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Nuovo Dottore'
        'Elimina Dottore'
        'Modifica'
        'Conferma'
        'Annulla'
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object cxDBMemo1: TcxDBMemo
      Left = 19
      Top = 197
      DataBinding.DataField = 'Annotazioni'
      DataBinding.DataSource = DM.DsDottori
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 9
      Height = 68
      Width = 750
    end
    object cxDBImage1: TcxDBImage
      Left = 464
      Top = 32
      DataBinding.DataField = 'Foto'
      DataBinding.DataSource = DM.DsDottori
      Properties.FitMode = ifmProportionalStretch
      TabOrder = 10
      Height = 152
      Width = 303
    end
    object cxGrid2: TcxGrid
      Left = 21
      Top = 271
      Width = 747
      Height = 258
      TabOrder = 11
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DM.DsDottori
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
        object cxGridDBTableView3Id_Dottore: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'Id_Dottore'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object cxGridDBTableView3CognomeNome: TcxGridDBColumn
          Caption = 'COGNOME E NOME'
          DataBinding.FieldName = 'CognomeNome'
          HeaderAlignmentHorz = taCenter
          Width = 203
        end
        object cxGridDBTableView3Indirizzo: TcxGridDBColumn
          Caption = 'INDIRIZZO'
          DataBinding.FieldName = 'Indirizzo'
          HeaderAlignmentHorz = taCenter
          Width = 198
        end
        object cxGridDBTableView3Citta: TcxGridDBColumn
          Caption = 'CITTA'#39
          DataBinding.FieldName = 'Citta'
          HeaderAlignmentHorz = taCenter
          Width = 136
        end
        object cxGridDBTableView3Telefono: TcxGridDBColumn
          Caption = 'TELEFONO'
          DataBinding.FieldName = 'Telefono'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView3Cellulare2: TcxGridDBColumn
          Caption = 'CELLULARE'
          DataBinding.FieldName = 'Cellulare2'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
  end
  object PictureDialog: TOpenPictureDialog
    DefaultExt = '*.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Title = 'Seleziona Foto in formato BMP'
    Left = 1000
    Top = 56
  end
end
