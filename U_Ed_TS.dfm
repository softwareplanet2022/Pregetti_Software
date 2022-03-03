object FrmEdit_FT_TS: TFrmEdit_FT_TS
  Left = 558
  Top = 254
  BorderStyle = bsDialog
  Caption = 'Modifica'
  ClientHeight = 494
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 494
    Align = alClient
    BevelOuter = bvNone
    Color = 16643823
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.4.2.0'
    BorderColor = 13087391
    Caption.Color = 16643823
    Caption.ColorTo = 15784647
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = 5978398
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15784647
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16643823
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 5978398
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16643823
    StatusBar.ColorTo = 15784647
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 200
    object Label1: TLabel
      Left = 208
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Codice Fiscale'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 91
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = cxDBDateEdit1
    end
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 51
      Height = 13
      Caption = 'N'#176' Fattura'
      FocusControl = cxDBCalcEdit1
    end
    object Label4: TLabel
      Left = 368
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Data Pagamento'
      FocusControl = cxDBDateEdit2
    end
    object Label6: TLabel
      Left = 24
      Top = 90
      Width = 51
      Height = 13
      Caption = 'PAZIENTE '
      FocusControl = cxDBTextEdit2
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 208
      Top = 32
      DataBinding.DataField = 'CodFisc'
      DataBinding.DataSource = DM.DsFatture
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 5131854
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 149
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 91
      Top = 32
      DataBinding.DataField = 'Data'
      DataBinding.DataSource = DM.DsFatture
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 5131854
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 106
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'NumFattura'
      DataBinding.DataSource = DM.DsFatture
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 5131854
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 60
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 22
      Top = 62
      Caption = 'ACCETTAZIONE_INVIO'
      DataBinding.DataField = 'ACCETTAZIONE_INVIO'
      DataBinding.DataSource = DM.DsFatture
      TabOrder = 4
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 368
      Top = 32
      DataBinding.DataField = 'DATA_PAGAMENTO'
      DataBinding.DataSource = DM.DsFatture
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 5131854
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 102
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 364
      Top = 62
      Caption = 'PAGATA'
      DataBinding.DataField = 'PAGATA'
      DataBinding.DataSource = DM.DsFatture
      TabOrder = 6
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 204
      Top = 62
      Caption = 'PAGAM. TRACCIATO'
      DataBinding.DataField = 'PAGAMENTO_TRACCIATO'
      DataBinding.DataSource = DM.DsFatture
      TabOrder = 5
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 24
      Top = 107
      DataBinding.DataField = 'RagioneSociale'
      DataBinding.DataSource = DM.DsFatture
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 5131854
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 445
    end
    object cxGrid9: TcxGrid
      Left = 0
      Top = 160
      Width = 789
      Height = 334
      Align = alBottom
      TabOrder = 8
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      object cxGridDBTableView14: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        FindPanel.InfoText = 'Digita il testo da cercare'
        DataController.DataSource = DM.DsDettFatture
        DataController.Options = [dcoAssignGroupingValues, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #8364' #,##0.#0'
            Kind = skSum
            FieldName = 'CalcImportoScontato'
          end
          item
            Format = 'Totale: '
            Kind = skCount
            FieldName = 'Sconto'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'CLICCA QUI PER ATTIVARE IL FILTRO PAZIENTI ...'
        OptionsBehavior.AlwaysShowEditor = True
        OptionsData.Appending = True
        OptionsView.NoDataToDisplayInfoText = 'Nessun dato da mostrare'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object cxGridDBTableView14Cod_Articolo: TcxGridDBColumn
          Caption = 'COD. ART.'
          DataBinding.FieldName = 'Cod_Articolo'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxGridDBTableView14Cod_ArticoloPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxGridDBTableView14Qta: TcxGridDBColumn
          Caption = 'Q.TA'#39
          DataBinding.FieldName = 'Qta'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxGridDBTableView14QtaPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object cxGridDBTableView14Descrizione: TcxGridDBColumn
          Caption = 'DESCRIZIONE'
          DataBinding.FieldName = 'Descrizione'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxGridDBTableView14DescrizionePropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 329
        end
        object cxGridDBTableView14AliquotaIva: TcxGridDBColumn
          Caption = '% IVA'
          DataBinding.FieldName = 'AliquotaIva'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object cxGridDBTableView14PrezzoUnitario: TcxGridDBColumn
          Caption = 'PRZ. UNIT'
          DataBinding.FieldName = 'PrezzoUnitario'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object cxGridDBTableView14Sconto: TcxGridDBColumn
          Caption = '% SC.'
          DataBinding.FieldName = 'Sconto'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object cxGridDBTableView14CalcImportoScontato: TcxGridDBColumn
          Caption = 'IMPORTO'
          DataBinding.FieldName = 'CalcImportoScontato'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object cxGridDBTableView14TIPO_SPESA: TcxGridDBColumn
          Caption = 'TIPO SPESA'
          DataBinding.FieldName = 'TIPO_SPESA'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
      end
      object cxGridLevel14: TcxGridLevel
        GridView = cxGridDBTableView14
      end
    end
  end
end
